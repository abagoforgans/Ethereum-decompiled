contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage89' / 256
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
    return code.data[494 len 7341]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_e979d5cb;
array of struct sub_cbaf469a;
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

function sub_cbaf469a(?) {
    require arg1 < sub_cbaf469a.length
    return sub_cbaf469a[arg1].field_0
}

function sub_e979d5cb(?) {
    require arg1 < sub_e979d5cb.length
    return sub_e979d5cb[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xd3c2bf17a92402d6a7424a75a756f26f26a7fcbf
    mem[128] = 0x911fd27ab2d65e1f9c3c466037c0edb60cc92568
    mem[160] = 0xd18e3a42286f308c596a22755f560b8301466d25
    mem[192] = 0xab057cd92d7f419ed67676f8dcfc75c9b8093f91
    mem[224] = 0x5fe81459edff7512ca46e5ca88e4f931e2d6cfb6
    mem[256] = 0x8d5345e4b446c7ef72bad3d84bed50acbc7e07d7
    mem[288] = 0xf4e94c4b2af779b0fef49a20caf1b95800f9bd6f
    mem[320] = 0x33f205a676a692aa9a6b3fc6366bef0afc32e19d
    mem[352] = 0x40cfe57c420f9631bb09bf54056b8dc09bdbf71d
    mem[384] = 0xc76557f22776d32f945be41970fc98682a5b9034
    mem[416] = 0x2feed45a8d738f655471a095a176649a28a39ab
    mem[448] = 0x6d006b42a2b3d8c7b86cda354efc42d24a93dd32
    mem[480] = 0xd2a3b9ff1817653be61da6046ffc6e92a743c93b
    mem[512] = 0x53cfcbd6a71549cd1e052922f4f50127232b8ebd
    mem[544] = 0xa8df219a1152e86db3f0f18ce0bdaa5bc65f6f2d
    mem[576] = 0xdb3b0d861511585f255d0ec2e47705889be32c1a
    mem[608] = 0x64dd9ac2596b76919b3eb68aa3c68083bcf51f08
    mem[640] = 0x79bef9d9b14be1703b23039c2b4c2f7ac2cacbfb
    mem[672] = 0x2db3227571dd7aee8f50aec01a77f6aa96b8fd3d
    mem[704] = 0x6e3fa171dc5975be2073dcbc900eb84a768d1704
    mem[736] = 0x5b8b6f363187e7c6b31866e964335f85cd4eb0a4
    mem[768] = 0x7de92fe6da9511f6c3be1ea44ecc5cf7773c09c6
    mem[800] = 0x9dab33d5d86eb44f5f2150bace19ecaaa032ac48
    mem[832] = 0x3a0cd7580e8555dd85331bc0a0a143ce48d97986
    mem[864] = 0x8087747b7150e56588be41e293e6c86f29d9e7a
    mem[896] = 0x8c9c764668bdf21ec58c8ce597dca9cd2143e96f
    mem[928] = 0xadbf78013b02d1ab5d020778c21b72a826b03890
    mem[960] = 0x4af07ff36a8f6db7f0e0e19c9a4da21572e1b188
    mem[992] = 0x4d451c245c0c895440246d1e67b5ba5306f06a40
    mem[1024] = 0x75ea5284d9adc07e1456bdeb00fcb7683bf292bc
    mem[1056] = 0xce7aae7df81ad69be7a1aad44b0c9768c8da1825
    mem[1088] = 0xd6815614bd766a0d1ee768a3ae39f50c74cfe648
    mem[1120] = 0xff39859791c6d10b8d29635c3e2042b58561e8fc
    mem[1152] = 0x5945e5bc44af349961650fb907aab833144a595e
    mem[1184] = 0x7aeeb9e39baff946df9959aaef2155f60683b829
    mem[1216] = 0x7233952897e7ee606bd8cabc858a8b5717f2677d
    mem[1248] = 0xb265dfc4f006bb894cb4159e79c5fccbbf35b92d
    mem[1280] = 0xba75cd2b8800f4e4e428eef47ee19bfb0da74e4b
    sub_cbaf469a.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_cbaf469a[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_cbaf469a.length > idx:
        sub_cbaf469a[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xa8398d8cd22f42d05d3f4b13155f59981b15846b
    mem[1344] = 0x514aa8e15977474e57d3394b7e3edf644d7aec09
    mem[1376] = 0x82cfdf28f1b433caf89ac095784dc509561676d1
    mem[1408] = 0x3012e125861bdd9d23e349679e676e5db95b5b72
    mem[1440] = 0xa9a85dd1dd2a8edde31dd4b77a02a4d2a473e771
    mem[1472] = 0x4532414e355632f7cae6f1d06e7573191271ad5c
    mem[1504] = 0x1b7c4d7408ea7b2429344522bfe42bdead6988ae
    mem[1536] = 0x779d36190a7f210e9688f4c522c35ed212429c11
    mem[1568] = 0x986f66f400c204aeb47dd2a622150c4cde8498ae
    mem[1600] = 0x83fe7e8ba8c3ec104021204a171bb6ab57ddf735
    mem[1632] = 0xea8d3e6f2e6439736d728f2b3d38b56d9f39bb23
    mem[1664] = 0xf82a09cfe238f351663ba3998d854e72bcfe943f
    mem[1696] = 0xf860ab1e5e10cdd0898934f7fd2d04bbef98ab45
    mem[1728] = 0x1b3a4ec7f59f8d1497754737328c4f5bead4b7d5
    mem[1760] = 0x56556875e0db4a2fb42d63e1ae44ed6fd5ad6fe1
    mem[1792] = 0x6cc427cab690a8f62b804ba483cc796498d30b92
    mem[1824] = 0x4f4bbd0bc22e0a9cf169b614e3248381c37ca867
    mem[1856] = 0x3b2646be7e15f36ad250f595c8dc763917b3bc49
    mem[1888] = 0x7f58b8e39f5c5f63f1a1e661b5166c985291c1c7
    mem[1920] = 0xc850e10325b30773bda3fa366b05df9007bf0fec
    mem[1952] = 0xbc8ffb6d773f7b93f6c8716082992b33ab01bd1d
    mem[1984] = 0x1d77347de5af8062d322d3ed1882fe7a8f2115e4
    mem[2016] = 0x4c1afde5679f76aa4fd6d744e52bf02cd7fdd781
    mem[2048] = 0xdb34fa6259d710f6084583b60b6b605a260635a8
    mem[2080] = 0x408a302b84c5747fb668234f6ca6d3c63f305611
    mem[2112] = 0x561ac3ecaf582847b6f23c5d521898c81e4ee4bf
    mem[2144] = 0xecf1194f12867efc4be0f417ee95616ca9ab0dc
    mem[2176] = 0x966e80776adf7fbffca955fc4dcecea8db743bdb
    mem[2208] = 0x465e6ca00ce3ab3b4537bf6ae37d05f82681e2f9
    mem[2240] = 0x4b351b07306df3a8df19788a8dfc6a3b5ad1aae0
    mem[2272] = 0xd0c120ebd7a5883087cbbc386b111e931e520f07
    mem[2304] = 0xbef56541e9c21ade907d74af83aacefa1bcd9624
    mem[2336] = 0x79cdd917973541acb88bb9b95ce614299e69a922
    mem[2368] = 0xab970fb43c48b172a3b6c81675583bafbb736130
    mem[2400] = 0xe55c96ae7270c2976dafbe2cd33a86156a536bab
    mem[2432] = 0x421c00f408b03306ead7b9ace558aa08faac142d
    mem[2464] = 0xe6bf74fb7780174701371b482e3ad7a9e08cb9a7
    mem[2496] = 0x387e321a2335ec92f9e10222e67906e20ddfd318
    sub_e979d5cb.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_e979d5cb[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e979d5cb.length > idx:
        sub_e979d5cb[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_e979d5cb.length:
        if not sub_cbaf469a.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e979d5cb.length, sub_cbaf469a.length
        else:
            mem[2660] = address(sub_cbaf469a.field_0)
            idx = 2660
            s = 0
            while (32 * sub_cbaf469a.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_cbaf469a[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e979d5cb.length, sub_cbaf469a.length, mem[2660 len 32 * sub_cbaf469a.length]
    else:
        mem[2628] = address(sub_e979d5cb.field_0)
        idx = 2628
        s = 0
        while (32 * sub_e979d5cb.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_e979d5cb[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_e979d5cb.length) + 2628] = sub_cbaf469a.length
        if not sub_cbaf469a.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e979d5cb.length, data=mem[2628 len (32 * sub_e979d5cb.length) + 32]), (32 * sub_e979d5cb.length) + 96
        else:
            mem[(32 * sub_e979d5cb.length) + 2660] = address(sub_cbaf469a.field_0)
            idx = (32 * sub_e979d5cb.length) + 2660
            s = 0
            while (32 * sub_e979d5cb.length) + (32 * sub_cbaf469a.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_cbaf469a[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e979d5cb.length, data=mem[2628 len (32 * sub_e979d5cb.length) + (32 * sub_cbaf469a.length) + 32]), (32 * sub_e979d5cb.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
