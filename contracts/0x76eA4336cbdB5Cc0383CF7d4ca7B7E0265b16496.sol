contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage85' / 256
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
    return code.data[494 len 7341]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_7748e49f;
array of struct sub_c9a2cd45;
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

function sub_7748e49f(?) {
    require arg1 < sub_7748e49f.length
    return sub_7748e49f[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c9a2cd45(?) {
    require arg1 < sub_c9a2cd45.length
    return sub_c9a2cd45[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x4e50c839dc2a61ddce63d38129d26b6a0b5ebfad
    mem[128] = 0x2ed2e940b124e154cdf6e017236fd92240362ae6
    mem[160] = 0xb8bdbf8050ee049711bbc3121cade9c89427f494
    mem[192] = 0x85e9f6fe0e3e10406c620b2b0ae1dba31023d529
    mem[224] = 0x6a86d4c69a3e384d427037b4a270dbfdc86ec3c6
    mem[256] = 0x62416a7c30ff9d36aed8e47ba5bd99afe5a0964c
    mem[288] = 0xa27098a4ef7d730a6d26ed93bbe292a15cac1248
    mem[320] = 0x37081943434c6d5da129b32933ac6ab27604989
    mem[352] = 0x747b2b227d86d918fc0fb8f49a2cf5b0a7020656
    mem[384] = 0x3bee58089a4a037c52441bed5b01d7e89fa4272d
    mem[416] = 0x1889d332f08064704ea9250aee80914b28daa115
    mem[448] = 0x5e74e1656f2185e137683a0ec079c06c25be97f3
    mem[480] = 0xf23391dc807f0bf764b0259b71bfb3277769c24f
    mem[512] = 0x57e1544bb402ac3f56d1d70982293dc75be6c1e9
    mem[544] = 0xb66fab210fbd6aad6d4249a1808827752b54e413
    mem[576] = 0xd059c9cd855e3baab47309a81746885b552b0d24
    mem[608] = 0x3c6036f74d76925e537661824049c3ff48480269
    mem[640] = 0x3406506648b4834d0ea113863643727c7e120807
    mem[672] = 0x1539a4d7777617c1ce7d2dfb04f47ad17ad12b93
    mem[704] = 0xf4129416779273f0169ef4f46c37a7335c880a3a
    mem[736] = 0xa723a53512af70c6ab2ebacc8a76cf7e41cbbcc4
    mem[768] = 0xe4b35245a3377bf9546cdbc7a3fe7f6e57dd909
    mem[800] = 0x72320be7248533ef3f001c7cb27c1a94878382d2
    mem[832] = 0x591adc1e511f6b4fee1d1054f2f37d3a960873b4
    mem[864] = 0x7a8454687467e867f88a5bf4f10e2b2f0386dbd5
    mem[896] = 0x34afff43d7e35a5ab73c4023c2c3a4a66e631c08
    mem[928] = 0x31c28668ced668587533d67d65e2c6740ed79b3
    mem[960] = 0x3e16eda27ea7b3522a8a2d700557e5aef64f433e
    mem[992] = 0x8ff1ce63951b6e85f4f9b7cf91ec06ef40e9fe0c
    mem[1024] = 0x1eb5d35f643a070bdffeba5da3adb5aba214f8b1
    mem[1056] = 0x2dd63df2f54ffcf49be5d20f58660b8bc02c2a1a
    mem[1088] = 0xd2c94fcbce214374b56d75c371f7e5e1415fcc8
    mem[1120] = 0xbb93e211e37c73a1d060caf1f196faee3a3d7f4a
    mem[1152] = 0x5e79f39180d243184234389c01773ac8ce424834
    mem[1184] = 0xcfc21bfc8e874a0e66cda5d7f4395f9478ccb58d
    mem[1216] = 0xea183765ee3153eb0e66f5b61ea10745a4309840
    mem[1248] = 0x67f23e9af83aa9860b6344090a03be4dd17cadfa
    mem[1280] = 0x42377201fe2a43cac3974c0c5d2cd795fd6ea706
    sub_c9a2cd45.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_c9a2cd45[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c9a2cd45.length > idx:
        sub_c9a2cd45[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xd7f80bd621b29a3988b5e37d9fcc0b58499e83ce
    mem[1344] = 0xadfddb9c6b66ba7371ec81826677052e4f5b623a
    mem[1376] = 0xef46104501f27a2abbf4622da962ba4592cd8f0d
    mem[1408] = 0x6dac6fdb1a61de30e90bbc17890c2bfeccb09d6d
    mem[1440] = 0x1f703b9fc93d45bad99c058fd2d48d2e10889867
    mem[1472] = 0x80738ba526ee722e401bd9f0d7c86ede25c0f98f
    mem[1504] = 0xf55a87ce3f2f42c89d281c69b45f198651506601
    mem[1536] = 0x1f8c3071b1f87acccd9d1a7c3b802b5c55d77164
    mem[1568] = 0xfa192ef614c04f498bf58640a75dff1e2cbd61ec
    mem[1600] = 0x10066ffd7ddde9300175ca81b4b5556bfa520fa2
    mem[1632] = 0x3e8a8c5618b48697913681423f4e5376e892f156
    mem[1664] = 0x5d16ab10d296e926844723606c2f4c75204565a1
    mem[1696] = 0xc5d1017b0ed7d0586e1a7fff2e470897bd9b7485
    mem[1728] = 0x6b6327ec3cd02bb43762cb01509c4a0853edb0b7
    mem[1760] = 0x5aa7dc675c216d651b38d559c71d7d6ec7d18396
    mem[1792] = 0x93a6de51936d4d244ba5ae1647d1e889a7b3f1fc
    mem[1824] = 0x7b6eca8cee3c920427fc011c18d6805e4159bbc9
    mem[1856] = 0xc28958010399e5d07bdde311f6d96f3c1125efb
    mem[1888] = 0x9d560b31b512ab9b3e25af030b99b0bc66ae63b
    mem[1920] = 0x4da90187375410036937f7d8afc7f55fe360ee6
    mem[1952] = 0x8f5a2ba5082620becad6c75ae2f5990b3ba7f232
    mem[1984] = 0xfdd47572d136ca106d985a35b47ef9939fca1a5f
    mem[2016] = 0xf1413f159fd619e87a4753fe66741cc714c8319f
    mem[2048] = 0x6030c2a9af070ced2fc1ac80b419afc66b3a92db
    mem[2080] = 0x39afa115ecbd52bccc4dbc9e17c52fec5da71856
    mem[2112] = 0xa94539d9ac98d9c453c5e9b0f3e47c4a12852b7f
    mem[2144] = 0xac053c8ed8960c9d06183bc5e8a77c6ae5764ebf
    mem[2176] = 0xb1a4aed014cb608a074904c7d8bcaaba1cf621e
    mem[2208] = 0x9cbfd15b23af0a404a1bbfa19c802627d6a57373
    mem[2240] = 0xc8af0e05082275f41b7c68b25d98bccc3db22a3c
    mem[2272] = 0x61b88defc08959e0183542ce549157ac29f03e29
    mem[2304] = 0xc9b0dde2249050ab47bcf67f15c7581f234bb398
    mem[2336] = 0x371ec81d4b76b15af33d4c8a57c7ab3e8e7eada5
    mem[2368] = 0xf56a5239b0e8fd4d39d7eb16f577ed1996d6a640
    mem[2400] = 0xd2fd10ad826dbaa938043bac0c18574a0a6dec59
    mem[2432] = 0xdcff6b68f270f0ed0968c2ed1b65bef6746fbd73
    mem[2464] = 0x69e0bcba694b1e64fc8ad46f8e1247284e4e01e8
    mem[2496] = 0xd3cd93c2f3e4a9007b96043fbb6c214ec0900778
    sub_7748e49f.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_7748e49f[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7748e49f.length > idx:
        sub_7748e49f[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_7748e49f.length:
        if not sub_c9a2cd45.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7748e49f.length, sub_c9a2cd45.length
        else:
            mem[2660] = address(sub_c9a2cd45.field_0)
            idx = 2660
            s = 0
            while (32 * sub_c9a2cd45.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c9a2cd45[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7748e49f.length, sub_c9a2cd45.length, mem[2660 len 32 * sub_c9a2cd45.length]
    else:
        mem[2628] = address(sub_7748e49f.field_0)
        idx = 2628
        s = 0
        while (32 * sub_7748e49f.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_7748e49f[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_7748e49f.length) + 2628] = sub_c9a2cd45.length
        if not sub_c9a2cd45.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7748e49f.length, data=mem[2628 len (32 * sub_7748e49f.length) + 32]), (32 * sub_7748e49f.length) + 96
        else:
            mem[(32 * sub_7748e49f.length) + 2660] = address(sub_c9a2cd45.field_0)
            idx = (32 * sub_7748e49f.length) + 2660
            s = 0
            while (32 * sub_7748e49f.length) + (32 * sub_c9a2cd45.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c9a2cd45[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7748e49f.length, data=mem[2628 len (32 * sub_7748e49f.length) + (32 * sub_c9a2cd45.length) + 32]), (32 * sub_7748e49f.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
