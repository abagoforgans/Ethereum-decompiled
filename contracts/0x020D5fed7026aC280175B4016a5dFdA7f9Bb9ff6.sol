contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage62' / 256
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
    return code.data[494 len 7030]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f8878ad1;
array of struct sub_482b3d4b;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_482b3d4b(?) {
    require arg1 < sub_482b3d4b.length
    return sub_482b3d4b[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_f8878ad1(?) {
    require arg1 < sub_f8878ad1.length
    return sub_f8878ad1[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x8ed8c65cd6236f9f8fe70f07a1d2509de018d207
    mem[128] = 0xf799542e5eabb4b08994b8e3f357ecb764082832
    mem[160] = 0x638de15f62c0edf4dcc0052bd245920228b6fe17
    mem[192] = 0xa52e91116222e9f72f229b12c58aa4868e0f6547
    mem[224] = 0x917c4fc6ac874ee2172bada229ccb3319219c80d
    mem[256] = 0xe59cb06be036f75586d3ef777a6f2a74fce1870e
    mem[288] = 0xffd322ce14829a433e5444da26b0cb2dc3dcc5c5
    mem[320] = 0xafe1fdb7e17698ce34150a16a54a283dbf05dcfe
    mem[352] = 0x1aac312346daf1705b33eea0d0434755948aa831
    mem[384] = 0xde3d4c883dec4bafc646093ae0e2981d059b2093
    mem[416] = 0xf577d00925eebe8c583f438e2587425c8ddb2980
    mem[448] = 0x72f82acfe4bc02e648b57eda3b1d04d161015fd3
    mem[480] = 0xea3c5e2af2c02dee176deb75a6acfe596bfb4f82
    mem[512] = 0x561c1363996b2e9b5449a0834e848f4bd6db1196
    mem[544] = 0xbd36888c73d2b11a81fbf8c6d14a9711deafec64
    mem[576] = 0xa444857e6e5baf0cd6bb498f5a095b50af5c1f53
    mem[608] = 0xab15f778811b69e515ca08ab84cca8d9b4fa0f04
    mem[640] = 0x4556de84f794ee923059a1234bb12501a435e5b0
    mem[672] = 0xa45fad50b2b06445f46411e9b4c45052257c0d13
    mem[704] = 0xe4cfb5033b76ac8bb851aaf8a8366fc8496aa082
    mem[736] = 0xc3649beb8809a9f585cf2fca9b3aec2ff0ce94c4
    mem[768] = 0x17d5ee33ef4566dd30d0f6facf4d1de76df00943
    mem[800] = 0x82af7cc77584b6b07bd6738ec8b69a3884a3f8a9
    mem[832] = 0x1d9c3b81587e4d88d71b2b74711fe53e711e69de
    mem[864] = 0x6232744da51a73a6faca7854413e2ef12dff82eb
    mem[896] = 0x7f28727090a3d4fd0f9e01142451ec6b5a1756d5
    mem[928] = 0xa5aa67120a8e50ca8b70f59600661fc82db49fe9
    mem[960] = 0x7c36f2ab14e16a4435151c91215311a733438c7
    mem[992] = 0x319f3f5f372ca7b4c587d3af50bab585d27a1f4b
    mem[1024] = 0x66c7a4a2bfdd9ff97a2878bf921c69287ecd9f2
    mem[1056] = 0xcaafaa510f8f1af0cdf23d9715dfb72e91428f0c
    mem[1088] = 0x48b23c92d740eea0198744a8ca48467da46552
    mem[1120] = 0x56aeb25cdd76c5e3701cd7dbcbe024889a032955
    mem[1152] = 0xd48219f8c9ae974696267f7a4b6ba85791ff8dcd
    mem[1184] = 0xd1a7dd85bdd9b2061bab879c808dc9c1975e45c9
    mem[1216] = 0x6675959dfbf49c5e2df392fa034efcbc25f4bfd1
    mem[1248] = 0x8f9784bcbace95a1b7c7386d9dc13e7e488f918e
    mem[1280] = 0x3f4f04df6e07ee73e23e92afc1fe9ab04e718102
    sub_482b3d4b.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_482b3d4b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_482b3d4b.length > idx:
        sub_482b3d4b[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xc44932ec86dd4e9d79880783c5070451b88131c
    mem[1344] = 0x4d927b6372058e7e5e9f4f5ded541f1900bb739d
    mem[1376] = 0x27224842ba1281eae5a31c87aacb281227ae3bf3
    mem[1408] = 0x79477f24fd9abd07f69e9a7d500f46c64d8440ce
    mem[1440] = 0x17e7ca7c407bd46e0f8af1df1d88ce5e43728b88
    mem[1472] = 0x67d3f1232a9c025ba2b62114d6205ebc322c4811
    mem[1504] = 0x2c81a9e4098015ec8e9c8fd2ed2862060d2f4ee7
    mem[1536] = 0xcc88375874e9f3be7913c7c77c0795a98bbb01f7
    mem[1568] = 0x3b58f685f7dde33a6f12468c38d9e44e005a77
    mem[1600] = 0x5ec59ee0044ac277537cd8f8cb9d0ed14e8b882f
    mem[1632] = 0x1932c61b44c33eb8567c6a334f95b9006e386e8a
    mem[1664] = 0xe612577f76579351bd5e5442ae4ac5f1f5878149
    mem[1696] = 0x491fe34c61af8ffc53167e3f0d8bb0739eeec84e
    mem[1728] = 0x3acabca4650567a38dacc905975b3646c60bcfe
    mem[1760] = 0x20aa7972b7c8524898f1dcdcd2c52ff0d790fe00
    mem[1792] = 0x8d998aba35f37e9a553fdcd0a59f1650f2d63c13
    mem[1824] = 0x6ae488af5432767cf257288b9985e7bac0b8b621
    mem[1856] = 0xe220271a73e1c8ece163067618f6cdd29cdf8ee4
    mem[1888] = 0x415f6ad201a037cc9d2a6b17248f97555d64d1e9
    mem[1920] = 0xd62330fcc639c741f6bbc3b9970950eb3a8b075a
    mem[1952] = 0xc5b02fdc93269d52ab0d9ecf9d3022cfc3cdda6e
    mem[1984] = 0xe1611b2d80a63e0e91ceee6551a4fb3a616007e8
    mem[2016] = 0xdaea57d0c8f0b0192aeeef4b93ba24919cb4a7b4
    mem[2048] = 0x48f708582a36e4dca5ecd6ef2de6efe47b49fcfe
    mem[2080] = 0xb5d39a3047ef415302ee58e30ec3f1d81a1b8540
    mem[2112] = 0x7ffbee29e7258c39660ff86859f6108dc4d7680f
    mem[2144] = 0x9428f49d0df6d2c484f6477f0920c0e34a54db4f
    mem[2176] = 0x7fcd7cc585e173efc7fd60f9c9db3fc9b33dfe49
    mem[2208] = 0x12574865c1b67ae6bbabe85d005ce08f1213754a
    mem[2240] = 0xb67dfdae4e483cfa1998e349ef7abad2b988a5d9
    mem[2272] = 0xf1f12e0c941c37a2858111c95dc44a0d1f0fafb8
    mem[2304] = 0xe3fa247957d591583a6b816d32afe2e220236d
    mem[2336] = 0x6cdadc99b8a0ff8c1e2494c7b48447d22760304
    mem[2368] = 0x6080e032f866b9477cefb733a72f6f6bbcd0edab
    mem[2400] = 0xffa19016114c8cae70f8392b7885af89d41bb836
    mem[2432] = 0x4820fe405911169608b5645ffd3e2a953669435c
    mem[2464] = 0xff3eacb16ee1ada7189fd3ee6d1630e7b9c77c8c
    mem[2496] = 0x78ff0049fd2b71e80b4f87d3621c19d6c64a5b50
    sub_f8878ad1.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f8878ad1[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f8878ad1.length > idx:
        sub_f8878ad1[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f8878ad1.length:
        if not sub_482b3d4b.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f8878ad1.length, sub_482b3d4b.length
        else:
            mem[2660] = address(sub_482b3d4b.field_0)
            idx = 2660
            s = 0
            while (32 * sub_482b3d4b.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_482b3d4b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f8878ad1.length, sub_482b3d4b.length, mem[2660 len 32 * sub_482b3d4b.length]
    else:
        mem[2628] = address(sub_f8878ad1.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f8878ad1.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f8878ad1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f8878ad1.length) + 2628] = sub_482b3d4b.length
        if not sub_482b3d4b.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f8878ad1.length, data=mem[2628 len (32 * sub_f8878ad1.length) + 32]), (32 * sub_f8878ad1.length) + 96
        else:
            mem[(32 * sub_f8878ad1.length) + 2660] = address(sub_482b3d4b.field_0)
            idx = (32 * sub_f8878ad1.length) + 2660
            s = 0
            while (32 * sub_f8878ad1.length) + (32 * sub_482b3d4b.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_482b3d4b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f8878ad1.length, data=mem[2628 len (32 * sub_f8878ad1.length) + (32 * sub_482b3d4b.length) + 32]), (32 * sub_f8878ad1.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
