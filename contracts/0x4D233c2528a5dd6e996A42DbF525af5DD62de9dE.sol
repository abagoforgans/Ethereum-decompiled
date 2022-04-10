contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage61' / 256
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
    return code.data[494 len 6789]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_14935c58;
array of struct sub_5b6189a8;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_14935c58(?) {
    require arg1 < sub_14935c58.length
    return sub_14935c58[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_5b6189a8(?) {
    require arg1 < sub_5b6189a8.length
    return sub_5b6189a8[arg1].field_0
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
    mem[96] = 0xd594d1ca00083f4b1bd853e5efb768de1e13fdc0
    mem[128] = 0xa829f7685d02b93ff61ff6610b8176ae5c44f085
    mem[160] = 0xc863c30fa8e52d8b535891fa82899a94f5b66b51
    mem[192] = 0x2f840ab09fd8cc97dfc9b5e7d60714daca5b34c
    mem[224] = 0xa463e5581358559822d9634df11909682da0fe13
    mem[256] = 0xfe46cf4168eec91972d795e7cd18f99edb15fd0c
    mem[288] = 0x64190f47afe5ba648982cd327e394ba08ee0e4a2
    mem[320] = 0xa78cbff92a40ec39296a7a7d4be983cc26fb98fd
    mem[352] = 0x309db5726619a496277f8d6c8d080f4f3d086b63
    mem[384] = 0xefdd8f78362df6a2e4bc2cffdc0223b226fd2623
    mem[416] = 0xb517f4f1df2139b5d8e6feafdc3eaaf4c2f41d5f
    mem[448] = 0x88ba2aadaf827388f6af01afc392ce3d1c5451e8
    mem[480] = 0xc296041669c07a7cd7b529c25f765759d8fc610d
    mem[512] = 0xa3dfeeffb57019d0b57add6abe8cb8ad804dedc2
    mem[544] = 0x5304341e48f4171c72ffbe0c2294b86c0f9f827
    mem[576] = 0xf14b2259a9248326d93f67ee50a577ccb343e413
    mem[608] = 0xd2fcb5659563df15e8a179661bf73d4df9936
    mem[640] = 0x6052cf48b3067f686530a656d25233de5e66a518
    mem[672] = 0xb6ec683d48db95aa927ccec592640e475947246a
    mem[704] = 0xd9bc800821d8a8419d7f1dfa3ac73fc93dc04713
    mem[736] = 0x27af52d7374e400a3f0ed2b2420117939a5661d5
    mem[768] = 0x42250a483a47986974728f5f6061a70348eb006c
    mem[800] = 0xd5d126c4fb064ab9a130368b70646864a7d5855c
    mem[832] = 0xc286e78eb1c3b72bbbce4d09df88e1b8e72fc31c
    mem[864] = 0xee6ec21d658d2c27d065023b7e3571038d79ae8b
    mem[896] = 0xc6c233e99c863db38ceb667076157432559f97b
    mem[928] = 0x1bc431a4d4ff9dd715c32985759c7646c89c4727
    mem[960] = 0x9f00fec6ea0434f2fb365514e3838db133044642
    mem[992] = 0x10e496cd772efaf88812bba617f93701e2456c51
    mem[1024] = 0x867adef23e3e19afa62693516c70d7c46b8018af
    mem[1056] = 0xf2c497f718729f04ce6b9a92fa5128a23d649f9d
    mem[1088] = 0x10447a3e51a9dd60c129cb823d662519478b56f7
    mem[1120] = 0x4821b4ee7b02b4fea60b0e9b355a13a1bcf3a60b
    mem[1152] = 0x8cdac458856bc2ec13ad2c2def07b0d463039fb7
    mem[1184] = 0x70441e1ecec50262ecf5e34a96d28f696ea9ad00
    mem[1216] = 0xd5eb4ebb70df19a18a52afa9044789863dd6a05b
    mem[1248] = 0x348444ec9df4a38be03e86c11bd530a3086f2895
    mem[1280] = 0x1568084cfb1c2241c19f95c94ccad260f4d132a2
    sub_5b6189a8.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_5b6189a8[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_5b6189a8.length > idx:
        sub_5b6189a8[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xa39009ea46874b4a78a17474f7e09a4b862106de
    mem[1344] = 0xb838e455e3ae8749834fcd82ba39d322550bf3a8
    mem[1376] = 0x9b94d095a30586d51ce3906a24ab18aaaa74703
    mem[1408] = 0x7f2125eea829106a5cb4b09d544296f0b98fb296
    mem[1440] = 0x3666994bb1feb62542099e878f173648f963ae35
    mem[1472] = 0x339a9b8b27bf1e4256e607c2d1dc8164e61f7dcb
    mem[1504] = 0x56eb774f2cae6d5706e951042dbe80cf0633e9af
    mem[1536] = 0x6d57cb0a7a429e7154f3fa2ed8c39cfd859ce4fe
    mem[1568] = 0x21d54c76733dbc43924d89bd4e574b57c03b7556
    mem[1600] = 0x8519635da84983ed5e5d2ba495fd9e8e2475b346
    mem[1632] = 0x89ab557b013b555e885480b6ac0c39a5b2d60e5e
    mem[1664] = 0x1cb384727b2b597ac0122a42e44be1b9034a40e7
    mem[1696] = 0x6c3c1cb2a6fae942e95c37a57027eee58126c8ad
    mem[1728] = 0x695885af8c8ee0729414ea7c66d6b69d961cedbb
    mem[1760] = 0xa08ecdf93e917d4f5e3268668e3903acc26aba59
    mem[1792] = 0x731b52c2b524db2fc3b5dd2fe5579d6f9c52d9c0
    mem[1824] = 0xa899141aad82ee27101e06936e44fc4bd0fb62
    mem[1856] = 0xa27718694821ba996f8864917810432db3b09a78
    mem[1888] = 0x8688e27a9f995f01c698a8770eed355e4830b568
    mem[1920] = 0x3757a990d791b0a83488fcaf5ba054d6e0c1ef32
    mem[1952] = 0x2eb919b5e751755553040424a2fe5f3cf675190b
    mem[1984] = 0x3bfdf2e8361d86fb80943448f15862e50e87c43c
    mem[2016] = 0x26d2cceab972704658a61769c346a765da43ffb1
    mem[2048] = 0xff76a2acf68559fb217dcfae86a549364d60f87a
    mem[2080] = 0x99265fe65cb377dae444c5a9793d1e45787cbc43
    mem[2112] = 0xd6fbd2b9f3833659beb12e1f91d58e00c5efd070
    mem[2144] = 0x528ca34cae599ce2b7f0d3aefc105065521875ff
    mem[2176] = 0xe74c1fb6edbee7b9529c8dba4b659bf5cfc60d4a
    mem[2208] = 0x18b0e4220f0799ac8b9ec4e5eb36da357e4fe4b5
    mem[2240] = 0x1176fbd069e75566190abb86147e2d24856c8c41
    mem[2272] = 0xfd604c6ca6f6861d70e80079c4d685639bf0182c
    mem[2304] = 0x61f859f42aea9eafcd20bc14b9dadfc53280208
    mem[2336] = 0xb85c5b40cae437fb299559f89eb6d03c85cb2b4b
    mem[2368] = 0x806d0d7ca2a87e6ece9a7c1042daff09a770b9c6
    mem[2400] = 0xcada149b8cbeb594d2311b49c98368b319a26c75
    mem[2432] = 0x4985885f15665bbc3105cbfa95fa0a3e8b2ad1ab
    mem[2464] = 0xc2b40f2ee97a0b84a306c8e1b53bea62e0164e25
    mem[2496] = 0xa4ecedd7bd928ea0df5744179fb2ffd1c9212f6e
    sub_14935c58.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_14935c58[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_14935c58.length > idx:
        sub_14935c58[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_14935c58.length:
        if not sub_5b6189a8.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_14935c58.length, sub_5b6189a8.length
        else:
            mem[2660] = address(sub_5b6189a8.field_0)
            idx = 2660
            s = 0
            while (32 * sub_5b6189a8.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_5b6189a8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_14935c58.length, sub_5b6189a8.length, mem[2660 len 32 * sub_5b6189a8.length]
    else:
        mem[2628] = address(sub_14935c58.field_0)
        idx = 2628
        s = 0
        while (32 * sub_14935c58.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_14935c58[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_14935c58.length) + 2628] = sub_5b6189a8.length
        if not sub_5b6189a8.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_14935c58.length, data=mem[2628 len (32 * sub_14935c58.length) + 32]), (32 * sub_14935c58.length) + 96
        else:
            mem[(32 * sub_14935c58.length) + 2660] = address(sub_5b6189a8.field_0)
            idx = (32 * sub_14935c58.length) + 2660
            s = 0
            while (32 * sub_14935c58.length) + (32 * sub_5b6189a8.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_5b6189a8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_14935c58.length, data=mem[2628 len (32 * sub_14935c58.length) + (32 * sub_5b6189a8.length) + 32]), (32 * sub_14935c58.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
