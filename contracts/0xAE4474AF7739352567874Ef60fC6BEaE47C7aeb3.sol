contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage10' / 256
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
    return code.data[494 len 6985]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_61ad37d2;
array of struct sub_2b27b2ba;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_2b27b2ba(?) {
    require arg1 < sub_2b27b2ba.length
    return sub_2b27b2ba[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_61ad37d2(?) {
    require arg1 < sub_61ad37d2.length
    return sub_61ad37d2[arg1].field_0
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
    mem[96] = 0xbc144413c86fb0cdbd76d0966beabaeb60505ee7
    mem[128] = 0xa4ea181ea401b7c771a53794c0f07679c774f6
    mem[160] = 0xfcfcda6afd262626bfdd0910d7173f9e082f66da
    mem[192] = 0x7c300795fa1f4f34e545c8ba674004bddc5f0a9e
    mem[224] = 0xa456566c76f9cddfdce1ac0e8dc98cd9ecfb2fe7
    mem[256] = 0x63accedffa27c3dfa6815a0fda30dd080b141489
    mem[288] = 0xaac1294f3bc41594a60e04af4a1322f6aee900f8
    mem[320] = 0x91b59a22787bc545f6ef916d5417fcb04cd5e1e6
    mem[352] = 0xe77fa710bfbd1d44a125e2747d7b0d10585a26ab
    mem[384] = 0x9461a14ae7d557256284cd8df22d8d2817860188
    mem[416] = 0x17ecdffec111e3aaa0de52f178d630a479686ade
    mem[448] = 0xb5861fbeac0ac937e1df5b18b63d660281ed1071
    mem[480] = 0x3bf7800264b9d5e3d9d1e959de0ace723d16b1
    mem[512] = 0x5535c415d03ea19f691e38080d5f384c61184a4c
    mem[544] = 0x985f72f1360def2d254e13e89e769b0a0f5eb19b
    mem[576] = 0x1d8179abeb15560a5d43924058ce841a0f6f1e18
    mem[608] = 0x779aeb0e5d74fca8d5f3a9553700de0130e9734d
    mem[640] = 0xdc80ef7d0ab07c9a9691f90328e9db6bb0d1ab9
    mem[672] = 0x245a9b89223c29ed8012f430a2e9afd98d7201f6
    mem[704] = 0xf2db9ca18bc0afce0ef037c591d0fa14bb9e526c
    mem[736] = 0xbd5803c60853bf973693fab2f6a7bace8e7524fd
    mem[768] = 0x13f7820d72612fc83fe9a0e616f043c115dbd591
    mem[800] = 0x56f0ea3f4898d34e9e0ab54bcf58e0b1d44876e6
    mem[832] = 0x667f9ab6c1aaf43ba78244eb46677ac94c436631
    mem[864] = 0x86bec052147b8cb4b135394b3a7d9dec45197f82
    mem[896] = 0xf88b1f1b05955ae69617ee4d8d9e7d94dcd29e3
    mem[928] = 0xc271195cc8983222f53c878bf58436ec0994b1dc
    mem[960] = 0x4b90e3ca8fbf79baf34a1a2f00d461c1f14823b8
    mem[992] = 0xf1df2f8cf0c7c56b995d33e4305508db427f38f4
    mem[1024] = 0x30b9de503561c4b20b10858b45caab8e7309f706
    mem[1056] = 0xcfd8e648db423696af48c206fc71c6952504ede5
    mem[1088] = 0x87c5f94ae4a542ed4d84a7b21dfc569c660e8d8f
    mem[1120] = 0x10c4fddd34e6c5cc56cd62a8152b5164d709b6ef
    mem[1152] = 0x3cd29b816465cd72568ff0177955be54c28b37c
    mem[1184] = 0x5e42ddb31a1650877447c7f376ad5066eb1804fc
    mem[1216] = 0xe6fd64bac3117ff59ef9fd85aa0500f8819ec4d2
    mem[1248] = 0xfe9755d7e6923264b5950918604b57712877a146
    mem[1280] = 0x624a155af588ac1c39e6f8dfb81d357a91b5af3e
    sub_2b27b2ba.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_2b27b2ba[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_2b27b2ba.length > idx:
        sub_2b27b2ba[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x3edc7e33fc1be23c37d39f0c660a415befb3dc3b
    mem[1344] = 0xa9b1371259dc86aa473b53a58c809f62469819
    mem[1376] = 0xdbe17019b40271807077cd375e7a155c6c09bd3f
    mem[1408] = 0x1db4f38c3e8a754d9ec7fabc63c9dd94a0909d8b
    mem[1440] = 0xc4cdfad104c32a35405ea1509f4cc1a54996ad2b
    mem[1472] = 0xebf7faf83d84dab1eb2443f37fc339c900fa9e6f
    mem[1504] = 0x853426fe079cd0028d707e67d3985bc9f35506f
    mem[1536] = 0x51a79e617f7eae3defe9a4a5d2acbf199032a7c2
    mem[1568] = 0xc0f5121cb2c747b5f69d6cbb0a4b38b1399c4639
    mem[1600] = 0x49f3fe4714f501b10440366ad0cf41255e2c8268
    mem[1632] = 0xa8d17e52438ecdbcd02892cf4c292c6b5db0d724
    mem[1664] = 0x3afad878cca2219c962c309c8e3a5da5e2a71e1e
    mem[1696] = 0xe5a979a66d250413da14961af008eb3c5e2fde
    mem[1728] = 0x10c97cdfb214886efb2e51608f2e58292fbc5853
    mem[1760] = 0xa501f6a4e1d56cc3d15b8140535f8b2f4b6f54a9
    mem[1792] = 0xca7e717c11827b1351fe704941d7372426e30b48
    mem[1824] = 0x708717a2f20af35f5b58f5f3fa49aa6f63677fb9
    mem[1856] = 0x18cd96616e7baae53b22bb63492b0d0bd4c11933
    mem[1888] = 0xf06a1e858f487cea1f1f74e787e4a9cff6fb48b8
    mem[1920] = 0x5009945080fee87f3d2a16f83172765d8273280a
    mem[1952] = 0xc65fabec6e0459cd0b6b3e610a73419b2c375c53
    mem[1984] = 0x5cd7873ae579780cc4d70c0ec625d8e26eea8be5
    mem[2016] = 0xf0f1285578e1c07c42ae88d3829bc714aded7376
    mem[2048] = 0xd4239ae3d5b220e1706de3007c3de56a89b62e46
    mem[2080] = 0xb4247f430f535ace44ecd3999b08d231f6fcc21b
    mem[2112] = 0x71d9a3a465423cb5a88fa9a8a1a1c50116875403
    mem[2144] = 0x4434010a74c7b6c01b7ae501b37f9e5231402ac4
    mem[2176] = 0x89cd5ac360122f822d88658c0719a9439c529a21
    mem[2208] = 0xf818b908c259862de6972368c88843e393334c0d
    mem[2240] = 0x83c4598ad25516f46c61d8cdf403863b5f196a99
    mem[2272] = 0x406c74794f49db7aa65ced0711117fb88ba8c96b
    mem[2304] = 0x4f2a935e4e7aafe34cde3fd2082765830a211a09
    mem[2336] = 0x63e7d53bdb6c7141a1692c06529289dc504f894e
    mem[2368] = 0x4615cec18d681d777d0b381911b22937f188de51
    mem[2400] = 0x96dddc2ae69d55d66f9dc0c66076f6eac5b0d593
    mem[2432] = 0x4c469fbedaf21188f2d92fe5e19a362bea88ad0f
    mem[2464] = 0x453f47922e3764b14d41dd063bae0ecae7e6a385
    mem[2496] = 0x3b1c10fcc86db81a6293254c00968867d1c776ba
    sub_61ad37d2.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_61ad37d2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_61ad37d2.length > idx:
        sub_61ad37d2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_61ad37d2.length:
        if not sub_2b27b2ba.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_61ad37d2.length, sub_2b27b2ba.length
        else:
            mem[2660] = address(sub_2b27b2ba.field_0)
            idx = 2660
            s = 0
            while (32 * sub_2b27b2ba.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2b27b2ba[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_61ad37d2.length, sub_2b27b2ba.length, mem[2660 len 32 * sub_2b27b2ba.length]
    else:
        mem[2628] = address(sub_61ad37d2.field_0)
        idx = 2628
        s = 0
        while (32 * sub_61ad37d2.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_61ad37d2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_61ad37d2.length) + 2628] = sub_2b27b2ba.length
        if not sub_2b27b2ba.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_61ad37d2.length, data=mem[2628 len (32 * sub_61ad37d2.length) + 32]), (32 * sub_61ad37d2.length) + 96
        else:
            mem[(32 * sub_61ad37d2.length) + 2660] = address(sub_2b27b2ba.field_0)
            idx = (32 * sub_61ad37d2.length) + 2660
            s = 0
            while (32 * sub_61ad37d2.length) + (32 * sub_2b27b2ba.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2b27b2ba[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_61ad37d2.length, data=mem[2628 len (32 * sub_61ad37d2.length) + (32 * sub_2b27b2ba.length) + 32]), (32 * sub_61ad37d2.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
