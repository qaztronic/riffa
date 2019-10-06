// --------------------------------------------------------------------
//
// --------------------------------------------------------------------


package riffa_pkg;

  // --------------------------------------------------------------------
  // RIFFA WIDTHS
  localparam LEN_W = 10;
  localparam TD_W = 1;

  localparam BARDECODE_W = 8;
  localparam OFFSET_W = 4;
  localparam EP_W = 1;
  localparam TC_W = 3;
  localparam TYPE_W = 5;
  localparam ATTR_W = 3;
  localparam FMT_W = 3;
  localparam FBE_W = 4;
  localparam LBE_W = 4;
  localparam TAG_W = 8;
  localparam ADDR_W = 64;
  localparam REQID_W = 16;
  localparam CPLID_W = 16;
  localparam BYTECNT_W = 12;
  localparam STAT_W = 3;
  localparam LOWADDR_W = 7;

  localparam EXT_TYPE_W = 3;

  localparam LINKWIDTH_W = 6;
  localparam LINKRATE_W = 4;
  localparam MAXREAD_W = 3;
  localparam MAXPAYLOAD_W = 3;

  localparam PCIE_CONFIGURATION_REGISTER_WIDTH = 16;
  localparam PCIE_BUS_ID_WIDTH = 8;
  localparam PCIE_DEVICE_ID_WIDTH = 5;
  localparam PCIE_FUNCTION_ID_WIDTH = 3;


  // // --------------------------------------------------------------------
  // // TYPES
  // localparam TRLS_REQ_RD = 'b000;
  // localparam TRLS_REQ_WR = 'b001;
  // localparam TRLS_CPL_ND = 'b010;
  // localparam TRLS_CPL_WD = 'b011;
  // localparam TRLS_MSG_ND = 'b100;
  // localparam TRLS_MSG_WD = 'b101;

  // localparam TRLS_TYPE_PAY_I =  0; // Payload Bit Index. If 1, packet has a payload, else 0
  // localparam TRLS_TYPE_CPL_I =  1; // Completion Bit Index. If 1, packet is a Completion
  // localparam TRLS_TYPE_MSG_I =  2; // Message Bit Index. If 1, packet is a message


  // --------------------------------------------------------------------
  // RIFFA
  // User Interface Signals
  localparam SIG_CHNL_OFFSET_W = 31;
  localparam SIG_CHNL_LENGTH_W = 32;
  localparam SIG_CHNL_LAST_W = 1;

  // Engine/Channel interface signals
  localparam SIG_TXRLEN_W = 32;
  localparam SIG_OFFLAST_W = 32;
  localparam SIG_LAST_W = 1;
  localparam SIG_TXDONELEN_W = 32;
  localparam SIG_RXDONELEN_W = 32;
  localparam SIG_CORESETTINGS_W = 32;

  // Writable addresses
  localparam ADDR_SGRX_LEN = 4'b0000;
  localparam ADDR_SGRX_ADDRLO = 4'b0001;
  localparam ADDR_SGRX_ADDRHI = 4'b0010;
  localparam ADDR_RX_LEN = 4'b0011;
  localparam ADDR_RX_OFFLAST = 4'b0100;
  localparam ADDR_SGTX_LEN = 4'b0101;
  localparam ADDR_SGTX_ADDRLO = 4'b0110;
  localparam ADDR_SGTX_ADDRHI = 4'b0111;
  // Readable Addresses
  localparam ADDR_TX_LEN = 4'b1000;
  localparam ADDR_TX_OFFLAST = 4'b1001;
  localparam ADDR_CORESETTINGS = 4'b1010;
  localparam ADDR_INTR_VECTOR_0 = 4'b1011;
  localparam ADDR_INTR_VECTOR_1 = 4'b1100;
  localparam ADDR_RX_LEN_XFERD = 4'b1101;
  localparam ADDR_TX_LEN_XFERD = 4'b1110;
  localparam ADDR_FPGA_NAME = 4'b1111;


  // --------------------------------------------------------------------
  // Altera
  localparam TLCFG_DEVCTL_I = 4'h0 ;
  localparam TLCFG_LNKCTL_I = 4'h2;
  localparam TLCFG_PRMCMD_I = 4'h3;
  localparam TLCFG_MSICSR_I = 4'hD;
  localparam TLCFG_BUSDEV_I = 4'hF;

  localparam SIG_CFG_STS_W = 53;
  localparam SIG_CFG_CTL_W = 32;
  localparam SIG_CFG_ADD_W = 4;

  localparam SIG_KO_CPLD_W = 12;
  localparam SIG_KO_CPLH_W = 8;

  // // --------------------------------------------------------------------
  // // functions
  // // clog2s -- calculate the ceiling log2 value, min return is 1 (safe).
  // function integer clog2s;
    // input [31:0] v;
    // reg [31:0] value;
    // begin
      // value = v;
      // if (value == 1) begin
        // clog2s = 1;
      // end
      // else
        // clog2s = $clog2(v);
      // // else begin
        // // value = value-1;
        // // for (clog2s=0; value>0; clog2s=clog2s+1)
          // // value = value>>1;
      // // end
    // end
  // endfunction

  // PCIe Signals
  localparam SIG_BARDECODE_W =  BARDECODE_W;
  localparam SIG_OFFSET_W =  OFFSET_W;
  localparam SIG_TC_W =  TC_W;
  localparam SIG_ATTR_W =  ATTR_W;
  localparam SIG_LEN_W =  LEN_W;
  localparam SIG_TD_W =  TD_W;
  localparam SIG_TYPE_W =  EXT_TYPE_W;
  localparam SIG_FMT_W =  FMT_W;
  localparam SIG_FBE_W =  FBE_W;
  localparam SIG_LBE_W =  LBE_W;
  localparam SIG_TAG_W =  TAG_W;
  localparam SIG_REQID_W =  REQID_W;
  localparam SIG_ADDR_W =  ADDR_W;
  localparam SIG_BYTECNT_W =  BYTECNT_W;
  localparam SIG_STAT_W =  STAT_W;
  localparam SIG_CPLID_W =  CPLID_W;
  localparam SIG_LOWADDR_W =  LOWADDR_W;

  localparam SIG_CFGREG_W =  PCIE_CONFIGURATION_REGISTER_WIDTH;
  localparam SIG_BUSID_W =  PCIE_BUS_ID_WIDTH;
  localparam SIG_DEVID_W =  PCIE_DEVICE_ID_WIDTH; // Device ID Width
  localparam SIG_FNID_W =  PCIE_FUNCTION_ID_WIDTH; // Function Number

  localparam SIG_LINKWIDTH_W =  LINKWIDTH_W;
  localparam SIG_LINKRATE_W =  LINKRATE_W;
  localparam SIG_MAXREAD_W =  MAXREAD_W;
  localparam SIG_MAXPAYLOAD_W =  MAXPAYLOAD_W;

  localparam SIG_FC_CPLD_W =  12;
  localparam SIG_FC_CPLH_W =  8;

  // The maximum number of alignment blanks that can be inserted in a packet is 7
  localparam SIG_NONPAY_W = 4;
  // localparam SIG_PACKETLEN_W = (clog2s(4096/4) + SIG_NONPAY_W + 1);
  localparam SIG_ALIGN_W = 3;
  localparam SIG_HDRLEN_W = 3;
  localparam SIG_MAXHDR_W = 128;


  // --------------------------------------------------------------------
  // Ultrascale
  localparam SIG_CQ_TUSER_W = 85;
  localparam SIG_RC_TUSER_W = 75;
  localparam SIG_CC_TUSER_W = 33;
  localparam SIG_RQ_TUSER_W = 60;
  
  
// --------------------------------------------------------------------
//
endpackage: riffa_pkg





