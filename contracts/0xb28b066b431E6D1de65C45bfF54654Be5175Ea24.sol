contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage82' / 256
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
    return code.data[494 len 6806]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_e6ccd1c2;
array of struct sub_7dcf020e;
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

function sub_7dcf020e(?) {
    require arg1 < sub_7dcf020e.length
    return sub_7dcf020e[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_e6ccd1c2(?) {
    require arg1 < sub_e6ccd1c2.length
    return sub_e6ccd1c2[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x1293bf4a618ed573d4a135c405a71a6d58a15080
    mem[128] = 0x9cd849baef147838fd567cdc9af459dbfaf457c2
    mem[160] = 0x7d89ec8fbdeb27296278b1107ffe321b32e34a9a
    mem[192] = 0x1bc7bfc70577ac79b3cdeba21e5fb8e3e8c660ba
    mem[224] = 0x626918f1693ba1213126f38c738636b207c75cf3
    mem[256] = 0x6e24a060afe37dea9deade18b5b92748b570fa58
    mem[288] = 0x4a6d795da109f639cf340d878f6ca67227bdbcda
    mem[320] = 0xde1f5cc3be2d992d38c6e1fb6a88cc454263b512
    mem[352] = 0xd3e5d70ad3605e84eb22b576073cf864418be822
    mem[384] = 0x2beffbe3d5f6aa254c808dbd5ebfbd627a062205
    mem[416] = 0x5ea677f80525a6affab46add670e62d46557885f
    mem[448] = 0xd2dda1755ea253e13382632dfc5a9b46de2319fa
    mem[480] = 0x4e8ee4e88e9a22e43c645a01ef376af49c1f93e2
    mem[512] = 0x3cb8c8e704c302f07ba723285f9eab0bfbbd911
    mem[544] = 0xf3ddb9062994cac9742df1da14f0f289289e71fc
    mem[576] = 0xf985df225750574a1f53645f31131e74d0a2374d
    mem[608] = 0xd288105999ecca413256e21f0992785801aee913
    mem[640] = 0x6cdba2b5161470a7f15ba79c91e2f011918769a9
    mem[672] = 0x4720965698974c62ab3d9d9ee6882b7d9517c20f
    mem[704] = 0x67ba8e99816374d989926fc12e67529c99bb9d
    mem[736] = 0xe75637dbef165c66d507ac8fd4fe8b004af5c7f0
    mem[768] = 0x306c9b60aa3a0ee0af3045ab54d00d07bd1867b
    mem[800] = 0xb06aa0773b505d032fed04f3a760ee8505fbd1
    mem[832] = 0x5c033cd14f9c4045d8793659b26a14491af00bc1
    mem[864] = 0x27a5f79793a9e660c6151d281d1d6ad46637e0f9
    mem[896] = 0x3500f92fc7a8216fab27b238dcdde3f6c64308f4
    mem[928] = 0x85215b76d2e980297f84b912ba15c5a825cd9774
    mem[960] = 0x19b8fe79331e71013456c58198ed4311cbe5bf5e
    mem[992] = 0x6828f3cb254b40f06501f11d6ed27913857a208b
    mem[1024] = 0xda1c7c7ccf449aa5225d4bdab44bd970fdc53247
    mem[1056] = 0xdce6890cdd3ecb8f410c6c658068ee8861929855
    mem[1088] = 0x41b0a4ca556108add4cf1f317d50f5741ab342bf
    mem[1120] = 0x762774b3dfa56ea0d8c9345df14bb3db1127112d
    mem[1152] = 0x93ccace34cd57383625b33e9a1925b51dd64b036
    mem[1184] = 0x26efe73d34c6bb41cbfc28134053a8a45c7b92bc
    mem[1216] = 0x58b260f00f0161f04fa4e63448b6592ea95e98
    mem[1248] = 0x5cbb617e8f77114eb61acf699d7742b8805d82aa
    mem[1280] = 0xc2af55aa0593c2a97237ae403c2cf0074c127825
    sub_7dcf020e.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_7dcf020e[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7dcf020e.length > idx:
        sub_7dcf020e[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x2788c8ef1c1b9f73446874a61204dbc36d5a33ed
    mem[1344] = 0x668c4c5b9d6342559199ac57e48480f9bf2f2a06
    mem[1376] = 0x5db74efe6de96218f10da9a548a29eb4fbe9108
    mem[1408] = 0x9fec93739a8d0a83dfb16acc24b2e167fa3505c9
    mem[1440] = 0xfa63ed2bedfe5f33da45d2ba3d108a62b4f6d392
    mem[1472] = 0xf999d813b88b1dfbe4266320268a217ff6eb3448
    mem[1504] = 0x761591370901a630b46d40985e5e721933a492f6
    mem[1536] = 0xe8863af49a8d94c87aab5c41d32a1957c7cf7833
    mem[1568] = 0x33456714fd42bd1d01eedc2c0d7f64d5cc0b8564
    mem[1600] = 0x4b7c500453c452982c9659c3af2c68a237673928
    mem[1632] = 0xb10350fe1bb914ed6adf67819aef5f9c2fd50e4
    mem[1664] = 0x58c3fc8e28f97926076a162f18a8c0e2c46131
    mem[1696] = 0xbdaf8859b1533cf88bea5281d40b28dcf6cf6fa5
    mem[1728] = 0xe50d8d3822a6464252b0a4ef4b3603c5662f02b4
    mem[1760] = 0x31a61bbfb16d720fd8c830034cbdb2da241b5a58
    mem[1792] = 0xaf505f1871d19a576f6fa35ba5fbbe818b7e177
    mem[1824] = 0x94bfa2b09c4aa80744661f68c0e0f46f8c63f479
    mem[1856] = 0xf9d52c7c12b12f35fd1e8b497c7d5fe678abafbe
    mem[1888] = 0x732f35a5e9646edcbc1e497ebde13e47749d365b
    mem[1920] = 0xb8ec6c7f23aa846d281c579d79bc9c1435a2f
    mem[1952] = 0xbfcc92411515d85ea7f14a714e5465f0e02e0189
    mem[1984] = 0x319e77b2895d3bc910b34392648716057e35d7e2
    mem[2016] = 0x2f987498534391d6eb8fe398ebedb2a656e36e
    mem[2048] = 0x941e071ee06f2af1ccee793cba591f647b49a614
    mem[2080] = 0xf40ff9ef17a5f5eb4e7b4668b8431ea55b0a0165
    mem[2112] = 0xdeaa872aefd539048192a362a46ed71791da908
    mem[2144] = 0x57ed16c6610bdd535de1815cb384800af6a1c79c
    mem[2176] = 0xe7042ec675cf46303598aa1ea87e659073020346
    mem[2208] = 0x518864384830dfa8c9c0ae51df4e5328040d3abe
    mem[2240] = 0x6d088506267f0a940802dc1e8632e69ed5c60b6c
    mem[2272] = 0x5571639710b8410f0ddcead62339d69b0f359eb7
    mem[2304] = 0xf3799b5841ed275a129cc70ace5c9925776d4d32
    mem[2336] = 0x14e876f2ff241c4680f7f9805fcd07ca7ad2726b
    mem[2368] = 0x4a099d76650af2b43d65eeba80f3133b714bcd8
    mem[2400] = 0x231b8b567722e274b8362a2d634a3cfc302337df
    mem[2432] = 0x7a9742e4fe5132e0bf7d107203a342a3a7f31a
    mem[2464] = 0x21c59d3c6b5644eb8112eefe564c0eed0464883f
    mem[2496] = 0x84948b7dae92d9109914e874d5dcca94026e733c
    sub_e6ccd1c2.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_e6ccd1c2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e6ccd1c2.length > idx:
        sub_e6ccd1c2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_e6ccd1c2.length:
        if not sub_7dcf020e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e6ccd1c2.length, sub_7dcf020e.length
        else:
            mem[2660] = address(sub_7dcf020e.field_0)
            idx = 2660
            s = 0
            while (32 * sub_7dcf020e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7dcf020e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e6ccd1c2.length, sub_7dcf020e.length, mem[2660 len 32 * sub_7dcf020e.length]
    else:
        mem[2628] = address(sub_e6ccd1c2.field_0)
        idx = 2628
        s = 0
        while (32 * sub_e6ccd1c2.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_e6ccd1c2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_e6ccd1c2.length) + 2628] = sub_7dcf020e.length
        if not sub_7dcf020e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e6ccd1c2.length, data=mem[2628 len (32 * sub_e6ccd1c2.length) + 32]), (32 * sub_e6ccd1c2.length) + 96
        else:
            mem[(32 * sub_e6ccd1c2.length) + 2660] = address(sub_7dcf020e.field_0)
            idx = (32 * sub_e6ccd1c2.length) + 2660
            s = 0
            while (32 * sub_e6ccd1c2.length) + (32 * sub_7dcf020e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7dcf020e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e6ccd1c2.length, data=mem[2628 len (32 * sub_e6ccd1c2.length) + (32 * sub_7dcf020e.length) + 32]), (32 * sub_e6ccd1c2.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
