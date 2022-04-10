contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage47' / 256
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
    return code.data[494 len 7071]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_3c8ce466;
array of struct sub_18969140;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_18969140(?) {
    require arg1 < sub_18969140.length
    return sub_18969140[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_3c8ce466(?) {
    require arg1 < sub_3c8ce466.length
    return sub_3c8ce466[arg1].field_0
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
    mem[96] = 0xe2513df98df62dbce5a291d338799e10a790ebf5
    mem[128] = 0x5f9acad3cd7c4855893d1cd5e6573d29262d2b6e
    mem[160] = 0xd452b9cc89661242f98965f0757a0d92cc3bef
    mem[192] = 0x87d7d2ae1202ea18ac21cd76e9f8d6d5ee30517e
    mem[224] = 0x672fb97423bc0df66f498ab1424933404102827e
    mem[256] = 0xada49492b670f15d80ffa46746e996b369901a0d
    mem[288] = 0xcabaec4e23d7f899ee8227996e8e45d9f78acb
    mem[320] = 0x9f17067312410ca8a430059004fa8e69b37feeb3
    mem[352] = 0x479f123626ab2a8e3dccc80fec1c3b7d9fee95ad
    mem[384] = 0x909c10ba205181d6c7d9f14fd304e2f7773975bb
    mem[416] = 0x92709a9572f2abf7587612b6ee4ef684dfedcdc3
    mem[448] = 0x4c8399452164cb75f704859b15fdfa08d1c9208c
    mem[480] = 0xbe8552d6ac7751a98c6b3d5db5268f96ebc561e
    mem[512] = 0xb65585c3fda7ff9b309ca29e69bbe3a05c835044
    mem[544] = 0x1d3649b580f77f8fd81a6546398d1926c49eb336
    mem[576] = 0x71f1c0abb131f409a852d2a2d1b52db710577ff7
    mem[608] = 0x2a331673a955760d5379be48761c4f41c1fc8b5d
    mem[640] = 0xe2f582ccba124fe631381cc900a508bb97e512a9
    mem[672] = 0x1016ebde6fdbd54017af5f9a60e65d560217acf3
    mem[704] = 0x800db1ed6e66e43aadb1c09d2b20e589fba6748c
    mem[736] = 0xa32eac8fe688d2d9c750efa5d7f7432bbb727e71
    mem[768] = 0xc5b2db145c5d5c2664244070ea63a0abb2ac3da7
    mem[800] = 0x95c076ede4780a94a04c7ddd9415eefe655aa066
    mem[832] = 0x15db7d54f26a24f10478f3fe05cb63ef37b71699
    mem[864] = 0xf4efa9809ce7d684b75d000d216562fe4c457f65
    mem[896] = 0x292f8164d828a1660a939f311c0ecc4a89ed0ce2
    mem[928] = 0xe861d127f61486528cb378f5439b88739edfc834
    mem[960] = 0x832fb3a0e00f1ee2ccb1f4085d6feac04d0b2c8a
    mem[992] = 0x1875989ebbe98b0509dde645783711f5c27bf986
    mem[1024] = 0xcbc7eeded7120a267e5e1a21a87b220c31077836
    mem[1056] = 0x35d4664575f4ccafb614e27ebeafdb536add240d
    mem[1088] = 0x4cd56e80f58c556719b0a8c6d0c4e7252a19b6c2
    mem[1120] = 0xa8d27820f393ba4bd82615500e1cfa9aeae1ac60
    mem[1152] = 0x21bc7280773f12fe7e8978d64f9b737cfa53e587
    mem[1184] = 0xd597341ecd061e070674845278ae5b7a3de7dc
    mem[1216] = 0xd16159bc516a37684c6a6587feb4816d8c075fc7
    mem[1248] = 0xc6f8fc043519d9c1e1dd10018d263cdc6d160efa
    mem[1280] = 0xaa15135d0104d8574bd1553df8dc435664f628a9
    sub_18969140.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_18969140[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_18969140.length > idx:
        sub_18969140[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x4215de1250ef62c16ca6744d8e01b885b67319c
    mem[1344] = 0xf0f2f536787afd0a59313e3add05803f554d403d
    mem[1376] = 0x77637db78780a10c3c901088317ab1351bbec2
    mem[1408] = 0x8a32fd416d222548b4f9f56a019c9cf7867539bf
    mem[1440] = 0xc7dea959c4a05507c6a2d2539e647e35a1b40cf4
    mem[1472] = 0xe443d7fd0f5f57e9b66c41e873cce1c60badc50e
    mem[1504] = 0x8f2337dee92c61323e7a19532dfa7f773fd6f0
    mem[1536] = 0xe7c2f74fa15639444a66af12c80ba9cf80ee0e2d
    mem[1568] = 0xd7d519ea10ce6ca6b4449f4f30823d97a57d9736
    mem[1600] = 0x322b157f6b6cc3aedf2c188e8e6bac13a94d6965
    mem[1632] = 0xb9d38ad5cc92a97b2dad986ef866b74c56d8fbc4
    mem[1664] = 0xd7de9ed1ff41297047bc4630cc092dae097c76f8
    mem[1696] = 0xeb38993ffedf83d81cd031ffba4a5c760400a69f
    mem[1728] = 0xd23b6f14fa8c24a7dced6f128c875c3984fa5da0
    mem[1760] = 0x14961a7218030e1883b152e4ad6ca4a852f83689
    mem[1792] = 0x8f974c5797b9622cf21d7aacb0a927aa105d8591
    mem[1824] = 0xbd2b4d7ff4ee15a2bb9a0a1dde1aeaa9526f6dca
    mem[1856] = 0xc630721763123f8050c63724d0bb9b33d7ccf3cb
    mem[1888] = 0x33d0e36ce1e4c735ee9f70fdbfb688903125498f
    mem[1920] = 0x77fdf8763e95385e25fb9e0e8a9c55579a6c15d7
    mem[1952] = 0x5ab460354e5a093ddd8f5633f397caaec0a9c45d
    mem[1984] = 0xf58481bc22a00b3f64e8ee16d23eebf00844dbd5
    mem[2016] = 0xa89f0965c25fa24221e35db87f88943f334bd144
    mem[2048] = 0x5a04ce95dc87e798414c5974125027116502111d
    mem[2080] = 0x55a859751d69c703debecd55690294ea9e857a26
    mem[2112] = 0xa007edbd202c4cffb2fd206e519695df7b26adb1
    mem[2144] = 0x97da8822e9e638de4225c8af083bf71fe9cc9395
    mem[2176] = 0x3bc1ccae013424aac453be955232e7db5007276b
    mem[2208] = 0xb20fc5ed1b9d1cb4c7566c984e7d6525de715979
    mem[2240] = 0xb2da40e78e6715fcfb32fcee85edc199131249cc
    mem[2272] = 0xee2b2681688b82bbcfb10769aef1b5441eb27a9b
    mem[2304] = 0xfa8e89f57d057b379d26af3a7121fe9326f3fa28
    mem[2336] = 0x42295e1ed34418fa56215e219c0694d986be0b78
    mem[2368] = 0x926763dfe28b519f53da5b1bdea654c4a957d013
    mem[2400] = 0x7c55639dafc19b4066892d12f6ce05fa553fef
    mem[2432] = 0x5f0fbef94f7068fee2173e34c4eae06347352ce5
    mem[2464] = 0x2a340cf0b44c77ce471e4e71c497cd2eab655312
    mem[2496] = 0x66ae2bd501b5f8ad4a2fa08674b484dd5689fa01
    sub_3c8ce466.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_3c8ce466[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_3c8ce466.length > idx:
        sub_3c8ce466[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_3c8ce466.length:
        if not sub_18969140.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3c8ce466.length, sub_18969140.length
        else:
            mem[2660] = address(sub_18969140.field_0)
            idx = 2660
            s = 0
            while (32 * sub_18969140.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_18969140[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3c8ce466.length, sub_18969140.length, mem[2660 len 32 * sub_18969140.length]
    else:
        mem[2628] = address(sub_3c8ce466.field_0)
        idx = 2628
        s = 0
        while (32 * sub_3c8ce466.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_3c8ce466[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_3c8ce466.length) + 2628] = sub_18969140.length
        if not sub_18969140.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3c8ce466.length, data=mem[2628 len (32 * sub_3c8ce466.length) + 32]), (32 * sub_3c8ce466.length) + 96
        else:
            mem[(32 * sub_3c8ce466.length) + 2660] = address(sub_18969140.field_0)
            idx = (32 * sub_3c8ce466.length) + 2660
            s = 0
            while (32 * sub_3c8ce466.length) + (32 * sub_18969140.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_18969140[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3c8ce466.length, data=mem[2628 len (32 * sub_3c8ce466.length) + (32 * sub_18969140.length) + 32]), (32 * sub_3c8ce466.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
