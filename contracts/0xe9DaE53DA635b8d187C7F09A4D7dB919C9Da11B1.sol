contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage87' / 256
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
    return code.data[494 len 6765]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f67a5aeb;
array of struct sub_54be5cbd;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_54be5cbd(?) {
    require arg1 < sub_54be5cbd.length
    return sub_54be5cbd[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_f67a5aeb(?) {
    require arg1 < sub_f67a5aeb.length
    return sub_f67a5aeb[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x4054c63d877ac42f2398eb0a9f7bcbac6a669801
    mem[128] = 0xcd65b199d10390dfca403cfe617c2ce196f3d44
    mem[160] = 0xf1b68ed5d53d119c72b5223763adbee76eea35f6
    mem[192] = 0x308550fd6c82067df2788fa781c969e600300da3
    mem[224] = 0x8d104a77439298fcef7405295e6f99b450f0f2c3
    mem[256] = 0x296ae1bffb38f7ca01eb4466dd271fe131a5a34a
    mem[288] = 0xf173ed1ebcc4d1f8d92b734bbfea34df4581c192
    mem[320] = 0xad721d87989f7c32939bdcd401a5bed9968dc727
    mem[352] = 0xb7fea7efa816049db39a9969198e7194831d81a6
    mem[384] = 0x2e53eeb833eb10ebe719b2ae0234f66900acc71d
    mem[416] = 0xb1ec68fa499a19acb55f537d8770b0f626dda4c1
    mem[448] = 0xf50df50d64881b75184a37cf85119bddb1891
    mem[480] = 0xb4220f2836827bb2e10c4eb1ee19db1cbd0f5fa3
    mem[512] = 0xda02801081210916e9dfef05cb78798ce89b60a9
    mem[544] = 0x795dbb73ebb48e87841545b6e35bee861e76af33
    mem[576] = 0xc3252012d1560152286c2cac6e19be470312eb0e
    mem[608] = 0x891b658aa71edcf561ff9b7be2f013e2d8ec3838
    mem[640] = 0xaa3fe8622cf5509074874888f86639c4854904c3
    mem[672] = 0x6a10d2bf3619effde477935fa9f53cca66196f2f
    mem[704] = 0xe6b6422d94d3ac49dd8591427da6aef22e120c3e
    mem[736] = 0xc4a346c2e1d5aba99be0fcfd2af7c17a451d8755
    mem[768] = 0x8271932c818ceab6ed2cc93d38f2ca82ca6a1a8a
    mem[800] = 0xd08a8aa794316657950a9480d86beb06b234b71a
    mem[832] = 0x6ceec68c61d2c5210773d7e5537a23fc97127d22
    mem[864] = 0xd6fd16eeace425355c51dc43361989f735c62a91
    mem[896] = 0xd06fe2b3d24f714f70eedbfaf9b60c7c432979
    mem[928] = 0x9dc85224882c88a5e8c8b50ea8d34cb012208529
    mem[960] = 0x4fc6040f009be0d011580b1129758a30b5644c11
    mem[992] = 0xabf6448149876f39790bdbf5ba6cf0ce8a576761
    mem[1024] = 0x8bec47490707fbcef6a159336a0f9fb4fb2e3f98
    mem[1056] = 0x9af99185201cb900f32c8fa01f19a627a41223c4
    mem[1088] = 0x6b7e7d46a5dc49a48cc38339e511ef38d4b53b26
    mem[1120] = 0xc0d4aabe092809a9647eccdfde39259b8f4e82e8
    mem[1152] = 0xae26e5d8b536c734d10b1862e5daead5ae836e03
    mem[1184] = 0x54eb6459263b7f6e6d152a288792dbcd574e648c
    mem[1216] = 0x33619f7fe42f3560fdf275b2267082c6d34c6dc4
    mem[1248] = 0x6aa99323c2bffee8d0a35b79d20a020d98e727e6
    mem[1280] = 0xb2ddf1effa747527ba22bfe6fc4c660b8f29c611
    sub_54be5cbd.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_54be5cbd[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_54be5cbd.length > idx:
        sub_54be5cbd[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x796edee450977941a32983455c4053ef4d7a947c
    mem[1344] = 0x15376a775baf6ee82a06f820d94fa51bec40b5ff
    mem[1376] = 0x48974685053d7d27a2e17ee510df56d4db873d7c
    mem[1408] = 0x9c3567b6fa7fc99da8e2abbf9aa31fb1ffc67c96
    mem[1440] = 0x21f546a0cd77f6de62912b28bf79beacac051b96
    mem[1472] = 0x42d1f3d1e77fc33f2efe1c9f13849407c6a5d8e1
    mem[1504] = 0x149ee60737dd9e8312fd0f2d6a6d7ec91a9e8987
    mem[1536] = 0x4595a28df03e6a29b84f33f47faefd555dada7f3
    mem[1568] = 0x5503c132f8d2fa9867ed52a393a6a7559c57622b
    mem[1600] = 0xcbe99d022c3247553ef7516524b30e12eaf6e880
    mem[1632] = 0x24e1ce6d069ed1c0bd246e405dd2adf1563cca78
    mem[1664] = 0xd0bbd51104698efef9477e0099caa7b25b808
    mem[1696] = 0x151031c21231800571dcd14e8f663d033f7a3bd4
    mem[1728] = 0xd228f81a648173d1d667ce3bc0dd3932e116f33f
    mem[1760] = 0x5be67e3e460f934e6905f7d2582b7024280b6265
    mem[1792] = 0xade3df1544b326ca5d05f8e52991c2cd442963fc
    mem[1824] = 0x374886377438a9d59d1d021e7afaeed4ef865613
    mem[1856] = 0xc9180ada19c48f60da7f83829017d6bbd4641555
    mem[1888] = 0xd1d3f56091b7d9d54d1d6079c74c6e35457ae68e
    mem[1920] = 0xb354f66671acc031ed16e54291121f418f056a43
    mem[1952] = 0x171ad3823cb1f0fc65d74e3cd8054769559889a9
    mem[1984] = 0xe344e7257daa2a31c20c5a88b24ed18e44f4a75d
    mem[2016] = 0xf1fad5ecb5154c44123321dd723a93f727b148e
    mem[2048] = 0x35839b96f1b3a2d906b515e6464f570dbcbbdf64
    mem[2080] = 0x90dba898efd4a5ce537b6bef066ca179df686d7a
    mem[2112] = 0x3883dc959b3c331e68586704e053f516fd302a
    mem[2144] = 0x4fd7f86c9fe1fc02a81030b44220669d52a502f4
    mem[2176] = 0x5bc813dc420d00f7aced2873c4a72d9aac5b39d6
    mem[2208] = 0x8a466228eb57c19f5c80de363426995bde762192
    mem[2240] = 0x6ac4114f8cb99313658516202fa25d1226af365
    mem[2272] = 0xd0e09d7bdd9a1316580718ad57bf7b09596ecbec
    mem[2304] = 0x2a02904c2d7510a28d184387aab187478182a60b
    mem[2336] = 0xff81d3503e5a230c9604ada4f8a9b19cc7698c15
    mem[2368] = 0xb9a7b6098f1f8adaa10dc5b19ce9e2608bbd51cb
    mem[2400] = 0xad2e93a798f17c2c7efc1841f78b2477aff4994a
    mem[2432] = 0x6e808c9447ea60385dbb300b0f0360612165ad9b
    mem[2464] = 0x7e6a448a644dc507b234e044d5a3915eb36d1900
    mem[2496] = 0xfa827ed44917a272473240489dd9c29cc8ed76fe
    sub_f67a5aeb.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f67a5aeb[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f67a5aeb.length > idx:
        sub_f67a5aeb[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f67a5aeb.length:
        if not sub_54be5cbd.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f67a5aeb.length, sub_54be5cbd.length
        else:
            mem[2660] = address(sub_54be5cbd.field_0)
            idx = 2660
            s = 0
            while (32 * sub_54be5cbd.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_54be5cbd[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f67a5aeb.length, sub_54be5cbd.length, mem[2660 len 32 * sub_54be5cbd.length]
    else:
        mem[2628] = address(sub_f67a5aeb.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f67a5aeb.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f67a5aeb[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f67a5aeb.length) + 2628] = sub_54be5cbd.length
        if not sub_54be5cbd.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f67a5aeb.length, data=mem[2628 len (32 * sub_f67a5aeb.length) + 32]), (32 * sub_f67a5aeb.length) + 96
        else:
            mem[(32 * sub_f67a5aeb.length) + 2660] = address(sub_54be5cbd.field_0)
            idx = (32 * sub_f67a5aeb.length) + 2660
            s = 0
            while (32 * sub_f67a5aeb.length) + (32 * sub_54be5cbd.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_54be5cbd[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f67a5aeb.length, data=mem[2628 len (32 * sub_f67a5aeb.length) + (32 * sub_54be5cbd.length) + 32]), (32 * sub_f67a5aeb.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
