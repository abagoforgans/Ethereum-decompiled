contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3736]




// =====================  Runtime code  =====================


mapping of struct stor0;
uint64 storE7FF; offset 88
uint64 storE7FF; offset 216
uint128 storE7FF;
uint128 storE7FF; offset 128
uint64 stor11DF; offset 88
uint64 stor11DF; offset 216
uint128 stor11DF;
uint128 stor11DF; offset 128
uint64 stor1564; offset 88
uint64 stor1564; offset 216
uint128 stor1564;
uint128 stor1564; offset 128
uint64 stor1A5D; offset 88
uint64 stor1A5D; offset 216
uint128 stor1A5D;
uint128 stor1A5D; offset 128
uint64 stor1A60; offset 88
uint64 stor1A60; offset 216
uint128 stor1A60;
uint128 stor1A60; offset 128
uint64 stor1E2E; offset 88
uint64 stor1E2E; offset 216
uint128 stor1E2E;
uint128 stor1E2E; offset 128
uint64 stor2804; offset 88
uint64 stor2804; offset 216
uint128 stor2804;
uint128 stor2804; offset 128
uint64 stor3747; offset 88
uint64 stor3747; offset 216
uint128 stor3747;
uint128 stor3747; offset 128
uint64 stor434C; offset 88
uint64 stor434C; offset 216
uint128 stor434C;
uint128 stor434C; offset 128
uint64 stor527F; offset 88
uint64 stor527F; offset 216
uint128 stor527F;
uint128 stor527F; offset 128
uint64 stor603D; offset 88
uint64 stor603D; offset 216
uint128 stor603D;
uint128 stor603D; offset 128
uint64 stor63EB; offset 88
uint64 stor63EB; offset 216
uint128 stor63EB;
uint128 stor63EB; offset 128
uint64 stor655F; offset 88
uint64 stor655F; offset 216
uint128 stor655F;
uint128 stor655F; offset 128
uint64 stor68E7; offset 88
uint64 stor68E7; offset 216
uint128 stor68E7;
uint128 stor68E7; offset 128
uint64 stor6B8A; offset 88
uint64 stor6B8A; offset 216
uint128 stor6B8A;
uint128 stor6B8A; offset 128
uint64 stor7224; offset 88
uint64 stor7224; offset 216
uint128 stor7224;
uint128 stor7224; offset 128
uint64 stor7F35; offset 88
uint64 stor7F35; offset 216
uint128 stor7F35;
uint128 stor7F35; offset 128
uint64 storAC30; offset 88
uint64 storAC30; offset 216
uint128 storAC30;
uint128 storAC30; offset 128
uint64 storB612; offset 88
uint64 storB612; offset 216
uint128 storB612;
uint128 storB612; offset 128
uint64 storC49E; offset 88
uint64 storC49E; offset 216
uint128 storC49E;
uint128 storC49E; offset 128
uint64 storE2E2; offset 88
uint64 storE2E2; offset 216
uint128 storE2E2;
uint128 storE2E2; offset 128
uint64 storE433; offset 88
uint64 storE433; offset 216
uint128 storE433;
uint128 storE433; offset 128
uint64 storEA35; offset 88
uint64 storEA35; offset 216
uint128 storEA35;
uint128 storEA35; offset 128
uint64 storEB3A; offset 88
uint64 storEB3A; offset 216
uint128 storEB3A;
uint128 storEB3A; offset 128
uint64 storF9EE; offset 88
uint64 storF9EE; offset 216
uint128 storF9EE;
uint128 storF9EE; offset 128

function _fallback() payable {
  stop
}

function clawback() payable {
    require msg.sender == 0xda4a4626d3e16e094de3225a751aab7128e96526
    call 0xda4a4626d3e16e094de3225a751aab7128e96526 with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function checkMyWithdraw(address arg1, address arg2) payable {
    call arg1.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    return (ext_call.return_data[0] * stor0[address(arg1)].field_128 / stor0[address(arg1)].field_0)
}

function withdraw(address arg1) payable {
    call arg1.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call arg1.0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] * stor0[address(arg1)].field_128 / stor0[address(arg1)].field_0 wei
         gas 0 wei
    require ext_call.success
}

function WithDrawPreForkChildDAO() payable {
    Mask(88, 0, stor6B8A.field_0) = 11727766774716786238037889
    stor6B8A.field_88 % 1099511627776 = 0
    Mask(88, 0, stor6B8A.field_128) = 11727751581980739956781866
    stor6B8A.field_216 % 1099511627776 = 0
    Mask(88, 0, stor68E7.field_0) = 11652850906939704234171111
    stor68E7.field_88 % 1099511627776 = 0
    Mask(88, 0, stor68E7.field_128) = 11652835811253422556781866
    stor68E7.field_216 % 1099511627776 = 0
    Mask(88, 0, stor63EB.field_0) = 11672514989096365433114202
    stor63EB.field_88 % 1099511627776 = 0
    Mask(88, 0, stor63EB.field_128) = 11672499867936247556781866
    stor63EB.field_216 % 1099511627776 = 0
    Mask(88, 0, stor655F.field_0) = 11672504989083410915839447
    stor655F.field_88 % 1099511627776 = 0
    Mask(88, 0, stor655F.field_128) = 11672489867936247556781866
    stor655F.field_216 % 1099511627776 = 0
    Mask(88, 0, stor434C.field_0) = 11657174904348740590804928
    stor434C.field_88 % 1099511627776 = 0
    Mask(88, 0, stor434C.field_128) = 11657159803060936256781866
    stor434C.field_216 % 1099511627776 = 0
    Mask(88, 0, stor2804.field_0) = 11672394990422733145443415
    stor2804.field_88 % 1099511627776 = 0
    Mask(88, 0, stor2804.field_128) = 11672379869418067556781866
    stor2804.field_216 % 1099511627776 = 0
    Mask(88, 0, stor527F.field_0) = 11672027610039670010098830
    stor527F.field_88 % 1099511627776 = 0
    Mask(88, 0, stor527F.field_128) = 11672012489510927356781866
    stor527F.field_216 % 1099511627776 = 0
    Mask(88, 0, stor7224.field_0) = 7913415994245080851884568
    stor7224.field_88 % 1099511627776 = 0
    Mask(88, 0, stor7224.field_128) = 11540303342793816418782834
    stor7224.field_216 % 1099511627776 = 0
    Mask(88, 0, storEA35.field_0) = 7913416021673878030553201
    storEA35.field_88 % 1099511627776 = 0
    Mask(88, 0, storEA35.field_128) = 11540303382793816418782834
    storEA35.field_216 % 1099511627776 = 0
    Mask(88, 0, storB612.field_0) = 11658110148448064505365317
    storB612.field_88 % 1099511627776 = 0
    Mask(88, 0, storB612.field_128) = 11658095045948698156781866
    storB612.field_216 % 1099511627776 = 0
    Mask(88, 0, stor603D.field_0) = 8285423727021618574288915
    stor603D.field_88 % 1099511627776 = 0
    Mask(88, 0, stor603D.field_128) = 11597611623386926056781866
    stor603D.field_216 % 1099511627776 = 0
    Mask(88, 0, storAC30.field_0) = 11640162228429435032712289
    storAC30.field_88 % 1099511627776 = 0
    Mask(88, 0, storAC30.field_128) = 11640147149180702556781865
    storAC30.field_216 % 1099511627776 = 0
    Mask(88, 0, storE433.field_0) = 11632720959688545875602644
    storE433.field_88 % 1099511627776 = 0
    Mask(88, 0, storE433.field_128) = 11632705890079605356781865
    storE433.field_216 % 1099511627776 = 0
    Mask(88, 0, stor1A5D.field_0) = 11600333244558691014482582
    stor1A5D.field_88 % 1099511627776 = 0
    Mask(88, 0, stor1A5D.field_128) = 11600318216906417656781865
    stor1A5D.field_216 % 1099511627776 = 0
    Mask(88, 0, stor1A60.field_0) = 11632720949788533050630542
    stor1A60.field_88 % 1099511627776 = 0
    Mask(88, 0, stor1A60.field_128) = 11632705880179605356781865
    stor1A60.field_216 % 1099511627776 = 0
    Mask(88, 0, stor1E2E.field_0) = 7930699229747195847409685
    stor1E2E.field_88 % 1099511627776 = 0
    Mask(88, 0, stor1E2E.field_128) = 11562914862736318056781866
    stor1E2E.field_216 % 1099511627776 = 0
    Mask(88, 0, stor11DF.field_0) = 11600338244565168273119959
    stor11DF.field_88 % 1099511627776 = 0
    Mask(88, 0, stor11DF.field_128) = 11600323216906417656781865
    stor11DF.field_216 % 1099511627776 = 0
    Mask(88, 0, storE7FF.field_0) = 11600333144558561469309835
    storE7FF.field_88 % 1099511627776 = 0
    Mask(88, 0, storE7FF.field_128) = 11600318116906417656781865
    storE7FF.field_216 % 1099511627776 = 0
    Mask(88, 0, stor3747.field_0) = 7929078466662085333989346
    stor3747.field_88 % 1099511627776 = 0
    Mask(88, 0, stor3747.field_128) = 11560551799275847356782634
    stor3747.field_216 % 1099511627776 = 0
    Mask(88, 0, storC49E.field_0) = 10112931316104865578090844
    storC49E.field_88 % 1099511627776 = 0
    Mask(88, 0, storC49E.field_128) = 11599318102767995456781865
    storC49E.field_216 % 1099511627776 = 0
    Mask(88, 0, storEB3A.field_0) = 7932411170508884080269057
    storEB3A.field_88 % 1099511627776 = 0
    Mask(88, 0, storEB3A.field_128) = 11565410862736318056781866
    storEB3A.field_216 % 1099511627776 = 0
    Mask(88, 0, stor1564.field_0) = 7913413658817663126469710
    stor1564.field_88 % 1099511627776 = 0
    Mask(88, 0, stor1564.field_128) = 11540299982102102518782834
    stor1564.field_216 % 1099511627776 = 0
    Mask(88, 0, storE2E2.field_0) = 7920435670452017684678746
    storE2E2.field_88 % 1099511627776 = 0
    Mask(88, 0, storE2E2.field_128) = 11550426779375303418782834
    storE2E2.field_216 % 1099511627776 = 0
    Mask(88, 0, stor7F35.field_0) = 7913160958906206858622565
    stor7F35.field_88 % 1099511627776 = 0
    Mask(88, 0, stor7F35.field_128) = 11539990270685330718782834
    stor7F35.field_216 % 1099511627776 = 0
    Mask(88, 0, storF9EE.field_0) = 7912878490620133004657286
    storF9EE.field_88 % 1099511627776 = 0
    Mask(88, 0, storF9EE.field_128) = 11539954374724178476032701
    storF9EE.field_216 % 1099511627776 = 0
}



}
