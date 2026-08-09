//-----------------------------------------------------------------------------
// Package
//-----------------------------------------------------------------------------
`timescale 1ns/1ps
package aes_pkg;
    localparam int NUM_ROUNDS  = 10;
    localparam int PIPE_DEPTH  = NUM_ROUNDS + 1;   // stages 0..10
    localparam int NUM_BANKS   = 2;
    localparam int KEY_FIFO_DEPTH = 4;
 
    typedef logic [127:0] aes_block_t;
    typedef logic  [31:0] aes_word_t;
    typedef logic   [7:0] aes_byte_t;
    typedef aes_block_t   rk_bank_t  [0:NUM_ROUNDS];
    typedef rk_bank_t     rk_store_t [0:NUM_BANKS-1];
endpackage : aes_pkg