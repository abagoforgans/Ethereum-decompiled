contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage69' / 256
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
array of struct sub_493d0ea8;
array of struct sub_862c5276;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_493d0ea8(?) {
    require arg1 < sub_493d0ea8.length
    return sub_493d0ea8[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_862c5276(?) {
    require arg1 < sub_862c5276.length
    return sub_862c5276[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x4ada5c7311b1a5879cb391e2f857efbf9f62b8c2
    mem[128] = 0xfaab082b4fe28ebe65692f66ff4d25f6f50bd801
    mem[160] = 0x4265996e1afece145bfebcc59e545d69b9c61606
    mem[192] = 0x252a3b2390787bcf45f6d7f43c32f4edb9ffb83e
    mem[224] = 0x93763247ca67f0d744da9db7a0cec76ededc58b7
    mem[256] = 0x62a9e84a584bc2247b23d48aae9c63107d08686b
    mem[288] = 0x7b465b54a5cca9e34b83ef23723252012fd9fb52
    mem[320] = 0x5cddff2a64b0c227f355751c913679ec6fed264b
    mem[352] = 0x5b011ff1151e728df97d80f252c4bb4fe93d9f2d
    mem[384] = 0x3e5736ef6aaf6282dc03cfbbd237fccdac99e94b
    mem[416] = 0x5d98dd7a12dc264be980375c1f328ef2a76b6a6
    mem[448] = 0xe01b43bbab82b7dedd29cf5edbf652097461e2dd
    mem[480] = 0x60d2e18a4076e2e82211c9e5f61fc0860b921447
    mem[512] = 0x88d3a0fb8a41397c8ca7e5c529ab58c2d1ef1c
    mem[544] = 0x3088758a725b176875047e3abf254e084d111b26
    mem[576] = 0xb7ddac8d3a78ee144e0d3d9b72f6d1e88794a46e
    mem[608] = 0x2ea7c0398c9a8da97a62c778f15a79198c51821b
    mem[640] = 0x3096aeddada402bd0abdd4c20963a421358a2fe1
    mem[672] = 0x74dd9c14d663aa44dd88e7e3c5e3d947bee9cc1e
    mem[704] = 0x844fbb8247b9d6a9ed9324858ca1a6ab445d2c9b
    mem[736] = 0x16748c864c187b12d900ae2a9a1a787880b31c20
    mem[768] = 0x633161e18f8c1d6c5de44230ca3ef2eb9964120e
    mem[800] = 0x564329b8604ab145a4223f3982af7bfc852e9b2d
    mem[832] = 0x5265640a76cce67bf665e6f66f906c1ac5b31d
    mem[864] = 0x34eb5b5b904b43dd0f950e75388b53ca64ce7f25
    mem[896] = 0xba8c4d0bbbbfbed1c5f9657899ab63b23a0ed926
    mem[928] = 0xcb5fbe310a1dccb4a4ebd25cac3bc2ffe14ae6bc
    mem[960] = 0x79b8657cfd650985a8075e804e682eeffeffc3b1
    mem[992] = 0x5bc63f9b2e575f5e983fc49ff5b8a45b1db4abe2
    mem[1024] = 0xcafe472505c68603fe80fbb7ae1c870896193c69
    mem[1056] = 0x880c108fd03b54e4b67cf34e0cce426cee60c639
    mem[1088] = 0xdab1109e1b1a3ec348e6a247002cd8431721a4a2
    mem[1120] = 0xece8742aa19229b167d8f943d77933425a8b4cb5
    mem[1152] = 0xf5e393fabb37d2ac6069e34008f412e70377e089
    mem[1184] = 0xb2a64f3b853b9af51f01a6db8205fcbd76806fd1
    mem[1216] = 0x29e1a8028a4ccfaa035fcb007b294d21b43103fc
    mem[1248] = 0xefc7009bf690000563bd741bdc5406ffe94a8a9a
    mem[1280] = 0x28bc6d74c9c69eda5a0d4d154101ffee6913846
    sub_862c5276.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_862c5276[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_862c5276.length > idx:
        sub_862c5276[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x17196128bebd822c6a8ee358492eeff4389a4b79
    mem[1344] = 0x67035a34bf04bb881c517c12f8714914b84fde57
    mem[1376] = 0xf9393101603fcd8408bf6c55a23d28f784bca93
    mem[1408] = 0x8fb90d9ded02ea22cf8fa7c145f8ed73e5a35a40
    mem[1440] = 0x9e0d930895ec5638e7d0414727255ab20c04e3b0
    mem[1472] = 0x742e2cb7c6ad42673cadeaac9011e24f230d1de2
    mem[1504] = 0xa1470e5869bea8324b44b92a66440f7ffc3a01ff
    mem[1536] = 0xdda7090831a3773a15303ab3027c2c887eb1dae8
    mem[1568] = 0x74415f799e2f288764c6e9fd7355483995bc5a4e
    mem[1600] = 0x2a753a524c62dd1c430d41fc5ea1ab102d295ac8
    mem[1632] = 0x257fed07759fe3ad1982c3f3f383be4182221a74
    mem[1664] = 0x3ca1a9e518de4f3467515e7c5028b36a9d62fe5
    mem[1696] = 0x67b514ba0cbc4584fe93cdfee4c3fd5c49424c5f
    mem[1728] = 0xdfa5fc7b059ae55a8412cd70ed5f719c7bf0d
    mem[1760] = 0xcc5b9aa24124f67648913dc3d5fad7d3b5fc8038
    mem[1792] = 0xc6f915edaf2656742d8e692fb45e88734b3dbbbb
    mem[1824] = 0x2ef3cd6d5a38e07726fe5f7e8503b27bfbef2d95
    mem[1856] = 0xa8bcbbe34443c04d2fc871de4b4485346b7737f
    mem[1888] = 0xa3916a6f0d033f716fbea4b23eddd02192187a0
    mem[1920] = 0x317502af7dfe87ea6c82c3a7396f52bc3d3d5644
    mem[1952] = 0x5d5df688c61c05420af9bb4068f5e0d873f5782d
    mem[1984] = 0x46f044fed82bac07179c15bfaad3da089dcb0fc8
    mem[2016] = 0xb3841d728b6ddc9f4f4f3da17c5b6d8d5c7ec179
    mem[2048] = 0x5d0dd929d29c5253c47aab9a560e2dccff5b6d
    mem[2080] = 0xb34a76baedc91b5c9c908ccd718bed388540a83c
    mem[2112] = 0x7d130cd1ca5c641ee7ff4e955eb9f8d148a253a
    mem[2144] = 0xbdeae140bc25bc101dc463bf30fd94208095738
    mem[2176] = 0x4be68f06ec362e9d06f38634f6cbc81a97eeb914
    mem[2208] = 0x40718d5b2bd11350bcaa50043f330704af878f50
    mem[2240] = 0x5d6283fffc4c501125e99cf6db2b98b542400ee0
    mem[2272] = 0x40d55f802208a327d10ae1b1dfb751decc9c8ca6
    mem[2304] = 0x36f4bfc9f49dc5d4b2d10c4a48a6b30128bd79bc
    mem[2336] = 0x2ba8e0fd3c9c19fbc6c2d875fed21846831566c5
    mem[2368] = 0x7326c026a9525ff33f53230b82253b85f837414c
    mem[2400] = 0xd87d410b07b6d22d02ba3eaac5106b11a4f6dc57
    mem[2432] = 0x1c2f9392a119d1fad06c934ee9b7c07ea7778257
    mem[2464] = 0x8579d8e8b878a8326b9e07da984036b9f40b9d7c
    mem[2496] = 0xfc055582c8bd19288052a4d5ab9acee43e234361
    sub_493d0ea8.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_493d0ea8[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_493d0ea8.length > idx:
        sub_493d0ea8[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_493d0ea8.length:
        if not sub_862c5276.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_493d0ea8.length, sub_862c5276.length
        else:
            mem[2660] = address(sub_862c5276.field_0)
            idx = 2660
            s = 0
            while (32 * sub_862c5276.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_862c5276[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_493d0ea8.length, sub_862c5276.length, mem[2660 len 32 * sub_862c5276.length]
    else:
        mem[2628] = address(sub_493d0ea8.field_0)
        idx = 2628
        s = 0
        while (32 * sub_493d0ea8.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_493d0ea8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_493d0ea8.length) + 2628] = sub_862c5276.length
        if not sub_862c5276.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_493d0ea8.length, data=mem[2628 len (32 * sub_493d0ea8.length) + 32]), (32 * sub_493d0ea8.length) + 96
        else:
            mem[(32 * sub_493d0ea8.length) + 2660] = address(sub_862c5276.field_0)
            idx = (32 * sub_493d0ea8.length) + 2660
            s = 0
            while (32 * sub_493d0ea8.length) + (32 * sub_862c5276.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_862c5276[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_493d0ea8.length, data=mem[2628 len (32 * sub_493d0ea8.length) + (32 * sub_862c5276.length) + 32]), (32 * sub_493d0ea8.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
