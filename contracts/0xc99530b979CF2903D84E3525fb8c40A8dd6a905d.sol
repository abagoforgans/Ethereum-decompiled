contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage79' / 256
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
    return code.data[494 len 6632]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_8a6dcf45;
array of struct sub_f9efa9d4;
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

function sub_8a6dcf45(?) {
    require arg1 < sub_8a6dcf45.length
    return sub_8a6dcf45[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_f9efa9d4(?) {
    require arg1 < sub_f9efa9d4.length
    return sub_f9efa9d4[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x1a4362e69e1a62064c4164ef02f2e7bc560156f5
    mem[128] = 0x39788203db952ae92054f09730f513fe35af27b6
    mem[160] = 0x59c7198bd214f98067c4116a623a00de985d6898
    mem[192] = 0x7b5390418777833a545a92957307f4b5d96199
    mem[224] = 0x5d0e973870fbc1488df610fde5cb91d59385555e
    mem[256] = 0x6e7d34e341f49c182a0f9ca31e1c0ef8609ef9cc
    mem[288] = 0x6660667eeb6a5843bacb37b6493bef384a75ca15
    mem[320] = 0x4dcfc9619c5dce8f71efa88a40202e4768ce2033
    mem[352] = 0x5f543ecf04120be2b156773a09c3b5bb2f9d711a
    mem[384] = 0xabac93f93c492e8acb327e9bf4c621f1f46fa0db
    mem[416] = 0x33de601c9823f152ca1d6ff73274d31e178513
    mem[448] = 0x373ee62c54831fa3fe104c0f17852561081b8ae7
    mem[480] = 0x8d164b2e6bb413ff9ae62183e2121c60a5433556
    mem[512] = 0x86bfd5cac160f5e4241649d2175a8ef85bf5096c
    mem[544] = 0xafbb6b4497221ff5e67b9e9ab8807f1f46697e52
    mem[576] = 0xada3bce7d71b3212a15bbd3c0d532fce5559b3e5
    mem[608] = 0x3e92c6a38055961753fbf21b957b373fd10a4e66
    mem[640] = 0xb931a48bdf289a3ebc6bce9dbe69754e7c7046fb
    mem[672] = 0xc17d9dedf2d696400f9457fbb977b14f1c2a188a
    mem[704] = 0x44fdc0004c3d93f8228db287c5dfc22dd02c6593
    mem[736] = 0x7b535e55b8060aceaf785fd5015e056ee7b710b5
    mem[768] = 0x9c99d6972613d7c53e113c0c60c6ab1f78b5c39e
    mem[800] = 0xd16c6c10e95d4fa04cc5d345c86e2af0bd890131
    mem[832] = 0x6a355a299bdfe377b0689c91cf1715fcce7f7871
    mem[864] = 0x92fb4eaa17a50c26bf1de13c1ecc77701279ef39
    mem[896] = 0x6206bde186b19dd1b779d7502b95a7d31d23a978
    mem[928] = 0x595df6eebfe8f3d3a6ff3c34064d8f5886fa911e
    mem[960] = 0x34958f48d089e2987eb4be807d237f20b64c9906
    mem[992] = 0xc1332f3e6806fe2126654ccd72a125e7b3a9c28d
    mem[1024] = 0x6547911a62e79677e7536950cbd6dd474671bc69
    mem[1056] = 0x689e13332a8e8ee7c9d4da18ea7ea6980185d79e
    mem[1088] = 0x74508b89e5d59c04b63b32dc6a62700daa027543
    mem[1120] = 0x55c12098a67bacc987751543f2acfcec458a86f1
    mem[1152] = 0x81150815287691742499cdc41e9b061877f3b597
    mem[1184] = 0x3b4aa8fd21658a08a21bb9b4febc7b8416737a59
    mem[1216] = 0xa127913b020b896195351edb05f85784983bb24d
    mem[1248] = 0xba1235b33ebcfda447921d757f66999dabc930af
    mem[1280] = 0xeb21ddd44cad338d75872c196231ff63f7ec04e0
    sub_f9efa9d4.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_f9efa9d4[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f9efa9d4.length > idx:
        sub_f9efa9d4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x78d386d8db2d6dd79ef8f3d198e97dfeb8c9283
    mem[1344] = 0xc61e73b22b0fe14888e6abc87f7f8dcb1b0b1f0a
    mem[1376] = 0x9f4d0a254fcac7e1febfc73de78f2ef3932ee246
    mem[1408] = 0xbcbf6906fb157f071e9b716d015391958266f6
    mem[1440] = 0x47a88068ba34579f3040b19bc304819cfa1610a2
    mem[1472] = 0x50b4e7293afeae8fd99587a4256707ca4382b4c5
    mem[1504] = 0xdf8120396ab90860cc8cfd2c5d13df28b625c8d6
    mem[1536] = 0x819bb1eeb48601d05a9e7003d6648a78744cee23
    mem[1568] = 0x68dbd5d8b4bdcc5af856b137d5546434fef4e7c9
    mem[1600] = 0x3345d4d1a67a0a1cd7273ac9c30a2273d61140b5
    mem[1632] = 0x208da7c8ec0016e0681e3d76673eb49465ded5
    mem[1664] = 0xb8285904890c3339ffd9952d78b1f56b23bb857c
    mem[1696] = 0xb2ba4da3637ae29a54877e2d9f11c8c72b29df86
    mem[1728] = 0xe263746bf624060aa47e52722baef1d59a99d232
    mem[1760] = 0x7b02b08fe8104dca2b866650db8c8919fb5be61b
    mem[1792] = 0xabe3b1e98dc1f0162b62dded6517003a1138db73
    mem[1824] = 0x49f4a6d9840a2c8b3631d6c7968feddc35938ba0
    mem[1856] = 0x1a8ab5a2b4c69f5df3b0f11680ce4d9b94eedf20
    mem[1888] = 0xdd6c41da85db8f24976855614195f9277453290a
    mem[1920] = 0x389b4696f16a104ae139b19f3ebf3fda8d4f0ebf
    mem[1952] = 0x9a45ee78133057ec8e92d771629513bc5535037a
    mem[1984] = 0x21c7bb9ed650a6149e61c7944cf24af18d0f682d
    mem[2016] = 0xa196d69a3c9cd63b98a03458ceef6e9a54017773
    mem[2048] = 0x9a1d40583c90d26855276aa65b148e641876edeb
    mem[2080] = 0xabb5267c8c9a306357e156f5f7df6948ce293e84
    mem[2112] = 0x20e18891bf38c5425d08115430e6904b2f4740e0
    mem[2144] = 0x86a038f48279a84017fef40f057bcc25cd804872
    mem[2176] = 0x9d9dc4c1efd94f02f392e929c1a0826371fcfd11
    mem[2208] = 0x1d8e4250dea8beb7a5acdd739553a7cf307080b2
    mem[2240] = 0x74cd8ae9cf8160ddde8b0f53255241cd7f5b07ff
    mem[2272] = 0x318e254f8b344c86a24edbce24f5c90e66d92f9c
    mem[2304] = 0xa89057a17564f3934dc0212662407e2c6285a9df
    mem[2336] = 0x394612b40d987e26e06b652439fbbc816ce3cf6b
    mem[2368] = 0xbe79116214afc1fe33d8db7836f6399b46985ba
    mem[2400] = 0xce6e4a8feb4aac5dec3cfb6226d07f9b117666c2
    mem[2432] = 0x3accdf1cb131d210aa59f98ddc58f74d6bc3d798
    mem[2464] = 0xcd1300a94825b5ebed103e1d644ff98668137059
    mem[2496] = 0x13b46d6fab46772ac4580953def6c237d01ab
    sub_8a6dcf45.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_8a6dcf45[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_8a6dcf45.length > idx:
        sub_8a6dcf45[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_8a6dcf45.length:
        if not sub_f9efa9d4.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_8a6dcf45.length, sub_f9efa9d4.length
        else:
            mem[2660] = address(sub_f9efa9d4.field_0)
            idx = 2660
            s = 0
            while (32 * sub_f9efa9d4.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f9efa9d4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_8a6dcf45.length, sub_f9efa9d4.length, mem[2660 len 32 * sub_f9efa9d4.length]
    else:
        mem[2628] = address(sub_8a6dcf45.field_0)
        idx = 2628
        s = 0
        while (32 * sub_8a6dcf45.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_8a6dcf45[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_8a6dcf45.length) + 2628] = sub_f9efa9d4.length
        if not sub_f9efa9d4.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_8a6dcf45.length, data=mem[2628 len (32 * sub_8a6dcf45.length) + 32]), (32 * sub_8a6dcf45.length) + 96
        else:
            mem[(32 * sub_8a6dcf45.length) + 2660] = address(sub_f9efa9d4.field_0)
            idx = (32 * sub_8a6dcf45.length) + 2660
            s = 0
            while (32 * sub_8a6dcf45.length) + (32 * sub_f9efa9d4.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f9efa9d4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_8a6dcf45.length, data=mem[2628 len (32 * sub_8a6dcf45.length) + (32 * sub_f9efa9d4.length) + 32]), (32 * sub_8a6dcf45.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
