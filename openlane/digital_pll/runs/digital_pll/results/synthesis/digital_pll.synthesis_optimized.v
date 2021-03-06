module digital_pll (dco,
    enable,
    osc,
    resetb,
    clockp,
    div,
    ext_trim);
 input dco;
 input enable;
 input osc;
 input resetb;
 output [1:0] clockp;
 input [4:0] div;
 input [25:0] ext_trim;

 sky130_fd_sc_hd__inv_8 _243_ (.A(\pll_control.count0[4] ),
    .Y(_043_));
 sky130_fd_sc_hd__inv_8 _244_ (.A(\pll_control.count1[4] ),
    .Y(_044_));
 sky130_fd_sc_hd__inv_8 _245_ (.A(\pll_control.count0[3] ),
    .Y(_045_));
 sky130_fd_sc_hd__inv_8 _246_ (.A(\pll_control.count1[3] ),
    .Y(_046_));
 sky130_fd_sc_hd__inv_8 _247_ (.A(\pll_control.count0[2] ),
    .Y(_047_));
 sky130_fd_sc_hd__inv_8 _248_ (.A(\pll_control.count1[2] ),
    .Y(_048_));
 sky130_fd_sc_hd__inv_8 _249_ (.A(\pll_control.count0[1] ),
    .Y(_049_));
 sky130_fd_sc_hd__inv_8 _250_ (.A(\pll_control.count1[1] ),
    .Y(_050_));
 sky130_fd_sc_hd__inv_8 _251_ (.A(\pll_control.count0[0] ),
    .Y(_051_));
 sky130_fd_sc_hd__inv_8 _252_ (.A(\pll_control.prep[1] ),
    .Y(_052_));
 sky130_fd_sc_hd__inv_8 _253_ (.A(\pll_control.tint[4] ),
    .Y(_053_));
 sky130_fd_sc_hd__inv_8 _254_ (.A(\pll_control.tint[3] ),
    .Y(_054_));
 sky130_fd_sc_hd__inv_8 _255_ (.A(\pll_control.tint[2] ),
    .Y(_055_));
 sky130_fd_sc_hd__inv_8 _256_ (.A(\pll_control.tint[1] ),
    .Y(_056_));
 sky130_fd_sc_hd__inv_8 _257_ (.A(\pll_control.tint[0] ),
    .Y(_057_));
 sky130_fd_sc_hd__inv_8 _258_ (.A(\pll_control.tval[1] ),
    .Y(_058_));
 sky130_fd_sc_hd__inv_8 _259_ (.A(\pll_control.tval[0] ),
    .Y(_059_));
 sky130_fd_sc_hd__inv_8 _260_ (.A(div[2]),
    .Y(_060_));
 sky130_fd_sc_hd__inv_8 _261_ (.A(div[0]),
    .Y(_061_));
 sky130_fd_sc_hd__inv_8 _262_ (.A(dco),
    .Y(_062_));
 sky130_fd_sc_hd__xor2_4 _263_ (.A(\pll_control.oscbuf[1] ),
    .B(\pll_control.oscbuf[2] ),
    .X(_063_));
 sky130_fd_sc_hd__inv_8 _264_ (.A(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__a2bb2o_4 _265_ (.A1_N(_043_),
    .A2_N(_064_),
    .B1(\pll_control.count1[4] ),
    .B2(_064_),
    .X(_042_));
 sky130_fd_sc_hd__nand2_4 _266_ (.A(enable),
    .B(resetb),
    .Y(\ringosc.iss.reset ));
 sky130_fd_sc_hd__and3_4 _267_ (.A(enable),
    .B(resetb),
    .C(_062_),
    .X(_021_));
 sky130_fd_sc_hd__a2bb2o_4 _268_ (.A1_N(_045_),
    .A2_N(_064_),
    .B1(\pll_control.count1[3] ),
    .B2(_064_),
    .X(_041_));
 sky130_fd_sc_hd__a2bb2o_4 _269_ (.A1_N(_047_),
    .A2_N(_064_),
    .B1(\pll_control.count1[2] ),
    .B2(_064_),
    .X(_040_));
 sky130_fd_sc_hd__a2bb2o_4 _270_ (.A1_N(_049_),
    .A2_N(_064_),
    .B1(\pll_control.count1[1] ),
    .B2(_064_),
    .X(_039_));
 sky130_fd_sc_hd__a2bb2o_4 _271_ (.A1_N(_051_),
    .A2_N(_064_),
    .B1(\pll_control.count1[0] ),
    .B2(_064_),
    .X(_038_));
 sky130_fd_sc_hd__a2bb2o_4 _272_ (.A1_N(_052_),
    .A2_N(_064_),
    .B1(\pll_control.prep[2] ),
    .B2(_064_),
    .X(_037_));
 sky130_fd_sc_hd__a2bb2o_4 _273_ (.A1_N(_052_),
    .A2_N(_063_),
    .B1(\pll_control.prep[0] ),
    .B2(_063_),
    .X(_036_));
 sky130_fd_sc_hd__or2_4 _274_ (.A(\pll_control.prep[0] ),
    .B(_063_),
    .X(_035_));
 sky130_fd_sc_hd__a2bb2o_4 _275_ (.A1_N(_049_),
    .A2_N(_050_),
    .B1(_049_),
    .B2(_050_),
    .X(_065_));
 sky130_fd_sc_hd__nand2_4 _276_ (.A(\pll_control.count0[0] ),
    .B(\pll_control.count1[0] ),
    .Y(_066_));
 sky130_fd_sc_hd__a2bb2o_4 _277_ (.A1_N(_065_),
    .A2_N(_066_),
    .B1(_065_),
    .B2(_066_),
    .X(_067_));
 sky130_fd_sc_hd__and2_4 _278_ (.A(div[1]),
    .B(_067_),
    .X(_068_));
 sky130_fd_sc_hd__nor2_4 _279_ (.A(div[1]),
    .B(_067_),
    .Y(_069_));
 sky130_fd_sc_hd__o21a_4 _280_ (.A1(\pll_control.count0[0] ),
    .A2(\pll_control.count1[0] ),
    .B1(_066_),
    .X(_070_));
 sky130_fd_sc_hd__and2_4 _281_ (.A(_061_),
    .B(_070_),
    .X(_071_));
 sky130_fd_sc_hd__nor3_4 _282_ (.A(_068_),
    .B(_071_),
    .C(_069_),
    .Y(_072_));
 sky130_fd_sc_hd__and2_4 _283_ (.A(_045_),
    .B(_046_),
    .X(_073_));
 sky130_fd_sc_hd__a21o_4 _284_ (.A1(\pll_control.count0[3] ),
    .A2(\pll_control.count1[3] ),
    .B1(_073_),
    .X(_074_));
 sky130_fd_sc_hd__and2_4 _285_ (.A(_047_),
    .B(_048_),
    .X(_075_));
 sky130_fd_sc_hd__o22a_4 _286_ (.A1(_049_),
    .A2(_050_),
    .B1(_065_),
    .B2(_066_),
    .X(_076_));
 sky130_fd_sc_hd__o22a_4 _287_ (.A1(_047_),
    .A2(_048_),
    .B1(_075_),
    .B2(_076_),
    .X(_077_));
 sky130_fd_sc_hd__a2bb2o_4 _288_ (.A1_N(_074_),
    .A2_N(_077_),
    .B1(_074_),
    .B2(_077_),
    .X(_078_));
 sky130_fd_sc_hd__a21oi_4 _289_ (.A1(\pll_control.count0[2] ),
    .A2(\pll_control.count1[2] ),
    .B1(_075_),
    .Y(_079_));
 sky130_fd_sc_hd__xnor2_4 _290_ (.A(_076_),
    .B(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__or2_4 _291_ (.A(_060_),
    .B(_080_),
    .X(_081_));
 sky130_fd_sc_hd__a21bo_4 _292_ (.A1(div[3]),
    .A2(_078_),
    .B1_N(_081_),
    .X(_082_));
 sky130_fd_sc_hd__nor2_4 _293_ (.A(div[3]),
    .B(_078_),
    .Y(_083_));
 sky130_fd_sc_hd__a211o_4 _294_ (.A1(_060_),
    .A2(_080_),
    .B1(_083_),
    .C1(_082_),
    .X(_084_));
 sky130_fd_sc_hd__inv_8 _295_ (.A(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__o21a_4 _296_ (.A1(_068_),
    .A2(_072_),
    .B1(_085_),
    .X(_086_));
 sky130_fd_sc_hd__a2bb2o_4 _297_ (.A1_N(_043_),
    .A2_N(_044_),
    .B1(_043_),
    .B2(_044_),
    .X(_087_));
 sky130_fd_sc_hd__o22a_4 _298_ (.A1(_045_),
    .A2(_046_),
    .B1(_073_),
    .B2(_077_),
    .X(_088_));
 sky130_fd_sc_hd__a2bb2o_4 _299_ (.A1_N(_087_),
    .A2_N(_088_),
    .B1(_087_),
    .B2(_088_),
    .X(_089_));
 sky130_fd_sc_hd__and2_4 _300_ (.A(div[4]),
    .B(_089_),
    .X(_090_));
 sky130_fd_sc_hd__o21a_4 _301_ (.A1(div[3]),
    .A2(_078_),
    .B1(_082_),
    .X(_091_));
 sky130_fd_sc_hd__nor3_4 _302_ (.A(_090_),
    .B(_091_),
    .C(_086_),
    .Y(_092_));
 sky130_fd_sc_hd__o22a_4 _303_ (.A1(_043_),
    .A2(_044_),
    .B1(_087_),
    .B2(_088_),
    .X(_093_));
 sky130_fd_sc_hd__o21ai_4 _304_ (.A1(div[4]),
    .A2(_089_),
    .B1(_093_),
    .Y(_094_));
 sky130_fd_sc_hd__or2_4 _305_ (.A(_092_),
    .B(_094_),
    .X(_095_));
 sky130_fd_sc_hd__inv_8 _306_ (.A(_095_),
    .Y(_096_));
 sky130_fd_sc_hd__or2_4 _307_ (.A(\pll_control.tint[3] ),
    .B(\pll_control.tint[2] ),
    .X(_097_));
 sky130_fd_sc_hd__or2_4 _308_ (.A(\pll_control.tint[1] ),
    .B(\pll_control.tint[0] ),
    .X(_098_));
 sky130_fd_sc_hd__inv_8 _309_ (.A(_098_),
    .Y(_099_));
 sky130_fd_sc_hd__and4_4 _310_ (.A(_054_),
    .B(_055_),
    .C(_099_),
    .D(_053_),
    .X(_100_));
 sky130_fd_sc_hd__and4_4 _311_ (.A(_058_),
    .B(_059_),
    .C(_100_),
    .D(_096_),
    .X(_101_));
 sky130_fd_sc_hd__o21ai_4 _312_ (.A1(_061_),
    .A2(_070_),
    .B1(_072_),
    .Y(_102_));
 sky130_fd_sc_hd__nor4_4 _313_ (.A(_084_),
    .B(_102_),
    .C(_090_),
    .D(_094_),
    .Y(_103_));
 sky130_fd_sc_hd__nand4_4 _314_ (.A(\pll_control.prep[1] ),
    .B(_063_),
    .C(\pll_control.prep[2] ),
    .D(\pll_control.prep[0] ),
    .Y(_104_));
 sky130_fd_sc_hd__or3_4 _315_ (.A(_103_),
    .B(_104_),
    .C(_101_),
    .X(_105_));
 sky130_fd_sc_hd__or4_4 _316_ (.A(_055_),
    .B(_057_),
    .C(_058_),
    .D(_059_),
    .X(_106_));
 sky130_fd_sc_hd__or3_4 _317_ (.A(_053_),
    .B(_056_),
    .C(_106_),
    .X(_107_));
 sky130_fd_sc_hd__nor3_4 _318_ (.A(_054_),
    .B(_096_),
    .C(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__or2_4 _319_ (.A(_105_),
    .B(_108_),
    .X(_109_));
 sky130_fd_sc_hd__inv_8 _320_ (.A(_109_),
    .Y(_110_));
 sky130_fd_sc_hd__o22a_4 _321_ (.A1(_058_),
    .A2(_095_),
    .B1(\pll_control.tval[1] ),
    .B2(_096_),
    .X(_111_));
 sky130_fd_sc_hd__nand2_4 _322_ (.A(\pll_control.tval[0] ),
    .B(_111_),
    .Y(_112_));
 sky130_fd_sc_hd__o21ai_4 _323_ (.A1(_058_),
    .A2(_095_),
    .B1(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__o22a_4 _324_ (.A1(_056_),
    .A2(_096_),
    .B1(\pll_control.tint[1] ),
    .B2(_095_),
    .X(_114_));
 sky130_fd_sc_hd__inv_8 _325_ (.A(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__or2_4 _326_ (.A(\pll_control.tint[1] ),
    .B(_057_),
    .X(_116_));
 sky130_fd_sc_hd__inv_8 _327_ (.A(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__or2_4 _328_ (.A(_056_),
    .B(\pll_control.tint[0] ),
    .X(_118_));
 sky130_fd_sc_hd__inv_8 _329_ (.A(_118_),
    .Y(_119_));
 sky130_fd_sc_hd__and2_4 _330_ (.A(_116_),
    .B(_118_),
    .X(_120_));
 sky130_fd_sc_hd__a32o_4 _331_ (.A1(_115_),
    .A2(_120_),
    .A3(_113_),
    .B1(_096_),
    .B2(_098_),
    .X(_121_));
 sky130_fd_sc_hd__o22a_4 _332_ (.A1(_055_),
    .A2(_095_),
    .B1(\pll_control.tint[2] ),
    .B2(_096_),
    .X(_122_));
 sky130_fd_sc_hd__o22a_4 _333_ (.A1(_054_),
    .A2(_096_),
    .B1(\pll_control.tint[3] ),
    .B2(_095_),
    .X(_123_));
 sky130_fd_sc_hd__inv_8 _334_ (.A(_123_),
    .Y(_124_));
 sky130_fd_sc_hd__a32o_4 _335_ (.A1(_122_),
    .A2(_124_),
    .A3(_121_),
    .B1(_096_),
    .B2(_097_),
    .X(_125_));
 sky130_fd_sc_hd__o22a_4 _336_ (.A1(\pll_control.tint[4] ),
    .A2(_096_),
    .B1(_053_),
    .B2(_095_),
    .X(_126_));
 sky130_fd_sc_hd__or2_4 _337_ (.A(_125_),
    .B(_126_),
    .X(_127_));
 sky130_fd_sc_hd__nand2_4 _338_ (.A(_125_),
    .B(_126_),
    .Y(_128_));
 sky130_fd_sc_hd__a32o_4 _339_ (.A1(_110_),
    .A2(_128_),
    .A3(_127_),
    .B1(\pll_control.tint[4] ),
    .B2(_109_),
    .X(_034_));
 sky130_fd_sc_hd__nand2_4 _340_ (.A(_121_),
    .B(_122_),
    .Y(_129_));
 sky130_fd_sc_hd__o21a_4 _341_ (.A1(_055_),
    .A2(_095_),
    .B1(_129_),
    .X(_130_));
 sky130_fd_sc_hd__nand2_4 _342_ (.A(_123_),
    .B(_130_),
    .Y(_131_));
 sky130_fd_sc_hd__or2_4 _343_ (.A(_123_),
    .B(_130_),
    .X(_132_));
 sky130_fd_sc_hd__a32o_4 _344_ (.A1(_110_),
    .A2(_132_),
    .A3(_131_),
    .B1(\pll_control.tint[3] ),
    .B2(_109_),
    .X(_033_));
 sky130_fd_sc_hd__or2_4 _345_ (.A(_121_),
    .B(_122_),
    .X(_133_));
 sky130_fd_sc_hd__a32o_4 _346_ (.A1(_110_),
    .A2(_129_),
    .A3(_133_),
    .B1(\pll_control.tint[2] ),
    .B2(_109_),
    .X(_032_));
 sky130_fd_sc_hd__o22a_4 _347_ (.A1(_057_),
    .A2(_095_),
    .B1(\pll_control.tint[0] ),
    .B2(_096_),
    .X(_134_));
 sky130_fd_sc_hd__nand2_4 _348_ (.A(_113_),
    .B(_134_),
    .Y(_135_));
 sky130_fd_sc_hd__o21a_4 _349_ (.A1(_057_),
    .A2(_095_),
    .B1(_135_),
    .X(_136_));
 sky130_fd_sc_hd__nand2_4 _350_ (.A(_114_),
    .B(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__or2_4 _351_ (.A(_114_),
    .B(_136_),
    .X(_138_));
 sky130_fd_sc_hd__a32o_4 _352_ (.A1(_110_),
    .A2(_138_),
    .A3(_137_),
    .B1(\pll_control.tint[1] ),
    .B2(_109_),
    .X(_031_));
 sky130_fd_sc_hd__or2_4 _353_ (.A(_113_),
    .B(_134_),
    .X(_139_));
 sky130_fd_sc_hd__a32o_4 _354_ (.A1(_110_),
    .A2(_135_),
    .A3(_139_),
    .B1(\pll_control.tint[0] ),
    .B2(_109_),
    .X(_030_));
 sky130_fd_sc_hd__or2_4 _355_ (.A(\pll_control.tval[0] ),
    .B(_111_),
    .X(_140_));
 sky130_fd_sc_hd__a32o_4 _356_ (.A1(_110_),
    .A2(_112_),
    .A3(_140_),
    .B1(\pll_control.tval[1] ),
    .B2(_109_),
    .X(_029_));
 sky130_fd_sc_hd__or2_4 _357_ (.A(\pll_control.tval[0] ),
    .B(_105_),
    .X(_141_));
 sky130_fd_sc_hd__o21ai_4 _358_ (.A1(_059_),
    .A2(_110_),
    .B1(_141_),
    .Y(_028_));
 sky130_fd_sc_hd__or2_4 _359_ (.A(_049_),
    .B(_051_),
    .X(_142_));
 sky130_fd_sc_hd__and3_4 _360_ (.A(\pll_control.count0[1] ),
    .B(\pll_control.count0[0] ),
    .C(\pll_control.count0[2] ),
    .X(_143_));
 sky130_fd_sc_hd__and2_4 _361_ (.A(\pll_control.count0[3] ),
    .B(_143_),
    .X(_144_));
 sky130_fd_sc_hd__o21a_4 _362_ (.A1(\pll_control.count0[4] ),
    .A2(_144_),
    .B1(_064_),
    .X(_027_));
 sky130_fd_sc_hd__o21ai_4 _363_ (.A1(\pll_control.count0[3] ),
    .A2(_143_),
    .B1(_064_),
    .Y(_145_));
 sky130_fd_sc_hd__a21oi_4 _364_ (.A1(_043_),
    .A2(_144_),
    .B1(_145_),
    .Y(_026_));
 sky130_fd_sc_hd__and4_4 _365_ (.A(\pll_control.count0[3] ),
    .B(_143_),
    .C(\pll_control.count0[4] ),
    .D(_064_),
    .X(_146_));
 sky130_fd_sc_hd__and2_4 _366_ (.A(_047_),
    .B(_142_),
    .X(_147_));
 sky130_fd_sc_hd__nor3_4 _367_ (.A(_063_),
    .B(_143_),
    .C(_147_),
    .Y(_148_));
 sky130_fd_sc_hd__or2_4 _368_ (.A(_146_),
    .B(_148_),
    .X(_025_));
 sky130_fd_sc_hd__or2_4 _369_ (.A(\pll_control.count0[1] ),
    .B(\pll_control.count0[0] ),
    .X(_149_));
 sky130_fd_sc_hd__and3_4 _370_ (.A(_142_),
    .B(_149_),
    .C(_064_),
    .X(_150_));
 sky130_fd_sc_hd__or2_4 _371_ (.A(_146_),
    .B(_150_),
    .X(_024_));
 sky130_fd_sc_hd__a211o_4 _372_ (.A1(\pll_control.count0[4] ),
    .A2(_144_),
    .B1(_051_),
    .C1(_063_),
    .X(_023_));
 sky130_fd_sc_hd__or2_4 _373_ (.A(dco),
    .B(_100_),
    .X(_151_));
 sky130_fd_sc_hd__a21bo_4 _374_ (.A1(ext_trim[0]),
    .A2(dco),
    .B1_N(_151_),
    .X(\ringosc.dstage[0].id.trim[0] ));
 sky130_fd_sc_hd__or3_4 _375_ (.A(_054_),
    .B(\pll_control.tint[2] ),
    .C(\pll_control.tint[4] ),
    .X(_152_));
 sky130_fd_sc_hd__inv_8 _376_ (.A(_152_),
    .Y(_153_));
 sky130_fd_sc_hd__or2_4 _377_ (.A(_056_),
    .B(_057_),
    .X(_154_));
 sky130_fd_sc_hd__inv_8 _378_ (.A(_154_),
    .Y(_155_));
 sky130_fd_sc_hd__and4_4 _379_ (.A(_054_),
    .B(\pll_control.tint[2] ),
    .C(_053_),
    .D(_155_),
    .X(_156_));
 sky130_fd_sc_hd__and4_4 _380_ (.A(_054_),
    .B(\pll_control.tint[2] ),
    .C(_053_),
    .D(_119_),
    .X(_157_));
 sky130_fd_sc_hd__and4_4 _381_ (.A(_054_),
    .B(\pll_control.tint[2] ),
    .C(_053_),
    .D(_117_),
    .X(_158_));
 sky130_fd_sc_hd__or2_4 _382_ (.A(_157_),
    .B(_158_),
    .X(_159_));
 sky130_fd_sc_hd__o32a_4 _383_ (.A1(\pll_control.tint[3] ),
    .A2(_055_),
    .A3(_098_),
    .B1(_097_),
    .B2(_154_),
    .X(_160_));
 sky130_fd_sc_hd__nor2_4 _384_ (.A(\pll_control.tint[4] ),
    .B(_160_),
    .Y(_161_));
 sky130_fd_sc_hd__nor3_4 _385_ (.A(\pll_control.tint[4] ),
    .B(_097_),
    .C(_120_),
    .Y(_162_));
 sky130_fd_sc_hd__or2_4 _386_ (.A(_161_),
    .B(_162_),
    .X(_163_));
 sky130_fd_sc_hd__or2_4 _387_ (.A(_151_),
    .B(_163_),
    .X(_164_));
 sky130_fd_sc_hd__inv_8 _388_ (.A(_164_),
    .Y(_165_));
 sky130_fd_sc_hd__or2_4 _389_ (.A(_159_),
    .B(_164_),
    .X(_166_));
 sky130_fd_sc_hd__or2_4 _390_ (.A(_156_),
    .B(_166_),
    .X(_167_));
 sky130_fd_sc_hd__or2_4 _391_ (.A(_153_),
    .B(_167_),
    .X(_168_));
 sky130_fd_sc_hd__a21bo_4 _392_ (.A1(dco),
    .A2(ext_trim[1]),
    .B1_N(_168_),
    .X(\ringosc.dstage[1].id.trim[0] ));
 sky130_fd_sc_hd__or2_4 _393_ (.A(_156_),
    .B(_157_),
    .X(_169_));
 sky130_fd_sc_hd__or2_4 _394_ (.A(_158_),
    .B(_161_),
    .X(_170_));
 sky130_fd_sc_hd__and4_4 _395_ (.A(_054_),
    .B(_055_),
    .C(_053_),
    .D(_119_),
    .X(_171_));
 sky130_fd_sc_hd__and4_4 _396_ (.A(_054_),
    .B(_055_),
    .C(_053_),
    .D(_117_),
    .X(_172_));
 sky130_fd_sc_hd__or2_4 _397_ (.A(_151_),
    .B(_172_),
    .X(_173_));
 sky130_fd_sc_hd__or2_4 _398_ (.A(_171_),
    .B(_173_),
    .X(_174_));
 sky130_fd_sc_hd__or2_4 _399_ (.A(_170_),
    .B(_174_),
    .X(_175_));
 sky130_fd_sc_hd__or2_4 _400_ (.A(_169_),
    .B(_175_),
    .X(_176_));
 sky130_fd_sc_hd__inv_8 _401_ (.A(_176_),
    .Y(_177_));
 sky130_fd_sc_hd__a21o_4 _402_ (.A1(dco),
    .A2(ext_trim[2]),
    .B1(_177_),
    .X(\ringosc.dstage[2].id.trim[0] ));
 sky130_fd_sc_hd__and4_4 _403_ (.A(_054_),
    .B(_055_),
    .C(_053_),
    .D(_155_),
    .X(_178_));
 sky130_fd_sc_hd__or2_4 _404_ (.A(_174_),
    .B(_178_),
    .X(_179_));
 sky130_fd_sc_hd__a21bo_4 _405_ (.A1(dco),
    .A2(ext_trim[3]),
    .B1_N(_179_),
    .X(\ringosc.dstage[3].id.trim[0] ));
 sky130_fd_sc_hd__o21a_4 _406_ (.A1(_099_),
    .A2(_117_),
    .B1(_153_),
    .X(_180_));
 sky130_fd_sc_hd__a2bb2o_4 _407_ (.A1_N(_167_),
    .A2_N(_180_),
    .B1(dco),
    .B2(ext_trim[4]),
    .X(\ringosc.dstage[4].id.trim[0] ));
 sky130_fd_sc_hd__a21bo_4 _408_ (.A1(dco),
    .A2(ext_trim[5]),
    .B1_N(_166_),
    .X(\ringosc.dstage[5].id.trim[0] ));
 sky130_fd_sc_hd__a21bo_4 _409_ (.A1(dco),
    .A2(ext_trim[6]),
    .B1_N(_173_),
    .X(\ringosc.dstage[6].id.trim[0] ));
 sky130_fd_sc_hd__and2_4 _410_ (.A(_153_),
    .B(_154_),
    .X(_181_));
 sky130_fd_sc_hd__or2_4 _411_ (.A(_159_),
    .B(_181_),
    .X(_182_));
 sky130_fd_sc_hd__and4_4 _412_ (.A(\pll_control.tint[3] ),
    .B(\pll_control.tint[2] ),
    .C(_053_),
    .D(_099_),
    .X(_183_));
 sky130_fd_sc_hd__and2_4 _413_ (.A(_153_),
    .B(_155_),
    .X(_184_));
 sky130_fd_sc_hd__or2_4 _414_ (.A(_183_),
    .B(_184_),
    .X(_185_));
 sky130_fd_sc_hd__and4_4 _415_ (.A(_054_),
    .B(\pll_control.tint[2] ),
    .C(_099_),
    .D(_053_),
    .X(_186_));
 sky130_fd_sc_hd__or2_4 _416_ (.A(_156_),
    .B(_186_),
    .X(_187_));
 sky130_fd_sc_hd__or4_4 _417_ (.A(_185_),
    .B(_187_),
    .C(_182_),
    .D(_179_),
    .X(_188_));
 sky130_fd_sc_hd__a21bo_4 _418_ (.A1(dco),
    .A2(ext_trim[7]),
    .B1_N(_188_),
    .X(\ringosc.dstage[7].id.trim[0] ));
 sky130_fd_sc_hd__a21o_4 _419_ (.A1(dco),
    .A2(ext_trim[8]),
    .B1(_165_),
    .X(\ringosc.dstage[8].id.trim[0] ));
 sky130_fd_sc_hd__a21o_4 _420_ (.A1(_099_),
    .A2(_153_),
    .B1(_167_),
    .X(_189_));
 sky130_fd_sc_hd__a21bo_4 _421_ (.A1(dco),
    .A2(ext_trim[9]),
    .B1_N(_189_),
    .X(\ringosc.dstage[9].id.trim[0] ));
 sky130_fd_sc_hd__a21bo_4 _422_ (.A1(dco),
    .A2(ext_trim[10]),
    .B1_N(_174_),
    .X(\ringosc.dstage[10].id.trim[0] ));
 sky130_fd_sc_hd__or2_4 _423_ (.A(_176_),
    .B(_181_),
    .X(_190_));
 sky130_fd_sc_hd__a21bo_4 _424_ (.A1(dco),
    .A2(ext_trim[11]),
    .B1_N(_190_),
    .X(\ringosc.dstage[11].id.trim[0] ));
 sky130_fd_sc_hd__a21bo_4 _425_ (.A1(dco),
    .A2(ext_trim[12]),
    .B1_N(_175_),
    .X(\ringosc.iss.trim[0] ));
 sky130_fd_sc_hd__or4_4 _426_ (.A(_054_),
    .B(_055_),
    .C(\pll_control.tint[4] ),
    .D(\pll_control.tint[1] ),
    .X(_191_));
 sky130_fd_sc_hd__a32o_4 _427_ (.A1(_152_),
    .A2(_191_),
    .A3(_177_),
    .B1(dco),
    .B2(ext_trim[13]),
    .X(\ringosc.dstage[0].id.trim[1] ));
 sky130_fd_sc_hd__and4_4 _428_ (.A(\pll_control.tint[3] ),
    .B(\pll_control.tint[2] ),
    .C(_053_),
    .D(_154_),
    .X(_192_));
 sky130_fd_sc_hd__or2_4 _429_ (.A(_159_),
    .B(_192_),
    .X(_193_));
 sky130_fd_sc_hd__and4_4 _430_ (.A(_054_),
    .B(_055_),
    .C(_099_),
    .D(\pll_control.tint[4] ),
    .X(_194_));
 sky130_fd_sc_hd__and4_4 _431_ (.A(_053_),
    .B(_155_),
    .C(\pll_control.tint[3] ),
    .D(\pll_control.tint[2] ),
    .X(_195_));
 sky130_fd_sc_hd__or2_4 _432_ (.A(_194_),
    .B(_195_),
    .X(_196_));
 sky130_fd_sc_hd__or4_4 _433_ (.A(_151_),
    .B(_196_),
    .C(_163_),
    .D(_193_),
    .X(_197_));
 sky130_fd_sc_hd__and4_4 _434_ (.A(_054_),
    .B(_055_),
    .C(\pll_control.tint[4] ),
    .D(\pll_control.tint[1] ),
    .X(_198_));
 sky130_fd_sc_hd__and4_4 _435_ (.A(_054_),
    .B(\pll_control.tint[2] ),
    .C(\pll_control.tint[4] ),
    .D(_056_),
    .X(_199_));
 sky130_fd_sc_hd__or2_4 _436_ (.A(_198_),
    .B(_199_),
    .X(_200_));
 sky130_fd_sc_hd__and4_4 _437_ (.A(\pll_control.tint[3] ),
    .B(_055_),
    .C(_053_),
    .D(_117_),
    .X(_201_));
 sky130_fd_sc_hd__a211o_4 _438_ (.A1(_116_),
    .A2(_153_),
    .B1(_200_),
    .C1(_201_),
    .X(_202_));
 sky130_fd_sc_hd__o32a_4 _439_ (.A1(_054_),
    .A2(\pll_control.tint[2] ),
    .A3(_098_),
    .B1(_097_),
    .B2(_116_),
    .X(_203_));
 sky130_fd_sc_hd__nor2_4 _440_ (.A(_053_),
    .B(_203_),
    .Y(_204_));
 sky130_fd_sc_hd__and4_4 _441_ (.A(\pll_control.tint[4] ),
    .B(\pll_control.tint[1] ),
    .C(_054_),
    .D(\pll_control.tint[2] ),
    .X(_205_));
 sky130_fd_sc_hd__or4_4 _442_ (.A(_156_),
    .B(_205_),
    .C(_204_),
    .D(_202_),
    .X(_206_));
 sky130_fd_sc_hd__or2_4 _443_ (.A(_197_),
    .B(_206_),
    .X(_207_));
 sky130_fd_sc_hd__a21bo_4 _444_ (.A1(dco),
    .A2(ext_trim[14]),
    .B1_N(_207_),
    .X(\ringosc.dstage[1].id.trim[1] ));
 sky130_fd_sc_hd__nor2_4 _445_ (.A(_053_),
    .B(_160_),
    .Y(_208_));
 sky130_fd_sc_hd__nor3_4 _446_ (.A(_053_),
    .B(_097_),
    .C(_120_),
    .Y(_209_));
 sky130_fd_sc_hd__or4_4 _447_ (.A(_153_),
    .B(_156_),
    .C(_209_),
    .D(_208_),
    .X(_210_));
 sky130_fd_sc_hd__or2_4 _448_ (.A(_197_),
    .B(_210_),
    .X(_211_));
 sky130_fd_sc_hd__a21bo_4 _449_ (.A1(dco),
    .A2(ext_trim[15]),
    .B1_N(_211_),
    .X(\ringosc.dstage[2].id.trim[1] ));
 sky130_fd_sc_hd__or2_4 _450_ (.A(_170_),
    .B(_192_),
    .X(_212_));
 sky130_fd_sc_hd__or2_4 _451_ (.A(_180_),
    .B(_196_),
    .X(_213_));
 sky130_fd_sc_hd__and2_4 _452_ (.A(\pll_control.tint[1] ),
    .B(_153_),
    .X(_214_));
 sky130_fd_sc_hd__or2_4 _453_ (.A(_169_),
    .B(_214_),
    .X(_215_));
 sky130_fd_sc_hd__or4_4 _454_ (.A(_213_),
    .B(_215_),
    .C(_174_),
    .D(_212_),
    .X(_216_));
 sky130_fd_sc_hd__a21bo_4 _455_ (.A1(dco),
    .A2(ext_trim[16]),
    .B1_N(_216_),
    .X(\ringosc.dstage[3].id.trim[1] ));
 sky130_fd_sc_hd__or2_4 _456_ (.A(_183_),
    .B(_214_),
    .X(_217_));
 sky130_fd_sc_hd__and4_4 _457_ (.A(_054_),
    .B(\pll_control.tint[2] ),
    .C(\pll_control.tint[4] ),
    .D(_154_),
    .X(_218_));
 sky130_fd_sc_hd__nor4_4 _458_ (.A(_054_),
    .B(_055_),
    .C(\pll_control.tint[4] ),
    .D(_120_),
    .Y(_219_));
 sky130_fd_sc_hd__and4_4 _459_ (.A(_054_),
    .B(_055_),
    .C(\pll_control.tint[4] ),
    .D(_117_),
    .X(_220_));
 sky130_fd_sc_hd__or4_4 _460_ (.A(_219_),
    .B(_220_),
    .C(_218_),
    .D(_217_),
    .X(_221_));
 sky130_fd_sc_hd__or2_4 _461_ (.A(_169_),
    .B(_198_),
    .X(_222_));
 sky130_fd_sc_hd__or4_4 _462_ (.A(_213_),
    .B(_222_),
    .C(_221_),
    .D(_175_),
    .X(_223_));
 sky130_fd_sc_hd__a21bo_4 _463_ (.A1(dco),
    .A2(ext_trim[17]),
    .B1_N(_223_),
    .X(\ringosc.dstage[4].id.trim[1] ));
 sky130_fd_sc_hd__or3_4 _464_ (.A(_153_),
    .B(_162_),
    .C(_220_),
    .X(_224_));
 sky130_fd_sc_hd__or4_4 _465_ (.A(_151_),
    .B(_196_),
    .C(_224_),
    .D(_222_),
    .X(_225_));
 sky130_fd_sc_hd__or2_4 _466_ (.A(_212_),
    .B(_225_),
    .X(_226_));
 sky130_fd_sc_hd__a21bo_4 _467_ (.A1(dco),
    .A2(ext_trim[18]),
    .B1_N(_226_),
    .X(\ringosc.dstage[5].id.trim[1] ));
 sky130_fd_sc_hd__or2_4 _468_ (.A(_184_),
    .B(_192_),
    .X(_227_));
 sky130_fd_sc_hd__or2_4 _469_ (.A(_190_),
    .B(_227_),
    .X(_228_));
 sky130_fd_sc_hd__a21bo_4 _470_ (.A1(dco),
    .A2(ext_trim[19]),
    .B1_N(_228_),
    .X(\ringosc.dstage[6].id.trim[1] ));
 sky130_fd_sc_hd__or2_4 _471_ (.A(_196_),
    .B(_220_),
    .X(_229_));
 sky130_fd_sc_hd__or2_4 _472_ (.A(_200_),
    .B(_229_),
    .X(_230_));
 sky130_fd_sc_hd__inv_8 _473_ (.A(_230_),
    .Y(_231_));
 sky130_fd_sc_hd__and4_4 _474_ (.A(\pll_control.tint[3] ),
    .B(_055_),
    .C(\pll_control.tint[4] ),
    .D(_056_),
    .X(_232_));
 sky130_fd_sc_hd__or4_4 _475_ (.A(_205_),
    .B(_232_),
    .C(_230_),
    .D(_228_),
    .X(_233_));
 sky130_fd_sc_hd__a21bo_4 _476_ (.A1(dco),
    .A2(ext_trim[20]),
    .B1_N(_233_),
    .X(\ringosc.dstage[7].id.trim[1] ));
 sky130_fd_sc_hd__or2_4 _477_ (.A(_163_),
    .B(_229_),
    .X(_234_));
 sky130_fd_sc_hd__or2_4 _478_ (.A(_151_),
    .B(_156_),
    .X(_235_));
 sky130_fd_sc_hd__or4_4 _479_ (.A(_227_),
    .B(_235_),
    .C(_182_),
    .D(_234_),
    .X(_236_));
 sky130_fd_sc_hd__a21bo_4 _480_ (.A1(dco),
    .A2(ext_trim[21]),
    .B1_N(_236_),
    .X(\ringosc.dstage[8].id.trim[1] ));
 sky130_fd_sc_hd__or3_4 _481_ (.A(_153_),
    .B(_156_),
    .C(_200_),
    .X(_237_));
 sky130_fd_sc_hd__or4_4 _482_ (.A(_151_),
    .B(_237_),
    .C(_193_),
    .D(_234_),
    .X(_238_));
 sky130_fd_sc_hd__a21bo_4 _483_ (.A1(dco),
    .A2(ext_trim[22]),
    .B1_N(_238_),
    .X(\ringosc.dstage[9].id.trim[1] ));
 sky130_fd_sc_hd__o22a_4 _484_ (.A1(\pll_control.tint[4] ),
    .A2(dco),
    .B1(_062_),
    .B2(ext_trim[23]),
    .X(\ringosc.dstage[10].id.trim[1] ));
 sky130_fd_sc_hd__a211o_4 _485_ (.A1(_119_),
    .A2(_153_),
    .B1(_156_),
    .C1(_159_),
    .X(_239_));
 sky130_fd_sc_hd__nor4_4 _486_ (.A(_180_),
    .B(_205_),
    .C(_227_),
    .D(_239_),
    .Y(_240_));
 sky130_fd_sc_hd__a32o_4 _487_ (.A1(_165_),
    .A2(_240_),
    .A3(_231_),
    .B1(dco),
    .B2(ext_trim[24]),
    .X(\ringosc.dstage[11].id.trim[1] ));
 sky130_fd_sc_hd__or4_4 _488_ (.A(_209_),
    .B(_219_),
    .C(_161_),
    .D(_185_),
    .X(_241_));
 sky130_fd_sc_hd__or4_4 _489_ (.A(_213_),
    .B(_239_),
    .C(_241_),
    .D(_174_),
    .X(_242_));
 sky130_fd_sc_hd__a21bo_4 _490_ (.A1(dco),
    .A2(ext_trim[25]),
    .B1_N(_242_),
    .X(\ringosc.iss.trim[1] ));
 sky130_fd_sc_hd__buf_1 _491_ (.A(_021_),
    .X(_020_));
 sky130_fd_sc_hd__buf_1 _492_ (.A(_021_),
    .X(_019_));
 sky130_fd_sc_hd__buf_1 _493_ (.A(_021_),
    .X(_018_));
 sky130_fd_sc_hd__buf_1 _494_ (.A(_021_),
    .X(_017_));
 sky130_fd_sc_hd__buf_1 _495_ (.A(_021_),
    .X(_016_));
 sky130_fd_sc_hd__buf_1 _496_ (.A(_021_),
    .X(_015_));
 sky130_fd_sc_hd__buf_1 _497_ (.A(_021_),
    .X(_014_));
 sky130_fd_sc_hd__buf_1 _498_ (.A(_021_),
    .X(_013_));
 sky130_fd_sc_hd__buf_1 _499_ (.A(_021_),
    .X(_012_));
 sky130_fd_sc_hd__buf_1 _500_ (.A(_021_),
    .X(_011_));
 sky130_fd_sc_hd__buf_1 _501_ (.A(_021_),
    .X(_010_));
 sky130_fd_sc_hd__buf_1 _502_ (.A(_021_),
    .X(_009_));
 sky130_fd_sc_hd__buf_1 _503_ (.A(_021_),
    .X(_008_));
 sky130_fd_sc_hd__buf_1 _504_ (.A(_021_),
    .X(_007_));
 sky130_fd_sc_hd__buf_1 _505_ (.A(_021_),
    .X(_006_));
 sky130_fd_sc_hd__buf_1 _506_ (.A(_021_),
    .X(_005_));
 sky130_fd_sc_hd__buf_1 _507_ (.A(_021_),
    .X(_004_));
 sky130_fd_sc_hd__buf_1 _508_ (.A(_021_),
    .X(_003_));
 sky130_fd_sc_hd__buf_1 _509_ (.A(_021_),
    .X(_002_));
 sky130_fd_sc_hd__buf_1 _510_ (.A(_021_),
    .X(_001_));
 sky130_fd_sc_hd__buf_1 _511_ (.A(_021_),
    .X(_000_));
 sky130_fd_sc_hd__buf_1 _512_ (.A(_021_),
    .X(_022_));
 sky130_fd_sc_hd__buf_2 _513_ (.A(\pll_control.clock ),
    .X(clockp[0]));
 sky130_fd_sc_hd__dfrtp_4 _514_ (.D(osc),
    .Q(\pll_control.oscbuf[0] ),
    .RESET_B(_000_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _515_ (.D(\pll_control.oscbuf[0] ),
    .Q(\pll_control.oscbuf[1] ),
    .RESET_B(_001_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _516_ (.D(\pll_control.oscbuf[1] ),
    .Q(\pll_control.oscbuf[2] ),
    .RESET_B(_002_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _517_ (.D(_023_),
    .Q(\pll_control.count0[0] ),
    .RESET_B(_003_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _518_ (.D(_024_),
    .Q(\pll_control.count0[1] ),
    .RESET_B(_004_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _519_ (.D(_025_),
    .Q(\pll_control.count0[2] ),
    .RESET_B(_005_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _520_ (.D(_026_),
    .Q(\pll_control.count0[3] ),
    .RESET_B(_006_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _521_ (.D(_027_),
    .Q(\pll_control.count0[4] ),
    .RESET_B(_007_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _522_ (.D(_028_),
    .Q(\pll_control.tval[0] ),
    .RESET_B(_008_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _523_ (.D(_029_),
    .Q(\pll_control.tval[1] ),
    .RESET_B(_009_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _524_ (.D(_030_),
    .Q(\pll_control.tint[0] ),
    .RESET_B(_010_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _525_ (.D(_031_),
    .Q(\pll_control.tint[1] ),
    .RESET_B(_011_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _526_ (.D(_032_),
    .Q(\pll_control.tint[2] ),
    .RESET_B(_012_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _527_ (.D(_033_),
    .Q(\pll_control.tint[3] ),
    .RESET_B(_013_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _528_ (.D(_034_),
    .Q(\pll_control.tint[4] ),
    .RESET_B(_014_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _529_ (.D(_035_),
    .Q(\pll_control.prep[0] ),
    .RESET_B(_015_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _530_ (.D(_036_),
    .Q(\pll_control.prep[1] ),
    .RESET_B(_016_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _531_ (.D(_037_),
    .Q(\pll_control.prep[2] ),
    .RESET_B(_017_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _532_ (.D(_038_),
    .Q(\pll_control.count1[0] ),
    .RESET_B(_018_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _533_ (.D(_039_),
    .Q(\pll_control.count1[1] ),
    .RESET_B(_019_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _534_ (.D(_040_),
    .Q(\pll_control.count1[2] ),
    .RESET_B(_020_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _535_ (.D(_041_),
    .Q(\pll_control.count1[3] ),
    .RESET_B(_021_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__dfrtp_4 _536_ (.D(_042_),
    .Q(\pll_control.count1[4] ),
    .RESET_B(_022_),
    .CLK(\pll_control.clock ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[0].id.delaybuf0  (.A(\ringosc.dstage[0].id.in ),
    .X(\ringosc.dstage[0].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[0].id.delaybuf1  (.A(\ringosc.dstage[0].id.ts ),
    .X(\ringosc.dstage[0].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[0].id.delayen0  (.A(\ringosc.dstage[0].id.d2 ),
    .TE(\ringosc.dstage[0].id.trim[0] ),
    .Z(\ringosc.dstage[0].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[0].id.delayen1  (.A(\ringosc.dstage[0].id.d0 ),
    .TE(\ringosc.dstage[0].id.trim[1] ),
    .Z(\ringosc.dstage[0].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[0].id.delayenb0  (.A(\ringosc.dstage[0].id.ts ),
    .TE_B(\ringosc.dstage[0].id.trim[0] ),
    .Z(\ringosc.dstage[0].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[0].id.delayenb1  (.A(\ringosc.dstage[0].id.ts ),
    .TE_B(\ringosc.dstage[0].id.trim[1] ),
    .Z(\ringosc.dstage[0].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[0].id.delayint0  (.A(\ringosc.dstage[0].id.d1 ),
    .Y(\ringosc.dstage[0].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[10].id.delaybuf0  (.A(\ringosc.dstage[10].id.in ),
    .X(\ringosc.dstage[10].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[10].id.delaybuf1  (.A(\ringosc.dstage[10].id.ts ),
    .X(\ringosc.dstage[10].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[10].id.delayen0  (.A(\ringosc.dstage[10].id.d2 ),
    .TE(\ringosc.dstage[10].id.trim[0] ),
    .Z(\ringosc.dstage[10].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[10].id.delayen1  (.A(\ringosc.dstage[10].id.d0 ),
    .TE(\ringosc.dstage[10].id.trim[1] ),
    .Z(\ringosc.dstage[10].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[10].id.delayenb0  (.A(\ringosc.dstage[10].id.ts ),
    .TE_B(\ringosc.dstage[10].id.trim[0] ),
    .Z(\ringosc.dstage[10].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[10].id.delayenb1  (.A(\ringosc.dstage[10].id.ts ),
    .TE_B(\ringosc.dstage[10].id.trim[1] ),
    .Z(\ringosc.dstage[10].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[10].id.delayint0  (.A(\ringosc.dstage[10].id.d1 ),
    .Y(\ringosc.dstage[10].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[11].id.delaybuf0  (.A(\ringosc.dstage[10].id.out ),
    .X(\ringosc.dstage[11].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[11].id.delaybuf1  (.A(\ringosc.dstage[11].id.ts ),
    .X(\ringosc.dstage[11].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[11].id.delayen0  (.A(\ringosc.dstage[11].id.d2 ),
    .TE(\ringosc.dstage[11].id.trim[0] ),
    .Z(\ringosc.dstage[11].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[11].id.delayen1  (.A(\ringosc.dstage[11].id.d0 ),
    .TE(\ringosc.dstage[11].id.trim[1] ),
    .Z(\ringosc.dstage[11].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[11].id.delayenb0  (.A(\ringosc.dstage[11].id.ts ),
    .TE_B(\ringosc.dstage[11].id.trim[0] ),
    .Z(\ringosc.dstage[11].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[11].id.delayenb1  (.A(\ringosc.dstage[11].id.ts ),
    .TE_B(\ringosc.dstage[11].id.trim[1] ),
    .Z(\ringosc.dstage[11].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[11].id.delayint0  (.A(\ringosc.dstage[11].id.d1 ),
    .Y(\ringosc.dstage[11].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[1].id.delaybuf0  (.A(\ringosc.dstage[0].id.out ),
    .X(\ringosc.dstage[1].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[1].id.delaybuf1  (.A(\ringosc.dstage[1].id.ts ),
    .X(\ringosc.dstage[1].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[1].id.delayen0  (.A(\ringosc.dstage[1].id.d2 ),
    .TE(\ringosc.dstage[1].id.trim[0] ),
    .Z(\ringosc.dstage[1].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[1].id.delayen1  (.A(\ringosc.dstage[1].id.d0 ),
    .TE(\ringosc.dstage[1].id.trim[1] ),
    .Z(\ringosc.dstage[1].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[1].id.delayenb0  (.A(\ringosc.dstage[1].id.ts ),
    .TE_B(\ringosc.dstage[1].id.trim[0] ),
    .Z(\ringosc.dstage[1].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[1].id.delayenb1  (.A(\ringosc.dstage[1].id.ts ),
    .TE_B(\ringosc.dstage[1].id.trim[1] ),
    .Z(\ringosc.dstage[1].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[1].id.delayint0  (.A(\ringosc.dstage[1].id.d1 ),
    .Y(\ringosc.dstage[1].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[2].id.delaybuf0  (.A(\ringosc.dstage[1].id.out ),
    .X(\ringosc.dstage[2].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[2].id.delaybuf1  (.A(\ringosc.dstage[2].id.ts ),
    .X(\ringosc.dstage[2].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[2].id.delayen0  (.A(\ringosc.dstage[2].id.d2 ),
    .TE(\ringosc.dstage[2].id.trim[0] ),
    .Z(\ringosc.dstage[2].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[2].id.delayen1  (.A(\ringosc.dstage[2].id.d0 ),
    .TE(\ringosc.dstage[2].id.trim[1] ),
    .Z(\ringosc.dstage[2].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[2].id.delayenb0  (.A(\ringosc.dstage[2].id.ts ),
    .TE_B(\ringosc.dstage[2].id.trim[0] ),
    .Z(\ringosc.dstage[2].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[2].id.delayenb1  (.A(\ringosc.dstage[2].id.ts ),
    .TE_B(\ringosc.dstage[2].id.trim[1] ),
    .Z(\ringosc.dstage[2].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[2].id.delayint0  (.A(\ringosc.dstage[2].id.d1 ),
    .Y(\ringosc.dstage[2].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[3].id.delaybuf0  (.A(\ringosc.dstage[2].id.out ),
    .X(\ringosc.dstage[3].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[3].id.delaybuf1  (.A(\ringosc.dstage[3].id.ts ),
    .X(\ringosc.dstage[3].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[3].id.delayen0  (.A(\ringosc.dstage[3].id.d2 ),
    .TE(\ringosc.dstage[3].id.trim[0] ),
    .Z(\ringosc.dstage[3].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[3].id.delayen1  (.A(\ringosc.dstage[3].id.d0 ),
    .TE(\ringosc.dstage[3].id.trim[1] ),
    .Z(\ringosc.dstage[3].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[3].id.delayenb0  (.A(\ringosc.dstage[3].id.ts ),
    .TE_B(\ringosc.dstage[3].id.trim[0] ),
    .Z(\ringosc.dstage[3].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[3].id.delayenb1  (.A(\ringosc.dstage[3].id.ts ),
    .TE_B(\ringosc.dstage[3].id.trim[1] ),
    .Z(\ringosc.dstage[3].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[3].id.delayint0  (.A(\ringosc.dstage[3].id.d1 ),
    .Y(\ringosc.dstage[3].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[4].id.delaybuf0  (.A(\ringosc.dstage[3].id.out ),
    .X(\ringosc.dstage[4].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[4].id.delaybuf1  (.A(\ringosc.dstage[4].id.ts ),
    .X(\ringosc.dstage[4].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[4].id.delayen0  (.A(\ringosc.dstage[4].id.d2 ),
    .TE(\ringosc.dstage[4].id.trim[0] ),
    .Z(\ringosc.dstage[4].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[4].id.delayen1  (.A(\ringosc.dstage[4].id.d0 ),
    .TE(\ringosc.dstage[4].id.trim[1] ),
    .Z(\ringosc.dstage[4].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[4].id.delayenb0  (.A(\ringosc.dstage[4].id.ts ),
    .TE_B(\ringosc.dstage[4].id.trim[0] ),
    .Z(\ringosc.dstage[4].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[4].id.delayenb1  (.A(\ringosc.dstage[4].id.ts ),
    .TE_B(\ringosc.dstage[4].id.trim[1] ),
    .Z(\ringosc.dstage[4].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[4].id.delayint0  (.A(\ringosc.dstage[4].id.d1 ),
    .Y(\ringosc.dstage[4].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[5].id.delaybuf0  (.A(\ringosc.dstage[4].id.out ),
    .X(\ringosc.dstage[5].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[5].id.delaybuf1  (.A(\ringosc.dstage[5].id.ts ),
    .X(\ringosc.dstage[5].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[5].id.delayen0  (.A(\ringosc.dstage[5].id.d2 ),
    .TE(\ringosc.dstage[5].id.trim[0] ),
    .Z(\ringosc.dstage[5].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[5].id.delayen1  (.A(\ringosc.dstage[5].id.d0 ),
    .TE(\ringosc.dstage[5].id.trim[1] ),
    .Z(\ringosc.dstage[5].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[5].id.delayenb0  (.A(\ringosc.dstage[5].id.ts ),
    .TE_B(\ringosc.dstage[5].id.trim[0] ),
    .Z(\ringosc.dstage[5].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[5].id.delayenb1  (.A(\ringosc.dstage[5].id.ts ),
    .TE_B(\ringosc.dstage[5].id.trim[1] ),
    .Z(\ringosc.dstage[5].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[5].id.delayint0  (.A(\ringosc.dstage[5].id.d1 ),
    .Y(\ringosc.dstage[5].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[6].id.delaybuf0  (.A(\ringosc.dstage[5].id.out ),
    .X(\ringosc.dstage[6].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[6].id.delaybuf1  (.A(\ringosc.dstage[6].id.ts ),
    .X(\ringosc.dstage[6].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[6].id.delayen0  (.A(\ringosc.dstage[6].id.d2 ),
    .TE(\ringosc.dstage[6].id.trim[0] ),
    .Z(\ringosc.dstage[6].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[6].id.delayen1  (.A(\ringosc.dstage[6].id.d0 ),
    .TE(\ringosc.dstage[6].id.trim[1] ),
    .Z(\ringosc.dstage[6].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[6].id.delayenb0  (.A(\ringosc.dstage[6].id.ts ),
    .TE_B(\ringosc.dstage[6].id.trim[0] ),
    .Z(\ringosc.dstage[6].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[6].id.delayenb1  (.A(\ringosc.dstage[6].id.ts ),
    .TE_B(\ringosc.dstage[6].id.trim[1] ),
    .Z(\ringosc.dstage[6].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[6].id.delayint0  (.A(\ringosc.dstage[6].id.d1 ),
    .Y(\ringosc.dstage[6].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[7].id.delaybuf0  (.A(\ringosc.dstage[6].id.out ),
    .X(\ringosc.dstage[7].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[7].id.delaybuf1  (.A(\ringosc.dstage[7].id.ts ),
    .X(\ringosc.dstage[7].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[7].id.delayen0  (.A(\ringosc.dstage[7].id.d2 ),
    .TE(\ringosc.dstage[7].id.trim[0] ),
    .Z(\ringosc.dstage[7].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[7].id.delayen1  (.A(\ringosc.dstage[7].id.d0 ),
    .TE(\ringosc.dstage[7].id.trim[1] ),
    .Z(\ringosc.dstage[7].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[7].id.delayenb0  (.A(\ringosc.dstage[7].id.ts ),
    .TE_B(\ringosc.dstage[7].id.trim[0] ),
    .Z(\ringosc.dstage[7].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[7].id.delayenb1  (.A(\ringosc.dstage[7].id.ts ),
    .TE_B(\ringosc.dstage[7].id.trim[1] ),
    .Z(\ringosc.dstage[7].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[7].id.delayint0  (.A(\ringosc.dstage[7].id.d1 ),
    .Y(\ringosc.dstage[7].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[8].id.delaybuf0  (.A(\ringosc.dstage[7].id.out ),
    .X(\ringosc.dstage[8].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[8].id.delaybuf1  (.A(\ringosc.dstage[8].id.ts ),
    .X(\ringosc.dstage[8].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[8].id.delayen0  (.A(\ringosc.dstage[8].id.d2 ),
    .TE(\ringosc.dstage[8].id.trim[0] ),
    .Z(\ringosc.dstage[8].id.out ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[8].id.delayen1  (.A(\ringosc.dstage[8].id.d0 ),
    .TE(\ringosc.dstage[8].id.trim[1] ),
    .Z(\ringosc.dstage[8].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[8].id.delayenb0  (.A(\ringosc.dstage[8].id.ts ),
    .TE_B(\ringosc.dstage[8].id.trim[0] ),
    .Z(\ringosc.dstage[8].id.out ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[8].id.delayenb1  (.A(\ringosc.dstage[8].id.ts ),
    .TE_B(\ringosc.dstage[8].id.trim[1] ),
    .Z(\ringosc.dstage[8].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[8].id.delayint0  (.A(\ringosc.dstage[8].id.d1 ),
    .Y(\ringosc.dstage[8].id.d2 ));
 sky130_fd_sc_hd__clkbuf_2 \ringosc.dstage[9].id.delaybuf0  (.A(\ringosc.dstage[8].id.out ),
    .X(\ringosc.dstage[9].id.ts ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.dstage[9].id.delaybuf1  (.A(\ringosc.dstage[9].id.ts ),
    .X(\ringosc.dstage[9].id.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[9].id.delayen0  (.A(\ringosc.dstage[9].id.d2 ),
    .TE(\ringosc.dstage[9].id.trim[0] ),
    .Z(\ringosc.dstage[10].id.in ));
 sky130_fd_sc_hd__einvp_2 \ringosc.dstage[9].id.delayen1  (.A(\ringosc.dstage[9].id.d0 ),
    .TE(\ringosc.dstage[9].id.trim[1] ),
    .Z(\ringosc.dstage[9].id.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.dstage[9].id.delayenb0  (.A(\ringosc.dstage[9].id.ts ),
    .TE_B(\ringosc.dstage[9].id.trim[0] ),
    .Z(\ringosc.dstage[10].id.in ));
 sky130_fd_sc_hd__einvn_4 \ringosc.dstage[9].id.delayenb1  (.A(\ringosc.dstage[9].id.ts ),
    .TE_B(\ringosc.dstage[9].id.trim[1] ),
    .Z(\ringosc.dstage[9].id.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.dstage[9].id.delayint0  (.A(\ringosc.dstage[9].id.d1 ),
    .Y(\ringosc.dstage[9].id.d2 ));
 sky130_fd_sc_hd__clkinv_2 \ringosc.ibufp00  (.A(\ringosc.dstage[0].id.in ),
    .Y(\ringosc.c[0] ));
 sky130_fd_sc_hd__clkinv_8 \ringosc.ibufp01  (.A(\ringosc.c[0] ),
    .Y(\pll_control.clock ));
 sky130_fd_sc_hd__clkinv_2 \ringosc.ibufp10  (.A(\ringosc.dstage[5].id.out ),
    .Y(\ringosc.c[1] ));
 sky130_fd_sc_hd__clkinv_8 \ringosc.ibufp11  (.A(\ringosc.c[1] ),
    .Y(clockp[1]));
 sky130_fd_sc_hd__conb_1 \ringosc.iss.const1  (.HI(\ringosc.iss.one ));
 sky130_fd_sc_hd__or2_2 \ringosc.iss.ctrlen0  (.A(\ringosc.iss.reset ),
    .B(\ringosc.iss.trim[0] ),
    .X(\ringosc.iss.ctrl0 ));
 sky130_fd_sc_hd__clkbuf_1 \ringosc.iss.delaybuf0  (.A(\ringosc.dstage[11].id.out ),
    .X(\ringosc.iss.d0 ));
 sky130_fd_sc_hd__einvp_2 \ringosc.iss.delayen0  (.A(\ringosc.iss.d2 ),
    .TE(\ringosc.iss.trim[0] ),
    .Z(\ringosc.dstage[0].id.in ));
 sky130_fd_sc_hd__einvp_2 \ringosc.iss.delayen1  (.A(\ringosc.iss.d0 ),
    .TE(\ringosc.iss.trim[1] ),
    .Z(\ringosc.iss.d1 ));
 sky130_fd_sc_hd__einvn_8 \ringosc.iss.delayenb0  (.A(\ringosc.dstage[11].id.out ),
    .TE_B(\ringosc.iss.ctrl0 ),
    .Z(\ringosc.dstage[0].id.in ));
 sky130_fd_sc_hd__einvn_4 \ringosc.iss.delayenb1  (.A(\ringosc.dstage[11].id.out ),
    .TE_B(\ringosc.iss.trim[1] ),
    .Z(\ringosc.iss.d1 ));
 sky130_fd_sc_hd__clkinv_1 \ringosc.iss.delayint0  (.A(\ringosc.iss.d1 ),
    .Y(\ringosc.iss.d2 ));
 sky130_fd_sc_hd__einvp_1 \ringosc.iss.reseten0  (.A(\ringosc.iss.one ),
    .TE(\ringosc.iss.reset ),
    .Z(\ringosc.dstage[0].id.in ));
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
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_78 ();
 sky130_fd_sc_hd__decap_3 PHY_79 ();
 sky130_fd_sc_hd__decap_3 PHY_80 ();
 sky130_fd_sc_hd__decap_3 PHY_81 ();
 sky130_fd_sc_hd__decap_3 PHY_82 ();
 sky130_fd_sc_hd__decap_3 PHY_83 ();
 sky130_fd_sc_hd__decap_3 PHY_84 ();
 sky130_fd_sc_hd__decap_3 PHY_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_265 ();
endmodule
