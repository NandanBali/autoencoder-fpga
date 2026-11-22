// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_s_axis_features_TDATA "../tv/cdatafile/c.vae_axis.autotvin_s_axis_features_V_data_V.dat"
`define INGRESS_STATUS_s_axis_features_TDATA "../tv/stream_size/stream_ingress_status_s_axis_features_V_data_V.dat"
`define TV_IN_s_axis_features_TKEEP "../tv/cdatafile/c.vae_axis.autotvin_s_axis_features_V_keep_V.dat"
`define INGRESS_STATUS_s_axis_features_TKEEP "../tv/stream_size/stream_ingress_status_s_axis_features_V_keep_V.dat"
`define TV_IN_s_axis_features_TSTRB "../tv/cdatafile/c.vae_axis.autotvin_s_axis_features_V_strb_V.dat"
`define INGRESS_STATUS_s_axis_features_TSTRB "../tv/stream_size/stream_ingress_status_s_axis_features_V_strb_V.dat"
`define TV_IN_s_axis_features_TLAST "../tv/cdatafile/c.vae_axis.autotvin_s_axis_features_V_last_V.dat"
`define INGRESS_STATUS_s_axis_features_TLAST "../tv/stream_size/stream_ingress_status_s_axis_features_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 263

module AESL_axi_s_s_axis_features (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_s_axis_features_TDATA,
    output [4 - 1:0] TRAN_s_axis_features_TKEEP,
    output [4 - 1:0] TRAN_s_axis_features_TSTRB,
    output TRAN_s_axis_features_TLAST,
    output TRAN_s_axis_features_TVALID,
    input TRAN_s_axis_features_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_s_axis_features_TVALID_temp;
    wire s_axis_features_TDATA_full;
    wire s_axis_features_TDATA_empty;
    reg s_axis_features_TDATA_write_en;
    reg [32 - 1:0] s_axis_features_TDATA_write_data;
    reg s_axis_features_TDATA_read_en;
    wire [32 - 1:0] s_axis_features_TDATA_read_data;
    
    fifo #(10, 32) fifo_s_axis_features_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_features_TDATA_write_en),
        .write_data(s_axis_features_TDATA_write_data),
        .read_clock(clk),
        .read_en(s_axis_features_TDATA_read_en),
        .read_data(s_axis_features_TDATA_read_data),
        .full(s_axis_features_TDATA_full),
        .empty(s_axis_features_TDATA_empty));
    
    always @ (*) begin
        s_axis_features_TDATA_write_en <= 0;
        s_axis_features_TDATA_read_en <= TRAN_s_axis_features_TREADY & TRAN_s_axis_features_TVALID;
    end
    
    assign TRAN_s_axis_features_TDATA = s_axis_features_TDATA_read_data;
    wire s_axis_features_TKEEP_full;
    wire s_axis_features_TKEEP_empty;
    reg s_axis_features_TKEEP_write_en;
    reg [4 - 1:0] s_axis_features_TKEEP_write_data;
    reg s_axis_features_TKEEP_read_en;
    wire [4 - 1:0] s_axis_features_TKEEP_read_data;
    
    fifo #(10, 4) fifo_s_axis_features_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_features_TKEEP_write_en),
        .write_data(s_axis_features_TKEEP_write_data),
        .read_clock(clk),
        .read_en(s_axis_features_TKEEP_read_en),
        .read_data(s_axis_features_TKEEP_read_data),
        .full(s_axis_features_TKEEP_full),
        .empty(s_axis_features_TKEEP_empty));
    
    always @ (*) begin
        s_axis_features_TKEEP_write_en <= 0;
        s_axis_features_TKEEP_read_en <= TRAN_s_axis_features_TREADY & TRAN_s_axis_features_TVALID;
    end
    
    assign TRAN_s_axis_features_TKEEP = s_axis_features_TKEEP_read_data;
    wire s_axis_features_TSTRB_full;
    wire s_axis_features_TSTRB_empty;
    reg s_axis_features_TSTRB_write_en;
    reg [4 - 1:0] s_axis_features_TSTRB_write_data;
    reg s_axis_features_TSTRB_read_en;
    wire [4 - 1:0] s_axis_features_TSTRB_read_data;
    
    fifo #(10, 4) fifo_s_axis_features_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_features_TSTRB_write_en),
        .write_data(s_axis_features_TSTRB_write_data),
        .read_clock(clk),
        .read_en(s_axis_features_TSTRB_read_en),
        .read_data(s_axis_features_TSTRB_read_data),
        .full(s_axis_features_TSTRB_full),
        .empty(s_axis_features_TSTRB_empty));
    
    always @ (*) begin
        s_axis_features_TSTRB_write_en <= 0;
        s_axis_features_TSTRB_read_en <= TRAN_s_axis_features_TREADY & TRAN_s_axis_features_TVALID;
    end
    
    assign TRAN_s_axis_features_TSTRB = s_axis_features_TSTRB_read_data;
    wire s_axis_features_TLAST_full;
    wire s_axis_features_TLAST_empty;
    reg s_axis_features_TLAST_write_en;
    reg [1 - 1:0] s_axis_features_TLAST_write_data;
    reg s_axis_features_TLAST_read_en;
    wire [1 - 1:0] s_axis_features_TLAST_read_data;
    
    fifo #(10, 1) fifo_s_axis_features_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_features_TLAST_write_en),
        .write_data(s_axis_features_TLAST_write_data),
        .read_clock(clk),
        .read_en(s_axis_features_TLAST_read_en),
        .read_data(s_axis_features_TLAST_read_data),
        .full(s_axis_features_TLAST_full),
        .empty(s_axis_features_TLAST_empty));
    
    always @ (*) begin
        s_axis_features_TLAST_write_en <= 0;
        s_axis_features_TLAST_read_en <= TRAN_s_axis_features_TREADY & TRAN_s_axis_features_TVALID;
    end
    
    assign TRAN_s_axis_features_TLAST = s_axis_features_TLAST_read_data;
    assign TRAN_s_axis_features_TVALID = TRAN_s_axis_features_TVALID_temp;

    
    assign TRAN_s_axis_features_TVALID_temp = ~(s_axis_features_TDATA_empty || s_axis_features_TKEEP_empty || s_axis_features_TSTRB_empty || s_axis_features_TLAST_empty);
    
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
    
    reg [31:0] transaction_load_s_axis_features_TDATA;
    
    assign transaction = transaction_load_s_axis_features_TDATA;
    
    initial begin : AXI_stream_driver_s_axis_features_TDATA
        integer fp;
        reg [199:0] token;
        reg [32 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_features_TDATA = 0;
        fifo_s_axis_features_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_features_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_features_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_features_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_features_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_features_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_features_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_features_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_s_axis_features_TDATA.snapshot();
                end else begin
                    fifo_s_axis_features_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_features_TDATA = transaction_load_s_axis_features_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_s_axis_features_TKEEP;
    
    initial begin : AXI_stream_driver_s_axis_features_TKEEP
        integer fp;
        reg [199:0] token;
        reg [4 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_features_TKEEP = 0;
        fifo_s_axis_features_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_features_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_features_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_features_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_features_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_features_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_features_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_features_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_s_axis_features_TKEEP.snapshot();
                end else begin
                    fifo_s_axis_features_TKEEP.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_features_TKEEP = transaction_load_s_axis_features_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_s_axis_features_TSTRB;
    
    initial begin : AXI_stream_driver_s_axis_features_TSTRB
        integer fp;
        reg [199:0] token;
        reg [4 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_features_TSTRB = 0;
        fifo_s_axis_features_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_features_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_features_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_features_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_features_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_features_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_features_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_features_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_s_axis_features_TSTRB.snapshot();
                end else begin
                    fifo_s_axis_features_TSTRB.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_features_TSTRB = transaction_load_s_axis_features_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_s_axis_features_TLAST;
    
    initial begin : AXI_stream_driver_s_axis_features_TLAST
        integer fp;
        reg [199:0] token;
        reg [1 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_features_TLAST = 0;
        fifo_s_axis_features_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_features_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_features_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_features_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_features_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_features_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_features_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_features_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_s_axis_features_TLAST.snapshot();
                end else begin
                    fifo_s_axis_features_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_features_TLAST = transaction_load_s_axis_features_TLAST + 1;
            end
        end
    end

endmodule
