contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage9' / 256
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
    return code.data[494 len 6767]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_aae595f7;
array of struct sub_825b0117;
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

function sub_825b0117(?) {
    require arg1 < sub_825b0117.length
    return sub_825b0117[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_aae595f7(?) {
    require arg1 < sub_aae595f7.length
    return sub_aae595f7[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x870d5b110a8bab1118ba9c154c901c64ba0d7bd0
    mem[128] = 0x169b1349caaabbc8a09dea8e270c936217de1b2f
    mem[160] = 0x21ff6ec3ee6e82a7b000bc0c01dc5c18f203d848
    mem[192] = 0x5faa607c048e4878a432461823058cb12c325793
    mem[224] = 0x77db8fb566de1ca35a08f07eea1c9fba3396821c
    mem[256] = 0xe3f5988ff74202d6c844eb30ebaadd97553853f
    mem[288] = 0x5786be35a0b6f620649a71b1801ea405199711d2
    mem[320] = 0xb2a84c2eb95f24f2cec105133416cf341349d222
    mem[352] = 0x84a82c3c923e145c21f2d74d1f6002fd2acf85eb
    mem[384] = 0xaa2e96fab62a00484a20391b10eeffa222366614
    mem[416] = 0xfbc276086b3d54225376a567f62d90ea553265d8
    mem[448] = 0xf68cb23154d2e28fbadab1c043f59b4feb3583
    mem[480] = 0xda180622e27b4e9835b7f8a40a400b5da93ccf77
    mem[512] = 0xe938a83f120cd9d8f16eadbdcd7de672a23b133f
    mem[544] = 0xb0d2be39f3f0e3b2f3f2d29b4d73ad7c7fc13fb9
    mem[576] = 0xafaf0015fe897490706c653d01d487164e430c6f
    mem[608] = 0x26d03d509321d6bc242b0ec51883227b43ab096b
    mem[640] = 0x7cd8a62fcece6fd1532ff620b376bb76ccc12279
    mem[672] = 0x2b3005f30f644debc80efc59d1941d070685e6cb
    mem[704] = 0x5d8d13a916a0bf4ee55ce70e5dedb6e736ab272e
    mem[736] = 0x201a96665f84c0150648d933f74469ce9b93d69d
    mem[768] = 0xd157382c2a0654816a98d4bc439fb6329ac7a58c
    mem[800] = 0x39e784f732ea1ce5825c55a68790745cda1490ec
    mem[832] = 0x18169adcd0a5f7b6844b7e8959bcb6f42c35624b
    mem[864] = 0xd5024a77e73bc743478b0b240956264a55214201
    mem[896] = 0x6b9df77b77b9ca645a1b4583fd78188b4f2f2d7e
    mem[928] = 0x4f6bb6c378058e3860b71521a37a5416f18fe540
    mem[960] = 0x6f4ce9fbbc89717665760ea52ad51a2546799da4
    mem[992] = 0x9cea94055b09badf1ef1ed022184cd1db4b72614
    mem[1024] = 0xe51800feda46daa659088970801229370d9f789b
    mem[1056] = 0xa516d402e777b62b04fc9bad66aeb91f3c00c7f3
    mem[1088] = 0xc67df762c41db77975df39c6435f6a571e072d51
    mem[1120] = 0x95d3ea5f9cf2ca8441a1d8d78f6d28040bfde385
    mem[1152] = 0x5ab5bd6815efed11fa40b5f20ed1bc1deecabd93
    mem[1184] = 0x50e603bb1de0017ad9a6c811348e877e2c2af3da
    mem[1216] = 0xbf1d190b4167429f62a32d936c984764f8ebbfbd
    mem[1248] = 0x5ab260e81ec0e01a4a653c4423da83e7cccc4e39
    mem[1280] = 0x1275b8d94515234e3475e0fe2e4641a7f8344a30
    sub_825b0117.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_825b0117[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_825b0117.length > idx:
        sub_825b0117[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xc6618ef7ac78eccdfcfb27fd340c428e59ada1f0
    mem[1344] = 0x8ae5443bea0983bf00519eb77217c87bd3aa9215
    mem[1376] = 0x8cf3fd100a30e61bb9cddf6c36a0a496551c7213
    mem[1408] = 0xe4cc8bf4320e8ef28e0acf518557057078589664
    mem[1440] = 0xdc2c38da3dfb0fb1344b40092662e8af69c7bb5d
    mem[1472] = 0xcf7c0b9a6e12a2a8b18e23ef32d34b7d3b424d91
    mem[1504] = 0xed04ee08f6f34151e87423ad8a8f7decd5a81e97
    mem[1536] = 0x776daabc1fd7c6af4591a0ef036a5b822e46221e
    mem[1568] = 0x4d9394a460b0910f8888bccd36c7ae898b188be
    mem[1600] = 0xacbbab755ef33b842d13ab49cc3e304cd5f68dee
    mem[1632] = 0x750590007aa73031833b67fb55001b04120ab3a3
    mem[1664] = 0xa8de20df8b30958adeebfa270e9a52712bb143
    mem[1696] = 0xebc80ec7c7de57b5c9649a66984d39afb3bfad5a
    mem[1728] = 0x1648a3b349bbf47c2e8451b1bbc6dbdc0acc74d3
    mem[1760] = 0x51dadc573f4c3a885f9d14467ed5bbbdbc680c82
    mem[1792] = 0x743ccdad858cdc6e96b268582a6004d1ccb5a891
    mem[1824] = 0xb6599f3672348d51b21d1c1aff0a575611daaf09
    mem[1856] = 0x50285c35cebde1e0fed61f3b109a363c38ff6242
    mem[1888] = 0x754bdffc05380e2fc29529b505cb2ca8ca6cf247
    mem[1920] = 0xb977650777518f4966ce91b0d6056b33f8e1aa94
    mem[1952] = 0x48db2d577aa039f5d21e6afdbc017603f9c198ab
    mem[1984] = 0xf2ea4057e14ceb7ef67323333985364cb1561016
    mem[2016] = 0xceaabdcaa45e866803737c996a5bd511be3ded81
    mem[2048] = 0xb8db4b0f7cbb580bd3e5394514e60cbb744b54b4
    mem[2080] = 0x8eea5b39863ac9bf130a3b269f1eb9d4bfa6cce0
    mem[2112] = 0x8b0376ae067fdb08e198ba6c00bc2a5affa8e324
    mem[2144] = 0xa12fb68ae026a230eea508fde2bdaedca64d6423
    mem[2176] = 0xd30df7e9acb09569e981c7ac6e83e535bcb5bd31
    mem[2208] = 0x8e4b80e0b91a4217ed387e33ee085dba682f6ff6
    mem[2240] = 0xefa845a564208d2028c9208083ee87a668a6f835
    mem[2272] = 0x80645c8b96818187e335553f47c1e78a135fbe15
    mem[2304] = 0x88da0fff679eafd5faa0bbf2fb65a522be5d560
    mem[2336] = 0xb45dcec871b5bee0e60103559910b9bc92daaa79
    mem[2368] = 0xf216936db613b8ab102354ea95442f36e846f8f6
    mem[2400] = 0x84f7196257c125363dde03a3d50cedfdea5670a8
    mem[2432] = 0x9fb08713d96f11bdb1dcfdbd68b3e577a0575e4e
    mem[2464] = 0x7c8fe0f29436656a5d293c762658e269aca003c3
    mem[2496] = 0x5ac7833fc026015ae87aa070593cfaa4bd253b9e
    sub_aae595f7.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_aae595f7[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_aae595f7.length > idx:
        sub_aae595f7[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_aae595f7.length:
        if not sub_825b0117.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_aae595f7.length, sub_825b0117.length
        else:
            mem[2660] = address(sub_825b0117.field_0)
            idx = 2660
            s = 0
            while (32 * sub_825b0117.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_825b0117[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_aae595f7.length, sub_825b0117.length, mem[2660 len 32 * sub_825b0117.length]
    else:
        mem[2628] = address(sub_aae595f7.field_0)
        idx = 2628
        s = 0
        while (32 * sub_aae595f7.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_aae595f7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_aae595f7.length) + 2628] = sub_825b0117.length
        if not sub_825b0117.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_aae595f7.length, data=mem[2628 len (32 * sub_aae595f7.length) + 32]), (32 * sub_aae595f7.length) + 96
        else:
            mem[(32 * sub_aae595f7.length) + 2660] = address(sub_825b0117.field_0)
            idx = (32 * sub_aae595f7.length) + 2660
            s = 0
            while (32 * sub_aae595f7.length) + (32 * sub_825b0117.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_825b0117[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_aae595f7.length, data=mem[2628 len (32 * sub_aae595f7.length) + (32 * sub_825b0117.length) + 32]), (32 * sub_aae595f7.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
