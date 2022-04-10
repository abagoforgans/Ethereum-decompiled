contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage32' / 256
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
    return code.data[494 len 6857]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_068cb3ec;
array of struct sub_fa686eb9;
mapping of uint256 balanceOf;

function sub_068cb3ec(?) {
    require arg1 < sub_068cb3ec.length
    return sub_068cb3ec[arg1].field_0
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

function sub_fa686eb9(?) {
    require arg1 < sub_fa686eb9.length
    return sub_fa686eb9[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xd38446f3900f66de4eff199500033060ab225cb6
    mem[128] = 0x4de3697431208b3b7909032790be28e8ae515a1f
    mem[160] = 0xbe11af7b26a974184e5c4899688ceded4a655bc7
    mem[192] = 0x960350d581d584fe8a48ab3d3c69de15e2dfc15a
    mem[224] = 0x7358effc2758bed81425243e2b1be94ff4784a3e
    mem[256] = 0x68be4fd08afebd0cbd0fa9df14509ea9b19e83a9
    mem[288] = 0xb902ffff3f7f56b95b042a5cf24059e6097edbbc
    mem[320] = 0x7e63b6d2480011aa52aa144f415a983719fb9d01
    mem[352] = 0x686b72b1c071a44dc1c042952de6bc6fad74508f
    mem[384] = 0xefe4bb44e3316b31233a1406d6acd9972f7cff1b
    mem[416] = 0x1d1f453b6830eab12ce551a41e1ffa5ef1125381
    mem[448] = 0x8d4433720cb40f4ef8c4cba02a0855d0ec2ac98c
    mem[480] = 0x700c1f48bc7a632b60de309be4ae235cd65d8d06
    mem[512] = 0xaff276702c4666b9ede5867af8026f2743409aec
    mem[544] = 0xa2f5dfb5a31642493028c4312e90f2c057f5069
    mem[576] = 0x5fd3acde9ae8228a63359f8d590f486316382c01
    mem[608] = 0x477ce7333668cf7cf2a8467f0f73af5747713efd
    mem[640] = 0xe7a40053049ed43abb85fbd220b6a9927b4461a8
    mem[672] = 0xd7a0109cb6fb9d614ade9a04c0d10ae318db9b8
    mem[704] = 0x4f224e484f879ba95dd3972580d8c61d0ef90d03
    mem[736] = 0x20bd862fe9e8a25d0ad5714d0a37cf4e2db6a2bf
    mem[768] = 0xe9af28c685d0271a8e28b0720d10f8f6cb791a49
    mem[800] = 0x9bf5d13c4c31b26db69e5ff18f8e7a3e616c4283
    mem[832] = 0x7fae0a70e28df0f2a547b447e40f9d7f24f490ec
    mem[864] = 0xa5f29f3d0bb3e185514e54aeb42875baf6163409
    mem[896] = 0xa0a6d857f2d6b00865e5ded25a4a19df7d46a581
    mem[928] = 0x591313aaba2ae0220d28feafd50050799d3e9930
    mem[960] = 0xdb188117774a785197dc55e1d42e4e72abff60c9
    mem[992] = 0xcde086cd6d822168f5571c80ea28d4871776131d
    mem[1024] = 0xce85842ccbc2cb3fedcd093f3627a8361c1179e2
    mem[1056] = 0x542a028e280efcf847584bb7a61091851265e2d9
    mem[1088] = 0x84da42ecfb649ff8d4ed7a69918ffd025ba62444
    mem[1120] = 0x223723496fa19d755e144b82a16e19a25e1b901e
    mem[1152] = 0xb659f68eb4d1ad98a2aa23867087ae5102ffd0c
    mem[1184] = 0x2addeac3badd5cb6e77175dd8a26795517f1ee89
    mem[1216] = 0x7dd6414ada378ba6396d7251106dd0810c57d5e6
    mem[1248] = 0xf6052c75ec15aa50006947fcc43408d4795964f8
    mem[1280] = 0xc48ec1c59f91ca9aa4aa6bca8838cebfaed5387
    sub_fa686eb9.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_fa686eb9[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_fa686eb9.length > idx:
        sub_fa686eb9[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xdcb4acce4610643f9fa29314c40818383c074788
    mem[1344] = 0x5e10b6ee5ebcbb3d85bae93ee4d325a570096152
    mem[1376] = 0x9d03e21c12a3947736b0f1f8969c4b8605df89b8
    mem[1408] = 0x52409e322a008c2e6d5af5b3590ccf1b0f750340
    mem[1440] = 0xc5f04a7e102fe36e9500be7f68c88b8b46c3f576
    mem[1472] = 0x71533f49bd81d6d39af80b3a0b94ae3251cd5182
    mem[1504] = 0x983ffd9efde2aa32c95bede8e5cf792b76e36787
    mem[1536] = 0xafcbb5e028dcfd2795e47a01667476436d9c7724
    mem[1568] = 0xa35a8bffc5139bf471b540c82c7695cf626d71e2
    mem[1600] = 0x589c46fbfc620f470942a591765e7876a49ce78c
    mem[1632] = 0x5f7e30c757c9f844769c15cb8454aea635526f60
    mem[1664] = 0xb3a477964c2544426fee575235b83b2ac37343ac
    mem[1696] = 0x5fe6ffb022f59ec8f3ce6fc22491c4e2c6d1a81a
    mem[1728] = 0x8451556b8115200b79a7b03c78b2361e99b27bc2
    mem[1760] = 0x579b24431c0c1f8e08a6898730f3b47d3b951000
    mem[1792] = 0x59b429a0e47dfbed2510dbb02af0f63d9e792f95
    mem[1824] = 0x649cf4c11c1e86b959dd6f4c22511d5b05ad2f77
    mem[1856] = 0xdd3fae33ead90abc6b3d92d9974664922a34a6dd
    mem[1888] = 0xb32462718b5bfe6f1209281ad4e2434061f1b77
    mem[1920] = 0xacb407bfd1897eb6be52e3fec244c02e3f8316a4
    mem[1952] = 0xe785e08d70f34f1d1b7f320c5effcfc06d51ef1d
    mem[1984] = 0x4bf5c96c0b5875475c72763ecbeb153f68ef0515
    mem[2016] = 0x285dcff50543dbc4c1b7b92caf02fe151bca4e6
    mem[2048] = 0x64319673424b371eb5cc4480c7faf21cc3262383
    mem[2080] = 0xa6339ad8bbea27cdf4155690368385b15fe18587
    mem[2112] = 0x1af9caa6bcf9f86dcba63d4d83d7a629e5310b5d
    mem[2144] = 0x943f42508aaafe9a95787342238916d39977235e
    mem[2176] = 0x1cda51ba5c2558127b32a0835dd968b68547b213
    mem[2208] = 0xce935ffe95978d8a60a06c97b859ecef250dc938
    mem[2240] = 0x29ec7fadfc5177063f19f913e318b98ede86b236
    mem[2272] = 0xa525425672fb0b133cb763a4a1cca209df7f8d8
    mem[2304] = 0x98becd029f609b698fe55a0cb6ec66675f78c6c3
    mem[2336] = 0x406cfe6b20a0900b73abc3feb0aeb03a36ab2fca
    mem[2368] = 0x4128409b14fc8ebfd914f0581d746d8ead9bf614
    mem[2400] = 0xf9219353acf7f61f4a6519309be99a100f9a77d3
    mem[2432] = 0xc06b10534a05b19ce803c38c0d31d60690787e7f
    mem[2464] = 0x2c739d2b43fd55ab3a12bb2d9a66842118db4d3a
    mem[2496] = 0xae184921059e6f1d6da9de793f608baba4fba9d4
    sub_068cb3ec.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_068cb3ec[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_068cb3ec.length > idx:
        sub_068cb3ec[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_068cb3ec.length:
        if not sub_fa686eb9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_068cb3ec.length, sub_fa686eb9.length
        else:
            mem[2660] = address(sub_fa686eb9.field_0)
            idx = 2660
            s = 0
            while (32 * sub_fa686eb9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fa686eb9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_068cb3ec.length, sub_fa686eb9.length, mem[2660 len 32 * sub_fa686eb9.length]
    else:
        mem[2628] = address(sub_068cb3ec.field_0)
        idx = 2628
        s = 0
        while (32 * sub_068cb3ec.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_068cb3ec[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_068cb3ec.length) + 2628] = sub_fa686eb9.length
        if not sub_fa686eb9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_068cb3ec.length, data=mem[2628 len (32 * sub_068cb3ec.length) + 32]), (32 * sub_068cb3ec.length) + 96
        else:
            mem[(32 * sub_068cb3ec.length) + 2660] = address(sub_fa686eb9.field_0)
            idx = (32 * sub_068cb3ec.length) + 2660
            s = 0
            while (32 * sub_068cb3ec.length) + (32 * sub_fa686eb9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fa686eb9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_068cb3ec.length, data=mem[2628 len (32 * sub_068cb3ec.length) + (32 * sub_fa686eb9.length) + 32]), (32 * sub_068cb3ec.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
