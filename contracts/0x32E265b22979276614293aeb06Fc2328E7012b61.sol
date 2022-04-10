contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage66' / 256
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
    return code.data[494 len 6897]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_96b4e9a0;
array of struct sub_5e55cb7d;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_5e55cb7d(?) {
    require arg1 < sub_5e55cb7d.length
    return sub_5e55cb7d[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96b4e9a0(?) {
    require arg1 < sub_96b4e9a0.length
    return sub_96b4e9a0[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x14f9c664e0cd5ce4a679f97cbdc1e20a7b00c4ae
    mem[128] = 0xfb92a901bdaec9651c93f1b585c072f4b5e30771
    mem[160] = 0x22b136bdb87c84881dc8ecb014c547936eb0f252
    mem[192] = 0xda1b75ac6463cd29faf97df790e65862f6017a84
    mem[224] = 0x81d0e4f8894cebe0a0a0fd1e113eb7166ebc3bb1
    mem[256] = 0x7672bfe716b999c4c496de9254ddaf2848512d44
    mem[288] = 0x507f248e8e2d4ce87f83d1bee9e66411410b8265
    mem[320] = 0x749b395540c1f11ab628c8f90248dbbb44a8d1
    mem[352] = 0x6618e6570a89f891e992cfa402398c03aa7fbaae
    mem[384] = 0xb853f856094ca3b6395e40ebb372c314d452e36d
    mem[416] = 0xd39c0d9ef1339b0d3c8a96cb5961438dd39324fa
    mem[448] = 0x9a27028958ae564384ca34afe1c405a44fd6ac4f
    mem[480] = 0x1f12fd82e7c0fd22a8797f86ab849b7ccf11111b
    mem[512] = 0x697b65b8c6256f17a48394289d470918cef2f289
    mem[544] = 0x12a8ab1d126ec17e6a6b8a82446ec1549b34eac3
    mem[576] = 0x658b72384f729bf9c3ccb599da995016d57b61bd
    mem[608] = 0x86b2799c6ea4ab7e902991141d6da7316e2e55a
    mem[640] = 0xedde47c019f7b7f9da080d94e94e069d3d577d0e
    mem[672] = 0x64b0d690e14edbada55858b44829f8bd66b88d74
    mem[704] = 0xe04b248464e5183e50beabbca47718072851678a
    mem[736] = 0x984fecf31b62ef08115b835b089093c84f842fb
    mem[768] = 0xad95735ecd786c79653b591978fb02a18ff20889
    mem[800] = 0x10b6b084dbb9388af2e74558ceea1add01fb6a25
    mem[832] = 0xa708ce87626bd4b3758e5771361097d0b29d5dee
    mem[864] = 0x453373ee8334bfab9d1ccbcf320a46515694d95
    mem[896] = 0x11ccef5ac0b4e0e18502f470904fab025e851ce
    mem[928] = 0x1912fbcb91a6a4edd0ae7c45a6c03fe2b150d202
    mem[960] = 0x28d9a0ea58046d3048944cd6edbae7f7d07b7c9c
    mem[992] = 0x42f4729884aeed3ab6494c102d1af5b3e5f00e90
    mem[1024] = 0x15f5dc8b9bea24426352d9eed681ec78d01249
    mem[1056] = 0x15a36a90fcf98a283a32cbd792928456440e42fa
    mem[1088] = 0xa3f2267ca58a596cae81c51238a17ae52c2d6713
    mem[1120] = 0x6862bea70c2488598455f0aff9ea6241ed4ee165
    mem[1152] = 0xdcd1b7f56b215be7b0531b05e8a054a9ee0dbf38
    mem[1184] = 0x99c0b8501d6ebdb4774da4c0653ad459ba933136
    mem[1216] = 0x59ca3de655eb290865d2c7f8ef4c1d1cbb958c90
    mem[1248] = 0x3a7a45765073b9fca73612b91c8dfffcdae22d88
    mem[1280] = 0xb6523f1783eb0e9674906abde01a104722f6e1e5
    sub_5e55cb7d.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_5e55cb7d[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_5e55cb7d.length > idx:
        sub_5e55cb7d[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x6f8b0aab4e32ecb656d906b6487319d2d29db427
    mem[1344] = 0x661564f03313d4c2f969c98babe9d5501ba85d10
    mem[1376] = 0xd484130dac8637141d5af02d83417e543498f1d6
    mem[1408] = 0x5154dc44b1e3a29853683153a15df3b1c6e197e0
    mem[1440] = 0x2fe5e7406f993c58a39093ab7b173e9860dfb4db
    mem[1472] = 0x871f81a104a4e1d009d7863b9402da73eabfe269
    mem[1504] = 0xba94d76ef6113c1a54837392c3604ed980c7c6fe
    mem[1536] = 0x2ca65bdf21445772d8b17d2323fcaa16540225
    mem[1568] = 0xb6a903282a2d67f88a49b69bb1344467b0a9532a
    mem[1600] = 0xbfcc654935c9bd7157c657561bc75e18458ffd61
    mem[1632] = 0x9953578a3cd976737ac2ce94a3dc43394f6ee63a
    mem[1664] = 0x311d7edd7f3cbb648f4eba713dcdd02f8da14028
    mem[1696] = 0xfdc27d45c6d76c12d3ed57092f46faf91e48e165
    mem[1728] = 0x6304fb4f7213a298d8ebe6c23529f99d4e183896
    mem[1760] = 0xab1689ca0953fca0e5f8c212bc2709f2625249bc
    mem[1792] = 0x66c1dedf5dc43c51cfc3f1da62f574e7198c1dbd
    mem[1824] = 0xa2724c1f309d20a51843e565614fe877f5855e8b
    mem[1856] = 0x2e8e401daeda35711c34ecafbabde6e617ce7239
    mem[1888] = 0x5af3599931f41e89e947420c161ed9a0f066c134
    mem[1920] = 0x87ea330515bd1c8b30be4f363eaa04cf507e188a
    mem[1952] = 0x5065433e47a943098d114a862930e4bafad344af
    mem[1984] = 0x9c9d7b0c87fd5321a19a5bfc52ffc5c8c2375af9
    mem[2016] = 0xdfe69afe3d56ddc08114dfea53733656f91f834e
    mem[2048] = 0x510106200068b3ae2bb1bee5899ed2effe4a89d6
    mem[2080] = 0xb6efde118e7027a67a3b77b9461eeb186033e39e
    mem[2112] = 0x7cf278f7cc3d5a1bb07d23b7e17538cf575f609c
    mem[2144] = 0x40dde81cc9456877ef750cfa3f052b3a9d5ce4f
    mem[2176] = 0x24942d127139361411a098d6f6a8c2d4d40e54df
    mem[2208] = 0x440be5eaaf849612a8418ec0ae98068b3a1eb712
    mem[2240] = 0x1af2dcda1ea8d77fa2ad51288064010a22b017
    mem[2272] = 0x264dc37a551817bbb095c1fd606bab4eb37cd868
    mem[2304] = 0x1d84d00830f0bdff582620651d87db333b3f8568
    mem[2336] = 0x1e57f3da1b5f6642b19fe5e5d518fd3fb258ba3c
    mem[2368] = 0xb097f1b2a7d767eea5096582265e9decfbda27a
    mem[2400] = 0x6313a182234a054776fba03256de92670ebf19b9
    mem[2432] = 0x34edebe2a3bfeb44bb47aea3ea7c86393350428e
    mem[2464] = 0x6fafbc6e576477c0a86bf0665b3e2814eff30f93
    mem[2496] = 0xd85ca4fcfab71460b64e16fbf1988b273146325a
    sub_96b4e9a0.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_96b4e9a0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_96b4e9a0.length > idx:
        sub_96b4e9a0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_96b4e9a0.length:
        if not sub_5e55cb7d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_96b4e9a0.length, sub_5e55cb7d.length
        else:
            mem[2660] = address(sub_5e55cb7d.field_0)
            idx = 2660
            s = 0
            while (32 * sub_5e55cb7d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_5e55cb7d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_96b4e9a0.length, sub_5e55cb7d.length, mem[2660 len 32 * sub_5e55cb7d.length]
    else:
        mem[2628] = address(sub_96b4e9a0.field_0)
        idx = 2628
        s = 0
        while (32 * sub_96b4e9a0.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_96b4e9a0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_96b4e9a0.length) + 2628] = sub_5e55cb7d.length
        if not sub_5e55cb7d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_96b4e9a0.length, data=mem[2628 len (32 * sub_96b4e9a0.length) + 32]), (32 * sub_96b4e9a0.length) + 96
        else:
            mem[(32 * sub_96b4e9a0.length) + 2660] = address(sub_5e55cb7d.field_0)
            idx = (32 * sub_96b4e9a0.length) + 2660
            s = 0
            while (32 * sub_96b4e9a0.length) + (32 * sub_5e55cb7d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_5e55cb7d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_96b4e9a0.length, data=mem[2628 len (32 * sub_96b4e9a0.length) + (32 * sub_5e55cb7d.length) + 32]), (32 * sub_96b4e9a0.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
