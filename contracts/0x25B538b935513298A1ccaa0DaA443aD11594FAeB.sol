contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage46' / 256
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
    return code.data[494 len 6899]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_a8369d6a;
array of struct sub_7ebd998a;
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

function sub_7ebd998a(?) {
    require arg1 < sub_7ebd998a.length
    return sub_7ebd998a[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a8369d6a(?) {
    require arg1 < sub_a8369d6a.length
    return sub_a8369d6a[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xa5a70580715f30ba2d689fd932d2c84f01da6d54
    mem[128] = 0x75e8c1b78b160809975d6a9e830759eeba4c4551
    mem[160] = 0xa00ecdb53a8d0f1b593e3ac752b071db263e5220
    mem[192] = 0x6f9d0d2edc038455c16b9215f826ca27da338abb
    mem[224] = 0x9e591a124ded0e330633d31932e5631fe83fb023
    mem[256] = 0xdd843efcb116f320ef9a7c88f3d26ebf3f0897de
    mem[288] = 0x83c16219130db64cdfc59a0fad47f8938e7797f6
    mem[320] = 0x6d1b9f02105091770f4d7cdd92c523d07d3748be
    mem[352] = 0x19781e364568b7e4d68dc163887506821e15c106
    mem[384] = 0xd5441627c0fc314bcf2c157cd177cb0247852c83
    mem[416] = 0xb4a1fcfa1af847004f7dd947ed50cc28b783fa30
    mem[448] = 0x64b9f2479ab223745697f7a436a5c9987da71e2a
    mem[480] = 0x31c914ec4cebc3965336249a3024106e488270fb
    mem[512] = 0x42fc5fc197a009193cdd159ff0abd47e558aeb5a
    mem[544] = 0x81362a8d052eb9d4bce38b388258b18ab7fd9fc9
    mem[576] = 0x6cb4a5ff8f6a98d6b246b1defa6dafdf33ff34bb
    mem[608] = 0x809bda7e36da0289d910ee2635d786a40c7c0eca
    mem[640] = 0x3ba442f99e37792c42e8bbb26b16fe214b6a43e4
    mem[672] = 0xd326c9e8be7fb7ce447bf62e216bd13bbe9950e
    mem[704] = 0xffce972faa25f5802349f78bb4d983fb0e10eeb6
    mem[736] = 0xe283fc1cc3e4d13184bb0324c2d9631240ef3a99
    mem[768] = 0x7112c1e054da9d3f54022166a9093f95a0b32ff9
    mem[800] = 0xf0df73a8a3be4c6606ea1b40efcef2d14d38bf55
    mem[832] = 0x5c9876800445c8287705e8249ace0b153bca1367
    mem[864] = 0xeef05adc09db8ca27b6c9dda9de3e3443c23f204
    mem[896] = 0xd76632273bc12b7b611a51fc405301a13e118455
    mem[928] = 0x76a2ef8af71686af73a57368bae5a927764763
    mem[960] = 0x137102c9a2ffabfa8948c6d3a640f3d11c373f6e
    mem[992] = 0x8ef720ca2596bad5333fedf818f1bc148d9b8c6
    mem[1024] = 0x15072331f02531ab190becadd55984b41fe22e76
    mem[1056] = 0xe70991931135543d697bceade6ac45c0326c1454
    mem[1088] = 0xce9e89a218aeb19bcaa874c63b1be455c2fd2ef1
    mem[1120] = 0xec53bcec7994af10a1136e62a3c4194ada7a36c8
    mem[1152] = 0x7916e5dbc130bac77c53424c192ccf71f68d8ef3
    mem[1184] = 0xc1277ce65327818f296ade113c19a76cb85b5a93
    mem[1216] = 0x6ac5c3d7aeeb041e80cbefdf215b64ea1f2f12c3
    mem[1248] = 0x192cd29045268aeed7a1dd15c7f4268dfb4770bc
    mem[1280] = 0x762f30a3c89ae20b397c957a16a4188cb9b77d83
    sub_7ebd998a.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_7ebd998a[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7ebd998a.length > idx:
        sub_7ebd998a[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xf355a51a034d5c00aa3be1daec201e008cd84e8d
    mem[1344] = 0xcc11b1ca054de0b91d84c794e259da8fbf343eb9
    mem[1376] = 0xad4b4fe4d3e7d2eac0371563587dd4cdffae7878
    mem[1408] = 0xda619ff35b17ff87ee81063c078f3830c0fa4783
    mem[1440] = 0x2d73ef1b34277dfae5c5b462638a928c3697fd38
    mem[1472] = 0x9b8588d98df47c7846b99ea5b8c1eac3116298d2
    mem[1504] = 0xeeb8f7d982c335b54331ceab382d6645fa27a65c
    mem[1536] = 0xa7ab35e2fe41b2b4310a5f3382f6532089fa5a4d
    mem[1568] = 0xc104adaa50d55240cd7268e26897cfe36e422218
    mem[1600] = 0x98171e085c87c1aaf1f5399b3fdf6e9dada29c2f
    mem[1632] = 0x5d1c7da7745acfd9dd36add8678c6e675590ac49
    mem[1664] = 0xbff96d758de072c9a2e5fb05d18a1b3ae56a9dc7
    mem[1696] = 0xeec79b8e09bcc07adf007d18b1b5eb86fa47f0b4
    mem[1728] = 0xcda3ea281304ecbd5b261473faa346c340213251
    mem[1760] = 0x601982b49133e5223ed2653cfc384e9c9315b998
    mem[1792] = 0xd3bc8c6c4b1171692cf5dd24d33aa46615cab16f
    mem[1824] = 0x6e0f569a9d04085feb788d9abcd1553b8806cd4b
    mem[1856] = 0xd7a407c93a9974a33331f2ac699f2140df90c823
    mem[1888] = 0x3982d1d4179c29fad17479c171359d45314d23a1
    mem[1920] = 0x662d3fc2c2e3c4e1a7d54f4abd3570be04a49101
    mem[1952] = 0xb03eca0861836aeb23c34c49062a9145c022639c
    mem[1984] = 0xd7f5c3804fc2411dd0b884f0dfc9e48e2fc2c169
    mem[2016] = 0x7b37a9566a401b7dd6687d244982c3372b6fad44
    mem[2048] = 0xa7306916dc0e7e4dc7995cda3afdc80b3e6d5687
    mem[2080] = 0x5830f35b6901de50b6a75b6e19b21a375c20853a
    mem[2112] = 0x6344ea4855b7e8eeec1f65a8eb66aeb123501d2
    mem[2144] = 0x283474fa6a600dab81269b903d2957c0a7ca40
    mem[2176] = 0xa95fb745dfa33b144fa6ed29ff706908e681a0ee
    mem[2208] = 0x6ee642c325c64d3fd34de2b57b47afd454449270
    mem[2240] = 0x8e291e8efde3c6c6f9c4015b9280b9d7927c80bb
    mem[2272] = 0xab39ba7344fe1f57aa93d5260dc10981c0fbf06
    mem[2304] = 0xd990245014a1a9697afbab7b288c8588200bad30
    mem[2336] = 0x484e761afbe9045e0c760aabe975852e04d3b86a
    mem[2368] = 0xccbbdd8c76f79cbcb096ddb736f74cc29b2b9dd7
    mem[2400] = 0x82141ca7ff883630437df07f6f0e4ed5e343b737
    mem[2432] = 0x90ec66bdc186367142f44dfd3dfe06d37144d79a
    mem[2464] = 0x733c83d03c413154b7b6e1f06028ee95c5d48290
    mem[2496] = 0xfe4be22d7c8ca8d6a702fd175c591c001ae053de
    sub_a8369d6a.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_a8369d6a[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_a8369d6a.length > idx:
        sub_a8369d6a[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_a8369d6a.length:
        if not sub_7ebd998a.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_a8369d6a.length, sub_7ebd998a.length
        else:
            mem[2660] = address(sub_7ebd998a.field_0)
            idx = 2660
            s = 0
            while (32 * sub_7ebd998a.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7ebd998a[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_a8369d6a.length, sub_7ebd998a.length, mem[2660 len 32 * sub_7ebd998a.length]
    else:
        mem[2628] = address(sub_a8369d6a.field_0)
        idx = 2628
        s = 0
        while (32 * sub_a8369d6a.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_a8369d6a[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_a8369d6a.length) + 2628] = sub_7ebd998a.length
        if not sub_7ebd998a.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_a8369d6a.length, data=mem[2628 len (32 * sub_a8369d6a.length) + 32]), (32 * sub_a8369d6a.length) + 96
        else:
            mem[(32 * sub_a8369d6a.length) + 2660] = address(sub_7ebd998a.field_0)
            idx = (32 * sub_a8369d6a.length) + 2660
            s = 0
            while (32 * sub_a8369d6a.length) + (32 * sub_7ebd998a.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7ebd998a[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_a8369d6a.length, data=mem[2628 len (32 * sub_a8369d6a.length) + (32 * sub_7ebd998a.length) + 32]), (32 * sub_a8369d6a.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
