#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_cycle_tx_cap_bc;
static AESL_RUNTIME_BC __xlx_cycle_tx_V_size_Reader("../tv/stream_size/stream_size_in_cycle_tx.dat");
unsigned int ap_apatb_cycle_rx_cap_bc;
static AESL_RUNTIME_BC __xlx_cycle_rx_V_size_Reader("../tv/stream_size/stream_size_in_cycle_rx.dat");
unsigned int ap_apatb_m_axis_features_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_features_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_features_V_data_V.dat");
unsigned int ap_apatb_m_axis_features_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_features_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_features_V_keep_V.dat");
unsigned int ap_apatb_m_axis_features_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_features_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_features_V_strb_V.dat");
unsigned int ap_apatb_m_axis_features_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_features_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_features_V_last_V.dat");
unsigned int ap_apatb_s_axis_score_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_score_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_score_V_data_V.dat");
unsigned int ap_apatb_s_axis_score_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_score_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_score_V_keep_V.dat");
unsigned int ap_apatb_s_axis_score_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_score_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_score_V_strb_V.dat");
unsigned int ap_apatb_s_axis_score_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_score_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_score_V_last_V.dat");
using hls::sim::Byte;
struct __cosim_s4__ { char data[4]; };
struct __cosim_s16__ { char data[16]; };
extern "C" void vae_feature_sender(Byte<4>*, Byte<8>*, Byte<16>*, int, int, int, __cosim_s4__, __cosim_s4__, long long*, long long*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_vae_feature_sender_hw(volatile void * __xlx_apatb_param_features, volatile void * __xlx_apatb_param_t_send, volatile void * __xlx_apatb_param_results, __cosim_s4__* __xlx_apatb_param_n_flows, __cosim_s4__* __xlx_apatb_param_period, volatile void * __xlx_apatb_param_cycle_tx, volatile void * __xlx_apatb_param_cycle_rx, volatile void * __xlx_apatb_param_m_axis_features_V_data_V, volatile void * __xlx_apatb_param_m_axis_features_V_keep_V, volatile void * __xlx_apatb_param_m_axis_features_V_strb_V, volatile void * __xlx_apatb_param_m_axis_features_V_last_V, volatile void * __xlx_apatb_param_s_axis_score_V_data_V, volatile void * __xlx_apatb_param_s_axis_score_V_keep_V, volatile void * __xlx_apatb_param_s_axis_score_V_strb_V, volatile void * __xlx_apatb_param_s_axis_score_V_last_V) {
using hls::sim::createStream;
  // Collect __xlx_features__tmp_vec
std::vector<Byte<4>> __xlx_features__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_features__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_features)[i]);
}
  int __xlx_size_param_features = 2048;
  int __xlx_offset_param_features = 0;
  int __xlx_offset_byte_param_features = 0*4;
  // Collect __xlx_t_send__tmp_vec
std::vector<Byte<8>> __xlx_t_send__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_t_send__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_t_send)[i]);
}
  int __xlx_size_param_t_send = 256;
  int __xlx_offset_param_t_send = 0;
  int __xlx_offset_byte_param_t_send = 0*8;
  // Collect __xlx_results__tmp_vec
std::vector<Byte<16>> __xlx_results__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_results__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_results)[i]);
}
  int __xlx_size_param_results = 256;
  int __xlx_offset_param_results = 0;
  int __xlx_offset_byte_param_results = 0*16;
auto* scycle_tx = createStream((hls::stream<long long>*)__xlx_apatb_param_cycle_tx);
auto* scycle_rx = createStream((hls::stream<long long>*)__xlx_apatb_param_cycle_rx);
  //Create input buffer for m_axis_features_V_data_V
  ap_apatb_m_axis_features_V_data_V_cap_bc = __xlx_m_axis_features_V_data_V_V_size_Reader.read_size();
  int* __xlx_m_axis_features_V_data_V_input_buffer= new int[ap_apatb_m_axis_features_V_data_V_cap_bc];
auto* sm_axis_features_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_m_axis_features_V_data_V);
  //Create input buffer for m_axis_features_V_keep_V
  ap_apatb_m_axis_features_V_keep_V_cap_bc = __xlx_m_axis_features_V_keep_V_V_size_Reader.read_size();
  char* __xlx_m_axis_features_V_keep_V_input_buffer= new char[ap_apatb_m_axis_features_V_keep_V_cap_bc];
auto* sm_axis_features_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_features_V_keep_V);
  //Create input buffer for m_axis_features_V_strb_V
  ap_apatb_m_axis_features_V_strb_V_cap_bc = __xlx_m_axis_features_V_strb_V_V_size_Reader.read_size();
  char* __xlx_m_axis_features_V_strb_V_input_buffer= new char[ap_apatb_m_axis_features_V_strb_V_cap_bc];
auto* sm_axis_features_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_features_V_strb_V);
  //Create input buffer for m_axis_features_V_last_V
  ap_apatb_m_axis_features_V_last_V_cap_bc = __xlx_m_axis_features_V_last_V_V_size_Reader.read_size();
  char* __xlx_m_axis_features_V_last_V_input_buffer= new char[ap_apatb_m_axis_features_V_last_V_cap_bc];
auto* sm_axis_features_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_features_V_last_V);
auto* ss_axis_score_V_data_V = createStream((hls::stream<long long>*)__xlx_apatb_param_s_axis_score_V_data_V);
auto* ss_axis_score_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_score_V_keep_V);
auto* ss_axis_score_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_score_V_strb_V);
auto* ss_axis_score_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_score_V_last_V);
  // DUT call
  vae_feature_sender(__xlx_features__tmp_vec.data(), __xlx_t_send__tmp_vec.data(), __xlx_results__tmp_vec.data(), __xlx_offset_byte_param_features, __xlx_offset_byte_param_t_send, __xlx_offset_byte_param_results, *__xlx_apatb_param_n_flows, *__xlx_apatb_param_period, scycle_tx->data<long long>(), scycle_rx->data<long long>(), sm_axis_features_V_data_V->data<int>(), sm_axis_features_V_keep_V->data<char>(), sm_axis_features_V_strb_V->data<char>(), sm_axis_features_V_last_V->data<char>(), ss_axis_score_V_data_V->data<long long>(), ss_axis_score_V_keep_V->data<char>(), ss_axis_score_V_strb_V->data<char>(), ss_axis_score_V_last_V->data<char>());
// print __xlx_apatb_param_features
for (size_t i = 0; i < __xlx_size_param_features; ++i) {
((Byte<4>*)__xlx_apatb_param_features)[i] = __xlx_features__tmp_vec[__xlx_offset_param_features+i];
}
// print __xlx_apatb_param_t_send
for (size_t i = 0; i < __xlx_size_param_t_send; ++i) {
((Byte<8>*)__xlx_apatb_param_t_send)[i] = __xlx_t_send__tmp_vec[__xlx_offset_param_t_send+i];
}
// print __xlx_apatb_param_results
for (size_t i = 0; i < __xlx_size_param_results; ++i) {
((Byte<16>*)__xlx_apatb_param_results)[i] = __xlx_results__tmp_vec[__xlx_offset_param_results+i];
}
scycle_tx->transfer((hls::stream<long long>*)__xlx_apatb_param_cycle_tx);
scycle_rx->transfer((hls::stream<long long>*)__xlx_apatb_param_cycle_rx);
sm_axis_features_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_m_axis_features_V_data_V);
sm_axis_features_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_features_V_keep_V);
sm_axis_features_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_features_V_strb_V);
sm_axis_features_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_features_V_last_V);
ss_axis_score_V_data_V->transfer((hls::stream<long long>*)__xlx_apatb_param_s_axis_score_V_data_V);
ss_axis_score_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_score_V_keep_V);
ss_axis_score_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_score_V_strb_V);
ss_axis_score_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_score_V_last_V);
}
