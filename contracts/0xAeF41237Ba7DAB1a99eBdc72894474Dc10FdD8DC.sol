contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage41' / 256
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
    return code.data[494 len 7427]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f8e74e43;
array of struct sub_08add99e;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_08add99e(?) {
    require arg1 < sub_08add99e.length
    return sub_08add99e[arg1].field_0
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

function sub_f8e74e43(?) {
    require arg1 < sub_f8e74e43.length
    return sub_f8e74e43[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x58128b2bda86e6d754919fe4574d3d2645a2af2f
    mem[128] = 0xe68d824fc077e3b83e1ab9d89a3a660ba5c5d86b
    mem[160] = 0x5c1ba8966c0d431bb19045fd678dd3490ff07a
    mem[192] = 0x4e4e3548a0e0da375f129a2fa1da6f3cb39ac4be
    mem[224] = 0x62f38e6ca801b2901de35cfce4a15e73aeb0a7b6
    mem[256] = 0xad726ef03ca93db07fac7d55e075a38e5f3f6ee
    mem[288] = 0xcea42298922deef3565172c4f4d3ce3054164b18
    mem[320] = 0x8cd7c833f05d353ae3e60af75823275a6ba943b4
    mem[352] = 0xd07457ffe285c1f3ee4245e696bfd2d94326fe2d
    mem[384] = 0x7b364e172a61b02d604524b5cb9e92bcd11b72a7
    mem[416] = 0xfca72bf184a0e736f14980cb98e35f690749d0ad
    mem[448] = 0x7cb6e2adc43e618822494ae1bcd4d15546d70172
    mem[480] = 0xd2557d6deced3338d9064b537a387df5298eb83e
    mem[512] = 0xf24cd832bf302497630aa3b2eb082a33fab76e51
    mem[544] = 0x5490f5f800b46d1f9eb3b11fcd834d16b246457b
    mem[576] = 0x77a3b8fa813d3a66612654e329fe7d293de36e9c
    mem[608] = 0x34c3557875700b9e01719efaf9fe84b3bf86019b
    mem[640] = 0xff93912b31edeccc35f40e01a74e5074c5a96557
    mem[672] = 0xded3f13f4b3305964f995a5c085fbf6b3cd8504f
    mem[704] = 0x3a0836eebc0afd330c632a80e5d11f93fd0e6c87
    mem[736] = 0x41cdff5336047cbcb9569e9f2bab02593fbc862a
    mem[768] = 0xdf71c720f43e433cd35597716c8033533b2555d1
    mem[800] = 0xe9a3783407ae9b211f863e6510e75111f4cbb54d
    mem[832] = 0xf19a93763fa329f97b5b73161dec5995f53b8cd2
    mem[864] = 0xf1b4b4b4a9585ab663fa98ec4e4e319b968f439d
    mem[896] = 0x4936fd17a016ee4b45f215ab4d32b1fc2fc28aac
    mem[928] = 0x4a76b5043f24d9f195f3ae410bea10c85f35398b
    mem[960] = 0x4940b747997ff5927688d9bc523a87169d42fc4f
    mem[992] = 0x91ef6aa880d3a108713d58b29ee40987b3df4a0e
    mem[1024] = 0x73a6d04684e373b478a7df80c15d3ff0cfbd102e
    mem[1056] = 0x82585613b888b8ccebde9b771145169c4bd8bdb6
    mem[1088] = 0xd26d32560210f43bdfbf444d9d55f4e888e62e0
    mem[1120] = 0x7fcd039d1c7aec9debb49d549e39416d93f72004
    mem[1152] = 0x6cc3ab9c3fee330b9a3279ebfa68d3c28c0b6a4a
    mem[1184] = 0x5a2ad7e2132799894faa5d0764fc819aea62eac2
    mem[1216] = 0xb89e986f380058a5194d165db2ff051cf72e33bc
    mem[1248] = 0x8f8e60da14b29c835a5730ba3d1a12ba58b26b61
    mem[1280] = 0xde634fc268819d663f685d687d3c3817033dcc15
    sub_08add99e.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_08add99e[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_08add99e.length > idx:
        sub_08add99e[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x4fb12ceb742d5ecc78f417a19898f27eab87dad9
    mem[1344] = 0x6b517a3b9e3b5a7576b62e20d2516e48bd0089a5
    mem[1376] = 0xbc323eb7ea75fba504b4bb658183d0ca63f09a
    mem[1408] = 0x369af1d0ede68e642d5eb758e26ed946e3bdcdb4
    mem[1440] = 0xc95a27b87a01b4cfc1bf62d9e23bde7ac4a2a404
    mem[1472] = 0x4c0a5cfd3c5f399f63f8c607467825a07cea8c27
    mem[1504] = 0xddc71ebfcf08a03fe688e6df6b6d5d04e087a553
    mem[1536] = 0x3949e76c1fc8c3682d59bc0070c547efef1ea438
    mem[1568] = 0xa25f05a94b062f91e209211de2b6065c83e2958
    mem[1600] = 0x5fadbb2d035609f3eba7463cc61d232448d30a4e
    mem[1632] = 0xe4afb2eed57b14787c10ce6f03bd664bce66418b
    mem[1664] = 0xf69cb5c95d9612961b0b30dfe0abf81d70b6e1a8
    mem[1696] = 0x9fd9e9fad372a2cc1cbffc52be81d8dd0181510e
    mem[1728] = 0xb0438d488e3d7a928d45a74d0ed3da3cef3c34a1
    mem[1760] = 0xdd791f269944f7f50bb151cc0c2ddb249c100e23
    mem[1792] = 0x81ad06ecac59413ed62471b622e9da1a12e40d63
    mem[1824] = 0xb35c1798436d0495dee45c79ab8b6e6d4ac991d
    mem[1856] = 0x8a466543905950c6ebe764579c3a646247c7cee5
    mem[1888] = 0xbb36004a486418e343f8b3936a82a3572af664e4
    mem[1920] = 0xc6312050b5d425cf29268b9032cf94e6aed7413b
    mem[1952] = 0x2fd3ec1724e0758325dc913c13528f5ecfd7770b
    mem[1984] = 0xdd76f08d5dff1ce11180d70a035a83eeeb622619
    mem[2016] = 0x11268c25f3bd8830ec8f74134e263630be438f21
    mem[2048] = 0x36bba8b9b977ef3e10153e54b0adff97add2d54d
    mem[2080] = 0x32e28d4e19ee5d4e0dacc50dd6f37ccd508b68a1
    mem[2112] = 0x3410bbe9629c9a14ddf6941e842c966be7b9df7
    mem[2144] = 0xa0bd3ebc6701b5c25d90ffacbb01ea5578716bff
    mem[2176] = 0x1283f40ab373a67180f15b445341a508ec88cece
    mem[2208] = 0xe1304c1cab4e99c403516198c4379d1dd9c49d71
    mem[2240] = 0x2fd829401b609dd0712e3fbd2b1a8a0d5318decb
    mem[2272] = 0x35c08d0852846d8ecdcc202b097a0a4714a9c30e
    mem[2304] = 0x4e46e737d2ee08fbc1e11b1309b4b249d1880de1
    mem[2336] = 0xbf9804bcde790ec70e698444376ae20919d1bb00
    mem[2368] = 0x5a0cb8720d0cca8ba521188a016e0ee9825d1eb5
    mem[2400] = 0xc3e124a98867ecb605f559a059bc2ea02eeba9c5
    mem[2432] = 0x33dc10856b447e4f7fb2d8b44a41657613d11a89
    mem[2464] = 0xaacdb47b8fb9addcde679e4e527070515885d2f5
    mem[2496] = 0xc4fd4698e9db35b2863cce649d97829f5c4b94b6
    sub_f8e74e43.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f8e74e43[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f8e74e43.length > idx:
        sub_f8e74e43[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f8e74e43.length:
        if not sub_08add99e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f8e74e43.length, sub_08add99e.length
        else:
            mem[2660] = address(sub_08add99e.field_0)
            idx = 2660
            s = 0
            while (32 * sub_08add99e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_08add99e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f8e74e43.length, sub_08add99e.length, mem[2660 len 32 * sub_08add99e.length]
    else:
        mem[2628] = address(sub_f8e74e43.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f8e74e43.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f8e74e43[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f8e74e43.length) + 2628] = sub_08add99e.length
        if not sub_08add99e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f8e74e43.length, data=mem[2628 len (32 * sub_f8e74e43.length) + 32]), (32 * sub_f8e74e43.length) + 96
        else:
            mem[(32 * sub_f8e74e43.length) + 2660] = address(sub_08add99e.field_0)
            idx = (32 * sub_f8e74e43.length) + 2660
            s = 0
            while (32 * sub_f8e74e43.length) + (32 * sub_08add99e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_08add99e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f8e74e43.length, data=mem[2628 len (32 * sub_f8e74e43.length) + (32 * sub_08add99e.length) + 32]), (32 * sub_f8e74e43.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
