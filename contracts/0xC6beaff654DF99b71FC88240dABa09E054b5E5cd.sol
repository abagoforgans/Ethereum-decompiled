contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage73' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'STR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor5[0x408a302b84c5747fb668234f6ca6d3c63f305611] = 10^15
    return code.data[494 len 6893]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_b701701c;
array of struct sub_993cbb04;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_993cbb04(?) {
    require arg1 < sub_993cbb04.length
    return sub_993cbb04[arg1].field_0
}

function sub_b701701c(?) {
    require arg1 < sub_b701701c.length
    return sub_b701701c[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x10ed6d0f2ed1e978aa89560d7e4654685b67474
    mem[128] = 0x2be28260bfea06c46ffa0412167ef1e3ac8e6b45
    mem[160] = 0x7ed602ec3efcfffbd32476a4c608cc1b6c0ff96e
    mem[192] = 0x87410a4193fd02d461ac7a955f4cc48c3a65babe
    mem[224] = 0xee35b4dcbe24599c290f7776d6daec1e0c4c2fcd
    mem[256] = 0xd881eae8ec6c43e09b1ddfdb0c56a4dafed23056
    mem[288] = 0xabc68071e4fff0b380c2fb8e06b97118816735e9
    mem[320] = 0x6e7a119bfc5334409be50ff56a758df5f7f06bcd
    mem[352] = 0x55fb173561caf0f4108249b13473bdf5c6b4a2c0
    mem[384] = 0x7f802d7a892c142bdd96fb90a0fc042e054ac78
    mem[416] = 0x87c331f9b5b695252b7928ee92be860773ac92
    mem[448] = 0x80ad4da694b436f9a95ac2a7133985512bbfcd31
    mem[480] = 0xb21f728b304d024e8eaeab29a339f1bb132d6264
    mem[512] = 0x992120ad85f531767904f99c7acdd3dcc45f6
    mem[544] = 0x2e4b8db52207740ae1844487b04ed0d57f22639d
    mem[576] = 0x98ad80faf140673cd3ec7361d3661c6397cc729b
    mem[608] = 0x482055e56b3aa66bd36ce815616dd7e7a20bbb8d
    mem[640] = 0x7283ba3173d6869d3395bb23272a7fa5d0b151e
    mem[672] = 0x908d081f4dcf4887fa8682f2deb7755de880a2f8
    mem[704] = 0x5987fbdc2ef89cc9e134d20e2cabf9f739f64733
    mem[736] = 0xba8cc9fb7e3f416115f294a5829537d852016803
    mem[768] = 0xd2e01a6b1279d0c33fcccad820cecbfc6d665c1e
    mem[800] = 0x5926c6bae8f0f2de74d2fdc696bab9c2cd7aeeb
    mem[832] = 0x133a01a0020d1946bb13e087131f48e852d810
    mem[864] = 0x97e53a959ef8e24d2f1793d76e0caa13a3663eff
    mem[896] = 0x56880478afb50a2e0a2327caf1d0f586370364b4
    mem[928] = 0x2d48df2160a5d610d52b3e19b76ce6c6e75fe01b
    mem[960] = 0xf1bdb5ccdeb05108259e75992befda0b54b9d44e
    mem[992] = 0xdd8c183670278544ba801b84f5c9af2a57b16654
    mem[1024] = 0x711a0e73d0133474b29c5a6590fbb53ebfe888d1
    mem[1056] = 0x23b2146feb514bcf93a400723e848d8b46a1b7f0
    mem[1088] = 0xedb0992327d1ac1cd9209f3681ebe609218bfa80
    mem[1120] = 0x703d1f3a8f859ad029a5cfea7e43570dff6d1017
    mem[1152] = 0x2a02bcf7e711f2debbb5e79f555e5f264595449e
    mem[1184] = 0x18f62c77755f0ae2f2779dce78e5939ad2ec1a
    mem[1216] = 0xa53de3cf4559b0825c73a8c8117447d2ad23e3a8
    mem[1248] = 0xb58181ed4a6a352550af82ba2cdff214f25a9d32
    mem[1280] = 0x1ad77db55368ce9388438d24916bb74be56d86b4
    sub_993cbb04.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_993cbb04[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_993cbb04.length > idx:
        sub_993cbb04[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x5154e62aa8005b4a9981d00e01f0e32dbfaca0f9
    mem[1344] = 0x77d4bfbb450f916628713c5577441abffcd9a29a
    mem[1376] = 0x1aba32c14f34d5224065be663d20912de774306f
    mem[1408] = 0xada472698602858c0a62d6b5306d5b445d662539
    mem[1440] = 0x981cc4c3067f50ad34f1753af9b02909e7410bf0
    mem[1472] = 0x6ee524b99db009ed1b3501e279675c3d61fc04db
    mem[1504] = 0xc3d57e51f07f7ceab0734a85c569aabaa22e1603
    mem[1536] = 0xbff409b76d9f06b18d90c19ad165e4fd10ce1498
    mem[1568] = 0x3a8be71b7686919703dc4de4a663fd7e00fd2a5
    mem[1600] = 0xc144e518ca4e44e3f775fde3c4aeed709a6c151c
    mem[1632] = 0x48263c1e22381a3f85d9b5b65604527cbdf9e6
    mem[1664] = 0xf38d62a8a7d0ba6ce699c0e0a54771557970cc94
    mem[1696] = 0xa69f269ba0ae7fae627e1fc07b6c920731a4a651
    mem[1728] = 0x92c8f0f9acc2a115a8fae854985623414ab439
    mem[1760] = 0xd222611bca68a8b0f93c5f0322df356edfa6999
    mem[1792] = 0x382296805cc821eef6db5c3fa54ab5f82dd2c413
    mem[1824] = 0x9c915f0c0067aeee67722a34f362ef9fd247ab95
    mem[1856] = 0x9f334285363baea3062a3c1001ebdeb16abbbc9c
    mem[1888] = 0x5d9b6f859f7c459dc84c7c417c83cfc5d9284033
    mem[1920] = 0xb3071aa74883b759a8b71cff432b8531bf3f1f29
    mem[1952] = 0x1476515ebe29af5913263550cb941c295cbe45c4
    mem[1984] = 0x61a7a1609291fc931c91f8796ff141d8d4eadbcc
    mem[2016] = 0x8ca9b3b7b81d1477b94853ec5dc1fa20b75482fd
    mem[2048] = 0x92e31373bae3330d6c98f9f9c902e7ad9cecd3
    mem[2080] = 0x6bfaa87fd064ec4151a8a0f62a21c4b66cfe473b
    mem[2112] = 0x74f1722bd0f085720f278323e140b1cf10012570
    mem[2144] = 0x5a088f3e9f304e68ad1092135aa2871446a6fac2
    mem[2176] = 0x6f8f4afea86d7099b3dd40e6fc858fd3895f20b2
    mem[2208] = 0xd33a427b2534677d6a3d30831a18bb047a47956e
    mem[2240] = 0x77917512dbc45c8c753374e603361d56aa0aab06
    mem[2272] = 0x9d0d782b6ddfe10f88e748bddb6987f44c97858b
    mem[2304] = 0x1e53a7e4bc78cfe69aab539af46dc474c5c33dd0
    mem[2336] = 0x2aa6ca83ec9cf84687491f064c88c6d1fd5710fe
    mem[2368] = 0x550b6dd02c63b284ce242168ae25159299522e24
    mem[2400] = 0xf4dd4819dcfcf6b8bd8daf883700ef8085e445
    mem[2432] = 0x864e8b96e9605bffbd2de9bd4d116f5839b7203b
    mem[2464] = 0x68e0f8aaf5c194b4429c3ab686970f5820e9b23e
    mem[2496] = 0x6f8ac1911882a06dfdb573327167fe125947d42f
    sub_b701701c.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_b701701c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_b701701c.length > idx:
        sub_b701701c[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_b701701c.length:
        if not sub_993cbb04.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_b701701c.length, sub_993cbb04.length
        else:
            mem[2660] = address(sub_993cbb04.field_0)
            idx = 2660
            s = 0
            while (32 * sub_993cbb04.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_993cbb04[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_b701701c.length, sub_993cbb04.length, mem[2660 len 32 * sub_993cbb04.length]
    else:
        mem[2628] = address(sub_b701701c.field_0)
        idx = 2628
        s = 0
        while (32 * sub_b701701c.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_b701701c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_b701701c.length) + 2628] = sub_993cbb04.length
        if not sub_993cbb04.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_b701701c.length, data=mem[2628 len (32 * sub_b701701c.length) + 32]), (32 * sub_b701701c.length) + 96
        else:
            mem[(32 * sub_b701701c.length) + 2660] = address(sub_993cbb04.field_0)
            idx = (32 * sub_b701701c.length) + 2660
            s = 0
            while (32 * sub_b701701c.length) + (32 * sub_993cbb04.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_993cbb04[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_b701701c.length, data=mem[2628 len (32 * sub_b701701c.length) + (32 * sub_993cbb04.length) + 32]), (32 * sub_b701701c.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
