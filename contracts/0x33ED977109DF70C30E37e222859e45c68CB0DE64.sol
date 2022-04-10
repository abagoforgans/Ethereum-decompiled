contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage75' / 256
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
    return code.data[494 len 6763]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_37716127;
array of struct sub_e02e1f23;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_37716127(?) {
    require arg1 < sub_37716127.length
    return sub_37716127[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_e02e1f23(?) {
    require arg1 < sub_e02e1f23.length
    return sub_e02e1f23[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x4497b2058d1d4affb9368608aa8be9231a8d2 * 3600
    mem[128] = 0xe913457d29b32979c05f86b3e8f52915340eaa31
    mem[160] = 0x30cbc035fd40358e6030b5985214d3c0e1b73895
    mem[192] = 0xa6ecd4bd7514cc8ecdac0297d2a121e9072d56
    mem[224] = 0xe42fa911a3c8255c4e8be3cb74b7401ae7d7ad55
    mem[256] = 0x34984f8e49b1243a8c4e5f2e77d198ed1ba4be8e
    mem[288] = 0x4c2c558c6eb750c8e567574879d8bb7f38ccf79f
    mem[320] = 0x9334ae2ba8868d307a012f6e527219b25c00217a
    mem[352] = 0x8f1c2583d1710409ee6cd1f1a0e4f7759c8fdc9c
    mem[384] = 0xd0a7c676dff02e1cbfdeabfef5fcb6ab1bf1574b
    mem[416] = 0x475e0419b1fc1eb6b682b50fb62fc508f8b8633b
    mem[448] = 0x2f6fcbd510bf00a2a0fe0974a4516a2d0c6cf3a
    mem[480] = 0xa329c0648769a73afac7f9381e08fb43dbea72
    mem[512] = 0x179d416ad6c94993fd9d54b3f4f3ad2c6edd92a3
    mem[544] = 0x871ecf7ac70e4a4b3510662e96aacaa10a7b6dcf
    mem[576] = 0x903a92616015e4083c6c08a041c4ca4ba6975e83
    mem[608] = 0xd5f9bc622c924ebd521ddf55628a891a0cfa0575
    mem[640] = 0xd4f90977950c21d3f586a79a9c65c5319fcf38cc
    mem[672] = 0xc5fe858af5efe3d7cc3307c3d7dc1411ebb5ad55
    mem[704] = 0xefb5177031b5e47546845047da00e970290024ed
    mem[736] = 0x17344d7228d47ec2f172d1ae5e49dd9f625be362
    mem[768] = 0x6a79a376cd1d80817a44ac368952ee2cd0bf508c
    mem[800] = 0x7cd082975350e2334ce6b2a0acfc1ea3dce4e93
    mem[832] = 0x4b01b271e8d41a77bae62583b3fb26ce9dc614ef
    mem[864] = 0xe924861bce4ab8e545693867b9ee5c37bb1de933
    mem[896] = 0x5ba68dbfacdac56abc957174b5f543885651a4d6
    mem[928] = 0xdfdcd5fc219645dd9908e3f1106db6428bccf047
    mem[960] = 0x450fba39368e43d41bc4754bebf36fed402efb67
    mem[992] = 0x370670a6f12d39fb9fd9876fb531f280a7458109
    mem[1024] = 0x751b5b650f7434bd85b34268a3edfa571f4c2f85
    mem[1056] = 0x9c006f359598e16b6209f957b4eef729395d2d4c
    mem[1088] = 0xbdb98bbb59eb12ce3837c509f4b7bda463319153
    mem[1120] = 0x680c1df2cf4b90df1d5b806644c59254eba2f239
    mem[1152] = 0x8da53f0415cc77cdd6a3768c2a31fdedcd4a2d
    mem[1184] = 0xb0dc5e1d049830061463288e63b2d6dbe257601b
    mem[1216] = 0x1258eb965470399904af72857de82659930e8db2
    mem[1248] = 0x22c2ab17452114382fd270a27ddaff32d4209711
    mem[1280] = 0x62edd350960b69a351901ce45062ba0ab8c4ba46
    sub_e02e1f23.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_e02e1f23[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e02e1f23.length > idx:
        sub_e02e1f23[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xd821a98ef1fdf861f04ef4915069e9cf9ea8b3fb
    mem[1344] = 0x8334b7e8a29c7345f3dd9926968f09a9dc02a9be
    mem[1376] = 0x6830037667c843a447f39c9634b85d42adc9928b
    mem[1408] = 0xf21b5c60b4dd29400da6935fb134340d04414
    mem[1440] = 0x40659a10729cb1b700cc128af63154999aceb929
    mem[1472] = 0x2999a36e69de0da90c2185694c6ed228ebaa6a56
    mem[1504] = 0x166d72854b9d472d0ae477becc1dcaf94746b413
    mem[1536] = 0x86f28f6c73c798f880367e042ba1f86952882d55
    mem[1568] = 0xee11736dd504e1cea36b32558cfba86ad5b7c0cd
    mem[1600] = 0xa857e0f93088059f88b17b3dafeb40ec2f4095fa
    mem[1632] = 0xce79c1acfdc209da437f75a694d621dd7105cd84
    mem[1664] = 0xedbe060fecdd0a77787d73f4348368655acd0980
    mem[1696] = 0xfabbdc2b915d8304a8b366c18a4da97214dbad
    mem[1728] = 0xa745d302266447822ace882c9595c1485a1dbb3a
    mem[1760] = 0xdecf291fa47cc8ff5928e72961f4cb233d66b8d4
    mem[1792] = 0xd3a7b5366b0d81c5b34b9b7d373471d77ea4f892
    mem[1824] = 0x3722be3a06a21d9f534b2efc21171a5c4b141029
    mem[1856] = 0xb9463f5c2bda005a50e4eb34a08a427310e08bc
    mem[1888] = 0x5d52d5a452a076df52f4dd9f41152dd677ae2501
    mem[1920] = 0x386b41d31c1749a89550fa331d2adf48a39c916f
    mem[1952] = 0x261a4fb19770ded18950b1b4831673626a0d0092
    mem[1984] = 0xe23671843b9f54ba927f41547627aac6539d8563
    mem[2016] = 0xa7eba7fda7e463c5509519edf03137c57f3ebe73
    mem[2048] = 0xf5a6b7412c4645911b82f3ef473be2993ba745a9
    mem[2080] = 0x7d5d3ce9a7024f01aae25b5f42908e95a8ed116
    mem[2112] = 0x3ac9d3eb7a1ecf508211b8795d4fd050fed7dfdb
    mem[2144] = 0x62500500fcfe282c1b9cd08d46d8d703ba3236df
    mem[2176] = 0xe0ab47575add6dbe207ce20adb77efddd00f9e5d
    mem[2208] = 0xa3ffea64b01305f58f0c464be9be3b86ad6c9a9
    mem[2240] = 0x83c601d4fa38e6c01aaaa9b2b2e6c09a2ae8e60f
    mem[2272] = 0xc5c0bacc2e5d5b8fa839315f6e2d69d75834fe91
    mem[2304] = 0x84c488aaa1374c2a5561cd95dc641fa59c13b95d
    mem[2336] = 0xfb6d22d1b9d073cf1fcbd64d3bcbc73ce41f0838
    mem[2368] = 0xb3ab12b9f7cf529d3c36342d75f9ba6a338a1e
    mem[2400] = 0xfa048f542b3ec58dfe6ac178e7538b9a7d470a5c
    mem[2432] = 0x6417a8bb18195d5da4688ed175a2859f54172c30
    mem[2464] = 0xb0af9452468eab2f9d365381987be6bf099c12a
    mem[2496] = 0xb0f081172f6b42865403693f9ac771369afc4855
    sub_37716127.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_37716127[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_37716127.length > idx:
        sub_37716127[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_37716127.length:
        if not sub_e02e1f23.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_37716127.length, sub_e02e1f23.length
        else:
            mem[2660] = address(sub_e02e1f23.field_0)
            idx = 2660
            s = 0
            while (32 * sub_e02e1f23.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_e02e1f23[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_37716127.length, sub_e02e1f23.length, mem[2660 len 32 * sub_e02e1f23.length]
    else:
        mem[2628] = address(sub_37716127.field_0)
        idx = 2628
        s = 0
        while (32 * sub_37716127.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_37716127[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_37716127.length) + 2628] = sub_e02e1f23.length
        if not sub_e02e1f23.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_37716127.length, data=mem[2628 len (32 * sub_37716127.length) + 32]), (32 * sub_37716127.length) + 96
        else:
            mem[(32 * sub_37716127.length) + 2660] = address(sub_e02e1f23.field_0)
            idx = (32 * sub_37716127.length) + 2660
            s = 0
            while (32 * sub_37716127.length) + (32 * sub_e02e1f23.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_e02e1f23[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_37716127.length, data=mem[2628 len (32 * sub_37716127.length) + (32 * sub_e02e1f23.length) + 32]), (32 * sub_37716127.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
