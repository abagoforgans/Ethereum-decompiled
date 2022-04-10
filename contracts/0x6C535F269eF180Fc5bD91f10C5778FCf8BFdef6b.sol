contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage70' / 256
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
    return code.data[494 len 6895]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_6782cdc4;
array of struct sub_89bebf07;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_6782cdc4(?) {
    require arg1 < sub_6782cdc4.length
    return sub_6782cdc4[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_89bebf07(?) {
    require arg1 < sub_89bebf07.length
    return sub_89bebf07[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x8368405e7090c2c21472f7c3f4b3bac20a2eac66
    mem[128] = 0x82d20770209be50dbed0b58c21f5caad2f3dbb6
    mem[160] = 0x73b7e5155f276111b53c3f045f5e23527fe4286d
    mem[192] = 0x8a0cf25360637c4fec2965bc3fc8e657b3f66f88
    mem[224] = 0x56cd1407ad661a45a74f3411694e9f84cdd12f35
    mem[256] = 0x9805cae2a4aeba47b766b2e20b459bc26c74471a
    mem[288] = 0xc4453f135bdd715f8a92267fc2d643038229d167
    mem[320] = 0x521e79d899d9072a958b3094b494c759c8045b0f
    mem[352] = 0x47a30acb93c0f1be60f612e8245f722eba39774
    mem[384] = 0x305f586d8e970d89009689cb5f434dbf6b9ec862
    mem[416] = 0xad6dac4c631a8f406dae99cb64311eb9cf701f61
    mem[448] = 0x372eb3a2151e0464a07c6964c5da890bbe34e8f9
    mem[480] = 0x57a1f9debc996409c2320300090ea277b5645619
    mem[512] = 0x1e47c8cfc6207f796e10b3389bfe1b29c48d1cf5
    mem[544] = 0x60883f81e101c74c43851b9274b57964a81b6256
    mem[576] = 0xa41c4085c46f919651d41356c98f0ec68cf75f49
    mem[608] = 0xed779626a273592dc6c278ad6a1158f08b24ca02
    mem[640] = 0x42000593ba60f47cd52c2a3a5c0751b99267cb87
    mem[672] = 0x96bbe027ead970cb9013cf35a9f75a9cbefb3837
    mem[704] = 0x710d0af8f343b73a9f281a1832a8c3c165434107
    mem[736] = 0x281de2f4c8716843ddb1e3d5b1f541bcf48ba9ac
    mem[768] = 0x65fbcd31b5cbd347e3a736818f292cd4c2d21e46
    mem[800] = 0xa4b55df8573e1e13481358df821186c2256c3755
    mem[832] = 0x24afdba76887fe1974fd4a3da35aa76671b63dd2
    mem[864] = 0x1a8a6acc5b8795084690e3c382bf32d55a1f91
    mem[896] = 0x8ff85257bf401810759fd6500a70d644840b3c99
    mem[928] = 0xea9830ea6286c9920f3752eb12d5d9fb159520
    mem[960] = 0x40864a6f0f3310d5d3254edd62b6d211082f38a1
    mem[992] = 0xb3ba2c81723880619ab3597104215b6891c8552
    mem[1024] = 0xc3c700903bbb19894ca22357d19a5ccad1373466
    mem[1056] = 0x3811cb56999793065d484be9551dec19c7c23
    mem[1088] = 0x4e1a016b2b41a4163c1c30c2955f283c2a5db046
    mem[1120] = 0x258b5dd2837515fa299cee4e936ab4c50ec35e6c
    mem[1152] = 0xd05a79d15c84c15bdea591f3af4d51990bb02d39
    mem[1184] = 0x609512f039d726046ec783656fade8dd207b06ba
    mem[1216] = 0x3a803f68de3e074a7a437b418881ab8f5558a563
    mem[1248] = 0xadce56f05633c0028973a7dd2515dbd1d79aacf5
    mem[1280] = 0x70cbe4e444ad50f726348c055f00817f276e26a3
    sub_89bebf07.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_89bebf07[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_89bebf07.length > idx:
        sub_89bebf07[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x749786092ee57f379e927e4697f2490ff257e28d
    mem[1344] = 0xe38ac997bee4a4568478fcd4a68e4e3d61294fa
    mem[1376] = 0xa0675e64f48f601852818b496e20a488967c709d
    mem[1408] = 0x5be407f50d1123b0797996a1b73872a24b74eeb2
    mem[1440] = 0xc2bd29ca4baffd02bbd26ce579716273fca918e3
    mem[1472] = 0x99b25b9f4433ebab763e3a9f0a7d989616f6e5f2
    mem[1504] = 0x95be0b7c6caf3e5e7e89d038ce6c864b2a384eb3
    mem[1536] = 0x368374d25f3d0d0fa7ff2c5475cbd1247cd0b91e
    mem[1568] = 0x83889d471fa8f8c476316f85a75eb55ad7ac4a8a
    mem[1600] = 0x223abf8cad62b51b19dbd3de360aacf566ddd663
    mem[1632] = 0xd465b39e65c042661bb6936e304f9cecad75628d
    mem[1664] = 0x505af10e0aaa0006c70669b10481dc15867b62a9
    mem[1696] = 0x19e6ae9913bc6f4c389171ffacf64ee1c047613e
    mem[1728] = 0x9f8cf62b6d15490df247ecfc51e4c8ed123b4db3
    mem[1760] = 0x237810700b7992a75437412b658f1c0f5df1fb90
    mem[1792] = 0xc8c3a4451089ccf19db427c6dd5ed045b30e2a87
    mem[1824] = 0xa23074854cb04769d872b843f389851f687c727
    mem[1856] = 0x72b6127c6573090a287fc869def2767e071d237c
    mem[1888] = 0xed6ba3ad6bcc9da1f4e26c21ff29d3efe3b7149d
    mem[1920] = 0xfdcc52ba7bdeae5e2b8d786da1b30929713f72a
    mem[1952] = 0xb9e3b8fd13bde0057c8441be2f9dd9f9f0c6fe6a
    mem[1984] = 0xf35a31298f0320819201ee00e2472448ce3cca38
    mem[2016] = 0xae203ce9d08d45b96886fa03b05b26a53d756c0d
    mem[2048] = 0xbb3b1fef0acee8f01db6567e49193b419fc27c51
    mem[2080] = 0xf6ed4aeae50c532050949b1aad2056267881d6
    mem[2112] = 0xb2ac5119a14c489a4b57de409dd69e302ff80919
    mem[2144] = 0xfba7d01f235457f4eee55c75b80b3dce2d8539
    mem[2176] = 0x237758e2c2d8f9a112906b4e2371d169c0a7350e
    mem[2208] = 0x223fa886d8c90d1fadedc0605b92de98bd084f9e
    mem[2240] = 0x459795cddf621adffa4f14d592399c4c0be0688c
    mem[2272] = 0x38127e7154b45ecdd1bd7e4993be5408cfeae9
    mem[2304] = 0x9ee68d8cc8feca56b0a555c17fc83bb9f0d71bf2
    mem[2336] = 0xb92fa109301fe7dbce62162c758188b1298a2992
    mem[2368] = 0x59cbb6924356f9a14bcde2349951cc0cbdfcad8c
    mem[2400] = 0x84b0b192157b2c6544766a18eced70aedbb9dc28
    mem[2432] = 0xfd504af072d84cb176b75e43190fab8c1c94d87b
    mem[2464] = 0x71e2dd7ed3ed3d808f7d2363f33a643df2907186
    mem[2496] = 0x2f07527b8ecee391ae509776a9b0467197d7ccee
    sub_6782cdc4.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_6782cdc4[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_6782cdc4.length > idx:
        sub_6782cdc4[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_6782cdc4.length:
        if not sub_89bebf07.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_6782cdc4.length, sub_89bebf07.length
        else:
            mem[2660] = address(sub_89bebf07.field_0)
            idx = 2660
            s = 0
            while (32 * sub_89bebf07.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_89bebf07[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_6782cdc4.length, sub_89bebf07.length, mem[2660 len 32 * sub_89bebf07.length]
    else:
        mem[2628] = address(sub_6782cdc4.field_0)
        idx = 2628
        s = 0
        while (32 * sub_6782cdc4.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_6782cdc4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_6782cdc4.length) + 2628] = sub_89bebf07.length
        if not sub_89bebf07.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_6782cdc4.length, data=mem[2628 len (32 * sub_6782cdc4.length) + 32]), (32 * sub_6782cdc4.length) + 96
        else:
            mem[(32 * sub_6782cdc4.length) + 2660] = address(sub_89bebf07.field_0)
            idx = (32 * sub_6782cdc4.length) + 2660
            s = 0
            while (32 * sub_6782cdc4.length) + (32 * sub_89bebf07.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_89bebf07[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_6782cdc4.length, data=mem[2628 len (32 * sub_6782cdc4.length) + (32 * sub_89bebf07.length) + 32]), (32 * sub_6782cdc4.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
