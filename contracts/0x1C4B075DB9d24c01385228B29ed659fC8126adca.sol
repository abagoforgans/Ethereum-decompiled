contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage64' / 256
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
array of struct sub_288e4b4d;
array of struct sub_4aba9080;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_288e4b4d(?) {
    require arg1 < sub_288e4b4d.length
    return sub_288e4b4d[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_4aba9080(?) {
    require arg1 < sub_4aba9080.length
    return sub_4aba9080[arg1].field_0
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
    mem[96] = 0x7b3cfda2e7312d053cb625b88bccde21bb9b105a
    mem[128] = 0x669846b7954737e768a2532f39a805f268f1de4f
    mem[160] = 0x4e4f398c5816ade10dd466a8f2466fd0d555af
    mem[192] = 0x77ef9f33f4fb7c70d760b3e300dfc91f89b2184d
    mem[224] = 0xd828981806f76557240a1e907ce6898132b90307
    mem[256] = 0x2f4c9572d41246edbddd31a7a6e2e3b8fa5a58be
    mem[288] = 0xc1cc1c3478fc666cee6125fbdc34d25b3216347c
    mem[320] = 0xf9e57e8435656c0bfa0fb0e7871e0b516d9d1db1
    mem[352] = 0x493321a16dd81c6b21c6a47ad88092bd9713ec49
    mem[384] = 0x1098cf135f213df0f81dea61a66adadae78215
    mem[416] = 0xad0bed7dd31fa44a578e7c68d44c765370e370f2
    mem[448] = 0x4ff986d0620849d6f6ae92f219c0d0417b0d56fd
    mem[480] = 0xf40eb3c6305fe570e9c3608edc0ab2474777edf1
    mem[512] = 0xf37abc322821818a2bde6a495d3321fecde0e9cd
    mem[544] = 0xebdffaa16ec913cd50a65f174d65efd75ee021b8
    mem[576] = 0x92208e3ed9cb8623509af3f56ffb29c713c83148
    mem[608] = 0x91e714fdc318cfaac8b4b1c0c01f61ccda72243c
    mem[640] = 0x60704e69650a993825e1a37d41828cc229390eb3
    mem[672] = 0x743d5081fe507f68ff71a91bd4f9a7c7a5707ee5
    mem[704] = 0xf8e188ccd8b5658051b0a800812fb457399f7305
    mem[736] = 0xe4d1dea57f499941ecf33ef07598ae06e6b601da
    mem[768] = 0xd59077108a4d92976f9c7cb22136796b193987ab
    mem[800] = 0x6ccbebc2e2ff705f764b5adce4addf1baaccadc3
    mem[832] = 0xc7ee1523ba9da15301f5470a08b28cc36688fa75
    mem[864] = 0x7e57bbf227b3ea3672ced27995f90f5a09a9f21
    mem[896] = 0x1beaae14e05bcef8cb7af60c81f492aed28f7aed
    mem[928] = 0x50439212ac10b532e55af0ff05f2ae507d1311bf
    mem[960] = 0x9b09270fed481cbf9aa23155a69dc5a200c31
    mem[992] = 0x1afef4b6edfa811a36b6311f0d9658cd0cd4f65c
    mem[1024] = 0x9c45726564c6c2d2d0790c17860f71495afa4381
    mem[1056] = 0x497a2b3d91e0ec288844c9fa1054cc87b1f9eec2
    mem[1088] = 0x4e2774c905d58cb787266f447aa36f1cc214683a
    mem[1120] = 0x22c414f2c9f1a664df26764dc7b0e8b0462e570a
    mem[1152] = 0xbaf43d1f45afd8756d7a416c15041a07789a2848
    mem[1184] = 0x115290c9c9d0befef9df3309afdca8aac967ba1b
    mem[1216] = 0x4b10a7e4434ee10e38cb571db1e182d3bd69e9f2
    mem[1248] = 0xef1e454f954ba44b16fefd1997782f2ee0d7b7c8
    mem[1280] = 0x56d9452810a6dde3eaf2dc418437784bbc36af6a
    sub_4aba9080.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_4aba9080[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_4aba9080.length > idx:
        sub_4aba9080[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x23c6840abc917f957b151629980169f38a91a91
    mem[1344] = 0xb07f192a15a4000a3b781b7504af7ad5eadca9ca
    mem[1376] = 0xbb7e9033b2c32cbd0e05d1a8149c459e70e930
    mem[1408] = 0xea8627700bf8a59a2e73cd743f0760ae8a7c0291
    mem[1440] = 0xd3e98b35e7ec9c9f345910a41d078edcb8bedda3
    mem[1472] = 0xa07902ec23753351e9ca3048ea5fba0175e9e255
    mem[1504] = 0x62350d8419cd1925903e723c0175aa07fa55799a
    mem[1536] = 0x562ca3ad14b09c32f8077a095b49884f9c05f55b
    mem[1568] = 0x5cad2410ddc4705c7c49b63157e246244b76a332
    mem[1600] = 0xeaa3cdca15ae2fa7b39e006d3c57dadba19417
    mem[1632] = 0x53eb8fef28214c163231f6cf97fdcfb4d1d0dff2
    mem[1664] = 0x95cf22eece490e8e18b0dc9bed774e6289a5386c
    mem[1696] = 0x2660bca2af010176c6c070583de066370ff83e1e
    mem[1728] = 0x7132fed2d1d7136a4f812e2c5adee0322fc33535
    mem[1760] = 0xf3ae9651aeecd1370104cbe2b68c4f4172f7706f
    mem[1792] = 0xe91389e4283279db3b6a43edb279b58379b8de24
    mem[1824] = 0x292abcf64d9ee1fa579936c0a994318cae244fde
    mem[1856] = 0x1a4d536a8d1576b5caa66c58595a4227cbc02867
    mem[1888] = 0xd1ac52895256bc78d7bcececc754f152556193b
    mem[1920] = 0x93976436cee1be0746df2d0643ff4906c9efe960
    mem[1952] = 0x635328fe84eed1feb96c0bc5a1e5dec8d5de8a55
    mem[1984] = 0x19af5d84bc306517fdc009fafe8488e1e87a733f
    mem[2016] = 0x7b2e23deda03529b7930dd81b43a5f0c006bf1bc
    mem[2048] = 0x3b807fd64d88edc99efa24480100f57e3fd7d2d
    mem[2080] = 0x26c938dc0790999de74c877b510b08cada58311b
    mem[2112] = 0x16a1017e8046a53e10b4cfc1674f71dc9c11aeff
    mem[2144] = 0x15176d1e4c2ad48bdfaa338d3e1bb6525f8f2d07
    mem[2176] = 0xf73b02009453186234c2780018f5719747a7c6
    mem[2208] = 0x1809bf4deaaacbae65297a4dccba01c0fb595601
    mem[2240] = 0x5f95b5029ff5287976d0f83c04e950924aa4daad
    mem[2272] = 0xb76fa3afa6b4133abe8d2012d5ab41462f85cd54
    mem[2304] = 0x784f322b841e3a5350e0e1ca0253fd8a0ce376b9
    mem[2336] = 0x74ea266e2b100155dd33d6b0a839ad637b5297bf
    mem[2368] = 0xd13f49766869ed5811e5463ba5ed0b8d81d8b0c
    mem[2400] = 0xbcac7e0c34b4d2a032a1bafc1f74aff1d8d020d1
    mem[2432] = 0xf637e8dd7ad8c935401798599783e2f84151d836
    mem[2464] = 0x70e0a1274e71ce171df194340e6aef737fd32e72
    mem[2496] = 0x106171f5918b9fb80a47e83a081cf7426898c094
    sub_288e4b4d.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_288e4b4d[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_288e4b4d.length > idx:
        sub_288e4b4d[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_288e4b4d.length:
        if not sub_4aba9080.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_288e4b4d.length, sub_4aba9080.length
        else:
            mem[2660] = address(sub_4aba9080.field_0)
            idx = 2660
            s = 0
            while (32 * sub_4aba9080.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4aba9080[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_288e4b4d.length, sub_4aba9080.length, mem[2660 len 32 * sub_4aba9080.length]
    else:
        mem[2628] = address(sub_288e4b4d.field_0)
        idx = 2628
        s = 0
        while (32 * sub_288e4b4d.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_288e4b4d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_288e4b4d.length) + 2628] = sub_4aba9080.length
        if not sub_4aba9080.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_288e4b4d.length, data=mem[2628 len (32 * sub_288e4b4d.length) + 32]), (32 * sub_288e4b4d.length) + 96
        else:
            mem[(32 * sub_288e4b4d.length) + 2660] = address(sub_4aba9080.field_0)
            idx = (32 * sub_288e4b4d.length) + 2660
            s = 0
            while (32 * sub_288e4b4d.length) + (32 * sub_4aba9080.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4aba9080[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_288e4b4d.length, data=mem[2628 len (32 * sub_288e4b4d.length) + (32 * sub_4aba9080.length) + 32]), (32 * sub_288e4b4d.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
