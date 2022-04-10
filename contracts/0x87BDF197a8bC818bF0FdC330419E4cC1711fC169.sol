contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage18' / 256
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
    return code.data[494 len 6657]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_fcaf0c87;
array of struct sub_22fbd8d9;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_22fbd8d9(?) {
    require arg1 < sub_22fbd8d9.length
    return sub_22fbd8d9[arg1].field_0
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

function sub_fcaf0c87(?) {
    require arg1 < sub_fcaf0c87.length
    return sub_fcaf0c87[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x6437e21d3268f97fd8e07f900123d6e8527db68e
    mem[128] = 0xfa0f65f4ab459ed421e7356fd1677b6d76c98
    mem[160] = 0x4f3240bfa2f254eb5e05cd37b714cfec11e13b2e
    mem[192] = 0xc41375217af291689b518be3987acfd5f8c9ddda
    mem[224] = 0x95c6abe3bfb022b2203791fa9167e6cafe9488d7
    mem[256] = 0xcb33215b156cf1f241bdf7a69fe6a3ab6b545f93
    mem[288] = 0xc05e0435c13675217270177fb9ec389bbb98d83f
    mem[320] = 0xa454a36c232bb9fd518d9446eda3cf437d8bb227
    mem[352] = 0xb403106cd3f6852a87769e32890680ca615e351a
    mem[384] = 0x6d32234bc210b49588a5e5b27be80fcfe401275e
    mem[416] = 0x5a262f43b4b1399919bca6dfeef20c305733815c
    mem[448] = 0x1cb9e77ba27b1d764ed4bc3f8a1314d0e1d5ec9f
    mem[480] = 0xb25f0e0dd5a9cd5e781bc07ab5081ed0d7e254c6
    mem[512] = 0x29a67a526c180c734fcf899cf893724385a73c03
    mem[544] = 0xffb8eb6673697c71e502314431fd15a8583431b2
    mem[576] = 0x406eefe769c0eb5fc238275b059d9fc474ba7e2b
    mem[608] = 0x5f054a8ade40d7d53bd2afd08a224e0bee917e5a
    mem[640] = 0x77639249e23ee89e03021043f33b5dcac6f5f0df
    mem[672] = 0x679045734dae3ff5edb164f7cc38251a599bdc6
    mem[704] = 0x160bfd9f0ed28df7f2eb5f987f683af9af6874a6
    mem[736] = 0x18912c62bc463e3cac1f70eef25abc50300531ed
    mem[768] = 0xa5cbc4a6dc285230553d1851ae389cccdc32b912
    mem[800] = 0x97c2af01648cb2a80dfc9831c3f3a2dd4edd8438
    mem[832] = 0xac8901ff26a97df58d9c29acf74d71f1052956fc
    mem[864] = 0x3a38470c7ab91c3da45ccbedcb594eab42af7190
    mem[896] = 0x1dba3e06cb7969378774b51b8f6e7ae9ca237a8c
    mem[928] = 0x9d6c19176eaaf7d9a09568623aa59a1525466cc2
    mem[960] = 0xaac2598f60718667a5f857e894010d4db8bd26bd
    mem[992] = 0xacec0bad4dbc802a74c353988289418b404271fc
    mem[1024] = 0x75a8a854d73743b8d537807b915638e66a1ae19
    mem[1056] = 0x56af7b45cb69cfa9840c8a94a87314ed57185233
    mem[1088] = 0xbdcf5c6635f47557d73daf54fddfca87bed5e301
    mem[1120] = 0x97ce1e96d0ba5890d1ad8c968c343269658a92f2
    mem[1152] = 0x260daf77098ec6d71d52fd0ad4f0c6f725935e19
    mem[1184] = 0xa85ffffe3acf7f99fe30f96b3a495d1820ceb1f6
    mem[1216] = 0xfbc3a81814dbf371799c65038db681d1355803af
    mem[1248] = 0xa7650c31fa1746344bca275066bde5931406c566
    mem[1280] = 0xb4768e44cacfee515a53ca20fc504e4a5f71dba
    sub_22fbd8d9.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_22fbd8d9[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_22fbd8d9.length > idx:
        sub_22fbd8d9[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x855f383ce82e8db862c14d29e109107967f5e75d
    mem[1344] = 0x58a34c37a972fe44e1784049a275ad1273ceb1
    mem[1376] = 0x9850d0c1bd36d7101d301eaf72061bd11e9e19e2
    mem[1408] = 0xa58e26408c8ba07d56d7bf7ab647fa8451b97530
    mem[1440] = 0xf59b1fe4c64c823f9d169d32f34407e4f08ce816
    mem[1472] = 0xce1386859ec9f36060b6a6d6d521e478e1da84f5
    mem[1504] = 0x90ff2ad30a1325725db42b01175eae1914bf573d
    mem[1536] = 0x8c2bf3172af50585ff9345bb71ed98116e67ad26
    mem[1568] = 0x2923f18e54d499131f848eac3f07bbacd514e11c
    mem[1600] = 0x9bfd9f47d749ba56346f0d9025789d8c0731a4b9
    mem[1632] = 0x98071fc2884ac0fb615f97aed642582d84383d99
    mem[1664] = 0xbb6594dbc0642c89f6498d59db5f12fa58486d56
    mem[1696] = 0xdb03f1aca5bfe36d4b59705df470a6a461f62947
    mem[1728] = 0x8807af0bca19ee4d79df40b23ac2f442d42569d2
    mem[1760] = 0xd231e8f58be791e0c121412230cc4ad2e6aee777
    mem[1792] = 0x85f887fd7fb3aa6449dd19c176457c16c2be5e71
    mem[1824] = 0xcb934f662d2de96a8491db22d64f4dd78e38a0b9
    mem[1856] = 0x7fe2c8101f7513ba252a8483e5798f024f0c530d
    mem[1888] = 0x3feeb65eab216b80e614463d24c26a104b211263
    mem[1920] = 0x4164bc27dd1f0a43aeaa32ec18d63a87c3a93cfc
    mem[1952] = 0x9135be57060da03390288c6dfe2c1d0ecff1b565
    mem[1984] = 0x65fc1d845187b25a7f6cc80b9592e025980f8a28
    mem[2016] = 0xa5fb8924e2b8ed15749fe83fbc998bf0b67d506c
    mem[2048] = 0xfb9948349c651579aac228fccd792feb53466040
    mem[2080] = 0xad9d40a5571eae01a285ee49d8d0b2b252777a47
    mem[2112] = 0xd696c7e331ae64600aa75dbff6fafeba54175d9c
    mem[2144] = 0x752d0452139e7179c91a06fc2c5e2724d4a98507
    mem[2176] = 0x95a8d58406d76c375d1173d6dfa4e3f3f1e19d90
    mem[2208] = 0x317ebc25cfee7b9c74bf249d462fde17face20e
    mem[2240] = 0xe66262328d4d8de32f8e6108ae2423f3c6a84e4c
    mem[2272] = 0x8656497faf4e2ad9e226633ca76e25c1122cb6ad
    mem[2304] = 0x22177bc1eeee08aa44c4bb1e3d5ee724ca8c6c03
    mem[2336] = 0x33d1eee39c02b8c1da87f0292a1c81f971f10e9e
    mem[2368] = 0xea0ceeaffbdfd38e2b17f3183ab6ec92990e1737
    mem[2400] = 0x47a208db5c8392c32a117b13c03481772416906f
    mem[2432] = 0x533a13e1a4ba6e7362d483c84b7da37a9ac1ef94
    mem[2464] = 0x945ff1529f9145e23b8abd587c6a2ad87003a02
    mem[2496] = 0xb76cfaba95c8418f971b03c8c3649b9498b6630b
    sub_fcaf0c87.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_fcaf0c87[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_fcaf0c87.length > idx:
        sub_fcaf0c87[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_fcaf0c87.length:
        if not sub_22fbd8d9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_fcaf0c87.length, sub_22fbd8d9.length
        else:
            mem[2660] = address(sub_22fbd8d9.field_0)
            idx = 2660
            s = 0
            while (32 * sub_22fbd8d9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_22fbd8d9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_fcaf0c87.length, sub_22fbd8d9.length, mem[2660 len 32 * sub_22fbd8d9.length]
    else:
        mem[2628] = address(sub_fcaf0c87.field_0)
        idx = 2628
        s = 0
        while (32 * sub_fcaf0c87.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_fcaf0c87[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_fcaf0c87.length) + 2628] = sub_22fbd8d9.length
        if not sub_22fbd8d9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_fcaf0c87.length, data=mem[2628 len (32 * sub_fcaf0c87.length) + 32]), (32 * sub_fcaf0c87.length) + 96
        else:
            mem[(32 * sub_fcaf0c87.length) + 2660] = address(sub_22fbd8d9.field_0)
            idx = (32 * sub_fcaf0c87.length) + 2660
            s = 0
            while (32 * sub_fcaf0c87.length) + (32 * sub_22fbd8d9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_22fbd8d9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_fcaf0c87.length, data=mem[2628 len (32 * sub_fcaf0c87.length) + (32 * sub_22fbd8d9.length) + 32]), (32 * sub_fcaf0c87.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
