contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage16' / 256
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
array of struct sub_64cc3ca2;
array of struct sub_49e8f4e2;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_49e8f4e2(?) {
    require arg1 < sub_49e8f4e2.length
    return sub_49e8f4e2[arg1].field_0
}

function sub_64cc3ca2(?) {
    require arg1 < sub_64cc3ca2.length
    return sub_64cc3ca2[arg1].field_0
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
    mem[96] = 0xc81b9faaf014183e620ef0e990062ac63d7c0f92
    mem[128] = 0xd4ca7fdfeadf8d7885007aa8d801afc53ca8ad03
    mem[160] = 0xc2e74d9dee214472211ed20262b96fb466c0d5ff
    mem[192] = 0x49162ddae91070a5dbef6cf82bfa4a0a3caa1495
    mem[224] = 0x194378b1c10777f11747f3b84fce03b10802bf4f
    mem[256] = 0x46c75c7a07c442ad3ce3e1a10c6c51ac8de1d4eb
    mem[288] = 0x9954d9db87604ac6cfe5a0645e71313b65511211
    mem[320] = 0x8136fccb0b12b73ee105cdf23701ee13d3982aed
    mem[352] = 0x8d5b1f7a6b8064f184a02209078ec58fddefc13
    mem[384] = 0x3bdf872fd74849784b6e42a941f7da1c497677
    mem[416] = 0x3468b9e05040531e6058f9c3aa2efa5f93947698
    mem[448] = 0x500927f986e63a08a53cfbd3f32fd5f2c730b38e
    mem[480] = 0x9d8bfaaa9cfb5e8a25c3fabdebcb68b90f0ea512
    mem[512] = 0x3fd15fad8c08dbfd15f453c3cc4f6a15c417502
    mem[544] = 0x891e01c23a795ef8e5cc98420316f6dd73b56228
    mem[576] = 0x648b9797a1581f97528ccadd8f9ea7a22e8a7b26
    mem[608] = 0xa4245b30a63cbc4d7fc4cb8e2fece4c7506384fb
    mem[640] = 0xd937457352573eca9a178fdf343ef1c2446cf15d
    mem[672] = 0xe6d69113d5675471f6204dd82a290c97bf007aee
    mem[704] = 0x28333108af9d0237e73720e6baaac59da2e1474c
    mem[736] = 0x5b3cf803f1bfd427be5e28890f7bb1f76970713d
    mem[768] = 0x775a4d00cdbe83e9858387f872c1d045ca61c8dd
    mem[800] = 0x72f78e451aebe22d3440e550c108cb4be715ef96
    mem[832] = 0x94e068b43cd2dce4a94a9eae39901fba898c62
    mem[864] = 0x7bb80c0cc1082dedd82e5dabd3809e71fb83698b
    mem[896] = 0x4bc8484426b7437e275986ee435a5447eaf9ed2b
    mem[928] = 0x984e11b7703b8016210793a909424da2c1086fe9
    mem[960] = 0xdde1964cddfc9df2ae93bdf1cadc3fe7cca79fc6
    mem[992] = 0x9b9fa8a294dedeef67b1476e52791a55f7d19584
    mem[1024] = 0xa65402a88dd3d2d775e695479c7328b002c905a
    mem[1056] = 0x5fc56bb80f427ce84aad6ab4040c633289669929
    mem[1088] = 0xc5bf31159343218971eefd86a4a9692b13dfeb71
    mem[1120] = 0xf41162985767baeccffe360973b7e81c57cc27
    mem[1152] = 0x126f85cf25680edb03763f898580cd37b68f929e
    mem[1184] = 0x6e0836ef3588799d218df44f401fdc66ac5f819
    mem[1216] = 0xda903a1b440361ea5caa503ec783f6211f0f0975
    mem[1248] = 0x61377598304bfe4f08d90ba2e1dae92d7a35c121
    mem[1280] = 0xf863511b11c12f79159bc1cfea8525de27490144
    sub_49e8f4e2.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_49e8f4e2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_49e8f4e2.length > idx:
        sub_49e8f4e2[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xb1c88df97b2e6378b1e1a8fc2e6844dcf8bd2e38
    mem[1344] = 0x941789c8982f4172d81485b21962af9787a690a4
    mem[1376] = 0xa61223fe1487e0e65478561fa2e7fa6d4f046a1b
    mem[1408] = 0xf184cc867e30c7c1095e25458b62cb223bf913d7
    mem[1440] = 0x1ef98700759ed8eefbbdc2b2d05c88c515da57f4
    mem[1472] = 0x86a4b9bb43d9e3a4a60c802477b9bbc903ed6720
    mem[1504] = 0x2fc4b03e4f95b0fa2e746f7c6ac78d2136a324c6
    mem[1536] = 0x3754da87295d03ccd771568543e18ee553edde05
    mem[1568] = 0x1c8e0374b1a435b9fcee401dd921a88301433c10
    mem[1600] = 0x623677230fae599030e10a58c3ec0eca844ec4
    mem[1632] = 0x512b44868685022d2f7d6a5333e532a823c68a25
    mem[1664] = 0xe3bd1265658a275efaad20ad22fdc661fbeddf32
    mem[1696] = 0xcd467c9c9099e5f88e8cd1dff2b69f69c2d1a0f7
    mem[1728] = 0x3991f06e34b4b9d07edef632efa8ae6be1ec82cb
    mem[1760] = 0x8940c79b62fc20a2389f63d68e57313c4eb51610
    mem[1792] = 0xf7d8dff2a89145d25dc81a41bd4bdd5e589d9d3
    mem[1824] = 0xc9c4ef18ee59e69ebefcd4eea2a73ad0adb62917
    mem[1856] = 0xba4a9d671839147feaa40ad96288c3870b6833b5
    mem[1888] = 0x5232d2dc3485d2b4f72f81192b182e20e4d81351
    mem[1920] = 0x2eb3a94aa4a7c3cbd2c047eba59ba5e79f694d18
    mem[1952] = 0xa233c796a559c3e0ebd253e8d695b8cf1a557a8b
    mem[1984] = 0x6e7e984fa6b7b239aaf8aae3fe798e19af6f3e96
    mem[2016] = 0xd54f3f40764950b1a4ac0858119dd172f12beb1b
    mem[2048] = 0x23f78303b5dfaca84afe609f10408772d7a184
    mem[2080] = 0xbdc6df5307f2988ff1a7a204e2c395930ccebbee
    mem[2112] = 0xf734f3837c09468d5d651a85b07e1a4e2d7b3cbd
    mem[2144] = 0xf6520e4973d017233870017e18ac591316260cab
    mem[2176] = 0xe4f198ef42a4b50d8a7a93a0cdbb085c0990651
    mem[2208] = 0x8a23a97e4f7c3776e7222ad8c541dc6572ad5971
    mem[2240] = 0x6f9cb16ebceb99cf88ac97c3e35698e0e3d48f47
    mem[2272] = 0x88c3b4a0bf540ddf92f20abebfc162c05347d7e8
    mem[2304] = 0x6875acf2c28bfced27ff4071ccbe4827e0cabede
    mem[2336] = 0xe199636b9868ba42ce8714d4d41cafe6748498
    mem[2368] = 0x2a68cf15e8819df353c1708a250af28f7c387373
    mem[2400] = 0xdc42b007461d5c75d09b4650982444cac9f9a4c0
    mem[2432] = 0xf14acc627349b0fe8737f3d6f0e874f4604c2a7c
    mem[2464] = 0xddb5972aeaacbd4cb5a8e543808592cf01ae003
    mem[2496] = 0x748e4bdf7759a61d3b8b8a314fa4de867f4ce873
    sub_64cc3ca2.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_64cc3ca2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_64cc3ca2.length > idx:
        sub_64cc3ca2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_64cc3ca2.length:
        if not sub_49e8f4e2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_64cc3ca2.length, sub_49e8f4e2.length
        else:
            mem[2660] = address(sub_49e8f4e2.field_0)
            idx = 2660
            s = 0
            while (32 * sub_49e8f4e2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_49e8f4e2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_64cc3ca2.length, sub_49e8f4e2.length, mem[2660 len 32 * sub_49e8f4e2.length]
    else:
        mem[2628] = address(sub_64cc3ca2.field_0)
        idx = 2628
        s = 0
        while (32 * sub_64cc3ca2.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_64cc3ca2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_64cc3ca2.length) + 2628] = sub_49e8f4e2.length
        if not sub_49e8f4e2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_64cc3ca2.length, data=mem[2628 len (32 * sub_64cc3ca2.length) + 32]), (32 * sub_64cc3ca2.length) + 96
        else:
            mem[(32 * sub_64cc3ca2.length) + 2660] = address(sub_49e8f4e2.field_0)
            idx = (32 * sub_64cc3ca2.length) + 2660
            s = 0
            while (32 * sub_64cc3ca2.length) + (32 * sub_49e8f4e2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_49e8f4e2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_64cc3ca2.length, data=mem[2628 len (32 * sub_64cc3ca2.length) + (32 * sub_49e8f4e2.length) + 32]), (32 * sub_64cc3ca2.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
