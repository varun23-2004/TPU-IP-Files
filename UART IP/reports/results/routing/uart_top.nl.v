module uart_top (clk,
    data_ready,
    data_valid,
    rst_n,
    rx_in,
    tx_busy,
    tx_out,
    data_in,
    data_out);
 input clk;
 output data_ready;
 input data_valid;
 input rst_n;
 input rx_in;
 output tx_busy;
 output tx_out;
 input [7:0] data_in;
 output [7:0] data_out;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire \rx_baud_cnt[0] ;
 wire \rx_baud_cnt[1] ;
 wire \rx_baud_cnt[2] ;
 wire \rx_baud_cnt[3] ;
 wire \rx_baud_cnt[4] ;
 wire \rx_baud_cnt[5] ;
 wire \rx_baud_cnt[6] ;
 wire \rx_baud_cnt[7] ;
 wire \rx_baud_cnt[8] ;
 wire \rx_bit_cnt[0] ;
 wire \rx_bit_cnt[1] ;
 wire \rx_bit_cnt[2] ;
 wire \rx_shift_reg[0] ;
 wire \rx_shift_reg[1] ;
 wire \rx_shift_reg[2] ;
 wire \rx_shift_reg[3] ;
 wire \rx_shift_reg[4] ;
 wire \rx_shift_reg[5] ;
 wire \rx_shift_reg[6] ;
 wire \rx_shift_reg[7] ;
 wire \rx_state[0] ;
 wire \rx_state[1] ;
 wire \rx_state[2] ;
 wire \rx_state[3] ;
 wire rx_sync1;
 wire rx_sync2;
 wire \tx_baud_cnt[0] ;
 wire \tx_baud_cnt[1] ;
 wire \tx_baud_cnt[2] ;
 wire \tx_baud_cnt[3] ;
 wire \tx_baud_cnt[4] ;
 wire \tx_baud_cnt[5] ;
 wire \tx_baud_cnt[6] ;
 wire \tx_baud_cnt[7] ;
 wire \tx_baud_cnt[8] ;
 wire \tx_bit_cnt[0] ;
 wire \tx_bit_cnt[1] ;
 wire \tx_bit_cnt[2] ;
 wire \tx_shift_reg[0] ;
 wire \tx_shift_reg[1] ;
 wire \tx_shift_reg[2] ;
 wire \tx_shift_reg[3] ;
 wire \tx_shift_reg[4] ;
 wire \tx_shift_reg[5] ;
 wire \tx_shift_reg[6] ;
 wire \tx_shift_reg[7] ;
 wire \tx_state[0] ;
 wire \tx_state[1] ;
 wire \tx_state[2] ;
 wire \tx_state[3] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire clknet_0_clk;
 wire clknet_3_0__leaf_clk;
 wire clknet_3_1__leaf_clk;
 wire clknet_3_2__leaf_clk;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_4__leaf_clk;
 wire clknet_3_5__leaf_clk;
 wire clknet_3_6__leaf_clk;
 wire clknet_3_7__leaf_clk;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;

 sky130_fd_sc_hd__or3b_2 _204_ (.A(\rx_baud_cnt[1] ),
    .B(\rx_baud_cnt[2] ),
    .C_N(\rx_baud_cnt[0] ),
    .X(_058_));
 sky130_fd_sc_hd__nand2_1 _205_ (.A(\rx_baud_cnt[4] ),
    .B(\rx_baud_cnt[5] ),
    .Y(_059_));
 sky130_fd_sc_hd__or4bb_1 _206_ (.A(\rx_baud_cnt[3] ),
    .B(\rx_baud_cnt[6] ),
    .C_N(\rx_baud_cnt[7] ),
    .D_N(\rx_baud_cnt[8] ),
    .X(_060_));
 sky130_fd_sc_hd__nor3_1 _207_ (.A(_058_),
    .B(_059_),
    .C(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__inv_2 _208_ (.A(\rx_state[2] ),
    .Y(_062_));
 sky130_fd_sc_hd__nand2_1 _209_ (.A(\rx_baud_cnt[3] ),
    .B(\rx_baud_cnt[4] ),
    .Y(_063_));
 sky130_fd_sc_hd__or4bb_1 _210_ (.A(\rx_baud_cnt[5] ),
    .B(\rx_baud_cnt[8] ),
    .C_N(\rx_baud_cnt[7] ),
    .D_N(\rx_baud_cnt[6] ),
    .X(_064_));
 sky130_fd_sc_hd__or4_2 _211_ (.A(_062_),
    .B(_058_),
    .C(_063_),
    .D(_064_),
    .X(_065_));
 sky130_fd_sc_hd__or2b_1 _212_ (.A(\rx_state[0] ),
    .B_N(_065_),
    .X(_066_));
 sky130_fd_sc_hd__buf_2 _213_ (.A(rx_sync2),
    .X(_067_));
 sky130_fd_sc_hd__a22o_1 _214_ (.A1(net71),
    .A2(net23),
    .B1(_066_),
    .B2(_067_),
    .X(_010_));
 sky130_fd_sc_hd__inv_2 _215_ (.A(\rx_state[1] ),
    .Y(_068_));
 sky130_fd_sc_hd__a41o_1 _216_ (.A1(\rx_bit_cnt[2] ),
    .A2(\rx_bit_cnt[1] ),
    .A3(\rx_bit_cnt[0] ),
    .A4(net23),
    .B1(_068_),
    .X(_069_));
 sky130_fd_sc_hd__o21ai_1 _217_ (.A1(_067_),
    .A2(_065_),
    .B1(_069_),
    .Y(_011_));
 sky130_fd_sc_hd__and4bb_1 _218_ (.A_N(\tx_baud_cnt[3] ),
    .B_N(\tx_baud_cnt[2] ),
    .C(\tx_baud_cnt[5] ),
    .D(\tx_baud_cnt[4] ),
    .X(_070_));
 sky130_fd_sc_hd__and4bb_1 _219_ (.A_N(\tx_baud_cnt[1] ),
    .B_N(\tx_baud_cnt[6] ),
    .C(\tx_baud_cnt[7] ),
    .D(\tx_baud_cnt[8] ),
    .X(_071_));
 sky130_fd_sc_hd__and3_1 _220_ (.A(\tx_baud_cnt[0] ),
    .B(_070_),
    .C(_071_),
    .X(_072_));
 sky130_fd_sc_hd__buf_2 _221_ (.A(_072_),
    .X(_073_));
 sky130_fd_sc_hd__or2b_1 _222_ (.A(net9),
    .B_N(\tx_state[0] ),
    .X(_074_));
 sky130_fd_sc_hd__a21bo_1 _223_ (.A1(net40),
    .A2(_073_),
    .B1_N(_074_),
    .X(_014_));
 sky130_fd_sc_hd__and3_1 _224_ (.A(\tx_bit_cnt[2] ),
    .B(\tx_bit_cnt[1] ),
    .C(\tx_bit_cnt[0] ),
    .X(_075_));
 sky130_fd_sc_hd__nand2_1 _225_ (.A(_073_),
    .B(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__a22o_1 _226_ (.A1(\tx_state[2] ),
    .A2(_073_),
    .B1(_076_),
    .B2(net52),
    .X(_015_));
 sky130_fd_sc_hd__o31a_1 _227_ (.A1(_058_),
    .A2(_063_),
    .A3(_064_),
    .B1(\rx_state[2] ),
    .X(_077_));
 sky130_fd_sc_hd__or2b_2 _228_ (.A(rx_sync2),
    .B_N(\rx_state[0] ),
    .X(_078_));
 sky130_fd_sc_hd__or2b_1 _229_ (.A(_077_),
    .B_N(_078_),
    .X(_079_));
 sky130_fd_sc_hd__clkbuf_1 _230_ (.A(_079_),
    .X(_012_));
 sky130_fd_sc_hd__inv_2 _231_ (.A(net73),
    .Y(_080_));
 sky130_fd_sc_hd__and3_1 _232_ (.A(\tx_state[1] ),
    .B(_073_),
    .C(_075_),
    .X(_081_));
 sky130_fd_sc_hd__o21bai_1 _233_ (.A1(_080_),
    .A2(_073_),
    .B1_N(_081_),
    .Y(_017_));
 sky130_fd_sc_hd__or3_2 _234_ (.A(_058_),
    .B(_059_),
    .C(_060_),
    .X(_082_));
 sky130_fd_sc_hd__inv_2 _235_ (.A(\rx_bit_cnt[2] ),
    .Y(_083_));
 sky130_fd_sc_hd__nand2_1 _236_ (.A(\rx_bit_cnt[1] ),
    .B(\rx_bit_cnt[0] ),
    .Y(_084_));
 sky130_fd_sc_hd__nor3_1 _237_ (.A(_083_),
    .B(_082_),
    .C(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__a22o_1 _238_ (.A1(\rx_state[3] ),
    .A2(_082_),
    .B1(_085_),
    .B2(net72),
    .X(_013_));
 sky130_fd_sc_hd__nand3_4 _239_ (.A(\rx_state[3] ),
    .B(rx_sync2),
    .C(net23),
    .Y(_086_));
 sky130_fd_sc_hd__inv_2 _240_ (.A(_086_),
    .Y(_000_));
 sky130_fd_sc_hd__inv_2 _241_ (.A(net66),
    .Y(_087_));
 sky130_fd_sc_hd__nand2_4 _242_ (.A(\tx_state[0] ),
    .B(net9),
    .Y(_088_));
 sky130_fd_sc_hd__o21ai_1 _243_ (.A1(_087_),
    .A2(_073_),
    .B1(_088_),
    .Y(_016_));
 sky130_fd_sc_hd__mux4_1 _244_ (.A0(\tx_shift_reg[0] ),
    .A1(\tx_shift_reg[1] ),
    .A2(\tx_shift_reg[2] ),
    .A3(\tx_shift_reg[3] ),
    .S0(\tx_bit_cnt[0] ),
    .S1(\tx_bit_cnt[1] ),
    .X(_089_));
 sky130_fd_sc_hd__or2_1 _245_ (.A(\tx_bit_cnt[2] ),
    .B(_089_),
    .X(_090_));
 sky130_fd_sc_hd__mux4_1 _246_ (.A0(\tx_shift_reg[4] ),
    .A1(\tx_shift_reg[5] ),
    .A2(\tx_shift_reg[6] ),
    .A3(\tx_shift_reg[7] ),
    .S0(\tx_bit_cnt[0] ),
    .S1(\tx_bit_cnt[1] ),
    .X(_091_));
 sky130_fd_sc_hd__or2b_1 _247_ (.A(_091_),
    .B_N(\tx_bit_cnt[2] ),
    .X(_092_));
 sky130_fd_sc_hd__a311o_1 _248_ (.A1(\tx_state[1] ),
    .A2(_090_),
    .A3(_092_),
    .B1(net40),
    .C1(\tx_state[0] ),
    .X(_203_));
 sky130_fd_sc_hd__nor3_2 _249_ (.A(\tx_state[1] ),
    .B(\tx_state[2] ),
    .C(net73),
    .Y(_093_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(net35),
    .B(net74),
    .Y(_001_));
 sky130_fd_sc_hd__nor2_1 _251_ (.A(_073_),
    .B(_093_),
    .Y(_094_));
 sky130_fd_sc_hd__nand2_1 _252_ (.A(\tx_baud_cnt[1] ),
    .B(\tx_baud_cnt[0] ),
    .Y(_095_));
 sky130_fd_sc_hd__or2_1 _253_ (.A(\tx_baud_cnt[1] ),
    .B(\tx_baud_cnt[0] ),
    .X(_096_));
 sky130_fd_sc_hd__and3_1 _254_ (.A(_094_),
    .B(_095_),
    .C(_096_),
    .X(_097_));
 sky130_fd_sc_hd__clkbuf_1 _255_ (.A(_097_),
    .X(_002_));
 sky130_fd_sc_hd__a21o_1 _256_ (.A1(\tx_baud_cnt[1] ),
    .A2(\tx_baud_cnt[0] ),
    .B1(\tx_baud_cnt[2] ),
    .X(_098_));
 sky130_fd_sc_hd__nand3_1 _257_ (.A(\tx_baud_cnt[1] ),
    .B(\tx_baud_cnt[0] ),
    .C(\tx_baud_cnt[2] ),
    .Y(_099_));
 sky130_fd_sc_hd__and3b_1 _258_ (.A_N(_093_),
    .B(_098_),
    .C(_099_),
    .X(_100_));
 sky130_fd_sc_hd__clkbuf_1 _259_ (.A(_100_),
    .X(_003_));
 sky130_fd_sc_hd__inv_2 _260_ (.A(net37),
    .Y(_101_));
 sky130_fd_sc_hd__and4_1 _261_ (.A(\tx_baud_cnt[1] ),
    .B(\tx_baud_cnt[0] ),
    .C(\tx_baud_cnt[3] ),
    .D(\tx_baud_cnt[2] ),
    .X(_102_));
 sky130_fd_sc_hd__or2_1 _262_ (.A(_093_),
    .B(_102_),
    .X(_103_));
 sky130_fd_sc_hd__a21oi_1 _263_ (.A1(_101_),
    .A2(_099_),
    .B1(_103_),
    .Y(_004_));
 sky130_fd_sc_hd__nand2_1 _264_ (.A(\tx_baud_cnt[4] ),
    .B(_102_),
    .Y(_104_));
 sky130_fd_sc_hd__or2_1 _265_ (.A(\tx_baud_cnt[4] ),
    .B(_102_),
    .X(_105_));
 sky130_fd_sc_hd__and3_1 _266_ (.A(_094_),
    .B(_104_),
    .C(_105_),
    .X(_106_));
 sky130_fd_sc_hd__clkbuf_1 _267_ (.A(_106_),
    .X(_005_));
 sky130_fd_sc_hd__and3_1 _268_ (.A(\tx_baud_cnt[5] ),
    .B(\tx_baud_cnt[4] ),
    .C(_102_),
    .X(_107_));
 sky130_fd_sc_hd__a21o_1 _269_ (.A1(\tx_baud_cnt[4] ),
    .A2(_102_),
    .B1(\tx_baud_cnt[5] ),
    .X(_108_));
 sky130_fd_sc_hd__and3b_1 _270_ (.A_N(_107_),
    .B(_094_),
    .C(_108_),
    .X(_109_));
 sky130_fd_sc_hd__clkbuf_1 _271_ (.A(_109_),
    .X(_006_));
 sky130_fd_sc_hd__and4_2 _272_ (.A(\tx_baud_cnt[5] ),
    .B(\tx_baud_cnt[4] ),
    .C(\tx_baud_cnt[6] ),
    .D(_102_),
    .X(_110_));
 sky130_fd_sc_hd__nor2_1 _273_ (.A(_093_),
    .B(_110_),
    .Y(_111_));
 sky130_fd_sc_hd__o21a_1 _274_ (.A1(net33),
    .A2(_107_),
    .B1(_111_),
    .X(_007_));
 sky130_fd_sc_hd__a211o_1 _275_ (.A1(\tx_baud_cnt[7] ),
    .A2(_110_),
    .B1(_093_),
    .C1(_073_),
    .X(_112_));
 sky130_fd_sc_hd__o21ba_1 _276_ (.A1(net61),
    .A2(_110_),
    .B1_N(_112_),
    .X(_008_));
 sky130_fd_sc_hd__nand3_1 _277_ (.A(\tx_baud_cnt[7] ),
    .B(\tx_baud_cnt[8] ),
    .C(_110_),
    .Y(_113_));
 sky130_fd_sc_hd__a21o_1 _278_ (.A1(\tx_baud_cnt[7] ),
    .A2(_110_),
    .B1(\tx_baud_cnt[8] ),
    .X(_114_));
 sky130_fd_sc_hd__and3_1 _279_ (.A(_094_),
    .B(_113_),
    .C(_114_),
    .X(_115_));
 sky130_fd_sc_hd__clkbuf_1 _280_ (.A(_115_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _281_ (.A0(net38),
    .A1(net12),
    .S(_086_),
    .X(_116_));
 sky130_fd_sc_hd__clkbuf_1 _282_ (.A(net39),
    .X(_018_));
 sky130_fd_sc_hd__mux2_1 _283_ (.A0(net57),
    .A1(net13),
    .S(_086_),
    .X(_117_));
 sky130_fd_sc_hd__clkbuf_1 _284_ (.A(net58),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _285_ (.A0(net55),
    .A1(net14),
    .S(_086_),
    .X(_118_));
 sky130_fd_sc_hd__clkbuf_1 _286_ (.A(net56),
    .X(_020_));
 sky130_fd_sc_hd__mux2_1 _287_ (.A0(net63),
    .A1(net15),
    .S(_086_),
    .X(_119_));
 sky130_fd_sc_hd__clkbuf_1 _288_ (.A(net64),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _289_ (.A0(net50),
    .A1(net16),
    .S(_086_),
    .X(_120_));
 sky130_fd_sc_hd__clkbuf_1 _290_ (.A(net51),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _291_ (.A0(\rx_shift_reg[5] ),
    .A1(net46),
    .S(_086_),
    .X(_121_));
 sky130_fd_sc_hd__clkbuf_1 _292_ (.A(net47),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _293_ (.A0(net49),
    .A1(net18),
    .S(_086_),
    .X(_122_));
 sky130_fd_sc_hd__clkbuf_1 _294_ (.A(_122_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _295_ (.A0(net43),
    .A1(net19),
    .S(_086_),
    .X(_123_));
 sky130_fd_sc_hd__clkbuf_1 _296_ (.A(_123_),
    .X(_025_));
 sky130_fd_sc_hd__or3_1 _297_ (.A(\rx_state[3] ),
    .B(\rx_state[1] ),
    .C(\rx_state[2] ),
    .X(_124_));
 sky130_fd_sc_hd__buf_2 _298_ (.A(_124_),
    .X(_125_));
 sky130_fd_sc_hd__o21ba_1 _299_ (.A1(\rx_state[0] ),
    .A2(_125_),
    .B1_N(rx_sync2),
    .X(_126_));
 sky130_fd_sc_hd__a21oi_1 _300_ (.A1(_065_),
    .A2(_125_),
    .B1(_126_),
    .Y(_127_));
 sky130_fd_sc_hd__mux2_1 _301_ (.A0(_125_),
    .A1(_127_),
    .S(\rx_baud_cnt[0] ),
    .X(_128_));
 sky130_fd_sc_hd__clkbuf_1 _302_ (.A(_128_),
    .X(_026_));
 sky130_fd_sc_hd__or2_2 _303_ (.A(\rx_state[3] ),
    .B(\rx_state[1] ),
    .X(_129_));
 sky130_fd_sc_hd__nor2_1 _304_ (.A(\rx_state[2] ),
    .B(_129_),
    .Y(_130_));
 sky130_fd_sc_hd__a21o_1 _305_ (.A1(_082_),
    .A2(_129_),
    .B1(_077_),
    .X(_131_));
 sky130_fd_sc_hd__xor2_1 _306_ (.A(\rx_baud_cnt[1] ),
    .B(\rx_baud_cnt[0] ),
    .X(_132_));
 sky130_fd_sc_hd__a32o_1 _307_ (.A1(\rx_baud_cnt[1] ),
    .A2(_078_),
    .A3(_130_),
    .B1(_131_),
    .B2(_132_),
    .X(_027_));
 sky130_fd_sc_hd__and3_1 _308_ (.A(\rx_baud_cnt[1] ),
    .B(\rx_baud_cnt[0] ),
    .C(\rx_baud_cnt[2] ),
    .X(_133_));
 sky130_fd_sc_hd__nand2_1 _309_ (.A(_125_),
    .B(_133_),
    .Y(_134_));
 sky130_fd_sc_hd__a31o_1 _310_ (.A1(\rx_baud_cnt[1] ),
    .A2(\rx_baud_cnt[0] ),
    .A3(_125_),
    .B1(net70),
    .X(_135_));
 sky130_fd_sc_hd__o211a_1 _311_ (.A1(_078_),
    .A2(_125_),
    .B1(_134_),
    .C1(_135_),
    .X(_028_));
 sky130_fd_sc_hd__o21bai_1 _312_ (.A1(_077_),
    .A2(_129_),
    .B1_N(_133_),
    .Y(_136_));
 sky130_fd_sc_hd__o31a_1 _313_ (.A1(_058_),
    .A2(_063_),
    .A3(_064_),
    .B1(_125_),
    .X(_137_));
 sky130_fd_sc_hd__or2_1 _314_ (.A(_126_),
    .B(_137_),
    .X(_138_));
 sky130_fd_sc_hd__a21oi_1 _315_ (.A1(_125_),
    .A2(_133_),
    .B1(net36),
    .Y(_139_));
 sky130_fd_sc_hd__a31oi_1 _316_ (.A1(net36),
    .A2(_136_),
    .A3(_138_),
    .B1(_139_),
    .Y(_029_));
 sky130_fd_sc_hd__and4_1 _317_ (.A(\rx_baud_cnt[1] ),
    .B(\rx_baud_cnt[0] ),
    .C(\rx_baud_cnt[3] ),
    .D(\rx_baud_cnt[2] ),
    .X(_140_));
 sky130_fd_sc_hd__or2_1 _318_ (.A(\rx_baud_cnt[4] ),
    .B(_140_),
    .X(_141_));
 sky130_fd_sc_hd__nand2_1 _319_ (.A(\rx_baud_cnt[4] ),
    .B(_140_),
    .Y(_142_));
 sky130_fd_sc_hd__a32o_1 _320_ (.A1(_131_),
    .A2(_141_),
    .A3(_142_),
    .B1(_127_),
    .B2(net44),
    .X(_030_));
 sky130_fd_sc_hd__and4b_1 _321_ (.A_N(\rx_state[3] ),
    .B(_068_),
    .C(\rx_baud_cnt[5] ),
    .D(_078_),
    .X(_143_));
 sky130_fd_sc_hd__a21o_1 _322_ (.A1(_082_),
    .A2(_129_),
    .B1(\rx_state[2] ),
    .X(_144_));
 sky130_fd_sc_hd__a21o_1 _323_ (.A1(\rx_baud_cnt[4] ),
    .A2(_140_),
    .B1(\rx_baud_cnt[5] ),
    .X(_145_));
 sky130_fd_sc_hd__and2_1 _324_ (.A(\rx_baud_cnt[4] ),
    .B(\rx_baud_cnt[5] ),
    .X(_146_));
 sky130_fd_sc_hd__and2_1 _325_ (.A(_146_),
    .B(_140_),
    .X(_147_));
 sky130_fd_sc_hd__clkbuf_2 _326_ (.A(_147_),
    .X(_148_));
 sky130_fd_sc_hd__nand2_1 _327_ (.A(_125_),
    .B(_148_),
    .Y(_149_));
 sky130_fd_sc_hd__o211a_1 _328_ (.A1(_143_),
    .A2(_144_),
    .B1(_145_),
    .C1(_149_),
    .X(_031_));
 sky130_fd_sc_hd__inv_2 _329_ (.A(\rx_baud_cnt[6] ),
    .Y(_150_));
 sky130_fd_sc_hd__nand2_1 _330_ (.A(\rx_baud_cnt[6] ),
    .B(_148_),
    .Y(_151_));
 sky130_fd_sc_hd__o22a_1 _331_ (.A1(_077_),
    .A2(_129_),
    .B1(_148_),
    .B2(\rx_baud_cnt[6] ),
    .X(_152_));
 sky130_fd_sc_hd__a2bb2o_1 _332_ (.A1_N(_150_),
    .A2_N(_138_),
    .B1(_151_),
    .B2(_152_),
    .X(_032_));
 sky130_fd_sc_hd__a31o_1 _333_ (.A1(\rx_baud_cnt[6] ),
    .A2(_146_),
    .A3(_140_),
    .B1(\rx_baud_cnt[7] ),
    .X(_153_));
 sky130_fd_sc_hd__nand3_1 _334_ (.A(\rx_baud_cnt[6] ),
    .B(\rx_baud_cnt[7] ),
    .C(_148_),
    .Y(_154_));
 sky130_fd_sc_hd__a32o_1 _335_ (.A1(_131_),
    .A2(_153_),
    .A3(_154_),
    .B1(_127_),
    .B2(net42),
    .X(_033_));
 sky130_fd_sc_hd__nand4_1 _336_ (.A(\rx_baud_cnt[6] ),
    .B(\rx_baud_cnt[7] ),
    .C(\rx_baud_cnt[8] ),
    .D(_148_),
    .Y(_155_));
 sky130_fd_sc_hd__a31o_1 _337_ (.A1(\rx_baud_cnt[6] ),
    .A2(\rx_baud_cnt[7] ),
    .A3(_148_),
    .B1(\rx_baud_cnt[8] ),
    .X(_156_));
 sky130_fd_sc_hd__a32o_1 _338_ (.A1(\rx_baud_cnt[8] ),
    .A2(_078_),
    .A3(_130_),
    .B1(_061_),
    .B2(\rx_state[2] ),
    .X(_157_));
 sky130_fd_sc_hd__a31o_1 _339_ (.A1(_144_),
    .A2(_155_),
    .A3(_156_),
    .B1(_157_),
    .X(_034_));
 sky130_fd_sc_hd__o31a_2 _340_ (.A1(_058_),
    .A2(_059_),
    .A3(_060_),
    .B1(\rx_state[1] ),
    .X(_158_));
 sky130_fd_sc_hd__nor2_1 _341_ (.A(\rx_state[1] ),
    .B(\rx_state[0] ),
    .Y(_159_));
 sky130_fd_sc_hd__nor2_1 _342_ (.A(_158_),
    .B(_159_),
    .Y(_160_));
 sky130_fd_sc_hd__a21oi_1 _343_ (.A1(\rx_state[1] ),
    .A2(net23),
    .B1(net34),
    .Y(_161_));
 sky130_fd_sc_hd__a21oi_1 _344_ (.A1(net34),
    .A2(_160_),
    .B1(_161_),
    .Y(_035_));
 sky130_fd_sc_hd__or2_1 _345_ (.A(\rx_bit_cnt[1] ),
    .B(\rx_bit_cnt[0] ),
    .X(_162_));
 sky130_fd_sc_hd__and3_1 _346_ (.A(\rx_state[1] ),
    .B(_084_),
    .C(_162_),
    .X(_163_));
 sky130_fd_sc_hd__mux2_1 _347_ (.A0(\rx_bit_cnt[1] ),
    .A1(_163_),
    .S(_160_),
    .X(_164_));
 sky130_fd_sc_hd__clkbuf_1 _348_ (.A(_164_),
    .X(_036_));
 sky130_fd_sc_hd__or2_1 _349_ (.A(\rx_state[1] ),
    .B(\rx_state[0] ),
    .X(_165_));
 sky130_fd_sc_hd__o31a_1 _350_ (.A1(_084_),
    .A2(_158_),
    .A3(_159_),
    .B1(_083_),
    .X(_166_));
 sky130_fd_sc_hd__a21oi_1 _351_ (.A1(_069_),
    .A2(_165_),
    .B1(_166_),
    .Y(_037_));
 sky130_fd_sc_hd__or3_2 _352_ (.A(\rx_state[3] ),
    .B(\rx_state[0] ),
    .C(\rx_state[2] ),
    .X(_167_));
 sky130_fd_sc_hd__or4_1 _353_ (.A(\rx_bit_cnt[2] ),
    .B(_167_),
    .C(_158_),
    .D(_162_),
    .X(_168_));
 sky130_fd_sc_hd__mux2_1 _354_ (.A0(_067_),
    .A1(net38),
    .S(_168_),
    .X(_169_));
 sky130_fd_sc_hd__clkbuf_1 _355_ (.A(_169_),
    .X(_038_));
 sky130_fd_sc_hd__or2b_1 _356_ (.A(\rx_bit_cnt[1] ),
    .B_N(\rx_bit_cnt[0] ),
    .X(_170_));
 sky130_fd_sc_hd__or4_1 _357_ (.A(\rx_bit_cnt[2] ),
    .B(_167_),
    .C(_158_),
    .D(_170_),
    .X(_171_));
 sky130_fd_sc_hd__mux2_1 _358_ (.A0(_067_),
    .A1(net57),
    .S(_171_),
    .X(_172_));
 sky130_fd_sc_hd__clkbuf_1 _359_ (.A(_172_),
    .X(_039_));
 sky130_fd_sc_hd__or2b_1 _360_ (.A(\rx_bit_cnt[0] ),
    .B_N(\rx_bit_cnt[1] ),
    .X(_173_));
 sky130_fd_sc_hd__or4_1 _361_ (.A(\rx_bit_cnt[2] ),
    .B(_167_),
    .C(_158_),
    .D(_173_),
    .X(_174_));
 sky130_fd_sc_hd__mux2_1 _362_ (.A0(_067_),
    .A1(net55),
    .S(_174_),
    .X(_175_));
 sky130_fd_sc_hd__clkbuf_1 _363_ (.A(_175_),
    .X(_040_));
 sky130_fd_sc_hd__or4_1 _364_ (.A(\rx_bit_cnt[2] ),
    .B(_084_),
    .C(_167_),
    .D(_158_),
    .X(_176_));
 sky130_fd_sc_hd__mux2_1 _365_ (.A0(_067_),
    .A1(net63),
    .S(_176_),
    .X(_177_));
 sky130_fd_sc_hd__clkbuf_1 _366_ (.A(_177_),
    .X(_041_));
 sky130_fd_sc_hd__or4_1 _367_ (.A(_083_),
    .B(_167_),
    .C(_158_),
    .D(_162_),
    .X(_178_));
 sky130_fd_sc_hd__mux2_1 _368_ (.A0(_067_),
    .A1(net50),
    .S(_178_),
    .X(_179_));
 sky130_fd_sc_hd__clkbuf_1 _369_ (.A(_179_),
    .X(_042_));
 sky130_fd_sc_hd__or4_1 _370_ (.A(_083_),
    .B(_167_),
    .C(_158_),
    .D(_170_),
    .X(_180_));
 sky130_fd_sc_hd__mux2_1 _371_ (.A0(_067_),
    .A1(net62),
    .S(_180_),
    .X(_181_));
 sky130_fd_sc_hd__clkbuf_1 _372_ (.A(_181_),
    .X(_043_));
 sky130_fd_sc_hd__or4_1 _373_ (.A(_083_),
    .B(_167_),
    .C(_158_),
    .D(_173_),
    .X(_182_));
 sky130_fd_sc_hd__mux2_1 _374_ (.A0(_067_),
    .A1(net49),
    .S(_182_),
    .X(_183_));
 sky130_fd_sc_hd__clkbuf_1 _375_ (.A(_183_),
    .X(_044_));
 sky130_fd_sc_hd__or4_1 _376_ (.A(_083_),
    .B(_084_),
    .C(_167_),
    .D(_158_),
    .X(_184_));
 sky130_fd_sc_hd__mux2_1 _377_ (.A0(_067_),
    .A1(net43),
    .S(_184_),
    .X(_185_));
 sky130_fd_sc_hd__clkbuf_1 _378_ (.A(_185_),
    .X(_045_));
 sky130_fd_sc_hd__inv_2 _379_ (.A(_088_),
    .Y(_186_));
 sky130_fd_sc_hd__a21boi_1 _380_ (.A1(_074_),
    .A2(_073_),
    .B1_N(net21),
    .Y(_187_));
 sky130_fd_sc_hd__o22a_1 _381_ (.A1(net41),
    .A2(_186_),
    .B1(_187_),
    .B2(_080_),
    .X(_046_));
 sky130_fd_sc_hd__and4_1 _382_ (.A(\tx_baud_cnt[0] ),
    .B(\tx_state[1] ),
    .C(_070_),
    .D(_071_),
    .X(_188_));
 sky130_fd_sc_hd__and2b_1 _383_ (.A_N(\tx_state[1] ),
    .B(\tx_state[0] ),
    .X(_189_));
 sky130_fd_sc_hd__a41o_1 _384_ (.A1(\tx_baud_cnt[0] ),
    .A2(\tx_state[1] ),
    .A3(_070_),
    .A4(_071_),
    .B1(_189_),
    .X(_190_));
 sky130_fd_sc_hd__nand2_1 _385_ (.A(\tx_bit_cnt[0] ),
    .B(_190_),
    .Y(_191_));
 sky130_fd_sc_hd__o21a_1 _386_ (.A1(\tx_bit_cnt[0] ),
    .A2(_188_),
    .B1(_191_),
    .X(_047_));
 sky130_fd_sc_hd__inv_2 _387_ (.A(net69),
    .Y(_192_));
 sky130_fd_sc_hd__a31o_1 _388_ (.A1(\tx_bit_cnt[1] ),
    .A2(\tx_bit_cnt[0] ),
    .A3(_188_),
    .B1(_189_),
    .X(_193_));
 sky130_fd_sc_hd__a21oi_1 _389_ (.A1(_192_),
    .A2(_191_),
    .B1(_193_),
    .Y(_048_));
 sky130_fd_sc_hd__a31o_1 _390_ (.A1(\tx_bit_cnt[1] ),
    .A2(\tx_bit_cnt[0] ),
    .A3(_190_),
    .B1(\tx_bit_cnt[2] ),
    .X(_194_));
 sky130_fd_sc_hd__nor3b_1 _391_ (.A(_081_),
    .B(_189_),
    .C_N(_194_),
    .Y(_049_));
 sky130_fd_sc_hd__mux2_1 _392_ (.A0(net1),
    .A1(net67),
    .S(_088_),
    .X(_195_));
 sky130_fd_sc_hd__clkbuf_1 _393_ (.A(_195_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _394_ (.A0(net2),
    .A1(net59),
    .S(_088_),
    .X(_196_));
 sky130_fd_sc_hd__clkbuf_1 _395_ (.A(_196_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _396_ (.A0(net3),
    .A1(net68),
    .S(_088_),
    .X(_197_));
 sky130_fd_sc_hd__clkbuf_1 _397_ (.A(_197_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_1 _398_ (.A0(net4),
    .A1(net60),
    .S(_088_),
    .X(_198_));
 sky130_fd_sc_hd__clkbuf_1 _399_ (.A(_198_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_1 _400_ (.A0(net5),
    .A1(net65),
    .S(_088_),
    .X(_199_));
 sky130_fd_sc_hd__clkbuf_1 _401_ (.A(_199_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _402_ (.A0(net6),
    .A1(net45),
    .S(_088_),
    .X(_200_));
 sky130_fd_sc_hd__clkbuf_1 _403_ (.A(_200_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_1 _404_ (.A0(net7),
    .A1(net54),
    .S(_088_),
    .X(_201_));
 sky130_fd_sc_hd__clkbuf_1 _405_ (.A(_201_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _406_ (.A0(net8),
    .A1(net48),
    .S(_088_),
    .X(_202_));
 sky130_fd_sc_hd__clkbuf_1 _407_ (.A(_202_),
    .X(_057_));
 sky130_fd_sc_hd__dfrtp_1 _408_ (.CLK(clknet_3_3__leaf_clk),
    .D(_000_),
    .RESET_B(net29),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _409_ (.CLK(clknet_3_4__leaf_clk),
    .D(_018_),
    .RESET_B(net25),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_1 _410_ (.CLK(clknet_3_0__leaf_clk),
    .D(_019_),
    .RESET_B(net24),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _411_ (.CLK(clknet_3_0__leaf_clk),
    .D(_020_),
    .RESET_B(net24),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _412_ (.CLK(clknet_3_0__leaf_clk),
    .D(_021_),
    .RESET_B(net24),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_1 _413_ (.CLK(clknet_3_4__leaf_clk),
    .D(_022_),
    .RESET_B(net25),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _414_ (.CLK(clknet_3_1__leaf_clk),
    .D(_023_),
    .RESET_B(net24),
    .Q(net17));
 sky130_fd_sc_hd__dfrtp_1 _415_ (.CLK(clknet_3_5__leaf_clk),
    .D(_024_),
    .RESET_B(net25),
    .Q(net18));
 sky130_fd_sc_hd__dfrtp_1 _416_ (.CLK(clknet_3_5__leaf_clk),
    .D(_025_),
    .RESET_B(net25),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_2 _417_ (.CLK(clknet_3_2__leaf_clk),
    .D(_026_),
    .RESET_B(net28),
    .Q(\rx_baud_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _418_ (.CLK(clknet_3_3__leaf_clk),
    .D(_027_),
    .RESET_B(net28),
    .Q(\rx_baud_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _419_ (.CLK(clknet_3_6__leaf_clk),
    .D(_028_),
    .RESET_B(net28),
    .Q(\rx_baud_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_1 _420_ (.CLK(clknet_3_6__leaf_clk),
    .D(_029_),
    .RESET_B(net28),
    .Q(\rx_baud_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_2 _421_ (.CLK(clknet_3_2__leaf_clk),
    .D(_030_),
    .RESET_B(net28),
    .Q(\rx_baud_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_1 _422_ (.CLK(clknet_3_0__leaf_clk),
    .D(_031_),
    .RESET_B(net27),
    .Q(\rx_baud_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_4 _423_ (.CLK(clknet_3_2__leaf_clk),
    .D(_032_),
    .RESET_B(net28),
    .Q(\rx_baud_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_2 _424_ (.CLK(clknet_3_2__leaf_clk),
    .D(_033_),
    .RESET_B(net27),
    .Q(\rx_baud_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_1 _425_ (.CLK(clknet_3_0__leaf_clk),
    .D(_034_),
    .RESET_B(net27),
    .Q(\rx_baud_cnt[8] ));
 sky130_fd_sc_hd__dfrtp_2 _426_ (.CLK(clknet_3_4__leaf_clk),
    .D(_035_),
    .RESET_B(net25),
    .Q(\rx_bit_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_1 _427_ (.CLK(clknet_3_4__leaf_clk),
    .D(_036_),
    .RESET_B(net25),
    .Q(\rx_bit_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_2 _428_ (.CLK(clknet_3_1__leaf_clk),
    .D(_037_),
    .RESET_B(net24),
    .Q(\rx_bit_cnt[2] ));
 sky130_fd_sc_hd__dfstp_1 _429_ (.CLK(clknet_3_5__leaf_clk),
    .D(_203_),
    .SET_B(net25),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_1 _430_ (.CLK(clknet_3_1__leaf_clk),
    .D(_038_),
    .RESET_B(net25),
    .Q(\rx_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _431_ (.CLK(clknet_3_0__leaf_clk),
    .D(_039_),
    .RESET_B(net24),
    .Q(\rx_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _432_ (.CLK(clknet_3_0__leaf_clk),
    .D(_040_),
    .RESET_B(net24),
    .Q(\rx_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _433_ (.CLK(clknet_3_0__leaf_clk),
    .D(_041_),
    .RESET_B(net24),
    .Q(\rx_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_1 _434_ (.CLK(clknet_3_4__leaf_clk),
    .D(_042_),
    .RESET_B(net25),
    .Q(\rx_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_1 _435_ (.CLK(clknet_3_1__leaf_clk),
    .D(_043_),
    .RESET_B(net24),
    .Q(\rx_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_1 _436_ (.CLK(clknet_3_4__leaf_clk),
    .D(_044_),
    .RESET_B(net25),
    .Q(\rx_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_1 _437_ (.CLK(clknet_3_4__leaf_clk),
    .D(_045_),
    .RESET_B(net26),
    .Q(\rx_shift_reg[7] ));
 sky130_fd_sc_hd__dfrtp_4 _438_ (.CLK(clknet_3_6__leaf_clk),
    .D(_001_),
    .RESET_B(net29),
    .Q(\tx_baud_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _439_ (.CLK(clknet_3_7__leaf_clk),
    .D(_002_),
    .RESET_B(net29),
    .Q(\tx_baud_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _440_ (.CLK(clknet_3_6__leaf_clk),
    .D(_003_),
    .RESET_B(net29),
    .Q(\tx_baud_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_1 _441_ (.CLK(clknet_3_4__leaf_clk),
    .D(_004_),
    .RESET_B(net26),
    .Q(\tx_baud_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_1 _442_ (.CLK(clknet_3_5__leaf_clk),
    .D(_005_),
    .RESET_B(net26),
    .Q(\tx_baud_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_1 _443_ (.CLK(clknet_3_5__leaf_clk),
    .D(_006_),
    .RESET_B(net26),
    .Q(\tx_baud_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_1 _444_ (.CLK(clknet_3_7__leaf_clk),
    .D(_007_),
    .RESET_B(net29),
    .Q(\tx_baud_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_1 _445_ (.CLK(clknet_3_7__leaf_clk),
    .D(_008_),
    .RESET_B(net29),
    .Q(\tx_baud_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_1 _446_ (.CLK(clknet_3_7__leaf_clk),
    .D(_009_),
    .RESET_B(net29),
    .Q(\tx_baud_cnt[8] ));
 sky130_fd_sc_hd__dfrtp_1 _447_ (.CLK(clknet_3_7__leaf_clk),
    .D(_046_),
    .RESET_B(net29),
    .Q(net21));
 sky130_fd_sc_hd__dfrtp_4 _448_ (.CLK(clknet_3_6__leaf_clk),
    .D(_047_),
    .RESET_B(net29),
    .Q(\tx_bit_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _449_ (.CLK(clknet_3_6__leaf_clk),
    .D(_048_),
    .RESET_B(net29),
    .Q(\tx_bit_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _450_ (.CLK(clknet_3_6__leaf_clk),
    .D(_049_),
    .RESET_B(net30),
    .Q(\tx_bit_cnt[2] ));
 sky130_fd_sc_hd__dfxtp_1 _451_ (.CLK(clknet_3_2__leaf_clk),
    .D(net11),
    .Q(rx_sync1));
 sky130_fd_sc_hd__dfxtp_1 _452_ (.CLK(clknet_3_2__leaf_clk),
    .D(net32),
    .Q(rx_sync2));
 sky130_fd_sc_hd__dfstp_1 _453_ (.CLK(clknet_3_1__leaf_clk),
    .D(_010_),
    .SET_B(net27),
    .Q(\rx_state[0] ));
 sky130_fd_sc_hd__dfrtp_4 _454_ (.CLK(clknet_3_1__leaf_clk),
    .D(_011_),
    .RESET_B(net24),
    .Q(\rx_state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _455_ (.CLK(clknet_3_3__leaf_clk),
    .D(_012_),
    .RESET_B(net26),
    .Q(\rx_state[2] ));
 sky130_fd_sc_hd__dfrtp_4 _456_ (.CLK(clknet_3_5__leaf_clk),
    .D(_013_),
    .RESET_B(net26),
    .Q(\rx_state[3] ));
 sky130_fd_sc_hd__dfrtp_1 _457_ (.CLK(clknet_3_2__leaf_clk),
    .D(_050_),
    .RESET_B(net28),
    .Q(\tx_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _458_ (.CLK(clknet_3_6__leaf_clk),
    .D(_051_),
    .RESET_B(net28),
    .Q(\tx_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _459_ (.CLK(clknet_3_2__leaf_clk),
    .D(_052_),
    .RESET_B(net28),
    .Q(\tx_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _460_ (.CLK(clknet_3_3__leaf_clk),
    .D(_053_),
    .RESET_B(net28),
    .Q(\tx_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_1 _461_ (.CLK(clknet_3_2__leaf_clk),
    .D(_054_),
    .RESET_B(net31),
    .Q(\tx_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_1 _462_ (.CLK(clknet_3_3__leaf_clk),
    .D(_055_),
    .RESET_B(net31),
    .Q(\tx_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_1 _463_ (.CLK(clknet_3_3__leaf_clk),
    .D(_056_),
    .RESET_B(net31),
    .Q(\tx_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_1 _464_ (.CLK(clknet_3_3__leaf_clk),
    .D(_057_),
    .RESET_B(net30),
    .Q(\tx_shift_reg[7] ));
 sky130_fd_sc_hd__dfstp_1 _465_ (.CLK(clknet_3_7__leaf_clk),
    .D(_014_),
    .SET_B(net30),
    .Q(\tx_state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _466_ (.CLK(clknet_3_7__leaf_clk),
    .D(net53),
    .RESET_B(net30),
    .Q(\tx_state[1] ));
 sky130_fd_sc_hd__dfrtp_1 _467_ (.CLK(clknet_3_7__leaf_clk),
    .D(_016_),
    .RESET_B(net30),
    .Q(\tx_state[2] ));
 sky130_fd_sc_hd__dfrtp_1 _468_ (.CLK(clknet_3_7__leaf_clk),
    .D(_017_),
    .RESET_B(net30),
    .Q(\tx_state[3] ));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_170 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(data_in[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(data_in[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(data_in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(data_in[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(data_in[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(data_in[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(data_in[6]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(data_in[7]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(data_valid),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(rst_n),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(rx_in),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(data_out[0]));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(data_out[1]));
 sky130_fd_sc_hd__clkbuf_4 output14 (.A(net14),
    .X(data_out[2]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(data_out[3]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(data_out[4]));
 sky130_fd_sc_hd__clkbuf_4 output17 (.A(net17),
    .X(data_out[5]));
 sky130_fd_sc_hd__clkbuf_4 output18 (.A(net18),
    .X(data_out[6]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(data_out[7]));
 sky130_fd_sc_hd__clkbuf_4 output20 (.A(net20),
    .X(data_ready));
 sky130_fd_sc_hd__clkbuf_4 output21 (.A(net21),
    .X(tx_busy));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(tx_out));
 sky130_fd_sc_hd__clkbuf_2 max_cap23 (.A(_061_),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_4 fanout24 (.A(net27),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_4 fanout25 (.A(net27),
    .X(net25));
 sky130_fd_sc_hd__buf_2 fanout26 (.A(net27),
    .X(net26));
 sky130_fd_sc_hd__buf_2 fanout27 (.A(net10),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_4 fanout28 (.A(net31),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_4 fanout29 (.A(net31),
    .X(net29));
 sky130_fd_sc_hd__buf_2 fanout30 (.A(net31),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_2 fanout31 (.A(net10),
    .X(net31));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_clk (.A(clknet_0_clk),
    .X(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_clk (.A(clknet_0_clk),
    .X(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_clk (.A(clknet_0_clk),
    .X(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_clk (.A(clknet_0_clk),
    .X(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_clk (.A(clknet_0_clk),
    .X(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_clk (.A(clknet_0_clk),
    .X(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_clk (.A(clknet_0_clk),
    .X(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_clk (.A(clknet_0_clk),
    .X(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(rx_sync1),
    .X(net32));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\tx_baud_cnt[6] ),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\rx_bit_cnt[0] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\tx_baud_cnt[0] ),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\rx_baud_cnt[3] ),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\tx_baud_cnt[3] ),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\rx_shift_reg[0] ),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(_116_),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\tx_state[3] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(net21),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\rx_baud_cnt[7] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\rx_shift_reg[7] ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\rx_baud_cnt[4] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\tx_shift_reg[5] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(net17),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(_121_),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\tx_shift_reg[7] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\rx_shift_reg[6] ),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\rx_shift_reg[4] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(_120_),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\tx_state[1] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(_015_),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\tx_shift_reg[6] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\rx_shift_reg[2] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(_118_),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\rx_shift_reg[1] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(_117_),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\tx_shift_reg[1] ),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\tx_shift_reg[3] ),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\tx_baud_cnt[7] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(\rx_shift_reg[5] ),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\rx_shift_reg[3] ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(_119_),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\tx_shift_reg[4] ),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(\tx_state[2] ),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\tx_shift_reg[0] ),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(\tx_shift_reg[2] ),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(\tx_bit_cnt[1] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(\rx_baud_cnt[2] ),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold40 (.A(\rx_state[3] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold41 (.A(\rx_state[1] ),
    .X(net72));
 sky130_fd_sc_hd__buf_1 hold42 (.A(\tx_state[3] ),
    .X(net73));
 sky130_fd_sc_hd__dlygate4sd3_1 hold43 (.A(_093_),
    .X(net74));
 sky130_fd_sc_hd__fill_2 FILLER_0_0_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_63 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_104 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_119 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_68 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_47 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_94 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_122 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_160 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_184 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_192 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_19 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_89 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_146 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_181 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_33 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_99 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_106 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_118 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_177 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_19 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_28 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_77 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_133 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_145 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_33 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_45 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_134 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_177 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_189 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_14 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_95 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_110 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_156 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_96 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_162 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_174 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_186 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_192 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_93 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_107 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_128 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_144 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_156 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_168 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_192 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_99 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_45 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_95 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_104 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_131 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_143 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_155 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_160 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_45 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_66 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_99 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_174 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_186 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_192 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_14 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_63 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_91 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_145 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_165 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_91 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_116 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_122 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_126 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_145 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_165 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_184 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_192 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_51 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_143 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_190 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_58 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_63 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_128 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_188 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_147 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_157 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_169 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_136 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_183 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_97 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_112 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_120 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_132 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_154 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_32 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_89 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_127 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_165 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_175 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_185 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_51 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_77 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_105 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_117 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_137 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_177 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_35 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_120 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_146 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_43 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_149 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_153 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_162 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_170 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_192 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_89 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_110 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_132 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_27_152 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_166 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_89 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_115 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_173 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_185 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_86 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_106 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_129 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_160 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_94 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_106 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_161 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_190 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_31_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_54 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_140 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_9 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_189 ();
endmodule
