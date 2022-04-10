contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage53' / 256
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
    return code.data[494 len 6699]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_67f3701b;
array of struct sub_3eb4d371;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_3eb4d371(?) {
    require arg1 < sub_3eb4d371.length
    return sub_3eb4d371[arg1].field_0
}

function sub_67f3701b(?) {
    require arg1 < sub_67f3701b.length
    return sub_67f3701b[arg1].field_0
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
    mem[96] = 0xc84bfb27e6820ec70e8ef3dc01b7c8c8dc34574
    mem[128] = 0xc8f27b7ae30a08f9b886c322dd95ede92b76e679
    mem[160] = 0xefaa5c2bfc2278f89f6f560fa9bd485c5c6a2f09
    mem[192] = 0x9d9bbdcdd8f122a98b5a4dacb7eb66f83a57c569
    mem[224] = 0x2e3ca2e480fd2b7a489c7eb02d9b062ae4107c31
    mem[256] = 0x5bba10afbf45b868302854ca575714594169b2
    mem[288] = 0x75375320d9f5d3501e3047cdb34adceddeefe7e4
    mem[320] = 0x106fc03fc42bb8aab5e19d9dc84590269e026e07
    mem[352] = 0xa846ae752814cf799c4203ceb43068220a20a7ea
    mem[384] = 0x9409175e8dcbd647a0c3b30c75585e7e7b56ce27
    mem[416] = 0x2cdc54b9cd0bdf11addbe67a1bace29fea6cfc38
    mem[448] = 0x8822f83c549cac1c2a1b7e046c7aad74d0894a58
    mem[480] = 0x1eba72340dedc91feda0a024c8918c8d9265c9cd
    mem[512] = 0xc5535a38d069ac31c4adce501fae0264b790ba24
    mem[544] = 0x361db306da05932109ad3d73bed8d0c4ebad5a3
    mem[576] = 0x7fab982865c81b3dbeff003086897959c997c4
    mem[608] = 0x2dc4f37e8fb9483a3fdfe51fc4c388c4a9f2e467
    mem[640] = 0x817f0fc8760eac5c497697329b50f632c453a4eb
    mem[672] = 0x2415e6c729b0f342aa44d98d56681423514a8487
    mem[704] = 0x9d78916efea51ae53a626a98ccf2251932967ad8
    mem[736] = 0xc6356cb85b31b49fa58c1d0c067824a6dd5b2eba
    mem[768] = 0x53e8d20907558638253a50e9850330a52ec1097c
    mem[800] = 0xbaadaee448cc34b3e270dc75b4ced259ba2c32c3
    mem[832] = 0x804966b8745c4e30ef6afc3230db7a0a75f48342
    mem[864] = 0x3b4a3b7dd3d8c626375e69cd9785bd77b2db5c99
    mem[896] = 0x737563685044bbfde49a19a56358f11a1c86c384
    mem[928] = 0xe8d8cd0b5c995a02f2710a30cf3370da13f7de18
    mem[960] = 0xf4e4819fd6a5c957da4fce3f67f903037ffa3560
    mem[992] = 0x926939fc0c37a684a4efc00b55ab2c49008785db
    mem[1024] = 0x42c4b6684e54fb058a78dd5e4db4f7c3bb8816b
    mem[1056] = 0x23a68b14ef73abd42adbc056130aa079469cf01d
    mem[1088] = 0xfe7888213be3721807c6f3d35430115ebc4adcfd
    mem[1120] = 0xf4beadad4c37f4fc946ab4a9279fc30ec12b21e5
    mem[1152] = 0xbddb9de3610d94e3b6f78042c4ed5cb6589473e7
    mem[1184] = 0xae4770d52197770bb06447d38f4c8312a6410933
    mem[1216] = 0xda6177d6f134aff5e9702fd5330c128358c5599d
    mem[1248] = 0xa80d162e3d6ec4efdc6fda789b9203698b48c72c
    mem[1280] = 0x43459752d251ba7600d6bf05f453b59a69abe00b
    sub_3eb4d371.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_3eb4d371[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_3eb4d371.length > idx:
        sub_3eb4d371[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x3229b2aa8a1b07d3812f954db8eaf700ff788842
    mem[1344] = 0xc182255aef584f23bee4d4a2d7735f8af60428b5
    mem[1376] = 0x13a075db0b1cb6e1b34650d1ca011bbaf40a1088
    mem[1408] = 0xbf00f02eab36d1f482a9e3abbf02ce281c5ad2c5
    mem[1440] = 0xab57d37cd91249442e7e27b0b5f69df5699eaea1
    mem[1472] = 0x4af156c833f338e88d48632f2b3f3daa804afa
    mem[1504] = 0x8424f3d62f3b9ebc5866db2f21718d158e687047
    mem[1536] = 0xe968dc273f15f580fa5067bed56f119d638e5a29
    mem[1568] = 0x41d93dbf3e3fc83023521fcec18cfc9b2e78b1d8
    mem[1600] = 0x37c7c7fabcc5684f6997358659951b25cde20eb1
    mem[1632] = 0xe805dfc4b8f91ca1be68c226f95d7838a2c9c801
    mem[1664] = 0x2bcc1bec2c20db0c3684b4ba1675038b555cade8
    mem[1696] = 0x3bf44e5ec3ff423f97be371fb9f77f10227d49ae
    mem[1728] = 0x6981cc91f34a767b0ad84f78f766b05302ef9db
    mem[1760] = 0x7ff6232a01f82b0efc616b534bb81da3e80cad82
    mem[1792] = 0x2d5ec65337d557a1c03da8e9c05fc53f4bff82
    mem[1824] = 0x8bc05decfe9ccabe22d89ef6a37115df48d194fd
    mem[1856] = 0xab4bf37461f081c369175b4bee5ae22ea9f7e980
    mem[1888] = 0x44b6664d95bbe7ce3b1c671bee13e3984ff90ea0
    mem[1920] = 0xfc60173ac92a973b583329d29ffe5d3fbcba990
    mem[1952] = 0xf6a9448610b242d81efaef5b27d26ff3c55615e7
    mem[1984] = 0x36522b7af67b67597132065067894c2c93ef61b0
    mem[2016] = 0x20d9dfbef399dae78b7b69dfbe7b43fa53d532ca
    mem[2048] = 0xabddb4ac3dca02c81ce88c2d5735a4f93ea959f5
    mem[2080] = 0xd1ab460b5809f446c4513da2bf2c178ad6cb32e5
    mem[2112] = 0xdef754b77d47f9a666ecaa9fb8b2442c1bc5a919
    mem[2144] = 0x4e8528e5015f4ad25119164d87dbe2597dae0680
    mem[2176] = 0x522783b6ac8d62eabdd24625412c4d812409df4d
    mem[2208] = 0xfa121bcf517e6399edbc9e94e76bf36b4af6ae05
    mem[2240] = 0x4aaf353fc54fa1124325b05b1c8c7da8ab337f52
    mem[2272] = 0xe5b4a0b5d2ff56b9d1d1a860c04cc65b1906fbaa
    mem[2304] = 0x4ed757671e63cd446c012373ccf7925cc13ac753
    mem[2336] = 0x4bca8975f4da226ca7b313f586a8ca13ee14aefa
    mem[2368] = 0xd1616a189ebe1863a0ed4a1d977d723e855ecca
    mem[2400] = 0x18376067d1965ae81b3281f521aa787eac103eda
    mem[2432] = 0xb6d9a71ff74639bf83642b37b08377a2a31069c
    mem[2464] = 0x8f8e561adc5201ae33a8d7939c2a0241d9c3407f
    mem[2496] = 0xb327d53f90a6cd726743b702b583c590e3514ace
    sub_67f3701b.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_67f3701b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_67f3701b.length > idx:
        sub_67f3701b[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_67f3701b.length:
        if not sub_3eb4d371.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_67f3701b.length, sub_3eb4d371.length
        else:
            mem[2660] = address(sub_3eb4d371.field_0)
            idx = 2660
            s = 0
            while (32 * sub_3eb4d371.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_3eb4d371[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_67f3701b.length, sub_3eb4d371.length, mem[2660 len 32 * sub_3eb4d371.length]
    else:
        mem[2628] = address(sub_67f3701b.field_0)
        idx = 2628
        s = 0
        while (32 * sub_67f3701b.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_67f3701b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_67f3701b.length) + 2628] = sub_3eb4d371.length
        if not sub_3eb4d371.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_67f3701b.length, data=mem[2628 len (32 * sub_67f3701b.length) + 32]), (32 * sub_67f3701b.length) + 96
        else:
            mem[(32 * sub_67f3701b.length) + 2660] = address(sub_3eb4d371.field_0)
            idx = (32 * sub_67f3701b.length) + 2660
            s = 0
            while (32 * sub_67f3701b.length) + (32 * sub_3eb4d371.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_3eb4d371[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_67f3701b.length, data=mem[2628 len (32 * sub_67f3701b.length) + (32 * sub_3eb4d371.length) + 32]), (32 * sub_67f3701b.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
