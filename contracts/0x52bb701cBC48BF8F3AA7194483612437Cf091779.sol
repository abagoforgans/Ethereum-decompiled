contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage19' / 256
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
    return code.data[494 len 6938]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_91cf6790;
array of struct sub_c6b45778;
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

function sub_91cf6790(?) {
    require arg1 < sub_91cf6790.length
    return sub_91cf6790[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c6b45778(?) {
    require arg1 < sub_c6b45778.length
    return sub_c6b45778[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xfbf131c623e8261cc09cfac61bc0a70eb7857a6e
    mem[128] = 0xb7381aefd0317eb4dadf9bd428011bc31844ab18
    mem[160] = 0x8a2958cc1d2bb33aab97e58495fae74d5071aa24
    mem[192] = 0x9ce4f7fc8782411285a0c11ef6e54dbca5f3e130
    mem[224] = 0xdc3c308610fb4e76820e1e2b8bf6d7ec856bf7c9
    mem[256] = 0x383db85d625fec77cc8374c41a82913aa3a37323
    mem[288] = 0xfa53f3c6e524ed88e0eb3d10dfff0cf885a9609d
    mem[320] = 0x1c7e1135f7df360d71eecc6274fa15b24f3e6f48
    mem[352] = 0x1277aa014bb23dbe7df5bacab7e30ac3d25f8f0b
    mem[384] = 0xa0afd1bf67154bcbe5d6f3bc0599c29a5971dd4e
    mem[416] = 0xba8e469ff5b2c97500bc02d94171d1910f1f75a1
    mem[448] = 0xe460260bb20f3c1759bebc4be0a05775991b604e
    mem[480] = 0x69616abed9fca124743f185cb6267c48402153be
    mem[512] = 0x399a5be310c139aba0701b45cb02cf698d4bfae2
    mem[544] = 0x3759070dba5f79190f6b9424caa0a6932d82fad5
    mem[576] = 0x22059b9a70a50ad53f7d24370d33890b2ef3b390
    mem[608] = 0x50344d191c9bc8eaf49645f898aea80c56493343
    mem[640] = 0x948ef0b394a03daa868b08dfad143e01a4e12891
    mem[672] = 0xc2bfcc34a9b30a15d115d0818f2fb90f248aa3de
    mem[704] = 0x2831a1b82b48a9019e79d3c68b9257d26ea1b086
    mem[736] = 0xe23e0b5ea681db06405117027d360145e9e37ec7
    mem[768] = 0xfb843a801fda1f3d5fc68f37fa136b2e45c204b2
    mem[800] = 0xa069b274edd7308acef61e3a8fa30314a23a399f
    mem[832] = 0x81ba13031995d9393052cb0ce94646d3ab3b26d1
    mem[864] = 0x1116a6a4a86e6472613df13ce16bc22d97b5b0
    mem[896] = 0xf3b7f103a59b33d3c1659bb2481e0b57388d9ae7
    mem[928] = 0x9167c9ebb009f0b0b1fee5d3b72591a0068ec25a
    mem[960] = 0x97d31fa019eb2392d5738e403d14680be734f8
    mem[992] = 0x9551ecae6df8c6d1fc588386f35ea68364fd5e48
    mem[1024] = 0x1ca855043a8e1d19b5a85b2c919cffb6b7ccee7d
    mem[1056] = 0xce7f88cc03eb5011ca2319d2d647d1a8fc511382
    mem[1088] = 0x47b1fc849bd94380d761c3af93e6501145e7cfe3
    mem[1120] = 0x1e9141cb02790fea309e262691e1ef064c7cda6e
    mem[1152] = 0x4171a2dacfddf2b457f67bfccc7e45fabb048086
    mem[1184] = 0x5f615d9c6bd86018c3034169e048b2f97a85e
    mem[1216] = 0x1cf9713fd92fea56a6080d0054ca4f4f964c9265
    mem[1248] = 0xe23809679769461a203ded14f527af52bbc41aea
    mem[1280] = 0x5bec773033fdb2b39bf05513c6fcd7704f37851d
    sub_c6b45778.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_c6b45778[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c6b45778.length > idx:
        sub_c6b45778[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x31f5081b2f06d2232432fda26b08aa2e2ecaced2
    mem[1344] = 0x6a2ec3aac6b31afb16e690d10c29871581786611
    mem[1376] = 0x96bc4567561b5d68c81a5501a7bf0cb1e42b6e94
    mem[1408] = 0xa41616c8679eda157957d09bf92a70ba41038311
    mem[1440] = 0x9da02790972e2627dd5c49fcaf3d3817250b356e
    mem[1472] = 0x981d489cb8121b4eb3b95d9ea9637bca9e3b254e
    mem[1504] = 0xe316822993959e07cd4732a38e9d05c36703cfc9
    mem[1536] = 0xbdc01a730da50d3be4a401fb00f77e6177e33fd
    mem[1568] = 0xdfd254ddd572cb0c7280218bd9b8e659ed1a3fa1
    mem[1600] = 0xf2efad63eb1858d827dfc03fcb5b76b8f3e9bfd2
    mem[1632] = 0x6c15c4a676cc833fde9a58445482475c27d4cb41
    mem[1664] = 0xa989ffec3ec37e76f5ddd8bb70273fc4c36273b3
    mem[1696] = 0x2d6891d099394870c5a79f830047754898ce6e75
    mem[1728] = 0x7589a40d85f6ac0a6c98407a13ab7dcf7a72fa18
    mem[1760] = 0x91df1cd5450b1e65cba4ed08b816ab2bae5f906b
    mem[1792] = 0xd3393f7b5d0c0f8caaf68c643b33657c75109f5
    mem[1824] = 0x3fdbab7069fd834731dd865341bc16d80e2fae18
    mem[1856] = 0xe8c187e5867102945572c0158e09f9b036e909bd
    mem[1888] = 0x81a35114b5434035e4c6f636dc9fd3c31002e71f
    mem[1920] = 0x98a471942d253d8785facca2c89488eec5f4b16d
    mem[1952] = 0x3d84e927684ef870d87f246275b618fbd0ffa0fb
    mem[1984] = 0x906cf132ef42c82bba45ff79a0e580c271c72985
    mem[2016] = 0xbc1e588a570784ad302c625c53c5eaf35271462c
    mem[2048] = 0x3f3530a70f82eec3e9ee9dd93f16a896b1cdfc4
    mem[2080] = 0x2be230e45903c8285363af96f255fa55643b7b
    mem[2112] = 0x159cf6e3b8791166581709c9f93904434a44a3ae
    mem[2144] = 0xad2b40e05ad39682b09b95dd66fc949dd82b2554
    mem[2176] = 0x320c617efaccf4acca85e13551157e6dbb7aa3
    mem[2208] = 0x90ca579a745d6bcbd0a69d1436396b0b96a9b5
    mem[2240] = 0x31742c9082e82e234ba7808efe9d5b39351c276d
    mem[2272] = 0xb637c2e724fc253320439eeeb99b341a41fe7dfd
    mem[2304] = 0x3cc603337e6d0f47e42e60b199ff3ce9d5970d91
    mem[2336] = 0x5d482fad972cf1b1aff560b38b712d94f00c40d
    mem[2368] = 0x7d5a956ca11a02637b7be9020a7a79ba43c32f76
    mem[2400] = 0xc657c79411922fbd22cbd872b74728a00f31b6
    mem[2432] = 0x13fd5a43ed5dc80be200ed9b0afe233ef5144ee1
    mem[2464] = 0xa1f986bdaa9b858897c3bd7dc922e3487fcb98f3
    mem[2496] = 0xcd248008fe73f09f667747f94c77e3072a0c5446
    sub_91cf6790.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_91cf6790[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_91cf6790.length > idx:
        sub_91cf6790[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_91cf6790.length:
        if not sub_c6b45778.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_91cf6790.length, sub_c6b45778.length
        else:
            mem[2660] = address(sub_c6b45778.field_0)
            idx = 2660
            s = 0
            while (32 * sub_c6b45778.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c6b45778[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_91cf6790.length, sub_c6b45778.length, mem[2660 len 32 * sub_c6b45778.length]
    else:
        mem[2628] = address(sub_91cf6790.field_0)
        idx = 2628
        s = 0
        while (32 * sub_91cf6790.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_91cf6790[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_91cf6790.length) + 2628] = sub_c6b45778.length
        if not sub_c6b45778.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_91cf6790.length, data=mem[2628 len (32 * sub_91cf6790.length) + 32]), (32 * sub_91cf6790.length) + 96
        else:
            mem[(32 * sub_91cf6790.length) + 2660] = address(sub_c6b45778.field_0)
            idx = (32 * sub_91cf6790.length) + 2660
            s = 0
            while (32 * sub_91cf6790.length) + (32 * sub_c6b45778.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c6b45778[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_91cf6790.length, data=mem[2628 len (32 * sub_91cf6790.length) + (32 * sub_c6b45778.length) + 32]), (32 * sub_91cf6790.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
