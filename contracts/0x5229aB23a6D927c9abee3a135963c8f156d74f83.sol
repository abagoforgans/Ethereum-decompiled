contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage83' / 256
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
    return code.data[494 len 6719]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_e0de7921;
array of struct sub_1473b9ab;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_1473b9ab(?) {
    require arg1 < sub_1473b9ab.length
    return sub_1473b9ab[arg1].field_0
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

function sub_e0de7921(?) {
    require arg1 < sub_e0de7921.length
    return sub_e0de7921[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x34497d90f481e39b68c20523a64fd10b333086d3
    mem[128] = 0x4a6541175e5daa4e6eb441d43da7599711446b2e
    mem[160] = 0x437a668fe65e3df3359b936d276fa426336f207f
    mem[192] = 0x6f675fce11d1f5322de4f9601156fe5334e21fc7
    mem[224] = 0xccb990b534fd7b89ab49b1f5adb0a49d3a034877
    mem[256] = 0x73675a8e003ca9ee205294981de2113062b2c2c2
    mem[288] = 0xe4f4379f819e6c92c41db86c64fe228926d5eaab
    mem[320] = 0x66d2cfa8975994a3d15ed1ffe777afd51aa4e7c1
    mem[352] = 0xa69d0dadf3967db22fbb8156c9f990334f89aeba
    mem[384] = 0xe3c31b294862a3f67bd2456542e46f864f08eb42
    mem[416] = 0x758f39af654b458833a1619a1ebaef3b12ca1aec
    mem[448] = 0x4a8e9b9cf329688f5ae1e400ecadf9125dfcd1ad
    mem[480] = 0x2825881bebf8449ec96c2d47b3e6bccadf2bb1
    mem[512] = 0x7182662f41a391732dbaa3ef7f625e8959724bd1
    mem[544] = 0xb64a12972359230e6599dbbd4e5ec779436d356c
    mem[576] = 0x6cb686c1661c6fc5b2fc4c44dfb062f8978debb1
    mem[608] = 0x1269fcbc8cebd2afb354c9d86c9af3f3ac226769
    mem[640] = 0xe70740a0b2584f0480f60e43075d9f86a4ec3013
    mem[672] = 0x562c88bedcb64695309e42572861682eb7c64f9c
    mem[704] = 0x20934c58a410f3ae09bcb8f4ddb6599af95e04cf
    mem[736] = 0x5bf3d7456d698513752a485a79f6a1de5a8354b8
    mem[768] = 0xc5b796af166d51650803dcacb159ff24d492238e
    mem[800] = 0x1d1ad15d2fefbaf28b40bf7f6827e91fedc4f5a3
    mem[832] = 0xa562320bb157a448e677c062c0ad3ed37e6bdc56
    mem[864] = 0xc64ae513474848ecef93c861f36713618d44cb02
    mem[896] = 0x239203ec81368093e07a6c8890af5173ad26a39b
    mem[928] = 0x1bb13404ff2c1cacb211158f06f2dc968eaf2bf3
    mem[960] = 0xcb8f09615eee2dc092595b1f282548ca938fa4
    mem[992] = 0x822ee1e5b95d77a4c2261c1e2814f67360eb6547
    mem[1024] = 0xcc5b8be019c4bccaa937f5f72d53ff74f4519c
    mem[1056] = 0x5b6ded014638c603316d19c61bc22071f956001c
    mem[1088] = 0x65f2f8089e5140700eb9040109107f2d6f36323c
    mem[1120] = 0xe518e456fc06c2f1c03111c5eae3aeb784e0d7ad
    mem[1152] = 0xc4ecebc067c5759bc39c46f396b14ea9691614b1
    mem[1184] = 0xc74bc0733b21e764534fdcb760422a3b77043caa
    mem[1216] = 0x340aa5d1f1d3e48e6a4bb1e80a4540ef82bde77c
    mem[1248] = 0x783a998d117d501de370cd2222199b5c443b2703
    mem[1280] = 0x555ce2bf0033607a6552a3ccb759e40af66de945
    sub_1473b9ab.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_1473b9ab[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_1473b9ab.length > idx:
        sub_1473b9ab[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x6ef08b67c0d7b0bd3a1f08138ec4983bb0c07a2c
    mem[1344] = 0x5d30a74177b2258b294153e277aa19bb0eec7e2e
    mem[1376] = 0xc4997a42bb6965391aef468f7975fe2424ac4762
    mem[1408] = 0x752a37514e3901114773e2c174eceb18638d2f11
    mem[1440] = 0x981202fd592ba97a063f3b9f3e2ee67b591cc0c5
    mem[1472] = 0xa6e98d4c16c1bc47cae05b9f9c9d2e3147aebc5d
    mem[1504] = 0x6c25ef3aaed2baee14015a97cf8b2be2366bddcd
    mem[1536] = 0x10fb6dc194b58f534f8497efd230ce0305746b08
    mem[1568] = 0x8ae9f5103171cc0a7f93efc37919bdb18840e8ae
    mem[1600] = 0x402a46dc436a3b49e81602ca44365f39c13c7741
    mem[1632] = 0xca20febe30d7db27d4faf56f146ab5da6c7f36d8
    mem[1664] = 0x778e83f3f3320ec3db4f081a9d618c2f8ee23d2a
    mem[1696] = 0x88daa06531164098df7345bd8473760b57a8ba
    mem[1728] = 0x43808d5a5cc952c530ff9d0499fa0bfd8ff553bf
    mem[1760] = 0xb79fe990bf8d5535a3dd6361dcb88ea772d82e0a
    mem[1792] = 0xae1e299dc8a68e8910280c69929f34ba6290a68a
    mem[1824] = 0x7c5ec8a5ba4d08d504ae4af851532acd5e7afa10
    mem[1856] = 0xd7943d01ed1e99b0e02375b904ed08b96d2720c9
    mem[1888] = 0x58ce1e965c534f286008f6c9c9e21ab3f0b64287
    mem[1920] = 0x62d505ef25cfcfa88e92e9d95bf65cc930e47518
    mem[1952] = 0x2b41cf76a1be78403f0b58652bac47d8611e911c
    mem[1984] = 0xdc3376c76512ed43faa156e7167fcde4af4e8029
    mem[2016] = 0x7a3ac0830dad13f5d864a6c6aa1d6c7fe50af6b1
    mem[2048] = 0x771adb327dddd137692a6378c008d2cec191807a
    mem[2080] = 0xf556fdb3099721de9a2095ff76c024c87bdaea96
    mem[2112] = 0x779077a8e5800735b57137fbcbe0404e7652f4e2
    mem[2144] = 0x262fa9f65c7400ac94def1a1fbed30a36041d77e
    mem[2176] = 0x497827a3900f804f0f5440094b78a6268e90db
    mem[2208] = 0x3469b944e6458dcef1fda4381673aed3fcd57cf9
    mem[2240] = 0x4f67a799bb74388ce97949e1633e8f48c322f9
    mem[2272] = 0xcddbbbf0686fdd381f6ebec512d72c9489ac304c
    mem[2304] = 0xbbaadcb794ce15eb65871aed05011d8331a531aa
    mem[2336] = 0x8b575a5bf47c5d765f296406d845d428354d2f3d
    mem[2368] = 0x93ea38eb47c507aefbd530436f4092d7c96692ba
    mem[2400] = 0x3209eb3a6faaf9374394a10c6faed0da44ecaea6
    mem[2432] = 0xa38d9880c3d7761fea71b187e5756829bc0fba97
    mem[2464] = 0x7f1a54ed2b84de932f9b6a98f2b0163132b49396
    mem[2496] = 0xb03da622235f8bc6ea1dc9d56c0fd034fbbd74be
    sub_e0de7921.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_e0de7921[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e0de7921.length > idx:
        sub_e0de7921[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_e0de7921.length:
        if not sub_1473b9ab.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e0de7921.length, sub_1473b9ab.length
        else:
            mem[2660] = address(sub_1473b9ab.field_0)
            idx = 2660
            s = 0
            while (32 * sub_1473b9ab.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1473b9ab[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e0de7921.length, sub_1473b9ab.length, mem[2660 len 32 * sub_1473b9ab.length]
    else:
        mem[2628] = address(sub_e0de7921.field_0)
        idx = 2628
        s = 0
        while (32 * sub_e0de7921.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_e0de7921[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_e0de7921.length) + 2628] = sub_1473b9ab.length
        if not sub_1473b9ab.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e0de7921.length, data=mem[2628 len (32 * sub_e0de7921.length) + 32]), (32 * sub_e0de7921.length) + 96
        else:
            mem[(32 * sub_e0de7921.length) + 2660] = address(sub_1473b9ab.field_0)
            idx = (32 * sub_e0de7921.length) + 2660
            s = 0
            while (32 * sub_e0de7921.length) + (32 * sub_1473b9ab.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1473b9ab[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e0de7921.length, data=mem[2628 len (32 * sub_e0de7921.length) + (32 * sub_1473b9ab.length) + 32]), (32 * sub_e0de7921.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
