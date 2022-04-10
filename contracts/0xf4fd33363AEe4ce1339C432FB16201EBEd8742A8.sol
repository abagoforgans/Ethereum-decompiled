contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage71' / 256
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
    return code.data[494 len 6853]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_c33b5096;
array of struct sub_c2afe9f2;
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

function sub_c2afe9f2(?) {
    require arg1 < sub_c2afe9f2.length
    return sub_c2afe9f2[arg1].field_0
}

function sub_c33b5096(?) {
    require arg1 < sub_c33b5096.length
    return sub_c33b5096[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x68c8247e2c545106aa9a45a9d0d0b6adfd885e29
    mem[128] = 0x824d40bddacc3f69c0d49aab90568f4ad7a54f55
    mem[160] = 0x3f766976ccef6990bf56b6b108488e948fcac7d2
    mem[192] = 0x5f615d9c6bd86018c3034169e048b2f97a85e
    mem[224] = 0xaf7e19848fb5385ef7d803a12724bfa04df2cc71
    mem[256] = 0xabed68e095e3c74bb6ff54da5c3eda02710d7fae
    mem[288] = 0x99fddbd72839cbe5207f35ffc71bb97e511a5a77
    mem[320] = 0x157f834d6c2808427b9c707134b26d50d7531f1a
    mem[352] = 0x13e6610d1876750188a6d4a0921e6ceed62e2ab5
    mem[384] = 0xcab76d7ef31264e5a05bc7aa19212403c3945f7d
    mem[416] = 0x901b2cd17462af1267abb03f26618c974a8dfe50
    mem[448] = 0xb1ad5dae5062b13acfd5eadb79d16cab3aad634d
    mem[480] = 0x79795e02100f3492d979b6194229d97ea3ae6ced
    mem[512] = 0xe93ce9ffedbe35e527a5bb887b079b5eeb5804f9
    mem[544] = 0xcb2c664f882f0f31a9de9ab22227a5b7eda39e2
    mem[576] = 0xbece1d53263c9ebb7359a1d6211fb4234c831028
    mem[608] = 0xf1e45cb97ca1a5ed95b7cce164ca2989cc9e52
    mem[640] = 0x9ff0b017714105f8d187a29a2e9f311f76fba4a2
    mem[672] = 0xaf8861143235b1ba03b9efe9f13c776d0219a103
    mem[704] = 0x5442995b00572f74b71c907ce82e7dd1e968bd16
    mem[736] = 0x57abccc92fd43df81f0b3bfd16c15edd606fd9aa
    mem[768] = 0xac8b3f97fb25fb1ec20acf9d959271e00fd82c75
    mem[800] = 0xedd78d3c30a9e37af6b48bbdd19ddc5aabbf90d2
    mem[832] = 0xb6bc029d3378127fd71e39519cce60c5878ac6da
    mem[864] = 0x82546af88c774a34ef84c1c533ea013cf23a0271
    mem[896] = 0x97711b3d58f79bf742ba06477960431d8095b117
    mem[928] = 0xbe058bf7ffdd3d2fc117dbf7235fb8a1416ac489
    mem[960] = 0xca2f9bc976e9ec84417a4b3490a2da403babb3aa
    mem[992] = 0x98a2b6eb02ca60068e353a6ea6b3f0cc7304714f
    mem[1024] = 0x3238f89fa82136922509f6899737e2c7b794c5a2
    mem[1056] = 0x8652eb17c85e2a6c3c4f5add3c459dae9c1b37bd
    mem[1088] = 0x75c33c0df3b4afd65635e645d86d476e4bd423f1
    mem[1120] = 0xb095eb235f69a5e53dc92f1701b400e7694e6bb9
    mem[1152] = 0x68b28a8fddeb58593f7d0da5eeb16c625dd0c73f
    mem[1184] = 0x1bd9bfa5a321cbf5017a77b4762eb61cbf926136
    mem[1216] = 0x5b3a169c562eda9490252aca9a85b40577e6d3d2
    mem[1248] = 0x23442ae298074bd439f36655daa6af9c333d4cc8
    mem[1280] = 0xc94068a3ad5ef8d27ff9ece1a132879878efe1b
    sub_c2afe9f2.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_c2afe9f2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c2afe9f2.length > idx:
        sub_c2afe9f2[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x7a9b5e71e1e4edcb47998be9f059fc690c163b31
    mem[1344] = 0x8cd98a1101300cc02bf348bcca6f25ad04eebe03
    mem[1376] = 0xed75bb63373f196de15fc53705e938dc21251c7c
    mem[1408] = 0xc657c79411922fbd22cbd872b74728a00f31b6
    mem[1440] = 0x94fc8d2ee4f03871c23a77a847095f1d1a06400f
    mem[1472] = 0x2d708a9e2d223a7d59917a6b28de6dae37ac3784
    mem[1504] = 0x1f328f73771b24a4541aa9b4e548ba660eb41635
    mem[1536] = 0xbf1b59d12f0bf960d7f8559e6fdb0fc008a3211f
    mem[1568] = 0x4c3ed845719d5c85bb31c63739583a6ca2af8ac3
    mem[1600] = 0x8aede2f6a5fea79406c7927a9c9776928bc4f75d
    mem[1632] = 0xab12cc470d6724aa67f097ade214a036d3e9e84d
    mem[1664] = 0x382b272511b379d9ee12e292798512c8dd34ea92
    mem[1696] = 0x1a012f74ed332974b5752b2f17c7938e4530de30
    mem[1728] = 0xd90e93af26bef63b53b4f068c98f144015d26795
    mem[1760] = 0xaeee8ee478705e0fb04fb3fb768becdd6f79f467
    mem[1792] = 0x8660ab7ed13074e9c325f2ac69238c2b5bec23fe
    mem[1824] = 0xf21742dbbb10145c340efebfb051c863e1b0dd
    mem[1856] = 0xe647bc7f0fc028207e712032178ad032ed678e9
    mem[1888] = 0x5052788e239ace37e627fbbd1ff28b96695a81d7
    mem[1920] = 0x48dda2822f49a0dbc065ba28b3ede438ca1b454e
    mem[1952] = 0x421a9c3b1067c0b3b4267cd061a7c00224148629
    mem[1984] = 0xec7d6e7070540914de7cb04cf42813260fae8198
    mem[2016] = 0xce03fe1f9f6b2195336df43a99739d11997b7493
    mem[2048] = 0x589b2573da3d3eec894579c153e2cd871168c853
    mem[2080] = 0xd6c582b3fa00a5aba6f687c5d6d5dadf28225ffd
    mem[2112] = 0x21bd5f5ffd9b98f58791bc4ff4b2de56b3183b5
    mem[2144] = 0xf7ec50fea86816e6e0cfb96e6f7929fa329e4879
    mem[2176] = 0x9418f5d4dec666011d1a9c6cc3011484a2347ab
    mem[2208] = 0x5c0460e4b793deb923006513a017133c3b847647
    mem[2240] = 0xb6edb365265141163c7546121e2cd04596486f4b
    mem[2272] = 0xce6796997c2b0e006cda4d60049f54a8760ad37f
    mem[2304] = 0x34ac07c68c90fc8d4bd27223db97c0741c09d094
    mem[2336] = 0x2e31fe54c794e64beb7034e69430a554b71abf06
    mem[2368] = 0x49346e1551997ac32190be313de38b5f02f581e4
    mem[2400] = 0xc03eb039332b54bb6cfe35052cd35a1174d75b69
    mem[2432] = 0x3ca3c72c5b757377316346f407d3813a09bcb5f0
    mem[2464] = 0xcedfd13ec2c35d91b8bb2ecd1e94b2a71b7efd21
    mem[2496] = 0x9e9285f37ec903d1a920ec3744e96c62a5cd304a
    sub_c33b5096.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_c33b5096[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c33b5096.length > idx:
        sub_c33b5096[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_c33b5096.length:
        if not sub_c2afe9f2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c33b5096.length, sub_c2afe9f2.length
        else:
            mem[2660] = address(sub_c2afe9f2.field_0)
            idx = 2660
            s = 0
            while (32 * sub_c2afe9f2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c2afe9f2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c33b5096.length, sub_c2afe9f2.length, mem[2660 len 32 * sub_c2afe9f2.length]
    else:
        mem[2628] = address(sub_c33b5096.field_0)
        idx = 2628
        s = 0
        while (32 * sub_c33b5096.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_c33b5096[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_c33b5096.length) + 2628] = sub_c2afe9f2.length
        if not sub_c2afe9f2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c33b5096.length, data=mem[2628 len (32 * sub_c33b5096.length) + 32]), (32 * sub_c33b5096.length) + 96
        else:
            mem[(32 * sub_c33b5096.length) + 2660] = address(sub_c2afe9f2.field_0)
            idx = (32 * sub_c33b5096.length) + 2660
            s = 0
            while (32 * sub_c33b5096.length) + (32 * sub_c2afe9f2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c2afe9f2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c33b5096.length, data=mem[2628 len (32 * sub_c33b5096.length) + (32 * sub_c2afe9f2.length) + 32]), (32 * sub_c33b5096.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
