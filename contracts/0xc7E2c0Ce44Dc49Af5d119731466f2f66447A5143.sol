contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage5' / 256
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
    return code.data[494 len 6850]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_5d7b5a38;
array of struct sub_6f00d904;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_5d7b5a38(?) {
    require arg1 < sub_5d7b5a38.length
    return sub_5d7b5a38[arg1].field_0
}

function sub_6f00d904(?) {
    require arg1 < sub_6f00d904.length
    return sub_6f00d904[arg1].field_0
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
    mem[96] = 0xa5278c753cd9d7072d266e7fb5a237caed5a0de8
    mem[128] = 0x6ebff485ae8532a26c55f8327d31f07b4c933b93
    mem[160] = 0x7f5821a9d53ddc100455f1e1a7f2a61d6f26a95d
    mem[192] = 0x9161f6f7e5d59b0453fdaf28fba1aa039cfb3866
    mem[224] = 0x34103f4d233e8d562ec6f085b17ada9aebba642d
    mem[256] = 0x2afe6bdefa95f38e6a1869d5777bf66766f78029
    mem[288] = 0xdaa3c1ca1be5ebd53137c158a05be1ffa0ff536b
    mem[320] = 0x554c3dd8cf59c729e47fe2aeac099f31e75caebe
    mem[352] = 0x56cfa68a6129b006f18d0d0155203821abc926fc
    mem[384] = 0xfbaaaaea7e139b2503c3cc5703b7dd9a00d6ca02
    mem[416] = 0x66c7a4a2bfdd9ff97a2878bf921c69287ecd9f2
    mem[448] = 0xe91da1f5de605b251a8915aa5fefc955c7fb14d5
    mem[480] = 0xa784a02f927ed6ac7c9a65793f0de4b30dd363c4
    mem[512] = 0xe58d1e5153e0d1f7fbbf3990245fb72ecfa87b
    mem[544] = 0x704067ccdd4573b6abfbee3f9ec143cc8d8ea162
    mem[576] = 0xd8c82e0aa31f3824863f39390d57667eefbbf86a
    mem[608] = 0x7a931d7eab69bcc870a296c9d0c3c2ba08ff42
    mem[640] = 0x9054d1913353f8f3d38b786795bfb92c839d83
    mem[672] = 0x2af3c51cf09b15ffdae295dc0973969795487660
    mem[704] = 0xe39773628bca246b77f0edc6f18f49c69c030c26
    mem[736] = 0x7c03ec5fdd1b1d082fa2a9edd24ce4e4a9bddc42
    mem[768] = 0xd3fb125c2272171852bf598940b06a073f63e957
    mem[800] = 0x759d4a0c6bcdff5bbf2285c2c1b2746af8ddad9e
    mem[832] = 0x5bc63f9b2e575f5e983fc49ff5b8a45b1db4abe2
    mem[864] = 0xbfef1388baa98c9c7410a6174425d5ad3db7b998
    mem[896] = 0x1cf460db4a2290498616c2d9aea2ad1ed201fa39
    mem[928] = 0x5ad89d7a57f058f9f9d4a64766d4ff2cb46b9ae
    mem[960] = 0xc63b6c81bfa51be55ce8d30f62b5bdcfb1aee0cd
    mem[992] = 0x9064dad932abec0d0b0c1c5aeab47aa6048f6a81
    mem[1024] = 0xe012814ccf700dabde81172c15727feb5d6542e1
    mem[1056] = 0xad3126f17d1b0a6adf4f509636e4e47b5217d8c
    mem[1088] = 0x39a1cb6f4b5d9f1e3ee7d882b74f9865901b9565
    mem[1120] = 0x619b91bc9a2014418536fdff540e15000f021232
    mem[1152] = 0x33faec9ca79eb7a71fa097816d281b96d505a7ba
    mem[1184] = 0xdebf99779a3db9b530969e9b888d4349f852f80e
    mem[1216] = 0xcdd4662983cfc3677169685a5cb1724d30c58963
    mem[1248] = 0x1c8ab8c9b2071daeb33c0fe757afca3cdea0940
    mem[1280] = 0x398e6822b0a18ca057d6604a1262f5c8ab138103
    sub_6f00d904.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_6f00d904[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_6f00d904.length > idx:
        sub_6f00d904[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x5c564353e4cec1a5861a5d34e2178499eb676d5c
    mem[1344] = 0xbfe069f7bef2da52cc67183e705f416c6929e620
    mem[1376] = 0xa13fce761ee6b2441822d3e67b867bb784995367
    mem[1408] = 0xda1243e681c65bf597773b8c40b4c7cd9f62110e
    mem[1440] = 0x6115efb613bf8ff7effc0dcaedc78d5235dc59f8
    mem[1472] = 0xcfe4c450ff760337001dab13ab2a7e42961743d9
    mem[1504] = 0xec066446548a195721f5f2ee2847e300f7edc022
    mem[1536] = 0x66242d0df439bcd5a12f7a275805a0c93a9f49f5
    mem[1568] = 0x2c01acddf8f9b4642c554230cd12d3b6e899c168
    mem[1600] = 0x6972e7d0d2e7c77fb835a33de86c576f6d49f1cc
    mem[1632] = 0x9572fdd97f516546b17458bf214d3d7609e589e4
    mem[1664] = 0x8fd13f8745c71fa15677f12bf98cb5796714fd7c
    mem[1696] = 0x236685a7500a752caac80fdfa6a33732aa88414
    mem[1728] = 0x28725ca7acd410608d4cdec43a054c99f9cc8d
    mem[1760] = 0x850f6ec704cc8f459c308ac11dabd3130f696b3e
    mem[1792] = 0x596b7344eeacc5cb51c0a53fbaceb2a0f0d9ed4e
    mem[1824] = 0xbe5515e0caa69aaf8afab1c5379c6ace4b78df
    mem[1856] = 0xf23ce14d3da17de68745f7b83b6bfaceeff236
    mem[1888] = 0x71d6107a8655eaed6b7d2a47dea428f181cd8359
    mem[1920] = 0xa238de71e9308ad542dcb66d01bbe21a5a786a03
    mem[1952] = 0x62df891a9c3ca6f2ae39a890052fbb920d0e836a
    mem[1984] = 0xfc74f39556c1e0b5763fa03d9ad88fb83c137424
    mem[2016] = 0xf9224c3f1ebf6cde7c0bcb52c99507a92ab890a2
    mem[2048] = 0x40718d5b2bd11350bcaa50043f330704af878f50
    mem[2080] = 0x34d12a6396417a8d8aacfae276099520e02a3d
    mem[2112] = 0xa708452560236b82d4ddded4c4f94fa81b5c6663
    mem[2144] = 0x454998295ef280da4a857204c7942e0bd61c1697
    mem[2176] = 0x4fce32d0c289af3830ff76b0ef8784e8e8f0e8ca
    mem[2208] = 0x7ca47a454b72d6879ca9e8cdc8576e41155172fb
    mem[2240] = 0xf67434379ec55b430de2c5dfc86e8c6eb19bc698
    mem[2272] = 0xcf00ade35e8e6084daf5cdfdd73411498754c4a0
    mem[2304] = 0xfd94452e32026d48e5fc320dbebe19a32bd8ef4c
    mem[2336] = 0x26accdf79aa8a363ad23a0cfe61f588153f41ff4
    mem[2368] = 0x4651a1c690bcd804a1f78dd733cc44b4f549219d
    mem[2400] = 0x1528aac62ff054c5bafc984e924701e752cc8a5
    mem[2432] = 0x35cb369e60fa14ae13c95f8c085f9faee560cad9
    mem[2464] = 0x96ce5443990fc42ef74c1e1d55aaaeb7e0996fe0
    mem[2496] = 0xbcd89c447f34b120f6a7bd36d53d6fc96732f94b
    sub_5d7b5a38.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_5d7b5a38[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_5d7b5a38.length > idx:
        sub_5d7b5a38[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_5d7b5a38.length:
        if not sub_6f00d904.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_5d7b5a38.length, sub_6f00d904.length
        else:
            mem[2660] = address(sub_6f00d904.field_0)
            idx = 2660
            s = 0
            while (32 * sub_6f00d904.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_6f00d904[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_5d7b5a38.length, sub_6f00d904.length, mem[2660 len 32 * sub_6f00d904.length]
    else:
        mem[2628] = address(sub_5d7b5a38.field_0)
        idx = 2628
        s = 0
        while (32 * sub_5d7b5a38.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_5d7b5a38[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_5d7b5a38.length) + 2628] = sub_6f00d904.length
        if not sub_6f00d904.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_5d7b5a38.length, data=mem[2628 len (32 * sub_5d7b5a38.length) + 32]), (32 * sub_5d7b5a38.length) + 96
        else:
            mem[(32 * sub_5d7b5a38.length) + 2660] = address(sub_6f00d904.field_0)
            idx = (32 * sub_5d7b5a38.length) + 2660
            s = 0
            while (32 * sub_5d7b5a38.length) + (32 * sub_6f00d904.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_6f00d904[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_5d7b5a38.length, data=mem[2628 len (32 * sub_5d7b5a38.length) + (32 * sub_6f00d904.length) + 32]), (32 * sub_5d7b5a38.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
