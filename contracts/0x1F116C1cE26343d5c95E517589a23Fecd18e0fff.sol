contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage67' / 256
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
array of struct sub_96cc4538;
array of struct sub_a577b9f7;
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

function sub_96cc4538(?) {
    require arg1 < sub_96cc4538.length
    return sub_96cc4538[arg1].field_0
}

function sub_a577b9f7(?) {
    require arg1 < sub_a577b9f7.length
    return sub_a577b9f7[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x988447cdf2c0714a62f871c43540b8d7f76fa839
    mem[128] = 0xdd45909407a4f9f9936aa8a480f9ed9b0882a591
    mem[160] = 0x51b3a477fc7d675ca20050cdec697c726ec92dbf
    mem[192] = 0x892da4ecc20662ceaeabf5488ed9a8e510aff4a9
    mem[224] = 0xb2c53b6f293e7748ed5f3cfd9dd1576e728546e9
    mem[256] = 0xbbca180251dcb7b0bd2ec291cc8c26475083706f
    mem[288] = 0x34a7123da86de20bfa31d2c3d72183e6ab1f61
    mem[320] = 0x825dbb971eccc1feaab784b3856763e8c1a3c84b
    mem[352] = 0xa2300828ff71ef5d671ebf739c052832e39616e6
    mem[384] = 0x2344908adb576e2deb4a6508bfe72249e2f32321
    mem[416] = 0x89b691edee07ad0c2c0c6fcae1b6341424a27bcd
    mem[448] = 0xaace8cbec56986e299a887c2341c23ffbc7e7291
    mem[480] = 0x10c125f44b5c2efcc5f1e9869afc3e37f8cfd3c1
    mem[512] = 0xbedec0679441e502b05d419af0f78febe92da5c1
    mem[544] = 0xd16fdcddf05cb954cc142d8e8a25271dc959b8ba
    mem[576] = 0x2b877e102d91b651c295e074da16d4dc5aa2ac65
    mem[608] = 0xafd6737fd9d2888c82ba5c80f613957e7c72b8d3
    mem[640] = 0x1602b86a120ab9757a6c41c183dcc3e7ba06fbba
    mem[672] = 0x73c883b8e422ca64db534a738227d5718d0dc7e7
    mem[704] = 0x5259302b802e5fb79529f483e33b42f3dd35313a
    mem[736] = 0xd3dfbef3edda034a1ba211e61904ed79e2319d4f
    mem[768] = 0xa21d95fd57ea5cdb41c4c8d3a275315f63a36f29
    mem[800] = 0xf179a933ad105bad5adfea18a6e487e259a17800
    mem[832] = 0x5f9acad3cd7c4855893d1cd5e6573d29262d2b6e
    mem[864] = 0x6442ae197f870490275577e1a4316dd81be7f213
    mem[896] = 0x9e0bb48a6cd08da958954fc8a1f093423501e54f
    mem[928] = 0x21f28665c8161853e5a0463d1f786f1e35a88b04
    mem[960] = 0xfebd84deefb2ef33a01ff095644052a4575e8a1c
    mem[992] = 0xe14b2c8b17b7e2aab4949cca15c541d6549667b3
    mem[1024] = 0x6012096e474819ec2b0caa266be8a6d2c2c05a
    mem[1056] = 0x8bf31ccb7ac0791d8b7d1650f3215b638745496f
    mem[1088] = 0xaa1b8e5d2185a9a9fb7df1d39c4cbf241e60aa2b
    mem[1120] = 0x565bde8e7208d4005f62bb6c138b33edad947310
    mem[1152] = 0x325a25212bb58ff05e70f45a64710f5b52403586
    mem[1184] = 0xe97352b94ce8548c81538e91398dbe551ab4ca0f
    mem[1216] = 0x893e850d528222e1640374b1411c8712a462c1a4
    mem[1248] = 0xb172ee078e9a51beb22be3e3ee281a0bdee117c9
    mem[1280] = 0x4eeab26248301d2dee1c82ad4e7a9a9246e0c1ca
    sub_a577b9f7.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_a577b9f7[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_a577b9f7.length > idx:
        sub_a577b9f7[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x332a86cadff1947ef188d0fd111597cd0e9a2658
    mem[1344] = 0xeaee7cd4d4fe449e0eaaae4c66f1ae8ba6c0139c
    mem[1376] = 0x7513563a931d13fd2f0221dcaa51c328ceeb592
    mem[1408] = 0x8882048c4581dc71635102b50e45fa844cce3878
    mem[1440] = 0x1331db6b45ecbd45277666a2d7d9a5b266df14b3
    mem[1472] = 0xc473ce9ffefade8a1e5c36f9bf2aa92988ea3ae2
    mem[1504] = 0x664a6c22172eb14995512389572be6385b47cd
    mem[1536] = 0x6fd0de8c5a1cc7b0facc25533af2f65febd7ce73
    mem[1568] = 0x6a90e9e2152635b20863818f0447214662ed83ff
    mem[1600] = 0x652c26686a8745d2c2432d957825d15946a6104a
    mem[1632] = 0x744af561d084b3b4e15117fe3b9c034e6fbbfb21
    mem[1664] = 0x5aa24694a01dd30d47e48854038b9296e45626fd
    mem[1696] = 0xfbe1f580f4b0090fdb6df157fec57d69e66960fe
    mem[1728] = 0x64a0676b2caa4f9979d83d557ea4e06a98e89d88
    mem[1760] = 0x81d557fbfdd627d9817149b4ea54cdc1f97caea2
    mem[1792] = 0x430786b035aa3cab417823a552ea61cfec14d24d
    mem[1824] = 0x2e35bb1384ada7da7bddbbc189f609eeacd31893
    mem[1856] = 0x61f281f81e36a513247ee631817e092998e0abac
    mem[1888] = 0xedce2fbe515206592a3d48555c8b3ccbb593bb0
    mem[1920] = 0x2fd9a556d2173992f7d43305d2111c5713e57049
    mem[1952] = 0x8150e45cd38f86d377cfae7bfb58b747c6aae360
    mem[1984] = 0x350b4df188480f8de891a29e1712dc2c9c47b8f9
    mem[2016] = 0xb585a22b1af16d494293f744836e0919aed040db
    mem[2048] = 0xf0f2f536787afd0a59313e3add05803f554d403d
    mem[2080] = 0x326c4f9af4d9b6f8e11822971448afa737a52b2
    mem[2112] = 0x5833d964a884e3ccd24567042e8077b469df8f80
    mem[2144] = 0x3cdbe20b501d0a24eadc969040dc306b70aa80cb
    mem[2176] = 0xf7a5948b63109ca4ee7fe9193075925ac95e3366
    mem[2208] = 0x752833979eda9b99e66619cc154607e4e7ed999b
    mem[2240] = 0xf8d434a17d401076923a44b700c538e8522d46
    mem[2272] = 0xd5618f6559469b19df84b5a94cc5c99bfbac1329
    mem[2304] = 0xe661319d2b587cbdd9d272606350a95339880a52
    mem[2336] = 0x30c7904c8203ea24ef9d45a8b5a3b137a6ce94c9
    mem[2368] = 0x4681143c4b7be3620c943bbffedc68ebb04e5d77
    mem[2400] = 0x1c9620176cb9fe961f1ecd5444f890b213a5d261
    mem[2432] = 0x52d402852eaba067c2b1e09e9611f214e5f01bfc
    mem[2464] = 0x116a6ca4d4bae6393c52ae721adff987a7a7e2e0
    mem[2496] = 0x648c77b3ed1a62dfa7bcb51b74624afc2699603d
    sub_96cc4538.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_96cc4538[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_96cc4538.length > idx:
        sub_96cc4538[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_96cc4538.length:
        if not sub_a577b9f7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_96cc4538.length, sub_a577b9f7.length
        else:
            mem[2660] = address(sub_a577b9f7.field_0)
            idx = 2660
            s = 0
            while (32 * sub_a577b9f7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_a577b9f7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_96cc4538.length, sub_a577b9f7.length, mem[2660 len 32 * sub_a577b9f7.length]
    else:
        mem[2628] = address(sub_96cc4538.field_0)
        idx = 2628
        s = 0
        while (32 * sub_96cc4538.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_96cc4538[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_96cc4538.length) + 2628] = sub_a577b9f7.length
        if not sub_a577b9f7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_96cc4538.length, data=mem[2628 len (32 * sub_96cc4538.length) + 32]), (32 * sub_96cc4538.length) + 96
        else:
            mem[(32 * sub_96cc4538.length) + 2660] = address(sub_a577b9f7.field_0)
            idx = (32 * sub_96cc4538.length) + 2660
            s = 0
            while (32 * sub_96cc4538.length) + (32 * sub_a577b9f7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_a577b9f7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_96cc4538.length, data=mem[2628 len (32 * sub_96cc4538.length) + (32 * sub_a577b9f7.length) + 32]), (32 * sub_96cc4538.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
