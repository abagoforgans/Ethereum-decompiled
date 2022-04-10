contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage27' / 256
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
    return code.data[494 len 6503]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_5da34e4f;
array of struct sub_126bb9d4;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_126bb9d4(?) {
    require arg1 < sub_126bb9d4.length
    return sub_126bb9d4[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_5da34e4f(?) {
    require arg1 < sub_5da34e4f.length
    return sub_5da34e4f[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xd22f082dfa04934ff2d16ac165eb068dd075d628
    mem[128] = 0xd283b082470c47ca4237302adf726c19d3e7fc4f
    mem[160] = 0x223e7d11e6a83efd8f2c469e0fc8124cdf9651a7
    mem[192] = 0xf86774f9fa397f9b6adc5c9c06fb11edbf51fcd4
    mem[224] = 0xf2dee058d6a84aa2cc494fe6720d618579b0bdcd
    mem[256] = 0xc4fda3125d390ebb97dbd092896aeab13d068864
    mem[288] = 0x1b8fc201058d4290f5bf00ceea181d635d9eb69f
    mem[320] = 0x81f17bb123631d619242ed10e8604972b3c5cf
    mem[352] = 0x451186679577c1126664d0807e0a225412ef78fc
    mem[384] = 0x595d10d3a68cc10dd212f117d4d2b5ca78a8a698
    mem[416] = 0x49d78b103e9a90c3401702e9fd71feeb9bd7ea24
    mem[448] = 0xecb2debed4d2efd1faffda1d4cd518b5023a464c
    mem[480] = 0x64b14ea0c6912edf27de5ee5c3a1c79fb3780735
    mem[512] = 0x8590b0d875869ab0044c570a6e31fe68f83d991
    mem[544] = 0x6c50d33777904bb340bb31daf57552ba46f87d51
    mem[576] = 0xf9ff77ddbf855bc066429178c5c8ecb10c1a34bd
    mem[608] = 0xa129db7137d23cb00f9e0588ec20e019220b0e6c
    mem[640] = 0x79410138c026635a3efe2c5bfa745c9cfe36cb40
    mem[672] = 0xefb151f7206c28f1b3edbc726a0d1fcaa503da82
    mem[704] = 0xc18cc89882e67abb229315c13928f5027b2dc5cf
    mem[736] = 0x49c3bbf861b92083faca62e4f7c004591b1b2666
    mem[768] = 0x5f4b6e5c534ba2987148e8b5a363b2b6c1699379
    mem[800] = 0xf2acbdef9fe1840e45601125978fbdbeaddc1c76
    mem[832] = 0x43bd008cfb65f20eca860126c2bfc3113c04b977
    mem[864] = 0x93f89f92ec611aff246b3e8d6846674154f9f7f
    mem[896] = 0x95495bd388cc179dc2cdf5428a7f394ce1b2c0a8
    mem[928] = 0x7564aa09adf5828e70741b257055f87355b1267
    mem[960] = 0xecb78f1e6aa1672a30263e2bc766ee1cb87572a3
    mem[992] = 0x47df38c9b4070bb8879013dcd32839ec5320da54
    mem[1024] = 0x32394d13f995198b820e804c443d778f8a3c625b
    mem[1056] = 0x76198a209703d438a1f2b318e372699e4e0f2d9f
    mem[1088] = 0xe30cdf906539917d22bac099254daf942aa910ac
    mem[1120] = 0x847b3ebe1629d2f3715e1186c6f44420d1f5fcec
    mem[1152] = 0xeb319f873b01e3a054213511c2f8d3dd8d169e5c
    mem[1184] = 0xea9f721a3bffdfc3c9f6d3d559204a0236a4baf6
    mem[1216] = 0xee6e802c7395caec8caa79583b2328667836c365
    mem[1248] = 0x2e574f24e447e100a7a846997814fe87673f1243
    mem[1280] = 0x7e8176a028958227e2cf06cda817f6e63c886576
    sub_126bb9d4.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_126bb9d4[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_126bb9d4.length > idx:
        sub_126bb9d4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x5dc43b32e81a79e639f3a7566b5428bb98195d19
    mem[1344] = 0x42c9663e25ebc77320d8ab3298562098f80605ed
    mem[1376] = 0x759423c7c6ca286b0f001ec6d8bfd41394d9e3ea
    mem[1408] = 0x49ce353542732f31a71caf4fc6602bf9c5ef7508
    mem[1440] = 0xe4025b69663fbbea8eb489a4a9cb27b5cd541c3c
    mem[1472] = 0xb9ac1cf585f2e998841ba4f2c5938aa9c6f80b1e
    mem[1504] = 0xe3770bf8fd634f41d8ad651a187ceeac0141c2f0
    mem[1536] = 0xe2c4f18d546ed1cb07c7f053a3c7249f7c862e
    mem[1568] = 0xcd29a972ce12eb0456a637e1fe44ad116e6f813a
    mem[1600] = 0xcdee7157b37e042a496ab7ce04a313121df7bfe9
    mem[1632] = 0x6f4896a923425a94a63886b3842d41f07ff3d3a1
    mem[1664] = 0x28a406e35c9155e843b08783d19246fa689e7fad
    mem[1696] = 0x579882036f56ee7a172fb2b6910b99dfcfb19ec4
    mem[1728] = 0x82fdcae9986090529065e58f80ecce2ced5e442
    mem[1760] = 0x8b7a71a39fd90c3d1e77ec53b181de31ed374510
    mem[1792] = 0x27465b288b0f5071b1a9ce83d0e81914fb9e1ad5
    mem[1824] = 0x568a9fd84a233684f74dad85c0c6f669ef37333e
    mem[1856] = 0x7022c59ec45926eefe741f1f49e2773330c48fc8
    mem[1888] = 0x238566b919837c7262f183d1b08f07361fa3fef7
    mem[1920] = 0xf4a61ac168cc7a68a8493b5af586125888009387
    mem[1952] = 0x64f213d9d8a25370fd5bb2714be45b2d16ba7cee
    mem[1984] = 0x6e1148613b1c2f5371527631b9797a67449c5f3d
    mem[2016] = 0x704d5b461cd17525850e8de8fd1e0ce0b0274b92
    mem[2048] = 0x1ae7dc5efce6c6d7a5ea5adba748a969cce44f85
    mem[2080] = 0xd9e6fc011d4edcdcb9122f1ffa4b0769e590776c
    mem[2112] = 0xb096fe17034d06c759e3b8d64f1b3630d6e7efa3
    mem[2144] = 0x9f8ffd31a6fb2a1407619ca5b3ca1f7f2eccbc20
    mem[2176] = 0x489e27de1dfbae9f3d101e3528565d4efc72cdff
    mem[2208] = 0x60701ad8c10209bfe2d6789ce73bdf5589478d3d
    mem[2240] = 0xfe287bed55faaacfc6e8f42a5093f758f1d9a49c
    mem[2272] = 0x8fdaa14efc1d264891b0e3870387bbe7f4f6255
    mem[2304] = 0x33632127b5340bbb80c3e587e73b8086d28a343a
    mem[2336] = 0x846207d810d994700a53b4107111ef79c38a7934
    mem[2368] = 0x681947ea4feb8a443b2303c6370c1f2f62b57d5
    mem[2400] = 0xd347b6116e75931bdb5569136b7b15f7504ae4d0
    mem[2432] = 0xc628b906e76bb6d29b4c32d414fedd811892099e
    mem[2464] = 0xb571d6414a65085fc1fc597e6dd0103f1866d731
    mem[2496] = 0xb15398d43d27090b63c63672712ed433b94fc6aa
    sub_5da34e4f.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_5da34e4f[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_5da34e4f.length > idx:
        sub_5da34e4f[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_5da34e4f.length:
        if not sub_126bb9d4.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_5da34e4f.length, sub_126bb9d4.length
        else:
            mem[2660] = address(sub_126bb9d4.field_0)
            idx = 2660
            s = 0
            while (32 * sub_126bb9d4.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_126bb9d4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_5da34e4f.length, sub_126bb9d4.length, mem[2660 len 32 * sub_126bb9d4.length]
    else:
        mem[2628] = address(sub_5da34e4f.field_0)
        idx = 2628
        s = 0
        while (32 * sub_5da34e4f.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_5da34e4f[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_5da34e4f.length) + 2628] = sub_126bb9d4.length
        if not sub_126bb9d4.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_5da34e4f.length, data=mem[2628 len (32 * sub_5da34e4f.length) + 32]), (32 * sub_5da34e4f.length) + 96
        else:
            mem[(32 * sub_5da34e4f.length) + 2660] = address(sub_126bb9d4.field_0)
            idx = (32 * sub_5da34e4f.length) + 2660
            s = 0
            while (32 * sub_5da34e4f.length) + (32 * sub_126bb9d4.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_126bb9d4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_5da34e4f.length, data=mem[2628 len (32 * sub_5da34e4f.length) + (32 * sub_126bb9d4.length) + 32]), (32 * sub_5da34e4f.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
