contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 9173]




// =====================  Runtime code  =====================


mapping of struct stor0;
array of address stor1;
uint64 stor1219; offset 88
uint64 stor1219; offset 216
uint128 stor1219;
uint128 stor1219; offset 128
uint64 stor2EB6; offset 88
uint64 stor2EB6; offset 216
uint128 stor2EB6;
uint128 stor2EB6; offset 128
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
uint64 stor2146; offset 88
uint64 stor2146; offset 216
uint128 stor2146;
uint128 stor2146; offset 128
uint64 stor2804; offset 88
uint64 stor2804; offset 216
uint128 stor2804;
uint128 stor2804; offset 128
uint64 stor2FD5; offset 88
uint64 stor2FD5; offset 216
uint128 stor2FD5;
uint128 stor2FD5; offset 128
uint64 stor3747; offset 88
uint64 stor3747; offset 216
uint128 stor3747;
uint128 stor3747; offset 128
uint64 stor37A1; offset 88
uint64 stor37A1; offset 216
uint128 stor37A1;
uint128 stor37A1; offset 128
uint64 stor434C; offset 88
uint64 stor434C; offset 216
uint128 stor434C;
uint128 stor434C; offset 128
uint64 stor44C9; offset 88
uint64 stor44C9; offset 216
uint128 stor44C9;
uint128 stor44C9; offset 128
uint64 stor527F; offset 88
uint64 stor527F; offset 216
uint128 stor527F;
uint128 stor527F; offset 128
uint64 stor603D; offset 88
uint64 stor603D; offset 216
uint128 stor603D;
uint128 stor603D; offset 128
uint64 stor614B; offset 88
uint64 stor614B; offset 216
uint128 stor614B;
uint128 stor614B; offset 128
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
uint64 stor803E; offset 88
uint64 stor803E; offset 216
uint128 stor803E;
uint128 stor803E; offset 128
uint64 stor89DB; offset 88
uint64 stor89DB; offset 216
uint128 stor89DB;
uint128 stor89DB; offset 128
uint64 stor9F53; offset 88
uint64 stor9F53; offset 216
uint128 stor9F53;
uint128 stor9F53; offset 128
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
uint64 storD03B; offset 88
uint64 storD03B; offset 216
uint128 storD03B;
uint128 storD03B; offset 128
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

function checkMyWithdraw(address arg1) payable {
    call arg1.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    return (uint128(stor0[address(arg1)].field_128) * ext_call.return_data[0] / uint128(stor0[address(arg1)].field_0))
}

function withdraw(address arg1) payable {
    call arg1.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] * uint128(stor0[address(arg1)].field_128) / uint128(stor0[address(arg1)].field_0) wei
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
    Mask(88, 0, stor9F53.field_0) = 11725205904212994017693999
    stor9F53.field_88 % 1099511627776 = 0
    Mask(88, 0, stor9F53.field_128) = 11725190714794427556781866
    stor9F53.field_216 % 1099511627776 = 0
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
    Mask(88, 0, stor89DB.field_0) = 11660273159043194987425803
    stor89DB.field_88 % 1099511627776 = 0
    Mask(88, 0, stor89DB.field_128) = 11660258053741756456781866
    stor89DB.field_216 % 1099511627776 = 0
    Mask(88, 0, stor2804.field_0) = 11672394990422733145443415
    stor2804.field_88 % 1099511627776 = 0
    Mask(88, 0, stor2804.field_128) = 11672379869418067556781866
    stor2804.field_216 % 1099511627776 = 0
    Mask(88, 0, stor37A1.field_0) = 11651681905425321164752175
    stor37A1.field_88 % 1099511627776 = 0
    Mask(88, 0, stor37A1.field_128) = 11651666811253422556781866
    stor37A1.field_216 % 1099511627776 = 0
    Mask(88, 0, stor527F.field_0) = 11672027610039670010098830
    stor527F.field_88 % 1099511627776 = 0
    Mask(88, 0, stor527F.field_128) = 11672012489510927356781866
    stor527F.field_216 % 1099511627776 = 0
    Mask(88, 0, stor2FD5.field_0) = 11660540013147733350301278
    stor2FD5.field_88 % 1099511627776 = 0
    Mask(88, 0, stor2FD5.field_128) = 11660524907500598656781866
    stor2FD5.field_216 % 1099511627776 = 0
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
    Mask(88, 0, stor614B.field_0) = 11660231985697426974621503
    stor614B.field_88 % 1099511627776 = 0
    Mask(88, 0, stor614B.field_128) = 11660216880449326456781866
    stor614B.field_216 % 1099511627776 = 0
    Mask(88, 0, stor44C9.field_0) = 11655924902729425931460472
    stor44C9.field_88 % 1099511627776 = 0
    Mask(88, 0, stor44C9.field_128) = 11655909803060936256781866
    stor44C9.field_216 % 1099511627776 = 0
    Mask(88, 0, stor1219.field_0) = 11657074904219195418057372
    stor1219.field_88 % 1099511627776 = 0
    Mask(88, 0, stor1219.field_128) = 11657059803060936256781866
    stor1219.field_216 % 1099511627776 = 0
    Mask(88, 0, stor803E.field_0) = 11651686905431798423389552
    stor803E.field_88 % 1099511627776 = 0
    Mask(88, 0, stor803E.field_128) = 11651671811253422556781866
    stor803E.field_216 % 1099511627776 = 0
    Mask(88, 0, stor603D.field_0) = 8285423727021618574288915
    stor603D.field_88 % 1099511627776 = 0
    Mask(88, 0, stor603D.field_128) = 11597611623386926056781866
    stor603D.field_216 % 1099511627776 = 0
    Mask(88, 0, storAC30.field_0) = 11640162228429435032712289
    storAC30.field_88 % 1099511627776 = 0
    Mask(88, 0, storAC30.field_128) = 11640147149180702556781865
    storAC30.field_216 % 1099511627776 = 0
    Mask(88, 0, storD03B.field_0) = 11637045764389294338324695
    storD03B.field_88 % 1099511627776 = 0
    Mask(88, 0, storD03B.field_128) = 11637030689177785356781865
    storD03B.field_216 % 1099511627776 = 0
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
    Mask(88, 0, stor2146.field_0) = 11599337143263109741834269
    stor2146.field_88 % 1099511627776 = 0
    Mask(88, 0, stor2146.field_128) = 11599318116906417656781865
    stor2146.field_216 % 1099511627776 = 0
    Mask(88, 0, stor2EB6.field_0) = 11631034981160489608342812
    stor2EB6.field_88 % 1099511627776 = 0
    Mask(88, 0, stor2EB6.field_128) = 11631019913735650056781865
    stor2EB6.field_216 % 1099511627776 = 0
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

function totalWithdraw() payable {
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x319f70bab6845585f412ec7724b744fec6095c85
        stor1.length++
        address(stor1[stor1.length]) = 0x5c8536898fbb74fc7445814902fd08422eac56d0
        stor1.length++
        address(stor1[stor1.length]) = 0x200450f06520bdd6c527622a273333384d870efb
        stor1.length++
        address(stor1[stor1.length]) = 0x51e0ddd9998364a2eb38588679f0d2c42653e4a6
        stor1.length++
        address(stor1[stor1.length]) = 0x9f27daea7aca0aa0446220b98d028715e3bc803d
        stor1.length++
        address(stor1[stor1.length]) = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b
        stor1.length++
        address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
        stor1.length++
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + 1
    while stor1.length > idx:
        uint256(stor1[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x319f70bab6845585f412ec7724b744fec6095c85
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x5c8536898fbb74fc7445814902fd08422eac56d0
        stor1.length++
        address(stor1[stor1.length]) = 0x200450f06520bdd6c527622a273333384d870efb
        stor1.length++
        address(stor1[stor1.length]) = 0x51e0ddd9998364a2eb38588679f0d2c42653e4a6
        stor1.length++
        address(stor1[stor1.length]) = 0x9f27daea7aca0aa0446220b98d028715e3bc803d
        stor1.length++
        address(stor1[stor1.length]) = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b
        stor1.length++
        address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
        stor1.length++
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x5c8536898fbb74fc7445814902fd08422eac56d0
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x200450f06520bdd6c527622a273333384d870efb
        stor1.length++
        address(stor1[stor1.length]) = 0x51e0ddd9998364a2eb38588679f0d2c42653e4a6
        stor1.length++
        address(stor1[stor1.length]) = 0x9f27daea7aca0aa0446220b98d028715e3bc803d
        stor1.length++
        address(stor1[stor1.length]) = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b
        stor1.length++
        address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
        stor1.length++
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x200450f06520bdd6c527622a273333384d870efb
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x51e0ddd9998364a2eb38588679f0d2c42653e4a6
        stor1.length++
        address(stor1[stor1.length]) = 0x9f27daea7aca0aa0446220b98d028715e3bc803d
        stor1.length++
        address(stor1[stor1.length]) = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b
        stor1.length++
        address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
        stor1.length++
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x51e0ddd9998364a2eb38588679f0d2c42653e4a6
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x9f27daea7aca0aa0446220b98d028715e3bc803d
        stor1.length++
        address(stor1[stor1.length]) = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b
        stor1.length++
        address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
        stor1.length++
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x9f27daea7aca0aa0446220b98d028715e3bc803d
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b
        stor1.length++
        address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
        stor1.length++
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
        stor1.length++
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x6f6704e5a10332af6672e50b3d9754dc460dfa4d
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
        stor1.length++
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x492ea3bb0f3315521c31f273e565b868fc090f17
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
        stor1.length++
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x9ea779f907f0b315b364b0cfc39a0fde5b02a416
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
        stor1.length++
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0xcc34673c6c40e791051898567a1222daf90be287
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
        stor1.length++
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x440c59b325d2997a134c2c7c60a8c61611212bad
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
        stor1.length++
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x9c15b54878ba618f494b38f0ae7443db6af648ba
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
        stor1.length++
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x21c7fdb9ed8d291d79ffd82eb2c4356ec0d81241
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
        stor1.length++
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x1ca6abd14d30affe533b24d7a21bff4c2d5e1f3b
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
        stor1.length++
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x6131c42fa982e56929107413a9d526fd99405560
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
        stor1.length++
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x542a9515200d14b68e934e9830d91645a980dd7a
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
        stor1.length++
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0x782495b7b3355efb2833d56ecb34dc22ad7dfcc4
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
        stor1.length++
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
        idx = code.data[9141 len 32]
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return (s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length)
    idx = stor1.length + code.data[9141 len 32] + 1
    while code.data[9141 len 32] + stor1.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    address(stor1[stor1.length]) = 0xe4ae1efdfc53b73893af49113d8694a057b9c0d1
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
        stor1.length++
        address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
        stor1.length++
        address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
        stor1.length++
        address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
        stor1.length++
        address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
        stor1.length++
        address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
        stor1.length++
        address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
        stor1.length++
        address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
        stor1.length++
        address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
        stor1.length++
        address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
        stor1.length++
        address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
        stor1.length++
        address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
        stor1.length++
        address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
        stor1.length++
        address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
        stor1.length++
        address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
        stor1.length++
        address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
        stor1.length++
        address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[32] = 0
            mem[0] = 1
            call address(stor[code.data[9141 len 32] + idx]).totalSupply() with:
                 gas gas_remaining - 25050 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = s + (ext_call.return_data[0] * uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_128) / uint128(stor0[address(stor[code.data[9141 len 32] + idx])].field_0))
            continue 
        stor1.length = 0
    else:
        idx = stor1.length + code.data[9141 len 32] + 1
        while code.data[9141 len 32] + stor1.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        address(stor1[stor1.length]) = 0x737a6b837f97f46ebade41b9bc3e1c509c85c53
        stor1.length++
        if not stor1.length > stor1.length + 1:
            address(stor1[stor1.length]) = 0x52c5317c848ba20c7504cb2c8052abd1fde29d03
            stor1.length++
            address(stor1[stor1.length]) = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479
            stor1.length++
            address(stor1[stor1.length]) = 0x57b56736d32b86616a10f619859c6cd6f59092a
            stor1.length++
            address(stor1[stor1.length]) = 0x4deb0033bb26bc534b197e61d19e0733e5679784
            stor1.length++
            address(stor1[stor1.length]) = 0x35a051a0010aba705c9008d7a7eff6fb88f6ea7b
            stor1.length++
            address(stor1[stor1.length]) = 0x9da397b9e80755301a3b32173283a91c0ef6c87e
            stor1.length++
            address(stor1[stor1.length]) = 0x101f3be8ebb4bbd39a2e3b9a3639d4259832fd9
            stor1.length++
            address(stor1[stor1.length]) = 0xbcf899e6c7d9d5a215ab1e3444c86806fa854c76
            stor1.length++
            address(stor1[stor1.length]) = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7
            stor1.length++
            address(stor1[stor1.length]) = 0xd164b088bd9108b60d0ca3751da4bceb207b0782
            stor1.length++
            address(stor1[stor1.length]) = 0x1cba23d343a983e9b5cfd19496b9a9701ada385f
            stor1.length++
            address(stor1[stor1.length]) = 0x9fcd2deaff372a39cc679d5c5e4de7bafb0b1339
            stor1.length++
            address(stor1[stor1.length]) = 0xbc07118b9ac290e4622f5e77a0853539789effbe
            stor1.length++
            address(stor1[stor1.length]) = 0xacd87e28b0c9d1254e868b81cba4cc20d9a32225
            stor1.length++
            address(stor1[stor1.length]) = 0x5524c55fb03cf21f549444ccbecb664d0acad706
            stor1.length++
            address(stor1[stor1.length]) = 0x253488078a4edf4d6f42f113d1e62836a942cf1a
            stor1.length++
            address(stor1[stor1.length]) = 0x6d87578288b6cb5549d5076a207456a1f6a63dc0
    # nil
}



}
