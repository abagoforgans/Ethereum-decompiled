contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage94' / 256
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
    return code.data[494 len 6987]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_658fd849;
array of struct sub_03ed6a34;
mapping of uint256 balanceOf;

function sub_03ed6a34(?) {
    require arg1 < sub_03ed6a34.length
    return sub_03ed6a34[arg1].field_0
}

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_658fd849(?) {
    require arg1 < sub_658fd849.length
    return sub_658fd849[arg1].field_0
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
    mem[96] = 0x31be7151e65a182415501bdd3da1591a55e7be18
    mem[128] = 0x5019ca5508d20f3dc904faa9ba6144dedcb6b779
    mem[160] = 0x9557c8a0a693a8f661d32a51e30601c323f172bd
    mem[192] = 0x949e88cabc2ee0dd432a367a3dc4f010fda36ab3
    mem[224] = 0x1926f9b064370301bc2ee13792c30800e9a07f35
    mem[256] = 0x6d59d23cf6fc8067453fa3f83d0e54d042eebf05
    mem[288] = 0x2bf0b1dc4378afe484d22d707bd2ea7c503d21b3
    mem[320] = 0xf5257121d06129352c0736432f00a5a8a59610db
    mem[352] = 0x45e1db691d5941276acb48171df213f1eae6e837
    mem[384] = 0x4cfd4f5a2ac4134ab626998b17de909521550498
    mem[416] = 0x6495b0908934f029fddac4ab650c3448e14e45b9
    mem[448] = 0xc5783e0d65888398abd4fc61b9b40b32e4705ce3
    mem[480] = 0xd7848aec9be67b75d11a0e7858da0fc783d7eb98
    mem[512] = 0x6998e56818807d491e4bfe5c93957abc17215937
    mem[544] = 0x18646bb18dc4ffd54aa8b782bbc901d047ab40b0
    mem[576] = 0xe2f6adfd47549141bac8ae18174df0e3bf21dd3e
    mem[608] = 0x1998d3aa2d4f55642d8220024c8f35a8c2de441
    mem[640] = 0xff30901164cabd7a1f119fe8a7e86663c9d0bd02
    mem[672] = 0xf321bc4a9bc960594f58af1dd58594b263e1a109
    mem[704] = 0x924bdd0bd1782541403173c6d0ba91b36f8a81a3
    mem[736] = 0x5e3c9fa0d74939cd65a6732df31763e84f155b2
    mem[768] = 0x9cf702ac60ec996ba0fbce2cb6665119ee068596
    mem[800] = 0xfb6ee19adc9cef4dec93c9a3adf26d46d9fd2ba1
    mem[832] = 0xa7ac93ec995f6819cfee6f4ff6e36e0fb71ef2b0
    mem[864] = 0xff7a4ddf9b28bf78e8bc7ba8e8ff60b921d3c3b5
    mem[896] = 0xbbabdc1e041af687f80612ca28fc468d80599f28
    mem[928] = 0xa7eba7fda7e463c5509519edf03137c57f3ebe73
    mem[960] = 0x9fab06026aee94e8f71560c4e7e965e13c3b7ce6
    mem[992] = 0x1e341f6e29f7762280e97dfe9cbee89a3b2badbd
    mem[1024] = 0x1bfb859ceb8757b5fd05c980e750193b84a2fb72
    mem[1056] = 0xacb7956c0671dcf1c56ee8d7ad6a6af61ac4159a
    mem[1088] = 0x6d573b0bc3c62af4f615b71af422e85cb0b8c720
    mem[1120] = 0x547bbe744f8a3f7a6995f808b1aa3b9013713798
    mem[1152] = 0x52d94322301cecdb9b72578beb2bb612f9afaac6
    mem[1184] = 0x527bc21f50fb8f924ab2a52c2cd8042da72ab019
    mem[1216] = 0x9c8dc3a1b055d16bc828af3d957b89fbeba7ade2
    mem[1248] = 0xb77f128346a71830dfcb75946e80071ccf4217
    mem[1280] = 0x3ce912c3b68736e0c5a5bc859d63377835454d9f
    sub_03ed6a34.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_03ed6a34[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_03ed6a34.length > idx:
        sub_03ed6a34[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x16ad0a8653888bc56a6fad627a57e451a9e3e07a
    mem[1344] = 0xd00c4b3f4fea91b40f5650e73f737787f1f81e03
    mem[1376] = 0xf40d49595c54c0d5fc157f85c88a9392e02d9059
    mem[1408] = 0x4db2d7ec6997b05516e6e8c7b8c3735f78efa17b
    mem[1440] = 0xf07032d62ac5f249f33654e76818e2e536b0253c
    mem[1472] = 0xf1672e7483ee2f5d32a43a1e6afe19b7f007b04b
    mem[1504] = 0x51a415dae60e02ff0cba391ec5bb685b687e2dbc
    mem[1536] = 0x5f43ea93c9bb3ff7921fd72e7833f162ff8f59ef
    mem[1568] = 0x74701d56fbc8f54eaab885cdedeffbaed0c89d30
    mem[1600] = 0x2e28e817fa18fd7bff1932bdc1de0f4dc9af7ac
    mem[1632] = 0x1ab8b078ebfd2f9f969d947c85e3d3f42843e6ea
    mem[1664] = 0x847f90dfb7f1630861e9c63bd5fa5ed761e6193d
    mem[1696] = 0x7ad691772856a49ac683b26d8357aee80c8ee968
    mem[1728] = 0x59520c4bb11b06e9705704083bb8d100122ead3e
    mem[1760] = 0xe4dcb24dc1b05722530f033ad812e851b62cc0aa
    mem[1792] = 0xdd07c6a9401013156986bd04a548ab6bd820d238
    mem[1824] = 0xa9f3673ee51a3660fd947117e107c54d0a2c34c1
    mem[1856] = 0x661c6cee066d1ef61a514a83e5362af426605307
    mem[1888] = 0xb9cde3b46a5f8c7eb633d6dac0cf054d3ce64d35
    mem[1920] = 0x21d926a06febd674d4aa5bb0e62ceba7d8352801
    mem[1952] = 0x73a95082eba2adb7f936d804e2ad566fad8c57d3
    mem[1984] = 0xe4fa7483061b33eb890714e4b0ba09247fd18087
    mem[2016] = 0x61cc298f2a9290e02074c2e803b2a6956f9ded9
    mem[2048] = 0x88c1304731f36465fd34c72e3d657d9ca0c6b0ba
    mem[2080] = 0x97f63796f485d0d90aefa3761232107e12f66019
    mem[2112] = 0xdace4bb3ba02fbdca98cd936fcdf227be43559bf
    mem[2144] = 0x5ed7b44ce72b6e44b231761ac29008021517da3d
    mem[2176] = 0x3246b84fbbd0413328c5d071e7c892bead3a690
    mem[2208] = 0xd627e2870e1387fa6417772b26e24dbaa51a812d
    mem[2240] = 0x3c971932979fd09f12a16d43d6a3467503dcd981
    mem[2272] = 0xb4e83582ca1040e021ac536ffd8d78b4606b4296
    mem[2304] = 0xc446a48189d3de14bec819ab08259cd23344dab0
    mem[2336] = 0x161f7d37472933c26793790ed181e680f51f699a
    mem[2368] = 0x8ea76471168979ac368a3fbe7d9dd8194dc61412
    mem[2400] = 0x3cfae008a7653723a03e809ca514eb1ea8dd13d5
    mem[2432] = 0x308c4211621adaf7cc0b48411ea2240910d53a5a
    mem[2464] = 0x20af71c3cb75a33c425b55adb9d1d577c7beb1
    mem[2496] = 0x8c6d2c13e2229b34a2665c71f19c01aa1a5602cb
    sub_658fd849.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_658fd849[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_658fd849.length > idx:
        sub_658fd849[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_658fd849.length:
        if not sub_03ed6a34.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_658fd849.length, sub_03ed6a34.length
        else:
            mem[2660] = address(sub_03ed6a34.field_0)
            idx = 2660
            s = 0
            while (32 * sub_03ed6a34.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_03ed6a34[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_658fd849.length, sub_03ed6a34.length, mem[2660 len 32 * sub_03ed6a34.length]
    else:
        mem[2628] = address(sub_658fd849.field_0)
        idx = 2628
        s = 0
        while (32 * sub_658fd849.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_658fd849[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_658fd849.length) + 2628] = sub_03ed6a34.length
        if not sub_03ed6a34.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_658fd849.length, data=mem[2628 len (32 * sub_658fd849.length) + 32]), (32 * sub_658fd849.length) + 96
        else:
            mem[(32 * sub_658fd849.length) + 2660] = address(sub_03ed6a34.field_0)
            idx = (32 * sub_658fd849.length) + 2660
            s = 0
            while (32 * sub_658fd849.length) + (32 * sub_03ed6a34.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_03ed6a34[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_658fd849.length, data=mem[2628 len (32 * sub_658fd849.length) + (32 * sub_03ed6a34.length) + 32]), (32 * sub_658fd849.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
