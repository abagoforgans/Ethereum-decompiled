contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage63' / 256
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
    return code.data[494 len 6893]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_dbfbad57;
array of struct sub_5370f974;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_5370f974(?) {
    require arg1 < sub_5370f974.length
    return sub_5370f974[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_dbfbad57(?) {
    require arg1 < sub_dbfbad57.length
    return sub_dbfbad57[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xf0751c58bb66607c11a2bf1f323543764bfe1395
    mem[128] = 0x6a7c2f3156868f6d26b601c8b22f6bcc183d948c
    mem[160] = 0x204c15fdea9f77e3f150449badac2a14db47f8d9
    mem[192] = 0x8673623f8447a10a531b611884941e0b5e6b22
    mem[224] = 0x8855f1584f0f1c42b74b190a2dac3d6367e3561d
    mem[256] = 0xd5450247f0f4234516e365a9870c2106701434ef
    mem[288] = 0x41db7f9a77baf8dea30ddd6bc5589fce92f3f917
    mem[320] = 0x90dcd244e62b0b1039c183fcac6e2efbad5086a7
    mem[352] = 0xca331e081851f52620f83279c830fb779e693311
    mem[384] = 0x6af9821c203da7d8747cd294e49257236b4fa0a
    mem[416] = 0xae662f0fdfe5efdf20e54c90fde6b373e5a1358f
    mem[448] = 0xa2e4be10620cfdda90ff31b43ca792272f513f72
    mem[480] = 0x4b608ba36943aa46025ea23c6b7d562412f5099e
    mem[512] = 0x60373ea21fbcec3085ab54f82dc43e9921aba763
    mem[544] = 0x9b40b6c56c08e4ef171161cf3589327944980863
    mem[576] = 0xc0c435ae7b19358337e40f2ea9b52b94dfeaf5fe
    mem[608] = 0x60d5aefaac218a829779a45588731e57c2f95c81
    mem[640] = 0x6829606ea62bcee454384ce85b48d03564cea88c
    mem[672] = 0x8a34052f6fce27a5d183cd2b0225586d39803578
    mem[704] = 0xe48747513e33c95e6bfa3d48de056cd7120bc120
    mem[736] = 0x13b00ddcf8a34c26c7e6abe0af105157c6f04ed0
    mem[768] = 0x3845f4429cc5be4c6ee72123ac5899668640f34
    mem[800] = 0x9ff517706b8b1027805df3df05cba1ddaf4a1a2
    mem[832] = 0xf940202255df174234b5ec4d049cbfe4ad564ee1
    mem[864] = 0x69ae8bc5005844eca7cf0bd750cd8c33aa114304
    mem[896] = 0xe902b4561d6a5258161fc0a835b2dde54f4ec1aa
    mem[928] = 0x4fb44639ea31e0ae7435aa72cb429cf627d0d9ff
    mem[960] = 0x872d48398ac9212bf662dc1cf75e14c5c6453c
    mem[992] = 0x8254b23b6cc206557b412ce8f51513ba9fdf423d
    mem[1024] = 0xd3e2be85441258e36ff338e3d7871a52d8a9952
    mem[1056] = 0x3dcc0e6a7a10683092346b17a6e266a3296bd2dd
    mem[1088] = 0x5c9c4a589f7705394686bd551802ebdb751e7e
    mem[1120] = 0x6243d4462a318719baae02348a370fce668b0c02
    mem[1152] = 0xc92674074425331a0cf9e21b1b55df4c43dc08e9
    mem[1184] = 0x2f5cb48289a9a2e746593f9e775448c79eccced6
    mem[1216] = 0x96e44e4d8a5da92f886214f25c2bf9451b5f6350
    mem[1248] = 0xe1b0114ea4d50e65808c6f37ff46ade7bf6b24
    mem[1280] = 0x48723fcc6d5da07915e79f01631fa0c570fdaa03
    sub_5370f974.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_5370f974[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_5370f974.length > idx:
        sub_5370f974[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xac55c8243dbaff8137eba42362b5e85e7e2d86a9
    mem[1344] = 0xd24f7f72917f0086d1c30ad58c4dbc725248a50c
    mem[1376] = 0xf65b4b068b8817cba49bd1d38f56d9fa1f50212d
    mem[1408] = 0xcee38886893482e58bd11e846fd94ce0e0a035
    mem[1440] = 0x88b253afa5a551789e13f72b6b2423e2d128c562
    mem[1472] = 0xd5af46d21b25a654001317af57db5a3971c99625
    mem[1504] = 0xdd5a662e2b91fcc50081cf7aea54ae5859ff5275
    mem[1536] = 0x4039e19315e3ea88547a9079f53b31a9b569b816
    mem[1568] = 0xc175c5f1f104ee8be8d8c1eb7895b9da95db8901
    mem[1600] = 0xf31299bc09da8a192d8a667451c61e5d5cd5cdad
    mem[1632] = 0xad7df123fc10fe23d414c4b553fb8fbdc4c3f9d6
    mem[1664] = 0x64a62c7b6cead9295a0817607b1e3c537fb4b721
    mem[1696] = 0xe60ac10f0b968dfcdfa6332c86b79cd053ef7306
    mem[1728] = 0xa5b71d2d5a98034710641d6fd134d90f3a68456b
    mem[1760] = 0x76138dfef5690b5efa5fa2a7436ee3373eb7f1ae
    mem[1792] = 0x91150567044cb6cd42334c200b2f8c01de9e6afc
    mem[1824] = 0x899f078f052b080c697a55cd4e34c2fb8aceed18
    mem[1856] = 0xe1a9b498178082e40fe52b570535088f5cdd6e6c
    mem[1888] = 0xf44b750061aa5b44d85be9bbf5ede6f35419b6fc
    mem[1920] = 0x670f68c223c1f5f0fcfeaaef493cba33a609da75
    mem[1952] = 0xa268b88f34fccd262de770cfecdc35faec0ca944
    mem[1984] = 0xe8118fa81a9bdedf6c7171a9a56d9a950654946f
    mem[2016] = 0xa178e06b7c88f81ee069f297069bf59a71c10076
    mem[2048] = 0xc2adc7fe5dd40917000d4f025b66780e10a2c807
    mem[2080] = 0xbe0df9227e13ca50bd108bdcd661ac7c45965870
    mem[2112] = 0x52a10e0d8c053415c0bfe003bff3bad4bcd2fd41
    mem[2144] = 0xc52619f371b8544111c32456e49ef69ba327a140
    mem[2176] = 0xe8f0ba38a5d4e69405d5d98aaf9e0e693a899d
    mem[2208] = 0xce5b212a8b0fb95359d88d9fea80e2d36ca78e76
    mem[2240] = 0x7376593337759f40cbae88ba92d339cde58867be
    mem[2272] = 0xb5eb697f2861d8d50563016d33b71d33d0ea0298
    mem[2304] = 0xb44617007a2532c8d2086852863f721c1edaa3
    mem[2336] = 0x350236cb8c5112b46136b4302d6895447ceda3ff
    mem[2368] = 0x5d81d2182276616adf8e4671d5c810fb198a19be
    mem[2400] = 0x5d02a36dd83ead10b9b3d1f64eae38cf4b2a2cd6
    mem[2432] = 0xc4754262fda8875683dd50cf3cea0d30258355e
    mem[2464] = 0xfb140a145198dfd352c72f43f62b2f9cadf8ae
    mem[2496] = 0xd1924471e49be5319a9295c06fce02d10c36fd6
    sub_dbfbad57.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_dbfbad57[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_dbfbad57.length > idx:
        sub_dbfbad57[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_dbfbad57.length:
        if not sub_5370f974.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_dbfbad57.length, sub_5370f974.length
        else:
            mem[2660] = address(sub_5370f974.field_0)
            idx = 2660
            s = 0
            while (32 * sub_5370f974.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_5370f974[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_dbfbad57.length, sub_5370f974.length, mem[2660 len 32 * sub_5370f974.length]
    else:
        mem[2628] = address(sub_dbfbad57.field_0)
        idx = 2628
        s = 0
        while (32 * sub_dbfbad57.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_dbfbad57[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_dbfbad57.length) + 2628] = sub_5370f974.length
        if not sub_5370f974.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_dbfbad57.length, data=mem[2628 len (32 * sub_dbfbad57.length) + 32]), (32 * sub_dbfbad57.length) + 96
        else:
            mem[(32 * sub_dbfbad57.length) + 2660] = address(sub_5370f974.field_0)
            idx = (32 * sub_dbfbad57.length) + 2660
            s = 0
            while (32 * sub_dbfbad57.length) + (32 * sub_5370f974.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_5370f974[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_dbfbad57.length, data=mem[2628 len (32 * sub_dbfbad57.length) + (32 * sub_5370f974.length) + 32]), (32 * sub_dbfbad57.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
