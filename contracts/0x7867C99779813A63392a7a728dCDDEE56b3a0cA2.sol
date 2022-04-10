contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage11' / 256
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
    return code.data[494 len 6501]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_c7d503c2;
array of struct sub_75c5eb24;
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

function sub_75c5eb24(?) {
    require arg1 < sub_75c5eb24.length
    return sub_75c5eb24[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c7d503c2(?) {
    require arg1 < sub_c7d503c2.length
    return sub_c7d503c2[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xeb7f92caeb9e855ded5051210e9b5a97a20d1071
    mem[128] = 0xb7f62b232256e0165ab7ac3472f1f8b773f01514
    mem[160] = 0xa6c09ca2f6fcf35fa95aa293f0d5a7b2e0bd269a
    mem[192] = 0x1c63b59f1752b6cc4c1ee298f572329f9f8ac44f
    mem[224] = 0x525ef2f3fc6544167f28471d829b28aeada0fb47
    mem[256] = 0xe76959889f2086e1ad835f2e8c2bf8a12176beaa
    mem[288] = 0x3805a60b5f2be4a9dd80d9240064df5b8314654b
    mem[320] = 0xce1c9721c49c15b3db90c12148b50296019fe8a6
    mem[352] = 0x90b2ed9fdd0889f4a211b678cf84b36ee08db9a2
    mem[384] = 0xa5ce0321e46b570d39097ad410aee1b58c4014a8
    mem[416] = 0xf5da3ecd8c4e8fbc74ae8469b7e5dd5542b6b213
    mem[448] = 0x981721df3f5947fed1447e92d3dd68def44f41af
    mem[480] = 0x716dfab243c1fe03667fd39d872ed577c0fa3e68
    mem[512] = 0x7f7c1d8509b440c5424688fa9b0d74f6fd384df9
    mem[544] = 0xed1167a0350c7997dd3641741033ef9c7d49b270
    mem[576] = 0x5d36fec2b1fb74e4fa65d9b07d7326e63c33c5af
    mem[608] = 0x907904fa71c5bce711527a3f73df05dee25ba76f
    mem[640] = 0x3748d943d1931690eabafc9a31a8b5da01fcae53
    mem[672] = 0x95bb3052921e771f0d1623982e0b7783adadeb
    mem[704] = 0xf3cefb9723f404fe6f57e223bbf26b3a88c7b1
    mem[736] = 0xcb60908b4b7522212c7bdcc896f0dbc156e34e5d
    mem[768] = 0xcfa23493603f88b518bfe0e071a849c1e88067db
    mem[800] = 0x1ec66e27aba99f8a3a4a0a391b2063d465554d96
    mem[832] = 0xdc5572dade6f9a4312ce6bf0750a86de589a6d27
    mem[864] = 0x44e18a3d8f65023aa490e5e26675117d65474
    mem[896] = 0x624f876f63bfed8659100fe3ec6e69e7724e80d3
    mem[928] = 0x9e1bdaba3bf70de6d53b031bf7b12a39cd79b790
    mem[960] = 0xe45b33bc75b06670dc3801172443b3195c4faf33
    mem[992] = 0x4fcd7892edb574dc8d3edad7f546ebc9496ff2c0
    mem[1024] = 0x92c2505b3515a9946cb8d87bd9b0fd7d3d97d30c
    mem[1056] = 0xac812a17297985233bccc0b18b8982b5d56ebab7
    mem[1088] = 0xdd1341e1bbbb608bd798d05119f44f1e58ace828
    mem[1120] = 0x1e51a3733d20ebf20035fc8ebf0d7eb011fa177f
    mem[1152] = 0x883d4276002058e68b925bbcdaaaed8887738358
    mem[1184] = 0xbcfc8156a569038dbac6480ff71ceef7d556036c
    mem[1216] = 0x5d8e7f29caa555a91fca84044f6ca1590b969cc
    mem[1248] = 0xabaa42aa4f952b6cd4c6aca2e0a6910a36e44927
    mem[1280] = 0x6480a4a0a651ae14f62a98fc77ca537d92ad96f2
    sub_75c5eb24.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_75c5eb24[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_75c5eb24.length > idx:
        sub_75c5eb24[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xf5d162ae2e34be14b474e0d29cd1079fa13c9893
    mem[1344] = 0xbd185a16be20ba3c7495f732d5af30d8f1b6e74b
    mem[1376] = 0xa94f0091dd8df95b5d19306dd746485cc59fe100
    mem[1408] = 0xe86a0d71041a5bbf969bd6be51cd1d6110189521
    mem[1440] = 0x2e8917cb1d3e32516eb0172ab48f71769a2deec6
    mem[1472] = 0xa139c01d6037bf58278811d7b0a4610c31c42e7
    mem[1504] = 0x46b0841a076fc29485908ba01218851a865ace22
    mem[1536] = 0x83c811fbff49de385f4301e8c7d8e2cb390ca31a
    mem[1568] = 0xa9bd824fcceb7bf47e8459d2c1a5a4c7df08d86a
    mem[1600] = 0xee61f0c1a8f08430d5c06d202a4296b4e73e86e
    mem[1632] = 0x657e49a4d6e2e57510af6ca2e917d05d500e149
    mem[1664] = 0xf1844c088c62918922293bed6da7b9ff4a3213aa
    mem[1696] = 0x80ad7165f29f97896a0b5758193879de34fd9712
    mem[1728] = 0x159211ba90328f9310af144256d9ee4deabd6cd2
    mem[1760] = 0xe74b78951ea800e7dfc6fef4f04ba42b4df298aa
    mem[1792] = 0xeaf3eb99ec6cb2c4e9d21a74e94136d0e9d6186e
    mem[1824] = 0x9ea097c7233588a6f73785ecaacc728b0c4c95b6
    mem[1856] = 0xd53762fd53ce3ef570905041249562124d6f624
    mem[1888] = 0xfe501ea971e9552a0a8c385640d41e4abe0a41
    mem[1920] = 0x338672092f5b23e9e8eff60fe86f474dd30dadfe
    mem[1952] = 0x77e8e4c46dd6cddad0dccdfc9cf602f23ab90ef4
    mem[1984] = 0xb3abb7af6b978b7f840e9cf0aa6f662d87b352b7
    mem[2016] = 0x786953c6495dbef28fd311c12ea4758ae0a5fdc2
    mem[2048] = 0xff7a0aa9485523939af88225d6d0f4fb19bcd867
    mem[2080] = 0x6de6de66d1205d88e7fbfa647073c139656002d3
    mem[2112] = 0xa85847e442b4531131adb22588421142efdae3b8
    mem[2144] = 0x6d7fe27a0f436bdc045405fdbd495db7d89bb8ed
    mem[2176] = 0x1fe685d51574817be66f5c946cccedabd5a5c65a
    mem[2208] = 0xdc63a36ddfd1d83b70aff141b4df591877e72012
    mem[2240] = 0xe6c11787a603fcde213688596873d44528223e72
    mem[2272] = 0xda1420db8e07d0141f9d564e286220ac090dc605
    mem[2304] = 0xc8627a5b7dcea778c622d0278c1dcb45ead3473c
    mem[2336] = 0xdb53a03b2aed5d949f1dd395bcf33778c00f3e65
    mem[2368] = 0x8f7cd373788a8630ae15fe94888250f1aae0ed50
    mem[2400] = 0x102868efbde467ce80dc0601bd466767c379a5f4
    mem[2432] = 0x892797cbc098f5de941ab2a6759ac004f7bbac0
    mem[2464] = 0x6ab9473723924557964486fda399d58446f4fd7b
    mem[2496] = 0x8d240a19818793ad6444622f3aff9f069ccd4a1
    sub_c7d503c2.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_c7d503c2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c7d503c2.length > idx:
        sub_c7d503c2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_c7d503c2.length:
        if not sub_75c5eb24.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c7d503c2.length, sub_75c5eb24.length
        else:
            mem[2660] = address(sub_75c5eb24.field_0)
            idx = 2660
            s = 0
            while (32 * sub_75c5eb24.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_75c5eb24[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c7d503c2.length, sub_75c5eb24.length, mem[2660 len 32 * sub_75c5eb24.length]
    else:
        mem[2628] = address(sub_c7d503c2.field_0)
        idx = 2628
        s = 0
        while (32 * sub_c7d503c2.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_c7d503c2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_c7d503c2.length) + 2628] = sub_75c5eb24.length
        if not sub_75c5eb24.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c7d503c2.length, data=mem[2628 len (32 * sub_c7d503c2.length) + 32]), (32 * sub_c7d503c2.length) + 96
        else:
            mem[(32 * sub_c7d503c2.length) + 2660] = address(sub_75c5eb24.field_0)
            idx = (32 * sub_c7d503c2.length) + 2660
            s = 0
            while (32 * sub_c7d503c2.length) + (32 * sub_75c5eb24.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_75c5eb24[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c7d503c2.length, data=mem[2628 len (32 * sub_c7d503c2.length) + (32 * sub_75c5eb24.length) + 32]), (32 * sub_c7d503c2.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
