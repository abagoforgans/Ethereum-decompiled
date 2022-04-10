contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage99' / 256
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
    return code.data[494 len 7319]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_28de325d;
array of struct sub_53540fd7;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_28de325d(?) {
    require arg1 < sub_28de325d.length
    return sub_28de325d[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_53540fd7(?) {
    require arg1 < sub_53540fd7.length
    return sub_53540fd7[arg1].field_0
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
    mem[96] = 0x5da0583344598452a7d822734c860840bf04edf4
    mem[128] = 0xcd4947ef775ee53cb7486fd117fc74b0eeba4f39
    mem[160] = 0x2430fbce445e72e92f5ab35e03a23ccbb54c8ce0
    mem[192] = 0x67a63e3423966b165c7d62952724b698c08e38ac
    mem[224] = 0xedd09e2ebd5b11245a0bd6222b76690d5bd9a43e
    mem[256] = 0xb98b44a3e5b6ad64cc76fcb8a8a3fddb1918a249
    mem[288] = 0xb2549cb7ddcc0585ac86e050fca75bc8b4cf6458
    mem[320] = 0x7473adece61fc1b9efcf179aad0dba90c98dee67
    mem[352] = 0xcb4905e0456466c58d7077d342c4a9779aed362a
    mem[384] = 0x7dfd0bd48b744fadcbd01cf55c2a90f4af241d68
    mem[416] = 0xa4bab336e8036a7523af0933f56a1a15be6a0565
    mem[448] = 0xfab237b4d281627cacc5c8c413fb71023a51dd62
    mem[480] = 0x7175cbb0527d63624d7991e5e83679ac41589385
    mem[512] = 0x4d6186d436b55339d2625a414d0450fe9d33e4a7
    mem[544] = 0xef93f0764a03986aed518fa362d8d4a1c1796f59
    mem[576] = 0x702824fd8bfec3f068ff966242b87adb2b502409
    mem[608] = 0xd1dab78391c16b47bb7c71a751bf375a8470a86c
    mem[640] = 0xe8863fbeb8f3b95e746bf1efe1219183298fc344
    mem[672] = 0x755c35bd3d515d0895cad9a95d285d7e53265024
    mem[704] = 0xbba3e963bbcfb565e2e5a4a1983db57595d5315a
    mem[736] = 0x5e5e293934ffd2bc77923ee3ee2d439b6bd81914
    mem[768] = 0xdf74da450fcce888b4e4dac9785652a11ded6b6a
    mem[800] = 0x4b58035704126a8a1b7f82a8db3569a42f820307
    mem[832] = 0x16e9d43cc3133aa232730717c45f127051f6e1c8
    mem[864] = 0xfb1a9c7501cbddcf197ce341c70e3bc8decc822a
    mem[896] = 0x3605fb3d0af0460550e99e5dfed751e598acd5e9
    mem[928] = 0xb2b52c83547d6375b404741c2bd44b64d7973dc8
    mem[960] = 0x8420c44502f1ea28ec3030b7e283c0f4b8ce82cd
    mem[992] = 0x49518c462cf9d379cb1b5e6784fd2c3478e18373
    mem[1024] = 0x32a706aea0a11870ffd7c3a9c63b143fbac482c2
    mem[1056] = 0x70301fbdb54417ff5a1b271b138b0c4fa503649d
    mem[1088] = 0x90bdfaa6f022621849c21c1b695c341af8490a8a
    mem[1120] = 0x5a1fc66a8953a4ef3a94e7025f4b72667538ae5f
    mem[1152] = 0xd3c3bcbc80bd400fbf8bc838b819dc12e211d6ab
    mem[1184] = 0x547a17bcbf7c72ada7f0c00bbde2cae10ba9abee
    mem[1216] = 0xb1680fae8de2761d29397e53e6108fdcab658579
    mem[1248] = 0x90cb8fcd69cbf8a203d670c1a46634e805c5fe9e
    mem[1280] = 0xfc02f7519af41d69c34a9978fab445bac6f26b09
    sub_53540fd7.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_53540fd7[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_53540fd7.length > idx:
        sub_53540fd7[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x727ee7650127b79b81f1aded440f33f828d1139
    mem[1344] = 0xc75d4f5fe1720d7949b507929716a5d86a7e7d7
    mem[1376] = 0x2124cade5b97f8adea9db74e416a1a64ec1f0b70
    mem[1408] = 0x2510ae1d43b1ce5454853ad8f298efb4cca62a52
    mem[1440] = 0x2924c3551f9978239ff68d9c7e9b5f3c049d5e5b
    mem[1472] = 0x472d1b2899adfff920a85ca7fe4deccc9880e09e
    mem[1504] = 0x4266493f25887be2ac228e44c72d85dcc4b9719f
    mem[1536] = 0x41933eebcdf9a08d5c37225443339f74adf57c7a
    mem[1568] = 0x85b54d65fc66874b3cc5f19e4de6c21fb7db196d
    mem[1600] = 0x659e19e9afdd454887eeccc0a97708d0bb0580e7
    mem[1632] = 0x68562ec160d8a856981b93e65301d1720bd65fbf
    mem[1664] = 0x4b7b59b002b35b5685b2e0182d6024b83a044138
    mem[1696] = 0x13a4cac6724f8c1af2a07c1f06c62f77b3112e30
    mem[1728] = 0xef5faa1c5a98906f926e33405f20cc905b4277e9
    mem[1760] = 0xc1f1a7f7104a8acb6aa7836c0e27a6e96eeee47e
    mem[1792] = 0x9c09ed3ea87fafda542219e7d18554a89e88a1fd
    mem[1824] = 0x7fa806cbcebe75de515e5514ea61e8533c94523a
    mem[1856] = 0x9f740acb780cf043c16cfbe6368b57fd55040042
    mem[1888] = 0xb156d6845b2ede9e798ef1d63c0d8d0177ce2991
    mem[1920] = 0xd6c82b63f7fe2d921c4eeb69f0a6c9415c78c4d7
    mem[1952] = 0x319a6458c3d697264b177ba2977b8f1499de3c79
    mem[1984] = 0xec7fdc2a19c48d90ee98435993360c1f41847468
    mem[2016] = 0xf29f37c486972f533df71e5f8596799a253c5dd0
    mem[2048] = 0x106abd14d9365832f15cc847085b10a042075322
    mem[2080] = 0xcf9290aebf8a329e9ad58676d4ea1c5fc2e7f6f9
    mem[2112] = 0xda8c6b87e1202d93e622de9f177707958b0eadc2
    mem[2144] = 0x84f495b0330e7e5754f04413096f08949d322bf5
    mem[2176] = 0xff7adb5ce3075e967d32889814c6fdcf8f2fcfed
    mem[2208] = 0x1dca0875e74e5261c5ba43302958925a08581797
    mem[2240] = 0xde3c626e5d95f7f97a92dee011e19de1d10a4272
    mem[2272] = 0xa1af9fc1772c041cb17cf23e4ef9a805908cd41d
    mem[2304] = 0x81b29ea4b089929a28644400627fbb3f9cf09731
    mem[2336] = 0xc5d444fe07c750c0d12833be43f4ea2a7b2172e0
    mem[2368] = 0xef1354a85e007daa95f6237c20d3fd496d66f299
    mem[2400] = 0x11ebb0b59d8ea610c8c96820571c1aa3ecec0276
    mem[2432] = 0x82e48213571b349a2e4b5fa53dbcd35fe3da54db
    mem[2464] = 0xff57e94e08cb7b7f4458884fbcd2218c5ad5eb1e
    mem[2496] = 0xf386c149fc240dc21068992fd67914496a247ad7
    sub_28de325d.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_28de325d[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_28de325d.length > idx:
        sub_28de325d[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_28de325d.length:
        if not sub_53540fd7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_28de325d.length, sub_53540fd7.length
        else:
            mem[2660] = address(sub_53540fd7.field_0)
            idx = 2660
            s = 0
            while (32 * sub_53540fd7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_53540fd7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_28de325d.length, sub_53540fd7.length, mem[2660 len 32 * sub_53540fd7.length]
    else:
        mem[2628] = address(sub_28de325d.field_0)
        idx = 2628
        s = 0
        while (32 * sub_28de325d.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_28de325d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_28de325d.length) + 2628] = sub_53540fd7.length
        if not sub_53540fd7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_28de325d.length, data=mem[2628 len (32 * sub_28de325d.length) + 32]), (32 * sub_28de325d.length) + 96
        else:
            mem[(32 * sub_28de325d.length) + 2660] = address(sub_53540fd7.field_0)
            idx = (32 * sub_28de325d.length) + 2660
            s = 0
            while (32 * sub_28de325d.length) + (32 * sub_53540fd7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_53540fd7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_28de325d.length, data=mem[2628 len (32 * sub_28de325d.length) + (32 * sub_53540fd7.length) + 32]), (32 * sub_28de325d.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
