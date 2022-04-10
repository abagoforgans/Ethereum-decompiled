contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage98' / 256
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
array of struct sub_9042e39b;
array of struct sub_2e3d95ee;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_2e3d95ee(?) {
    require arg1 < sub_2e3d95ee.length
    return sub_2e3d95ee[arg1].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_9042e39b(?) {
    require arg1 < sub_9042e39b.length
    return sub_9042e39b[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x9e8348f482e7dba223ab46e0e0abe5eb9e3459a
    mem[128] = 0xa89bdf1a8422913ccaa02ab7a3966e6a529e71ae
    mem[160] = 0x82b7c08d2c7abb03b47eac90abaa7e93b5d940b9
    mem[192] = 0x76f1ecb21e43d0d41f9a7b9c13e019943a064fc5
    mem[224] = 0x283db2a3474bfa369c71e3aaa4c577342e884c1f
    mem[256] = 0x9126c9954223687215049900fd0182a16336aad3
    mem[288] = 0x5d88b195a2fe65f34b9e1690589c292220eed09b
    mem[320] = 0x5b041adce7529d6ca3b6d188f17ea25b3041e7c5
    mem[352] = 0xf9be1bd974e2b44c0930d081caac0121b6f9cb03
    mem[384] = 0x5a74ad58ed7c9bced5958a86b6d22606f3090361
    mem[416] = 0x1e6b80fb950747f3cb39b5f0ec426745d1d3d6ec
    mem[448] = 0x4747f4cdc139d3ecd42adcffbab7c2adf4fad216
    mem[480] = 0x91e414c6478e7fc59a79bbb4c69fe1dc7f894c6a
    mem[512] = 0x7df3505c2792537b00e70998128fce941e5223
    mem[544] = 0x652077d95c349b408d00d7e12a716163fde2436a
    mem[576] = 0xdda9cb210e2f031964ded5de6d80f3ce9a1f1332
    mem[608] = 0x3b312f2816c4a4df10732228a0367a310c0713f3
    mem[640] = 0x5a0aa4dee3d7d3a692b1302b8247b63a755fd790
    mem[672] = 0x1877bcf7a55f61647d8d2d2deb0a1718de2425da
    mem[704] = 0xe8e8bc2aff07e394962d122582df2069ace4103
    mem[736] = 0xa1bf86c0a90b2b6f1f77fbd4966a81aa15ca8d
    mem[768] = 0xcfdc809c5edc08a47282d86aaef910514c9aedc7
    mem[800] = 0x921ff3310ea979853e462021fe2a70bfc41d8ffb
    mem[832] = 0x110c7e1885163ca31542d6a59dcab7fb6325120b
    mem[864] = 0xeb1c34355cd76804c2f1a9f31288b96c77a54e6b
    mem[896] = 0x9c156ec35234d181dd3c291861f346a53ee1f732
    mem[928] = 0xaeb85b7d69e225d02008ab373c5976b01ef66192
    mem[960] = 0xe70466f2c50eee9bd81760a9528c2cc4d31418d4
    mem[992] = 0xe8514490ac728d64ece36533ac810130e79cfeb6
    mem[1024] = 0x500021a1b6b11201d8f2320e7c47f806bdabb9d6
    mem[1056] = 0x6c5ff629195527c22e81582bd21662cb135d9d3c
    mem[1088] = 0xb8496fb151d2e2ca7a80dfcda440b3657e1aef32
    mem[1120] = 0xd9e51fe19e4fe18c41d19497c032e52f02fed5
    mem[1152] = 0xc643468dc524e079035b16c0e6683576d6bfa91a
    mem[1184] = 0x96faa1da68b81f0f9bead55abc7f3aa51833faf6
    mem[1216] = 0x9c4e76037e10a7f173ef1a78a5b40d89efde5669
    mem[1248] = 0x7b44dbcb61be36782157fa61a33f6386a76d01ef
    mem[1280] = 0x1828068e072d945cdcc4628b1e7f3c25a108ce0f
    sub_2e3d95ee.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_2e3d95ee[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_2e3d95ee.length > idx:
        sub_2e3d95ee[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x34e8ec51a732b361d35c8af05349037c24f659ae
    mem[1344] = 0xee03a06724081cf09a3916dc45860db0ec5f9f9a
    mem[1376] = 0xde07d6a6f04fca63b53a1a433845bfb7d46e22d8
    mem[1408] = 0x446567ac137bee6d44c5fc2babbbe858b917c366
    mem[1440] = 0x45e12a242ba749f44b4196383af4202ac0d8cd5f
    mem[1472] = 0xe9e7fef6628b68bc9268bb749141ad632fe01efe
    mem[1504] = 0x38c722e163a465b0f2ea72f6b9cb4c2ef096544
    mem[1536] = 0x1d01ea2a2a23538e0cdbe52ef34df00ddcf34e59
    mem[1568] = 0x2b6d7bc94185b9850ac516c31eeaac47638d9562
    mem[1600] = 0x1ee30d983613ad34bd0b5d10d6221ba5bc56acf1
    mem[1632] = 0xa2dd0a6a524df5f19a0d6d4e8f5001404f2e2d4
    mem[1664] = 0xabe44937ad5e37c2fef02f103f1575c0a3712352
    mem[1696] = 0x32e1dbadcf4f0c612e64a833d7001e101c55495e
    mem[1728] = 0x3b971af749e90af89004d134f1aa8d5e153c6e
    mem[1760] = 0xb0236b59cab6c2a3efd52d533fd817bad65e430f
    mem[1792] = 0x4852b662faeb34d709d3594f1773783b3c5417f7
    mem[1824] = 0x3b7b8582387dcec6b2449e86ce6fc8014b51a7ec
    mem[1856] = 0x6154c21d76c9ed1fdea64763182bbc9f326d176d
    mem[1888] = 0xc66cab0c81a033cfc9cf6f1591b4762709d9c843
    mem[1920] = 0x63d29f802737fae5a76d8c52e528b2c0b1be1fc5
    mem[1952] = 0x525a3c66d34700bffaee95b4bbe1ac2a72994c28
    mem[1984] = 0xa879fc783b11cbcf3a940483ef6b7b56cfdbdd13
    mem[2016] = 0xe2a94dd5098297786b390c5d3a980ee2c1e4618b
    mem[2048] = 0xe7432b34160d072af7aad35830b5655df5a33fa6
    mem[2080] = 0xbc5816757e1acf569e446bdff561dc1cbb0159c3
    mem[2112] = 0x11be7270ddfade989d515b39bdd153718e5e68 * 24 * 3600
    mem[2144] = 0x39539755075589fc7f4bb30ff64b4807f0ecf31b
    mem[2176] = 0xdb0098f45d98fe90b6c7dcffb577a6f6165fd511
    mem[2208] = 0xdb08617fa6bdd46342f82ddf8d3d41b2f60bf681
    mem[2240] = 0x320fc079369bcbb7b1c79a081520ba89b8ed308a
    mem[2272] = 0x8c744508ad9a56ea70bfe0dd8b8493d6a0b7d431
    mem[2304] = 0x773dc71c457df92eae1b21911e6a0f3d7b3e07bd
    mem[2336] = 0xb052c8aefe0a653580a65020f1b7a92d72507178
    mem[2368] = 0xe9d9a2cb7ad35a715863c4212726aae02c812151
    mem[2400] = 0x60b47e14c2b5a9daefdb524c1da41b56646baec7
    mem[2432] = 0x22c216718e5ecc16f052a2749ac6ab398f4018af
    mem[2464] = 0x19ffccfe953b7c656b6cf278f92b7d0b8e19494f
    mem[2496] = 0x4acf0aad22736ecf1cacc1b5f3a0f9ea0587c7a2
    sub_9042e39b.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_9042e39b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_9042e39b.length > idx:
        sub_9042e39b[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_9042e39b.length:
        if not sub_2e3d95ee.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_9042e39b.length, sub_2e3d95ee.length
        else:
            mem[2660] = address(sub_2e3d95ee.field_0)
            idx = 2660
            s = 0
            while (32 * sub_2e3d95ee.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2e3d95ee[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_9042e39b.length, sub_2e3d95ee.length, mem[2660 len 32 * sub_2e3d95ee.length]
    else:
        mem[2628] = address(sub_9042e39b.field_0)
        idx = 2628
        s = 0
        while (32 * sub_9042e39b.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_9042e39b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_9042e39b.length) + 2628] = sub_2e3d95ee.length
        if not sub_2e3d95ee.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_9042e39b.length, data=mem[2628 len (32 * sub_9042e39b.length) + 32]), (32 * sub_9042e39b.length) + 96
        else:
            mem[(32 * sub_9042e39b.length) + 2660] = address(sub_2e3d95ee.field_0)
            idx = (32 * sub_9042e39b.length) + 2660
            s = 0
            while (32 * sub_9042e39b.length) + (32 * sub_2e3d95ee.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2e3d95ee[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_9042e39b.length, data=mem[2628 len (32 * sub_9042e39b.length) + (32 * sub_2e3d95ee.length) + 32]), (32 * sub_9042e39b.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
