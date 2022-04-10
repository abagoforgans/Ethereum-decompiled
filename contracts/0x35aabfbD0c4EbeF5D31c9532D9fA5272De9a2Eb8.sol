contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage37' / 256
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
    return code.data[494 len 7074]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_ee59e233;
array of struct sub_03433eb7;
mapping of uint256 balanceOf;

function sub_03433eb7(?) {
    require arg1 < sub_03433eb7.length
    return sub_03433eb7[arg1].field_0
}

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

function sub_ee59e233(?) {
    require arg1 < sub_ee59e233.length
    return sub_ee59e233[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x3ce4ebb895eb5ec8a2852ef0d356a4ee59131488
    mem[128] = 0x642cb0acc37659233e4fc51f637593c0a5fe22b1
    mem[160] = 0x426224ced9846995d6d3862538790de69c8c78a3
    mem[192] = 0x2d157685ad6ea0198e7c52096623770951a33da
    mem[224] = 0x66e436857f889dd070d52b7561ee7aa5fb02d069
    mem[256] = 0xa03c7f165e3dce2b98f05cd8079ff0dc64c0963e
    mem[288] = 0x54087184b0225aba6693fd423a1ede68af0b613c
    mem[320] = 0x3a7a5cdc33a2eeab3001f674b887959d9c6407b5
    mem[352] = 0xe80205c7d69b0e18860130136fd9cf7049b7a89
    mem[384] = 0x77b481e8d1ceade62e4322525083fda5a893623b
    mem[416] = 0xf36594825424b9bf71a6666836dfe717f2b3ce7
    mem[448] = 0x36bddb41fb700aa806d28ee330064b7bfe8ede0d
    mem[480] = 0x82eb4085d24889fb9b1e52020874224ac058bb28
    mem[512] = 0xfb0041651583d94c3d520d418158b5a0f85cc267
    mem[544] = 0xcd2bd34ad5fcc1abb43d5726f3d422065599c7e2
    mem[576] = 0x2651b7be52cce12863e566ca402b0258e7af3711
    mem[608] = 0x37695d06befb67b38ae84e8620fa2dacab24c576
    mem[640] = 0x9b97587c215d7c539d61d968db6c7b6199edcf19
    mem[672] = 0x966cf253fc216fc6e4732ed42cf2892d859a8f5a
    mem[704] = 0x3fe207c45b2cf61b79bd3fc7d903a78dbbf458
    mem[736] = 0x1decdd1c799533dcb6a559dd331f3f42f19b389c
    mem[768] = 0x3570b1eb20dadd538a3f142cce12bed7bac2c204
    mem[800] = 0xb9ddda8b6704ac31084c4121140fb7687e756535
    mem[832] = 0x20fb7f58b80fd343015d6e6e30e937a9355c4caf
    mem[864] = 0x6a58ffa438f884a5e53b46817061cc7636c64eff
    mem[896] = 0x7726287502f6e6f939121c03c0b445af6e4794b8
    mem[928] = 0x7b41d1598919ccfb56c5cbc0dcb4dfe5622093be
    mem[960] = 0x5e465eb6dd9d18bd97bd8842839a76ae90c5356f
    mem[992] = 0x42ce8be4aa46234eac1c406621aabaf434bcfe0
    mem[1024] = 0x5fb79dceaa181cd5755ccfebfe88085f9b0a2d1a
    mem[1056] = 0xd7e08c919c0a667e34694b68c0c546d94c965bd2
    mem[1088] = 0xd85cef8dcba561ac57af81b15c13e4a52af2d8f9
    mem[1120] = 0x516a476fc4658b93e07c93e772aa47fd455525b8
    mem[1152] = 0x2eb3566b793a5b26a85712997055096c9270a269
    mem[1184] = 0xfb7e7ab3c584d5c5615d554e311c237ea172d48f
    mem[1216] = 0x607a0b31ad692237312b239792bdae98a6821ea0
    mem[1248] = 0xb6a363013fc87b7be99e57c1e2489796ce709cfd
    mem[1280] = 0x50af4deeda36b74b94875df49ee33e5c5ef08b7d
    sub_03433eb7.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_03433eb7[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_03433eb7.length > idx:
        sub_03433eb7[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x9db97b956745e2420219b318cd1f8a767eb3997
    mem[1344] = 0xeaad1ac596fa86aef3894cecd05638f213db2e54
    mem[1376] = 0xd129d0f66e5d7d1e2c32aa80415e64dda00d3a76
    mem[1408] = 0x2d149098f1b6fda9dfc8e37305dedf7855c2f8a1
    mem[1440] = 0x4ffd2df4a4dd4f3fe8bb91432450703fcfd40f9b
    mem[1472] = 0xd82f57787708992dc6402ebcc22d75d5a9bea0
    mem[1504] = 0x5c0751cbc42f596461d302b29b4df1473a7b9a95
    mem[1536] = 0x16ea325cd3147d5077922ced63272502b68868dc
    mem[1568] = 0x3c5afd9de8ca8f5b58d67d27565723834e303dfc
    mem[1600] = 0x59aec894c631c639fe2bfc0926bea724415c50c2
    mem[1632] = 0x2a8556a7bae4644c1dcaa824ba00bc21ebd51a22
    mem[1664] = 0x630f236487ae1f1bcc719bfd2e0ad23e3aa30ffe
    mem[1696] = 0x49a1dfb99ce473eeb92450e847b078271c91b3d1
    mem[1728] = 0x251402227bce7264aa6c3813ecd6f1e89946e232
    mem[1760] = 0xfd242a29505a93e2e8f4410aad4e90a0864caa25
    mem[1792] = 0x1805a0627782950a9fb18f72af90f56280955378
    mem[1824] = 0x38755b9eded9e9e3ada2e7c8deba4b843cd4bf27
    mem[1856] = 0x3d83bb077b2557ef5f361bf1a9e68d093d919b28
    mem[1888] = 0x5de034e70e2ada85ced029ae0570122ad58e50dd
    mem[1920] = 0x1536155ce7a9441a31c34bf12bdda3dda80b40
    mem[1952] = 0xbb6385b9a1928618ce4717953fd6944983d87998
    mem[1984] = 0x6b731f964a8752b27c02c47e9596ce10f818ca86
    mem[2016] = 0xc2c54f01febbeb8f420fb741890012e9a3ab505a
    mem[2048] = 0xba5b81c1310ee9bda3c2a019604f4d146b132fa7
    mem[2080] = 0xd9a5633e79a5cd7de94b5c625a2669e5a828efeb
    mem[2112] = 0x61b81690dd4d56367c3a2e034132f43380f08c52
    mem[2144] = 0x3b7d47b9ba6931dccf0f08cb58cbf9aad0570052
    mem[2176] = 0x1eb02b325b3c13bc0c129c09a3fa455c7af2aed4
    mem[2208] = 0x85135e2cea31b7c458d12457b33c123b02794b26
    mem[2240] = 0x703ee212675614c38535fbdf21320f66e94a868f
    mem[2272] = 0x8f0c59348b0d32eb02302b30a540ce9da9713e13
    mem[2304] = 0x3d75a80b6c0c54ddb0fe43e8239fd71763cc5955
    mem[2336] = 0xe6a6fa04691cfc59126d9a9574a5b163d8101e73
    mem[2368] = 0x5de5992d3bf8c8a87250982531f14903bb7160b0
    mem[2400] = 0x6cc3a8500ccba0b9a0cf31ab9d568b7b9a4163ae
    mem[2432] = 0x7a75311d250a55b5537a189163c7ff5c57c41876
    mem[2464] = 0x8accfb40567db79a37d5006599233692b0ce2141
    mem[2496] = 0x5f8b9e53845577d00eb46911f622b4cfb9bbd798
    sub_ee59e233.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_ee59e233[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ee59e233.length > idx:
        sub_ee59e233[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_ee59e233.length:
        if not sub_03433eb7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ee59e233.length, sub_03433eb7.length
        else:
            mem[2660] = address(sub_03433eb7.field_0)
            idx = 2660
            s = 0
            while (32 * sub_03433eb7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_03433eb7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ee59e233.length, sub_03433eb7.length, mem[2660 len 32 * sub_03433eb7.length]
    else:
        mem[2628] = address(sub_ee59e233.field_0)
        idx = 2628
        s = 0
        while (32 * sub_ee59e233.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_ee59e233[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_ee59e233.length) + 2628] = sub_03433eb7.length
        if not sub_03433eb7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ee59e233.length, data=mem[2628 len (32 * sub_ee59e233.length) + 32]), (32 * sub_ee59e233.length) + 96
        else:
            mem[(32 * sub_ee59e233.length) + 2660] = address(sub_03433eb7.field_0)
            idx = (32 * sub_ee59e233.length) + 2660
            s = 0
            while (32 * sub_ee59e233.length) + (32 * sub_03433eb7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_03433eb7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ee59e233.length, data=mem[2628 len (32 * sub_ee59e233.length) + (32 * sub_03433eb7.length) + 32]), (32 * sub_ee59e233.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
