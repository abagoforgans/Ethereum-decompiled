contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage44' / 256
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
    return code.data[494 len 6807]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_a198865f;
array of struct sub_d231eb07;
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

function sub_a198865f(?) {
    require arg1 < sub_a198865f.length
    return sub_a198865f[arg1].field_0
}

function sub_d231eb07(?) {
    require arg1 < sub_d231eb07.length
    return sub_d231eb07[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x47e5529afdfa92d4adc703bdc6b0c791f61c9e8f
    mem[128] = 0x3011417a4a9fbf2bef06165c1f7cb33b23b8bf5c
    mem[160] = 0x613ca419793114332c491bb320f6513841e7a0c
    mem[192] = 0x5753b5cc0e4326450bff2a53ec6a640fe9d063e8
    mem[224] = 0x7781467e89d168f6bbe13ecb4f8a1d87b91336
    mem[256] = 0x63279eb03d6012d68124f89c8db2266564bc777b
    mem[288] = 0xec3571350817ae5d3b3d713de28efdb30aa0525d
    mem[320] = 0x3fec34c18c44147d50084ffa2fda6092d41ab33d
    mem[352] = 0x3da9e760fac80638e31a8c9d686062db19c8ef
    mem[384] = 0xf48efa3378cdb57670d3f2b6229907f0a4c5cad4
    mem[416] = 0xb90275ec3ba607475b1b0debdfe83a06e5f7989f
    mem[448] = 0x341bb702637b7d55841d5cecab6f3c1038df3ff4
    mem[480] = 0x9c17a7ca8a095e92092077f60d3ccec711cf30c0
    mem[512] = 0xf462de56b80ac50b66eebc567f8c7931b3264c9
    mem[544] = 0x80238d9489dfcd961d84e1ed8959dfeefb23e8f9
    mem[576] = 0x7421d4eb09bcb5397af4398092cdc64c6a73e325
    mem[608] = 0xca956c45641a58557e2c4d71ba1e4654a4fe20ba
    mem[640] = 0xdbde7df004efb380bc8a457cc74c397ffd9929fa
    mem[672] = 0xbc0a87f29ae4b79dda1add1969fb8322a8a71a
    mem[704] = 0x73f924b5780381a43321f716ef5a18783a81d045
    mem[736] = 0x1a492588c87300940679dea4031d668f94355bc0
    mem[768] = 0x8f1d4a0a8da1ae5a8b91236198ff921de2ec2adf
    mem[800] = 0xe719b42a8ec4449bd7c65d29103b54d45d5cfc9f
    mem[832] = 0xc74a35b8cac219f8f6f5377b1073fe945eeb141
    mem[864] = 0x4a931abda42ffbcf03f657692b9978eb3ed3b2b3
    mem[896] = 0xbbf450e2ffa3be16f9cf084e46d0a363bb6e9887
    mem[928] = 0xc3e296582fb1aa7b89f0329fcf4d028a2d1536e8
    mem[960] = 0x3cdbca9593628db031a025a485b8ebb3ffe05401
    mem[992] = 0x223927d76a7ac70132a949aeed0f63edeb80a1a8
    mem[1024] = 0xf31bb5d05b36030b1ceac11f42b1f24447ed4486
    mem[1056] = 0xbf50539f7b529d0d107f83efbe22fedd2606ae55
    mem[1088] = 0x3d5fe94df9237985007755e5014c24fc33d9f6e7
    mem[1120] = 0x9e3ce4d68587dab7183dda7f8e1f51a08bf1b961
    mem[1152] = 0x4f8b65241ca95ea0fbe75bd62ee5dd5f5f89f9b0
    mem[1184] = 0x4f85d3ae611f16a6d57dd9d4ccb4b757d715a116
    mem[1216] = 0x58a1dfff61178ec0c1167b971d025da4b04bc43a
    mem[1248] = 0x2cb9dd8480498838ab9100444eed5a09269686c0
    mem[1280] = 0x1953c63ba88e38494b9431a4582211cdaa487b51
    sub_d231eb07.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_d231eb07[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_d231eb07.length > idx:
        sub_d231eb07[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xafbb6b4497221ff5e67b9e9ab8807f1f46697e52
    mem[1344] = 0xd021144ed4fd175dfddb93b229f3e347fb723d6b
    mem[1376] = 0x7bdf0bc4b9e493a7dfea7c1887b567be565e3f35
    mem[1408] = 0xef858432ee5319cfcd9b88af6403ee5da513454b
    mem[1440] = 0xc0e596b73361d2f50aa2a4105955d3bd22f9a8
    mem[1472] = 0x893ae8377aafc7174f60e81190db0bfbe00a5e2f
    mem[1504] = 0x4e9effb9c072984391d7b8f37a66a47747f0b868
    mem[1536] = 0x35f7d0b38918399d1373c3cb4222eff0b0f5e006
    mem[1568] = 0xc60ad376f176580148362a2255ced10ec71da5
    mem[1600] = 0x377bb0e3ad3a585ebd5d6383cc4d1b22c4b5ceb3
    mem[1632] = 0xdb242cc4513abfcdaa2afbe8f10b95dff520bb84
    mem[1664] = 0xc02046b57a284dd2bf91d1612e3c064b4b0f389d
    mem[1696] = 0xb6088ff75b91b7c88705c54cdbf8c4513deb690b
    mem[1728] = 0x3fbceeedf2b35a66db42284737657e3710c45a34
    mem[1760] = 0x6e13a16b29861bb2554eb5cf7a78b7f9222da923
    mem[1792] = 0x6a24eaf12c78bee881753f13421462ad7a0ca760
    mem[1824] = 0x7f206052f4c1b20d580a794fcd188f78fb0db6e7
    mem[1856] = 0x9b0869588ca511f664725c8f7a1e0a34b945d432
    mem[1888] = 0x76eaea883c20feb2d50ee54a9a2e369ccaf72d
    mem[1920] = 0x3c9b225db4c9c4c721dcd7edf6b193f5655ba8e6
    mem[1952] = 0xa94cb8a9b9d731415857ecc703c5710ca3075550
    mem[1984] = 0x762865474d3af53f05dd846000cdf6e4defa2fde
    mem[2016] = 0xe05ca473efc08a6c186632f9134b7ffcd4010f18
    mem[2048] = 0xea0415872c89d50c66c8dcd50e67ff2c1f4c802b
    mem[2080] = 0xa47d3ec4d8eace8eb8fa9ebe00fbea171dcd8c17
    mem[2112] = 0xadde9715e305ea44dd11f029f8bd72c9a9c4c9ad
    mem[2144] = 0x16c08e9cd9086dcc7dd6a3bbc8a5a2e141938dba
    mem[2176] = 0xf8b3c75a4054a7bb77c36f39821249a96ffaeef1
    mem[2208] = 0xe2c01b53399eefe7c91b3995a84a59b8beb27b22
    mem[2240] = 0x76647bc7363444c6cbd3b7ae04314e5f22eea0b3
    mem[2272] = 0x2b042a01400fabd80bd5fba3b931665075e56970
    mem[2304] = 0xe7b25f083591015918ea02ec55d3e4ed4a6455d4
    mem[2336] = 0xd6fbd1fc8575c6c4285aa000144aa96511d6e4cb
    mem[2368] = 0xdacbc37931702d60cd0b70279b113365bebfa4c8
    mem[2400] = 0xd9f6c0d8d00821cb24063a11bea515b89d221674
    mem[2432] = 0xaa294d6246553e6343ee4b4dca41e18179cd582a
    mem[2464] = 0x7ec88a659860052ccfe266e1de62fea2eef39225
    mem[2496] = 0x9a61ef206a273873e525d0a0d322b97016449212
    sub_a198865f.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_a198865f[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_a198865f.length > idx:
        sub_a198865f[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_a198865f.length:
        if not sub_d231eb07.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_a198865f.length, sub_d231eb07.length
        else:
            mem[2660] = address(sub_d231eb07.field_0)
            idx = 2660
            s = 0
            while (32 * sub_d231eb07.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d231eb07[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_a198865f.length, sub_d231eb07.length, mem[2660 len 32 * sub_d231eb07.length]
    else:
        mem[2628] = address(sub_a198865f.field_0)
        idx = 2628
        s = 0
        while (32 * sub_a198865f.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_a198865f[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_a198865f.length) + 2628] = sub_d231eb07.length
        if not sub_d231eb07.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_a198865f.length, data=mem[2628 len (32 * sub_a198865f.length) + 32]), (32 * sub_a198865f.length) + 96
        else:
            mem[(32 * sub_a198865f.length) + 2660] = address(sub_d231eb07.field_0)
            idx = (32 * sub_a198865f.length) + 2660
            s = 0
            while (32 * sub_a198865f.length) + (32 * sub_d231eb07.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d231eb07[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_a198865f.length, data=mem[2628 len (32 * sub_a198865f.length) + (32 * sub_d231eb07.length) + 32]), (32 * sub_a198865f.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
