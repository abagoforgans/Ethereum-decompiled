contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage50' / 256
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
    return code.data[494 len 6743]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f3a1e4ef;
array of struct sub_b454f290;
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

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b454f290(?) {
    require arg1 < sub_b454f290.length
    return sub_b454f290[arg1].field_0
}

function sub_f3a1e4ef(?) {
    require arg1 < sub_f3a1e4ef.length
    return sub_f3a1e4ef[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x39fd13f1bf1b6d6d847879067210ad0f6e65dc10
    mem[128] = 0x912b9ad61fbd2618520a90a9854a9d6b74d427e1
    mem[160] = 0x502becf2c6224bc1e0b8fb74c2ff5d9b6896ac7
    mem[192] = 0x1a03e135da5ff6998be5efdab7ee3064642c7e4a
    mem[224] = 0xd33e84fd3b86c3a6612d32ae94bb6d018251d835
    mem[256] = 0xcc3a5edb2389cb843969ba9ffd5c896f89d17b3f
    mem[288] = 0x775d9c5045d51d50f559fdca2ae740032cbb1734
    mem[320] = 0x86f2b381f35a553bd1eb1e8d48c67a52f2ec20
    mem[352] = 0x36cf71c97e9ac7bbd996dbc79ab0c753593fd24
    mem[384] = 0xdb7c690cdf913e6cee744d0f4362b2d5ef8313dc
    mem[416] = 0xb1076df628420760a27ef8a16435ae70736d79b9
    mem[448] = 0xa160b9342dbaaabd049c46b36ff6603a684d71fa
    mem[480] = 0xaed91d7051535421dfff0a54797a288a553dfebb
    mem[512] = 0xc4b7289cbd4b8861f6f3b7a864cce7dbb3409e48
    mem[544] = 0x3d8c509dffa452cc3aa09dd64282e875829676b5
    mem[576] = 0xc781523b17b219ddb732b7fc437ccfd1ef5c232c
    mem[608] = 0x19dbf089dd1a146ee085b244ec394740f70548e8
    mem[640] = 0x1d8d17320ae0b0363f1b3e13c930707adbb6477f
    mem[672] = 0x2e836b75461f70034f6f35590ee851f4a904d751
    mem[704] = 0x6ffaee449f9731a5acf42aaa5fa92735ba3874b3
    mem[736] = 0x235cee19f46dbb9fc1ddd4bd887a921b828c166b
    mem[768] = 0x5f2e1fa387a37e429c1dcbaaad2f4fe5043a249b
    mem[800] = 0x750aefdd0bacb087c3df473235e3de5107d1ab7f
    mem[832] = 0x95679b5f8376f5d07a8925fb4afc2aa30c679156
    mem[864] = 0x527ecca60ee17f35f6fa8fd0566918f1cbfc3101
    mem[896] = 0x74f734b67c99c76cb1ebafbdbf5eb4315507d723
    mem[928] = 0xeb11bf8709496447046b43331fe1bdb3a6709ca1
    mem[960] = 0xa6421ad8dab9b73bfd0f2dc9daf928bc37dd3191
    mem[992] = 0x9ac76cf789453e20aad0a6c6d68a07af021ec119
    mem[1024] = 0x87d8777dfeef42a7e5ace4e36f2031501906c3
    mem[1056] = 0x8f5ca52caddc8279caa2c033f9715eab72ef289d
    mem[1088] = 0xb4000c2dc49bc4e36e014c9690b92bc3274d59b0
    mem[1120] = 0x61a7c68141c56828f0060b25b91598643a8c8a14
    mem[1152] = 0x28d08b814f2489e8d14a4601122298f1f89d2531
    mem[1184] = 0xb3086e7058cd5724b296acfbb0c22b1e51b6a0b
    mem[1216] = 0x206836baf004945635ea88e053faf5efa46da68b
    mem[1248] = 0x19303a3b1aa0273e2df0a20c7599e09751f5d17f
    mem[1280] = 0x7812df5b6599788532182c029ffdf7db87fe60ab
    sub_b454f290.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_b454f290[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_b454f290.length > idx:
        sub_b454f290[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xabb12e01303221209ef38f7442c7da61015e656d
    mem[1344] = 0x67f2d6f3a06dc529c17f261d4f40b2f65aa6b93b
    mem[1376] = 0xc6dbcbe9d94b663df07cc62571d5dbead71f7ba0
    mem[1408] = 0x96765da7d4c449fba6fb570b507a338779aacc08
    mem[1440] = 0xfa8454c1c68310d010f438fe231d622d49a8e07f
    mem[1472] = 0xf980142905695b87270c46a848c4be24983d9981
    mem[1504] = 0xcdaab161fae6913c20497c6f15153e3d504d9418
    mem[1536] = 0x4620c795b5c3b824031fb833875d90b1db6d82
    mem[1568] = 0x2a9ae3de88aa0abb74981511a8eb22ba1e8c3fb4
    mem[1600] = 0xba8a6502e6b9da3e109ed02d676bec7704261ac9
    mem[1632] = 0xb2a45af49171f2e4f94b4aafe90e420ef3745e70
    mem[1664] = 0x9a87ae89cffd7b027d86af2fbd41059cd955b716
    mem[1696] = 0x2ec0de62119a35009aeebda365e76eb15879c6db
    mem[1728] = 0x6a3ef51f793add534e20d3935b3ae0a87d914b49
    mem[1760] = 0x199e2111e0d7e8e5f0bfe4246b6079bbd38bbd6c
    mem[1792] = 0x6ec7d11b34a351c1639fd48ce7381484194d4ad
    mem[1824] = 0xae99b7e7d171354b0617c5c19b7894c6fb7a6f5
    mem[1856] = 0xe1f0e0e0b2f3e981636f9031907b3bb459b8e9ae
    mem[1888] = 0xfb190b5553bf0f6282784c6cce26bb0c9e52b1fc
    mem[1920] = 0xeceddde3e508f1bc6268af8b99f084a98521b319
    mem[1952] = 0x764a91768732ed30a2c3a2f08afe4e66ca4f5f5a
    mem[1984] = 0x5ac67e77de50752cce3d62d8e591ea8a3e2c6dc3
    mem[2016] = 0xaf76fbfbb35ab38d51f3142fb94a98bd930d9bad
    mem[2048] = 0xc50ec7ba68895a40d485dc9a373f984b86bc7c63
    mem[2080] = 0xace4e770a327d507fbc7a441ed7ddb0a207eb58
    mem[2112] = 0xdb820e746ce8d58b26b773a921fcee443ffd6ebb
    mem[2144] = 0xe0c11963446ad653d8136abfe86a41f8642332e0
    mem[2176] = 0xc86713c89d10cb40cfe739ffc2bf153c8a11b5a5
    mem[2208] = 0xc1c141ec0277de512decb326904c62b202da11b9
    mem[2240] = 0x335d691fbd27ac1fc6e9067cbe3fa9932e3301
    mem[2272] = 0x1868a3c670b26433a4bd3044f16e6c5b00edf704
    mem[2304] = 0x6f4fb9eee3806684be2157cd3f87c4c15ea92ac6
    mem[2336] = 0x791e1f4374c2afc132431e03c700f0c841fcd38
    mem[2368] = 0xdb22b677113b9b4709070185d716b4a9a22020e1
    mem[2400] = 0x6acaee139b48c2283990113a9dd17e9efa7e09d0
    mem[2432] = 0x8dd47bc5ec59fd9c410a070419408b83e6cfd7b8
    mem[2464] = 0xde1917b8ed7cce0e11c5056ed3f35b03288275d7
    mem[2496] = 0xc54ea46a00ecb3e6964251948bdaf59602c585c4
    sub_f3a1e4ef.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f3a1e4ef[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f3a1e4ef.length > idx:
        sub_f3a1e4ef[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f3a1e4ef.length:
        if not sub_b454f290.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f3a1e4ef.length, sub_b454f290.length
        else:
            mem[2660] = address(sub_b454f290.field_0)
            idx = 2660
            s = 0
            while (32 * sub_b454f290.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b454f290[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f3a1e4ef.length, sub_b454f290.length, mem[2660 len 32 * sub_b454f290.length]
    else:
        mem[2628] = address(sub_f3a1e4ef.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f3a1e4ef.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f3a1e4ef[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f3a1e4ef.length) + 2628] = sub_b454f290.length
        if not sub_b454f290.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f3a1e4ef.length, data=mem[2628 len (32 * sub_f3a1e4ef.length) + 32]), (32 * sub_f3a1e4ef.length) + 96
        else:
            mem[(32 * sub_f3a1e4ef.length) + 2660] = address(sub_b454f290.field_0)
            idx = (32 * sub_f3a1e4ef.length) + 2660
            s = 0
            while (32 * sub_f3a1e4ef.length) + (32 * sub_b454f290.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b454f290[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f3a1e4ef.length, data=mem[2628 len (32 * sub_f3a1e4ef.length) + (32 * sub_b454f290.length) + 32]), (32 * sub_f3a1e4ef.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
