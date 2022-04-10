contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage95' / 256
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
    return code.data[494 len 6897]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_cc93d4af;
array of struct sub_d94957f5;
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

function sub_cc93d4af(?) {
    require arg1 < sub_cc93d4af.length
    return sub_cc93d4af[arg1].field_0
}

function sub_d94957f5(?) {
    require arg1 < sub_d94957f5.length
    return sub_d94957f5[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x56a10e9d7dc9359c00f9e8bc83922e4a84c2289b
    mem[128] = 0xb08aca8459c120dec86cfe513bc34ff409b14d9d
    mem[160] = 0x55d74ff411a9767d279ae14ac878ffa9a8adf7
    mem[192] = 0x23882f3f8339efa094a2b13e643587349b3e9c34
    mem[224] = 0xe7b1567e169234ebf3395ef69c356ed6d76ef20f
    mem[256] = 0x8448ccd1d33e6d46e84027fa8c814edeaad669ea
    mem[288] = 0xe8294b153e11d89f7a9b230fb7c04cf55e2ac3e2
    mem[320] = 0xa0df61038666fe8dd1950a19a492db23eadb78
    mem[352] = 0x58ac3dd601192d2b21a4c3b092a4f63d35b95e53
    mem[384] = 0x2af2399c0cdae93e98b5d6fab3577dda3c518793
    mem[416] = 0x378e6c838fc4984ef9b42cee8bff78dbf5b74519
    mem[448] = 0x8094eff1c4a54d930b60355c5c2b1445e0f08887
    mem[480] = 0x67640400afb7c663c4a9028e58785bcbb7421ea
    mem[512] = 0xe489296fbf66ba6e56cfa9a16ad7c68337eda604
    mem[544] = 0x5fcbc6723749e8a1062aa5d2d989579b504ca3e4
    mem[576] = 0x267914f71e6bfd37489ea572fe684c0622ca5646
    mem[608] = 0x15ea4fed2880132c8a1d48d2f2f6136ac7a6bb62
    mem[640] = 0x3249112266a58241d9eef66ace15b9cd228e8ea7
    mem[672] = 0x4768793ceb8e2d9bd4fa33fec0fa95593fcb3576
    mem[704] = 0x87ad0f383ae616c57294be77dde6fdd40c7cb5d1
    mem[736] = 0xda9a02b93fa6d21cc21eb5160500ca34700e78c2
    mem[768] = 0x34468de775e9b86486cc95b7f61c5cbfd1c3b620
    mem[800] = 0x76682bb22aa330f9ad7ab6f2931556e7b6386a61
    mem[832] = 0x41ad0782b0dd5690d39687da497b450a3bca534c
    mem[864] = 0xe6879dab9a135c9c0d073e406ae063b96c9e0f29
    mem[896] = 0x6d89af98f241ea2b3321229f0f2925299eb4db17
    mem[928] = 0x5b7ce73c0ea54d2604c581451f1fac52e4f6a69c
    mem[960] = 0x94e983282e02d1fe094f46418d9cfe01510eff3a
    mem[992] = 0x58d9b833b2ca695634fab0ef1e901f00de474022
    mem[1024] = 0x4193b5bfcc382917574dd29557e3f4ae82b2b254
    mem[1056] = 0xe3b1dbfc9431ad7171115606f2428e9b1484e6dc
    mem[1088] = 0x7ccc4dd5f627e1cbbf83e217822d02483a7377d4
    mem[1120] = 0x59c31a9fc02bdb884c3c251060a442a9adce7192
    mem[1152] = 0x9e2364f04e696d1e6de01c1fc0569f4078a005a9
    mem[1184] = 0xa04810a800a3e9bad01d8ac8f8296ac16b299c0b
    mem[1216] = 0xae0d62948def3f6871f946ba7cdd8bf65011b896
    mem[1248] = 0x8adfb9567e6005368075396248aba52433182000
    mem[1280] = 0x5f34b352311289fe4ef051f4d8e4953fe5e7aa31
    sub_d94957f5.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_d94957f5[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_d94957f5.length > idx:
        sub_d94957f5[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xcb5aa08cdf8bbc0b798b60fa072a6f0c02be2a58
    mem[1344] = 0xd2dbc75563adeb7ad71479eaf48b9f96838f7e4c
    mem[1376] = 0xf532e66a5ee6af799325c0b26a962b44ec4ce0
    mem[1408] = 0xfb702ab268faf0f402baad63c68ec7e133020c8b
    mem[1440] = 0x4aeb85c6a2662a138c17cebe2b596c89a10e0e04
    mem[1472] = 0xfa61c3013d6138b6461bb2af4cf069731712aec1
    mem[1504] = 0x31b2999d65bc398947af72ca32cdaaa0d2db5ffa
    mem[1536] = 0xa57fa6b7706aba7edc99060bf90879f03288b2
    mem[1568] = 0x4b456290658dff8602800273a85e7207f5b27a6b
    mem[1600] = 0xf7adb416b2593d7d92ba5171097b224ce3540375
    mem[1632] = 0xfe9688790226d20f697d977b105d0a79b6d4f111
    mem[1664] = 0xfe5a37b0c6fc1bbc5b6030abf62ebf1df866e2b5
    mem[1696] = 0x6652a9c86289b35c0e28f461d75d7819276aa36f
    mem[1728] = 0x893266e183be2df82ca218d00abd9f8aa76c9b29
    mem[1760] = 0xea3018ce925da7f3d138c0cc2e6edd967a0a4f6b
    mem[1792] = 0x5095c7589ee464dda33e44230b8f883ec14c38a2
    mem[1824] = 0x34b60618cfa7ff561af5a2e716e610b71f1288bc
    mem[1856] = 0x74bc36e62d3746348f5dc835cf00dc32594edd3b
    mem[1888] = 0xb6caaf2803ff7ad158c6f6a40bbec51090291b36
    mem[1920] = 0x88779aa23a54d5e4361fa27a6d332c93a6447285
    mem[1952] = 0xad8ff8c5b56fe3f0eb4ee9a8eca20a3d5f51fe21
    mem[1984] = 0x5f7bd0e6a41f916405aec84b6e893e41251137cf
    mem[2016] = 0x47c6d711386080add4c7c213cdff9b946e4ad8fe
    mem[2048] = 0xbef2af02a27dd69b2ce91f14d67e8f85ec116483
    mem[2080] = 0x3d290e6ec3204ecde15c921c575e5deecb5846dc
    mem[2112] = 0x5136eacf225739752c23d4864a7b3047b761a969
    mem[2144] = 0xec4d7ac6f872dff715701057070d56feec0f4a9b
    mem[2176] = 0x5f6cf23ea3a3ca75a52da62398389f8a94d13610
    mem[2208] = 0xffae1561463ffc3e30476f5509b3fc98865b5801
    mem[2240] = 0x136c10fc8167a8be78064ea53f6e3220e621af4e
    mem[2272] = 0xbd28f884acdc889858f68388613d605f95dc8207
    mem[2304] = 0x9391b53258254656deb5baa06049ef0c2cb483ae
    mem[2336] = 0xee0cd272b7f4e54c598b66aad225426401f1113f
    mem[2368] = 0x611869a70c99b6bd48fd7991e1fecfc30da9c664
    mem[2400] = 0x8c251042dc6935658b26dbde36a566601656a9fd
    mem[2432] = 0x443822764ed0dc4f0c0edcd2e1d0eb9f15ad65b5
    mem[2464] = 0x69b7f14b68786e4f7f1862f7ce3895e5c4b12657
    mem[2496] = 0x7e3b1aff5b1a95cf28c4ff967522d397272861ad
    sub_cc93d4af.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_cc93d4af[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_cc93d4af.length > idx:
        sub_cc93d4af[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_cc93d4af.length:
        if not sub_d94957f5.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_cc93d4af.length, sub_d94957f5.length
        else:
            mem[2660] = address(sub_d94957f5.field_0)
            idx = 2660
            s = 0
            while (32 * sub_d94957f5.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d94957f5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_cc93d4af.length, sub_d94957f5.length, mem[2660 len 32 * sub_d94957f5.length]
    else:
        mem[2628] = address(sub_cc93d4af.field_0)
        idx = 2628
        s = 0
        while (32 * sub_cc93d4af.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_cc93d4af[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_cc93d4af.length) + 2628] = sub_d94957f5.length
        if not sub_d94957f5.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_cc93d4af.length, data=mem[2628 len (32 * sub_cc93d4af.length) + 32]), (32 * sub_cc93d4af.length) + 96
        else:
            mem[(32 * sub_cc93d4af.length) + 2660] = address(sub_d94957f5.field_0)
            idx = (32 * sub_cc93d4af.length) + 2660
            s = 0
            while (32 * sub_cc93d4af.length) + (32 * sub_d94957f5.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d94957f5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_cc93d4af.length, data=mem[2628 len (32 * sub_cc93d4af.length) + (32 * sub_d94957f5.length) + 32]), (32 * sub_cc93d4af.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
