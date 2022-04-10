contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage88' / 256
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
    return code.data[494 len 6614]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_7b13fcce;
array of struct sub_72ced2a0;
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

function sub_72ced2a0(?) {
    require arg1 < sub_72ced2a0.length
    return sub_72ced2a0[arg1].field_0
}

function sub_7b13fcce(?) {
    require arg1 < sub_7b13fcce.length
    return sub_7b13fcce[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xdeccdddaa79c741d0fa4fd90aa648248ea578fa4
    mem[128] = 0xad22ee7acd4c68da3fb2f2b2d17414d983bb282e
    mem[160] = 0x2b0f11fffd240dc6bbf73cc9f9c233d22ae0d6b6
    mem[192] = 0x21225c52ba29af246914dabea64f05bc23c4a137
    mem[224] = 0x9ac4b19c552b9d0f9f2a10a0a0aa5aa07e7b3bd7
    mem[256] = 0xa5e8153ac925d0b5823701530047a4ed76cedeae
    mem[288] = 0xf3bec1fb4c14105a4ded4aeeb72f9d0848b1d5df
    mem[320] = 0x16835a125d3b9ef99485b79f7ea9176c8f18f178
    mem[352] = 0x3c9d363fab1be846d8633bd41b8fb5bed013a1b
    mem[384] = 0x956ac26d2bf288874bdfbfa66391c0f782385a64
    mem[416] = 0xd1b8d3644828b1424024e83562808cc414b98344
    mem[448] = 0xd426634bf3c40ed4da9fb5339542bbc0542769e4
    mem[480] = 0x8c0c70ac18f81f0b13b0eea1a2e16c2305117c3
    mem[512] = 0x7e8a37214fe28155d38d5b9dc07635870c45aa83
    mem[544] = 0xa7a7fb476a7a0942240ca1092e9767a124483450
    mem[576] = 0x86406f2eb69d7085e9c21a15207c2fe5fe7105cb
    mem[608] = 0x7f499c5a8df617abb8eb35d4ad64d9d5cea06a7f
    mem[640] = 0x96d7b87e4cafcce3695c5495311fe0774c3a5c1d
    mem[672] = 0xad5aa6c98aa9196a1f7ceba656c4c4f7d85c8254
    mem[704] = 0x5f73b7b08c99276d63291c073155901be529a74a
    mem[736] = 0x70887b619f984e17b66e5c0d800f5448b11959c6
    mem[768] = 0xe3f6e70d6bc98c88845c1446895f04ad867b6040
    mem[800] = 0xde23a850c202d64b04f1552b3a3d6f9bd0afc36
    mem[832] = 0x74f9c31f754339429f811424d2ccac1153b6a794
    mem[864] = 0xc94dd8e948a8e0db2557632aebb3c93531de5dba
    mem[896] = 0xb4947b06cdf38df68cb0ce9ceb6c348f65f69bb1
    mem[928] = 0x4cbe92b03d1571118b75926280e4807034fdd1d2
    mem[960] = 0xe8da3ae32d3ff306b5c0b0039292bca9624e1bc7
    mem[992] = 0x21b366f28d03bb8ad9c576d29a45e8f97938e2d9
    mem[1024] = 0x447a434bc4376f3b0583ecb5bbf19540dbf4b738
    mem[1056] = 0x666cbe0a3fca326a49d5bd45a39473843414d940
    mem[1088] = 0xad3e4f38ee665f04c34eaae1a1ebe1a978018439
    mem[1120] = 0xaf1ebde91852ffc3a85109fab23bc4fce34aab2b
    mem[1152] = 0xd573157527f8f575deec59bd0a77b32a33c05a60
    mem[1184] = 0xf926c6448eb5a2cace99772886048eeffaabbcec
    mem[1216] = 0x87360e24d2cf6792514dee0de24f11c482764879
    mem[1248] = 0x48661642a50a737b758786985d698e9830e33125
    mem[1280] = 0x114eae289cc09b66b7abc1e9704f5e5d6e280588
    sub_72ced2a0.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_72ced2a0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_72ced2a0.length > idx:
        sub_72ced2a0[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xeaede53a3387f2b3672ae326e919602e83f77ac9
    mem[1344] = 0x7fba451da92fb6e3d75e52a911c7dfacb9316064
    mem[1376] = 0xda103871316f21c76d523e5b9e0092a474f001a5
    mem[1408] = 0x35f3c493f62c0d4874d239a7ea325b1a5cabf4a0
    mem[1440] = 0xbcb87bfd1cee26f568e64d859266f57b139f84ca
    mem[1472] = 0x12e224c31c684e84e239aef2b65f5e8cc9c51867
    mem[1504] = 0x8cca7746ac18932e594daeb0f1fcdb1de825c2d2
    mem[1536] = 0xb9e6403fb083bdab77dd257552327f3afa0de36c
    mem[1568] = 0xa22239880eaf5adeaded5525db8d29fb583dae7c
    mem[1600] = 0xc21cfc1b6ad4fd56915928007d1483042690ad2b
    mem[1632] = 0x247f0c8e4bcaea7f8f77bc80ed33264323fabdcb
    mem[1664] = 0x858656209491691e905367d3ec8e888762356e0d
    mem[1696] = 0xa3390edeb2219e1311d853dfaf3b67390bdfd673
    mem[1728] = 0xca3ec32641865d85effe165635cbec8e32848ece
    mem[1760] = 0x118e28dda01e0f3f33acb08723ed86498e44da91
    mem[1792] = 0xcec0cfa8ef4bf770b3f7805590bf13a8c8d418ac
    mem[1824] = 0xd1be451bf1e94067d80e8d4c3e33ea94cdd79a69
    mem[1856] = 0xfe37ee56521855c059864bb20d5a3c6a993e6508
    mem[1888] = 0xb9528ccc36cd88adb4329e43ee22594ebf9e674b
    mem[1920] = 0x4ecbc4ad177ad5444216e1f09e7950e9e208ccfd
    mem[1952] = 0x871e4c1fafc4e9bbe73ac048d7be8da06bbf93ac
    mem[1984] = 0xfba487f9fb343cae7bf69bced79929d5e4b7ce4a
    mem[2016] = 0x97cb738e47550e3b46789c0b6903d68f1c18be79
    mem[2048] = 0x9b5dbec5759696e562af3de8e6e180c77911378
    mem[2080] = 0xf064a7b067b4f6c188d2dd04c875064c22352f29
    mem[2112] = 0xac8fd67f4358b2d99a835af7cad8c8f11f62fc
    mem[2144] = 0xb77783557f0982e6eb6452659bd9d35cfa093d18
    mem[2176] = 0x8578f1c29eda9886970b6de1cc3d0de665b5db75
    mem[2208] = 0x5e587ba9c50d97f0efd662b1c85dd3536b0c5540
    mem[2240] = 0x922d20f6d0d40bb576eefcec8f788402334452ae
    mem[2272] = 0xba9c830f010765b465bf9c188f7e4b3e3d80f4eb
    mem[2304] = 0x6faa5b83b546c81d84e060ea2f6912d942733b7b
    mem[2336] = 0x71ade8026c8c0c859826fe294de5276c632eb18c
    mem[2368] = 0x5de13234ff468fb960721fb6ea99593d8d0cd83e
    mem[2400] = 0x9f4d2649b078878a481cf30e20a20a318ae7d42
    mem[2432] = 0xa937083cc10a777a1f529cbe6ca707c52f5f905b
    mem[2464] = 0x69a33e0303590e957c3a394ddfc6eb0ba20844e0
    mem[2496] = 0xe71014c5369bbf030f377992632bff69913d79e0
    sub_7b13fcce.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_7b13fcce[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7b13fcce.length > idx:
        sub_7b13fcce[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_7b13fcce.length:
        if not sub_72ced2a0.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7b13fcce.length, sub_72ced2a0.length
        else:
            mem[2660] = address(sub_72ced2a0.field_0)
            idx = 2660
            s = 0
            while (32 * sub_72ced2a0.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_72ced2a0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7b13fcce.length, sub_72ced2a0.length, mem[2660 len 32 * sub_72ced2a0.length]
    else:
        mem[2628] = address(sub_7b13fcce.field_0)
        idx = 2628
        s = 0
        while (32 * sub_7b13fcce.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_7b13fcce[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_7b13fcce.length) + 2628] = sub_72ced2a0.length
        if not sub_72ced2a0.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7b13fcce.length, data=mem[2628 len (32 * sub_7b13fcce.length) + 32]), (32 * sub_7b13fcce.length) + 96
        else:
            mem[(32 * sub_7b13fcce.length) + 2660] = address(sub_72ced2a0.field_0)
            idx = (32 * sub_7b13fcce.length) + 2660
            s = 0
            while (32 * sub_7b13fcce.length) + (32 * sub_72ced2a0.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_72ced2a0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7b13fcce.length, data=mem[2628 len (32 * sub_7b13fcce.length) + (32 * sub_72ced2a0.length) + 32]), (32 * sub_7b13fcce.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
