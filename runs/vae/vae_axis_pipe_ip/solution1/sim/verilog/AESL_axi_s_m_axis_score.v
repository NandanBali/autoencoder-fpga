// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_m_axis_score_TDATA "../tv/rtldatafile/rtl.vae_axis.autotvout_m_axis_score_V_data_V.dat"
`define EGRESS_STATUS_m_axis_score_TDATA "../tv/stream_size/stream_egress_status_m_axis_score_V_data_V.dat"
`define TV_OUT_m_axis_score_TKEEP "../tv/rtldatafile/rtl.vae_axis.autotvout_m_axis_score_V_keep_V.dat"
`define EGRESS_STATUS_m_axis_score_TKEEP "../tv/stream_size/stream_egress_status_m_axis_score_V_keep_V.dat"
`define TV_OUT_m_axis_score_TSTRB "../tv/rtldatafile/rtl.vae_axis.autotvout_m_axis_score_V_strb_V.dat"
`define EGRESS_STATUS_m_axis_score_TSTRB "../tv/stream_size/stream_egress_status_m_axis_score_V_strb_V.dat"
`define TV_OUT_m_axis_score_TLAST "../tv/rtldatafile/rtl.vae_axis.autotvout_m_axis_score_V_last_V.dat"
`define EGRESS_STATUS_m_axis_score_TLAST "../tv/stream_size/stream_egress_status_m_axis_score_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 263

module AESL_axi_s_m_axis_score (
    input clk,
    input reset,
    input [64 - 1:0] TRAN_m_axis_score_TDATA,
    input [8 - 1:0] TRAN_m_axis_score_TKEEP,
    input [8 - 1:0] TRAN_m_axis_score_TSTRB,
    input TRAN_m_axis_score_TLAST,
    input TRAN_m_axis_score_TVALID,
    output TRAN_m_axis_score_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_m_axis_score_TVALID_temp;
    wire m_axis_score_TDATA_full;
    wire m_axis_score_TDATA_empty;
    reg m_axis_score_TDATA_write_en;
    reg [64 - 1:0] m_axis_score_TDATA_write_data;
    reg m_axis_score_TDATA_read_en;
    wire [64 - 1:0] m_axis_score_TDATA_read_data;
    
    fifo #(2, 64) fifo_m_axis_score_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_score_TDATA_write_en),
        .write_data(m_axis_score_TDATA_write_data),
        .read_clock(clk),
        .read_en(m_axis_score_TDATA_read_en),
        .read_data(m_axis_score_TDATA_read_data),
        .full(m_axis_score_TDATA_full),
        .empty(m_axis_score_TDATA_empty));
    
    always @ (*) begin
        m_axis_score_TDATA_write_en <= TRAN_m_axis_score_TVALID;
        m_axis_score_TDATA_write_data <= TRAN_m_axis_score_TDATA;
        m_axis_score_TDATA_read_en <= 0;
    end
    wire m_axis_score_TKEEP_full;
    wire m_axis_score_TKEEP_empty;
    reg m_axis_score_TKEEP_write_en;
    reg [8 - 1:0] m_axis_score_TKEEP_write_data;
    reg m_axis_score_TKEEP_read_en;
    wire [8 - 1:0] m_axis_score_TKEEP_read_data;
    
    fifo #(2, 8) fifo_m_axis_score_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_score_TKEEP_write_en),
        .write_data(m_axis_score_TKEEP_write_data),
        .read_clock(clk),
        .read_en(m_axis_score_TKEEP_read_en),
        .read_data(m_axis_score_TKEEP_read_data),
        .full(m_axis_score_TKEEP_full),
        .empty(m_axis_score_TKEEP_empty));
    
    always @ (*) begin
        m_axis_score_TKEEP_write_en <= TRAN_m_axis_score_TVALID;
        m_axis_score_TKEEP_write_data <= TRAN_m_axis_score_TKEEP;
        m_axis_score_TKEEP_read_en <= 0;
    end
    wire m_axis_score_TSTRB_full;
    wire m_axis_score_TSTRB_empty;
    reg m_axis_score_TSTRB_write_en;
    reg [8 - 1:0] m_axis_score_TSTRB_write_data;
    reg m_axis_score_TSTRB_read_en;
    wire [8 - 1:0] m_axis_score_TSTRB_read_data;
    
    fifo #(2, 8) fifo_m_axis_score_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_score_TSTRB_write_en),
        .write_data(m_axis_score_TSTRB_write_data),
        .read_clock(clk),
        .read_en(m_axis_score_TSTRB_read_en),
        .read_data(m_axis_score_TSTRB_read_data),
        .full(m_axis_score_TSTRB_full),
        .empty(m_axis_score_TSTRB_empty));
    
    always @ (*) begin
        m_axis_score_TSTRB_write_en <= TRAN_m_axis_score_TVALID;
        m_axis_score_TSTRB_write_data <= TRAN_m_axis_score_TSTRB;
        m_axis_score_TSTRB_read_en <= 0;
    end
    wire m_axis_score_TLAST_full;
    wire m_axis_score_TLAST_empty;
    reg m_axis_score_TLAST_write_en;
    reg [1 - 1:0] m_axis_score_TLAST_write_data;
    reg m_axis_score_TLAST_read_en;
    wire [1 - 1:0] m_axis_score_TLAST_read_data;
    
    fifo #(2, 1) fifo_m_axis_score_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_score_TLAST_write_en),
        .write_data(m_axis_score_TLAST_write_data),
        .read_clock(clk),
        .read_en(m_axis_score_TLAST_read_en),
        .read_data(m_axis_score_TLAST_read_data),
        .full(m_axis_score_TLAST_full),
        .empty(m_axis_score_TLAST_empty));
    
    always @ (*) begin
        m_axis_score_TLAST_write_en <= TRAN_m_axis_score_TVALID;
        m_axis_score_TLAST_write_data <= TRAN_m_axis_score_TLAST;
        m_axis_score_TLAST_read_en <= 0;
    end
    assign TRAN_m_axis_score_TVALID = TRAN_m_axis_score_TVALID_temp;

    
    assign TRAN_m_axis_score_TREADY = ~(m_axis_score_TDATA_full || m_axis_score_TKEEP_full || m_axis_score_TSTRB_full || m_axis_score_TLAST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [199:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [199:0] rm_0x(input [199:0] token);
        reg [199:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_m_axis_score_TDATA;
    
    assign transaction = transaction_save_m_axis_score_TDATA;
    
    initial begin : AXI_stream_receiver_m_axis_score_TDATA
        integer fp;
        reg [64 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_score_TDATA = 0;
        fifo_m_axis_score_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_score_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_score_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_score_TDATA);
                while (~fifo_m_axis_score_TDATA.empty) begin
                    fifo_m_axis_score_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_score_TDATA = transaction_save_m_axis_score_TDATA + 1;
                fifo_m_axis_score_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_score_TKEEP;
    
    initial begin : AXI_stream_receiver_m_axis_score_TKEEP
        integer fp;
        reg [8 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_score_TKEEP = 0;
        fifo_m_axis_score_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_score_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_score_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_score_TKEEP);
                while (~fifo_m_axis_score_TKEEP.empty) begin
                    fifo_m_axis_score_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_score_TKEEP = transaction_save_m_axis_score_TKEEP + 1;
                fifo_m_axis_score_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_score_TSTRB;
    
    initial begin : AXI_stream_receiver_m_axis_score_TSTRB
        integer fp;
        reg [8 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_score_TSTRB = 0;
        fifo_m_axis_score_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_score_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_score_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_score_TSTRB);
                while (~fifo_m_axis_score_TSTRB.empty) begin
                    fifo_m_axis_score_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_score_TSTRB = transaction_save_m_axis_score_TSTRB + 1;
                fifo_m_axis_score_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_score_TLAST;
    
    initial begin : AXI_stream_receiver_m_axis_score_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_score_TLAST = 0;
        fifo_m_axis_score_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_score_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_score_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_score_TLAST);
                while (~fifo_m_axis_score_TLAST.empty) begin
                    fifo_m_axis_score_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_score_TLAST = transaction_save_m_axis_score_TLAST + 1;
                fifo_m_axis_score_TLAST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
