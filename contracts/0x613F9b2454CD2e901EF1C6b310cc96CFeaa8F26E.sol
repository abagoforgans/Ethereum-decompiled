contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage91' / 256
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
    return code.data[494 len 6916]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_85012db1;
array of struct sub_ab90d352;
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

function sub_85012db1(?) {
    require arg1 < sub_85012db1.length
    return sub_85012db1[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ab90d352(?) {
    require arg1 < sub_ab90d352.length
    return sub_ab90d352[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x15b2ad4b654c2a543074072c71a55a75c560d849
    mem[128] = 0xe0c2dc4df55f4e37584c0e1629f04599b5b23356
    mem[160] = 0x40671db12f1bce5be96a5830d8d2ffd1a6b238d5
    mem[192] = 0x3694402af42729e9e5f4178d278a4e6fe22556f3
    mem[224] = 0x81933df2b25d6303ff24256686678c2afe8a8e7b
    mem[256] = 0xd1983cf23b17131629fd3837c6aaef4330733618
    mem[288] = 0xbc2d028ad9ec421b02ab03a3f82de13ac2683a0f
    mem[320] = 0x10cb6bfc1be036733ca5165c24c00ca9f34f43
    mem[352] = 0xa538116f5f00e0d17e2613954f879ef4a4f72382
    mem[384] = 0x48eda542f6b848dc17c439a991af8694d97bc60
    mem[416] = 0x1023be83482842441c63c062131129237316667
    mem[448] = 0xe85304ffb8705946bec4926c9558d143887d12b1
    mem[480] = 0xd972c2f5f5584f2b92d342da1c07198799e435aa
    mem[512] = 0x47ee5231e6208eced55e5bdfc51f27d55ff27742
    mem[544] = 0x94863c975824f46410a8c74429a8c1b732c31f7f
    mem[576] = 0xe59fe0565932e22869c6e7b98e86a86f4d979524
    mem[608] = 0xfa0f65f4ab459ed421e7356fd1677b6d76c98
    mem[640] = 0x3ba416000f2898c90d2ac1d0e089f8e140cf92a
    mem[672] = 0x9893c4abee7cb7a01a791991e80359a7467b8bf2
    mem[704] = 0x563b4a34e0f24c08da33642a5110f3dd4386861e
    mem[736] = 0xdd9ac9fd440053a5e815ef6a1a1cc278b72ebe90
    mem[768] = 0xfc4a8ed34b544f0e85255895fb0a6df4d3f14500
    mem[800] = 0x268a94cb44ea924d52439501a7fb64c4059de8b0
    mem[832] = 0xba73c44cee2246dfc50d0ee059691da7f6775dd7
    mem[864] = 0xaa7fd711c1c97f714ecb65f0a5b4b3e2b54f6bb3
    mem[896] = 0x5f5329022e181b8038ee74e47f2e45a51c4c0093
    mem[928] = 0x7962d8cce79fac85098862db571d783dd6e8d796
    mem[960] = 0xa66c2e9a36810744d1f59a25f25b64d785093252
    mem[992] = 0x953a16811041d5119156abf1c86703dcedba17d
    mem[1024] = 0xc49f0e2ba7c6a17a0ab2fc85b6b0796f4a2da162
    mem[1056] = 0x402bd1ced33dac364ea3308b11299d18681332
    mem[1088] = 0x6e6039cf8a1267c3448b0ab9702d41eae7b99eca
    mem[1120] = 0x7fac72ca87e52b1452eb53bdc7f1666ef136ffc1
    mem[1152] = 0xd2a1ebbf817233df04726099eccf6c7daadb738f
    mem[1184] = 0xa51eb05da43510f99909e3806193f52183a6687e
    mem[1216] = 0xd344f5d98b83b49f10ec1fd15f1e4f14f502f7a4
    mem[1248] = 0x4e09297abf483c67000464acd40f0f851cb1ac0
    mem[1280] = 0xff712b8f838df14e5102882025048d9896dd91d2
    sub_ab90d352.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_ab90d352[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ab90d352.length > idx:
        sub_ab90d352[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x133e7e0c91858e57997e08781e89ba67d4027276
    mem[1344] = 0x465452fe36a0cd35ef21e452d4046ee52cb9b34c
    mem[1376] = 0x5776f3c467b5473610ad52b1dfc2ec7c8274f77
    mem[1408] = 0x49cb4924147f37544064e2f26ea3565509cc1eab
    mem[1440] = 0x89b6c149afc7dc7840c943dc37642fe6a960f97a
    mem[1472] = 0xc3a59cea6634e05ee7f7d7186020bfd561719066
    mem[1504] = 0xd75ab1c7c70dce22956798838d16506c234e5484
    mem[1536] = 0x40bb5f9cc8b7fa8e0ac938e2cf52ef70ede19b
    mem[1568] = 0xcbc2a2ca9abb128f07fcbe05e7ff72213a29ccd9
    mem[1600] = 0x21a677b4ebdc7056ed9a9991fdc3a59d57265390
    mem[1632] = 0x93c741e188dd78551376d7bbc031c7ed02c6137d
    mem[1664] = 0x97e227852007ed865f8cf7443928de95bdd30cb1
    mem[1696] = 0xf26f5868470ea85f3f4b0e199301e8cda3de9b13
    mem[1728] = 0x2cd9b0f4667aca85b8fb9d31b900a8c7181aa325
    mem[1760] = 0xbeb6fac36d8746e0ed1e30a04b514f70a86d5ec1
    mem[1792] = 0xe8adeb97bd7bec46d77f2964a4c05d544cfba77d
    mem[1824] = 0x58a34c37a972fe44e1784049a275ad1273ceb1
    mem[1856] = 0x92eefc4cf8fe0dbd0c83e8f9a09651398fac72e0
    mem[1888] = 0x5334905e6e43c6b587e20807992e7de376f32c7b
    mem[1920] = 0xb0d6576b4b92500576ef728df24c861e52e45e24
    mem[1952] = 0xc646a0d55532b1010286188e2dc7e7416595129a
    mem[1984] = 0x202f4e2670ad3bef2397f68592966fb304819214
    mem[2016] = 0xd8ecad4ac1bed62105fc3be7eda5def68902d949
    mem[2048] = 0xee13445f5571a1b1c6613ccd5aa10142b1e7ddfb
    mem[2080] = 0xf99c5909edd6483795b17085ac5007b5cdfcf5
    mem[2112] = 0x9c6b830f2db73ddb2a62e5ab2692b76f1d07d18a
    mem[2144] = 0x45e539ab180247799113d5f031a024789c602e37
    mem[2176] = 0x353be6c95abd8b7e9daa03d3b3a21171b37718f1
    mem[2208] = 0x54e62763d8b6d93466b2bec750efe1d6889a1535
    mem[2240] = 0x9adf34fef33c94cd62575f96b68f4f4cfc22de2c
    mem[2272] = 0x8c8a4fba9a756dadac63926b08981d0837e7e3
    mem[2304] = 0x1d0bb9be0213f0e06af638ea346c3f8484c6425e
    mem[2336] = 0x44864fac46259bfcc45dc581c49e6e4b4ef60b83
    mem[2368] = 0x321fa1c1118c49b78a4c9587b42f6b19257672ab
    mem[2400] = 0x3e3934e223be9307f1548cef26c2665e8dc980dc
    mem[2432] = 0x7189c2cd0025d9428190dc5c7bdb9c3057911e55
    mem[2464] = 0x4a54ab8c0643a4128f6f68e5911539b9e38bae7c
    mem[2496] = 0x4d25b388258cab9b25e0e400392a47d804b15d0e
    sub_85012db1.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_85012db1[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_85012db1.length > idx:
        sub_85012db1[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_85012db1.length:
        if not sub_ab90d352.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_85012db1.length, sub_ab90d352.length
        else:
            mem[2660] = address(sub_ab90d352.field_0)
            idx = 2660
            s = 0
            while (32 * sub_ab90d352.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ab90d352[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_85012db1.length, sub_ab90d352.length, mem[2660 len 32 * sub_ab90d352.length]
    else:
        mem[2628] = address(sub_85012db1.field_0)
        idx = 2628
        s = 0
        while (32 * sub_85012db1.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_85012db1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_85012db1.length) + 2628] = sub_ab90d352.length
        if not sub_ab90d352.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_85012db1.length, data=mem[2628 len (32 * sub_85012db1.length) + 32]), (32 * sub_85012db1.length) + 96
        else:
            mem[(32 * sub_85012db1.length) + 2660] = address(sub_ab90d352.field_0)
            idx = (32 * sub_85012db1.length) + 2660
            s = 0
            while (32 * sub_85012db1.length) + (32 * sub_ab90d352.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ab90d352[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_85012db1.length, data=mem[2628 len (32 * sub_85012db1.length) + (32 * sub_ab90d352.length) + 32]), (32 * sub_85012db1.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
