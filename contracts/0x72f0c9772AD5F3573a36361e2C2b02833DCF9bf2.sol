contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage34' / 256
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
    return code.data[494 len 6985]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_ea9a7f24;
array of struct sub_d4f413f3;
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

function sub_d4f413f3(?) {
    require arg1 < sub_d4f413f3.length
    return sub_d4f413f3[arg1].field_0
}

function sub_ea9a7f24(?) {
    require arg1 < sub_ea9a7f24.length
    return sub_ea9a7f24[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x8f9963963e8ff8316724231e4d1142618950dcdd
    mem[128] = 0xea6c6360388f2668a7a09c24df43f3a54dd5e4f6
    mem[160] = 0x39aef3df3c936a0ee40f68be2b9b6ac31ebf7b5c
    mem[192] = 0x48e639b11524e0257b6e3f909e16abd6872318e0
    mem[224] = 0xca83c8f36c44cbe6810cd3e05b710792ef9a99a1
    mem[256] = 0x17b7432333e4b294ddd620675d2124e62e3d1c2b
    mem[288] = 0xc603c3b10238c867a5ee6e7977a4f240537f176c
    mem[320] = 0x2c8a31d55939e885e134d67d84ec5a7d61817e20
    mem[352] = 0xf7757a9b566494d3ec3212e650e7d6efb46bc8d2
    mem[384] = 0x6d062e28faf1570524f3f3a8d30942e85d593d66
    mem[416] = 0xe26d31595080d4d81ef91cbf482722a5798613cd
    mem[448] = 0xa88f621d5227e9f591a94c3229e9e78925de1f8b
    mem[480] = 0x61ca3ff294a960bd44c295ab76c9609af706e3c7
    mem[512] = 0x60e7d53ee99a13502128d8429f8a89d977e03da7
    mem[544] = 0x51b3ae48c48141f3dd4c357504767e66217d59
    mem[576] = 0x574b15b060261004c13fb38ec41ea78583efb60e
    mem[608] = 0x8ffa5ebf53a6ba0cf7c0c7b3ea62f4728793880c
    mem[640] = 0xd921e812e79293c1e037de020375ad56a7394e96
    mem[672] = 0x5e7941f83476b90c0cef37ac855928473184ce24
    mem[704] = 0xbd8bb5a868cc001b03f4b2094abd5419c249eab7
    mem[736] = 0x1a0a380f1fbf09d9b854f0e1f4f30eacdc7843cf
    mem[768] = 0xc9e93489fdf2748d54c1775880029d77a000c7de
    mem[800] = 0xd7454aacceec56004a20fcea61d0b35484013ab5
    mem[832] = 0x424f40c14cd35975240bc7e41dfffa58de515fa2
    mem[864] = 0x72bd5c7ced19915596e7fe0b76d9ba081fc39eb9
    mem[896] = 0xd98a2e391a4724657211719aadcffc4f979a924e
    mem[928] = 0xd3e5d70ad3605e84eb22b576073cf864418be822
    mem[960] = 0x90d4f429d968c50bc64098c3e47ec8d6f1db242c
    mem[992] = 0x356608715d73cdc6d0ad0a2d4c37d2a35994fae8
    mem[1024] = 0x1744d5c7ed04db9a5143ad2df099c69c610c00
    mem[1056] = 0xbd76740fb2334433654c070c8eeee0b8fa15fe68
    mem[1088] = 0x3fd6ecfdbd1c00163613941d53ba8b4142b08f65
    mem[1120] = 0x81bae8dd1d8d5d8d2665582a134e3b254dc2e3e2
    mem[1152] = 0x678e241cd68caca5d1fc58f11d6270fc965aa768
    mem[1184] = 0x5679556aedb77fd2b140dbb06f7a373ce3c199ae
    mem[1216] = 0xba07c3111c4f25c1e24078ca71b5affd2bbe4718
    mem[1248] = 0xafc4f9c2880609b7cb7c962b58ef6a42627d1022
    mem[1280] = 0x18e77bee1511f4c89b47722bb1d45f82de229b45
    sub_d4f413f3.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_d4f413f3[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_d4f413f3.length > idx:
        sub_d4f413f3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x32422225defe8be4d6528baa5ca0c0a26feb4b4a
    mem[1344] = 0xc1cbace30a20aaddd80c43181de36cc79cda087e
    mem[1376] = 0x5946f2f8db05941052a7d4c28a26490d03c53f25
    mem[1408] = 0x77c6c4cc032b86905d92fccb18bd50e19554bd08
    mem[1440] = 0x202ede327eebfe3a546e97f32a10a4690d1b684f
    mem[1472] = 0x98ccd5181cb803c98bc9a6f94f664a830a97b90
    mem[1504] = 0xd65910a4fc7f6d41ea746f682c71520940ca9c8e
    mem[1536] = 0x4f8756a9cb1673dfcc69ed3c0e9ef873768ec5d2
    mem[1568] = 0x89775125ff68eee27b26c6db8364c764567132c
    mem[1600] = 0x55335fdff9a3244d541e2da06dc3b4a1ba66a9ce
    mem[1632] = 0xfed365da4951841ceedfd5e53f019c5e86568b95
    mem[1664] = 0xc285346cb120cf02d16a98fee67ac82720ce547f
    mem[1696] = 0x1ccfa671240ed88e8c0c38464b0730eb97a14235
    mem[1728] = 0x2a26cdfbf03a69813fc4fa37730e8f12fb27a962
    mem[1760] = 0xa8622e93510850a9c3d50b43d50047e24f0e67
    mem[1792] = 0x464525bc635b9f9dddaa9e62c238ff6081a5575
    mem[1824] = 0xc441edc8558e1bb7c88ed3d7058cd09b4d7cd28e
    mem[1856] = 0x201a60ab717faaa4bd88cbf733ff874c9a2a6238
    mem[1888] = 0x4bf3fd05888017aac3622dcc531931c985c62b51
    mem[1920] = 0xb7544ddb1e9351f86b0d85d719b492bae9f80fc4
    mem[1952] = 0x93c8aa6c4b5477345ce2cfe123b4c4a44fcd8890
    mem[1984] = 0x578347a6d46e45baf348a74e0debd212911e025e
    mem[2016] = 0x8c0af51515737b2d9fbf285a1996ac04e09eede6
    mem[2048] = 0xf705ceb0f8b700d98978d5fc91f7705169e3e60e
    mem[2080] = 0x8fe4712175cc8252e838e80819b065bb1abd921a
    mem[2112] = 0x10fda1bd20b076856943b0108edf909c1ffdc33
    mem[2144] = 0x33456714fd42bd1d01eedc2c0d7f64d5cc0b8564
    mem[2176] = 0x9d573b9b9e33c65298175033667e70e277352509
    mem[2208] = 0xfd2cc32a7943043b01f2c70d04fba7c284cff18
    mem[2240] = 0x5b8c7d72a217319ea6ae9cbf6afaaf15c24f78
    mem[2272] = 0x921bae89c16ab332a1be7af3a3f840b93ae3c6ca
    mem[2304] = 0x6c00012ad46dbfdaf52973bd36a2f693da286ac2
    mem[2336] = 0x7f5c92452d02805b897d25b63d575e5edbcd7c0a
    mem[2368] = 0x383edbc27c035f4f2b4b1d6acfe4698859cdbdfb
    mem[2400] = 0xfbfd6e7983e2b08dd4441e7f3a9a87c475f1796
    mem[2432] = 0xa91b28550f7b3ee7c3676022ffcb433feb2ca53a
    mem[2464] = 0x9fa01cdc9bb1625c9d92bcac3f07bc0007c68ce1
    mem[2496] = 0x1cbe51911e1ba60b2959297c8100a9be2d4cdcf4
    sub_ea9a7f24.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_ea9a7f24[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ea9a7f24.length > idx:
        sub_ea9a7f24[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_ea9a7f24.length:
        if not sub_d4f413f3.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ea9a7f24.length, sub_d4f413f3.length
        else:
            mem[2660] = address(sub_d4f413f3.field_0)
            idx = 2660
            s = 0
            while (32 * sub_d4f413f3.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d4f413f3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ea9a7f24.length, sub_d4f413f3.length, mem[2660 len 32 * sub_d4f413f3.length]
    else:
        mem[2628] = address(sub_ea9a7f24.field_0)
        idx = 2628
        s = 0
        while (32 * sub_ea9a7f24.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_ea9a7f24[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_ea9a7f24.length) + 2628] = sub_d4f413f3.length
        if not sub_d4f413f3.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ea9a7f24.length, data=mem[2628 len (32 * sub_ea9a7f24.length) + 32]), (32 * sub_ea9a7f24.length) + 96
        else:
            mem[(32 * sub_ea9a7f24.length) + 2660] = address(sub_d4f413f3.field_0)
            idx = (32 * sub_ea9a7f24.length) + 2660
            s = 0
            while (32 * sub_ea9a7f24.length) + (32 * sub_d4f413f3.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d4f413f3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ea9a7f24.length, data=mem[2628 len (32 * sub_ea9a7f24.length) + (32 * sub_d4f413f3.length) + 32]), (32 * sub_ea9a7f24.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
