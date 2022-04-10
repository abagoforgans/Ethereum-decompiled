contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage23' / 256
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
    return code.data[494 len 6629]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_10dc79a7;
array of struct sub_f932e420;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_10dc79a7(?) {
    require arg1 < sub_10dc79a7.length
    return sub_10dc79a7[arg1].field_0
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

function sub_f932e420(?) {
    require arg1 < sub_f932e420.length
    return sub_f932e420[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xc98792443131f41cb654d954e37d5dd10d6bffb3
    mem[128] = 0x731bc888f933a0a7e91448a4b045df8683285943
    mem[160] = 0xd34e978d8c8501a269dca0a0d4185b43464bbb57
    mem[192] = 0xd649855a0e865f495b0c83f11fbed908de6116f2
    mem[224] = 0x18e9caceacb1949f783db05b1b16744ec9aa2e32
    mem[256] = 0xe585aacac66c0aae784f5c779052617c845177cc
    mem[288] = 0x177ea7ee05fa58f2622dc51435207d0bd462eab1
    mem[320] = 0xd7adfd0964774bb2c8fad1922ff3b6a2a64f1b7a
    mem[352] = 0xcec24a89afd9964fb857fadd67c7b7d6986c8b5
    mem[384] = 0xc2fc464a954fd7ae97ed12d0b764bb68e0655a9b
    mem[416] = 0x785422d1aa31f950ddd84af0c424e49c8593aab3
    mem[448] = 0x556c412d391c75bd12d97c2cacff3caa3793ee4a
    mem[480] = 0x3e656b95583d4e705e87851f35b064b020fe5d00
    mem[512] = 0x2ff98a17cc10a628b6ba28dd0ca84f1d811f5f6e
    mem[544] = 0xe2ba4dbb83dbdc605b91d4bd2feb5ed1ba7d2317
    mem[576] = 0xd6ca1c1c4c847d09a259647fbc7fe399758c68d6
    mem[608] = 0x3182a7fad51b9e3a28e980d91448171d5c121119
    mem[640] = 0x3bbdf20389b661da65178e9cca78822ca1982638
    mem[672] = 0xa5f27d944dc2bf8072cbc0a267862ee245f5af4f
    mem[704] = 0x9d6677aaaf0e5b3c1a0707c99cc70360f33aa8
    mem[736] = 0xde4676e191b97356b6f3a43662890af13d91c224
    mem[768] = 0x6c984bb4acb20fcc3d4938a4d1d50bfc37776d
    mem[800] = 0xec97c0c8e0d0b25f22fb81fe2f3ddea984b1ef83
    mem[832] = 0x974a975461ff210f23a33d39c13b1d8eab89501a
    mem[864] = 0xfdea7d6ea95ff4ccfbe1e996b157457670b497aa
    mem[896] = 0xb1e373f64e6ab62badb3b4b301b054ee71c1a8d2
    mem[928] = 0xeaa2aca961dd66fd679a2d13669edafb9412890b
    mem[960] = 0x111ecbaae7a530e119fad4d79cf57536d6fe257
    mem[992] = 0x93f0f8351ade0d9c30e5e5094043285ce1a661
    mem[1024] = 0x60c552f3a6ce24f024e01c217602db831da275da
    mem[1056] = 0x6e3d94fef0964b7110c69b50950860c0da26868f
    mem[1088] = 0xb8a3372fee463626783fb8dd64ff5e052e7413
    mem[1120] = 0x6012096e474819ec2b0caa266be8a6d2c2c05a
    mem[1152] = 0xbb3940c139a60b10546ee4a17acd5e32131d4403
    mem[1184] = 0x19ede5e7dcac8667d9389c97f01045f77ece79f2
    mem[1216] = 0x733a54c4f132d22c4d32a5fd71e2155babe3542a
    mem[1248] = 0x2c4c91333a68acbae76fc77f975296b77dbae663
    mem[1280] = 0x62526837539c2d552b9cda4b5ff89aea9f9d5cfb
    sub_f932e420.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_f932e420[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f932e420.length > idx:
        sub_f932e420[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x346786e7a6039e5b2f15aaa3a3fe9003e10a9a33
    mem[1344] = 0xec9a3a6465a04fb50e1f96bd77bf464fc98c5760
    mem[1376] = 0x9ad08ad82098122da8160c0f412b4d3033fed08a
    mem[1408] = 0x7b0203a2a14121b3d5f0cebc96682670b2b88a39
    mem[1440] = 0x2ce8528d6f32e68eac46846219b3067f0d53207d
    mem[1472] = 0x50477f044a612a7a327611a36271ffe5d5137dad
    mem[1504] = 0x55a65aafe7918d7cb7695f015d9b2b1c809a0d3c
    mem[1536] = 0x4274bbd2497162d8f00181d6366927724454d141
    mem[1568] = 0x1bdd5c116731c8210cdc6761731fcfedffd9526f
    mem[1600] = 0xd97cf30fabc8190c6e9cf80ba69eb698e67d5967
    mem[1632] = 0x22dea933882093ebc78cc25d16c9c97bb6169181
    mem[1664] = 0x4df7d5ee9cad38a0959c3288501f3d4846bd922d
    mem[1696] = 0x489fb699f579085db4fb9aeb1befc819068aa430
    mem[1728] = 0xcac77009b40916f6aa78e516ad486adff164b988
    mem[1760] = 0x1d72e4f015dba8d5b7ac0f0ad38b4ccad23c026f
    mem[1792] = 0x8747d242a84c3c69977f0e7aaf3a19bf54bee544
    mem[1824] = 0x17ad643f940452213d99e4d7e4a33da0f01cbef2
    mem[1856] = 0x8c9a3b92301491c6eb7ce80120bf4284c7693ba
    mem[1888] = 0x33fa78ce125d864716760a4d5a646838b625cbfd
    mem[1920] = 0xc491a986f0c4b28284e0325bb287a5645a75ad
    mem[1952] = 0x5d06a9a4a370698cf17407e7b367d90a8304481a
    mem[1984] = 0x88d285c5df1439ac494d82775927f5349fad0
    mem[2016] = 0x65daab3c8a8d8da434a67137948238b7c7367343
    mem[2048] = 0x4a6dd2f28dc6e3ae232262c427e49477282d0435
    mem[2080] = 0x257004bd72e4e61a46ddc1d14cb8aaf7bfcfd021
    mem[2112] = 0x7fae88213657cbca46a389b8c1131190e2ca562c
    mem[2144] = 0x83dd91a56e510f0074bea561ef2c99eabbdc634f
    mem[2176] = 0xceebe2dfc4bbce3e2cb952411628a2cd49458c6a
    mem[2208] = 0xf4ca40c3d5506e86597233801cdc459859a07c72
    mem[2240] = 0x61e39d383d1327864c1d4683e511f48bfaf9b6e5
    mem[2272] = 0x3ab7f3952f8a873092501b1e80b99b27247bbf32
    mem[2304] = 0x351c1b43f3a1cefa26e6190c74d8d1f1325a39bf
    mem[2336] = 0xf8d434a17d401076923a44b700c538e8522d46
    mem[2368] = 0x2f94f34b21c988d6a55d2d7dc3ee7575644e0c0a
    mem[2400] = 0xdbfa4a3e8a41d8bda8759588d2c13c8a8400ff69
    mem[2432] = 0x4c172c68572f5977452b58b2230d0ca2ccd83301
    mem[2464] = 0x33fe91cc4a4817d71c02f199f6ded62960bf8050
    mem[2496] = 0xc8f72aae5156687c08b751c36a5bee6b6e349004
    sub_10dc79a7.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_10dc79a7[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_10dc79a7.length > idx:
        sub_10dc79a7[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_10dc79a7.length:
        if not sub_f932e420.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_10dc79a7.length, sub_f932e420.length
        else:
            mem[2660] = address(sub_f932e420.field_0)
            idx = 2660
            s = 0
            while (32 * sub_f932e420.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f932e420[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_10dc79a7.length, sub_f932e420.length, mem[2660 len 32 * sub_f932e420.length]
    else:
        mem[2628] = address(sub_10dc79a7.field_0)
        idx = 2628
        s = 0
        while (32 * sub_10dc79a7.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_10dc79a7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_10dc79a7.length) + 2628] = sub_f932e420.length
        if not sub_f932e420.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_10dc79a7.length, data=mem[2628 len (32 * sub_10dc79a7.length) + 32]), (32 * sub_10dc79a7.length) + 96
        else:
            mem[(32 * sub_10dc79a7.length) + 2660] = address(sub_f932e420.field_0)
            idx = (32 * sub_10dc79a7.length) + 2660
            s = 0
            while (32 * sub_10dc79a7.length) + (32 * sub_f932e420.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f932e420[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_10dc79a7.length, data=mem[2628 len (32 * sub_10dc79a7.length) + (32 * sub_f932e420.length) + 32]), (32 * sub_10dc79a7.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
