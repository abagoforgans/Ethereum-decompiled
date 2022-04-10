contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage59' / 256
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
    return code.data[494 len 6701]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f3d13006;
array of struct sub_fdc83d66;
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

function sub_f3d13006(?) {
    require arg1 < sub_f3d13006.length
    return sub_f3d13006[arg1].field_0
}

function sub_fdc83d66(?) {
    require arg1 < sub_fdc83d66.length
    return sub_fdc83d66[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x8002aad3f8797a0fcb0277d9a99db8fe3cc983c5
    mem[128] = 0x1262a3c9d108176436bd333605c691a9974f0c36
    mem[160] = 0x1bb694f62391256b0165dc2aa2cdaafa40f5a5bb
    mem[192] = 0x6771e1c583c78397adde196b4e33e3eea4e7b06f
    mem[224] = 0x7d7656f9e4bc47ef973f8d6d0fc082dd0c7991ee
    mem[256] = 0x63160fc6ba91756f85536b30f7f5b4f42eeb2476
    mem[288] = 0xb36b95026c42a5a3b16075644c105d5c341fdb0
    mem[320] = 0x71741c61580e6d1b4a2941c22f1447276b10a000
    mem[352] = 0xa94f497a57dc00a1ea1e23f5af1e37382f97949f
    mem[384] = 0xfd4d04945119e07a39c829d0ef90ffa229577c8e
    mem[416] = 0x748c0852dfe0f280522dda44f53fa1569ab6f39d
    mem[448] = 0x11b2b8bfb97cfe5e187214a1cb70c1c4ae6120d3
    mem[480] = 0x95f097d54b11893089bd15c66707d0f466784372
    mem[512] = 0x3ebd073a5d1bbec98be0867e56d5fc4344af678e
    mem[544] = 0x9d5516543edb76835fce99ae22ee9ff025a9cd92
    mem[576] = 0xa0f8def427ab1ea4242712e8e2c7bd7659279817
    mem[608] = 0x3cf74c591648b0eec3fed118c199426bf18bc123
    mem[640] = 0x5c8c4789e26974d97902ad243f2f50508fbd34dc
    mem[672] = 0x88b3d2a473892b42926002037edb0586f217d904
    mem[704] = 0xf6a2788d9c00658c9c4906f1502a61e66a32b0cf
    mem[736] = 0x667a3967dd52aadfed401b7db91f6d99932bd57e
    mem[768] = 0xda14081955ad0ae24cc73e08e1e1a0838c54b16a
    mem[800] = 0x44e26b508b3df5099bad4d278e1b24c128f7f3fe
    mem[832] = 0x281591458a5881d5e64af0f733c38071de018542
    mem[864] = 0x3e23ec32625ceebbed07f5b6cbbf159a6731fdf5
    mem[896] = 0x92cbdd2a587ee0fda63915f9fea6272c6dae8a
    mem[928] = 0x647065b588d98ef73ceda6efcc805e7a32888d41
    mem[960] = 0xab418ff7d49ca673556b2891fe810576409141d
    mem[992] = 0xb826ba333bdd237f22df9c275a4b9acd0233c0d5
    mem[1024] = 0x121f994b35b5bd6223f39f427e59c87262c34402
    mem[1056] = 0x398ca7128991121fc97d4de3c60f9d98d37615d6
    mem[1088] = 0xda68e421fa214414821741c5bb7b606d3a6b8444
    mem[1120] = 0x9ecd07d894cf40e1b5002ead401b971a2b78a130
    mem[1152] = 0x8926355d96b5a42847dd2604e3a07d70530be1f0
    mem[1184] = 0x1d2b2552fdc3dbe4b16738ec99f52426114b2de3
    mem[1216] = 0xbd2cacfd3b8bd780b0eda3d355a11d1cb213c13c
    mem[1248] = 0x6ccf9abf91fed7880d56161dfada695f1eb24b38
    mem[1280] = 0x843b8bdc652f89389c178129e767488ee09571ce
    sub_fdc83d66.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_fdc83d66[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_fdc83d66.length > idx:
        sub_fdc83d66[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x6fe2c2c2b449a772cc9908236c1f9a741b91fcd3
    mem[1344] = 0x502ce50c18c2f84199262f7335418016ed3c82aa
    mem[1376] = 0xea557bdb758ec6ee40ec9a79b1b305daa456cd29
    mem[1408] = 0x242feb7c3093f24d576918dcfafef468326d673e
    mem[1440] = 0x8445bf4e33321f91e9d0d6a3a237d7b7ca8bc1e2
    mem[1472] = 0x372f7ded63a1ed91896ec34fc44be956ad1fa5cc
    mem[1504] = 0xee00bf53caee4dc17874eac5f68b70174d538677
    mem[1536] = 0x3e680e193ad26a796d62591d38fca6af5b855867
    mem[1568] = 0x18eabe9629d490f92f091e76fc52d03029059b4e
    mem[1600] = 0x79c57c2d3913f93bfe4abda2bd995d51db7ce637
    mem[1632] = 0x3d5634a2b6116e55ce946736f9fc2cc5316ee899
    mem[1664] = 0xf730706e1adcb96d117ea985c1c456a191eb625
    mem[1696] = 0x1fddf0b51cad3d2828eed912bf9bd2a151959adb
    mem[1728] = 0x39c0500806bd6b439bfb230dfede69da1bd93462
    mem[1760] = 0x9944f16a0f35491bd63d3e6182338f427f8364c6
    mem[1792] = 0x3dffcc1e709f98f8c0b7d5b5fb63770d73cfb1c2
    mem[1824] = 0x56b992aded6bb128609cbdeeda9c2791e15754ce
    mem[1856] = 0xebf22c37631f80ec9af066a27f34a59236e43e6f
    mem[1888] = 0xd3e4adc363ceae1f5db83e61e1c35f6356549770
    mem[1920] = 0xa9edb28ea0d57729863c81931cc89c90416ff7f7
    mem[1952] = 0xd157599b8c3d305ca7ba36b3efbf9792e2fec1e5
    mem[1984] = 0xdd67602fd7cefe3b3c8d3d8157b103cbb838f0e7
    mem[2016] = 0xb0b386a77518872d52252f84aec5c366c70695e
    mem[2048] = 0x1c4773289b7c84d837f5acb5e79a31f0768f8cfa
    mem[2080] = 0xc27b5537e41c4923d475d2c5bf67e91fe197e4f
    mem[2112] = 0xfcec489f2e0a280521189b30f81b1fc78ad87a
    mem[2144] = 0x3f61ec29d467650220cef7a29697da72cadc9fa1
    mem[2176] = 0xd242317659db5fe9957b4d6297d7d9a6875f59f8
    mem[2208] = 0xb7edb596dd47769d0adbc77b1a6e583686cfd881
    mem[2240] = 0x5e1c84e1a4ab09f11ec51c9682a5fcde8a675a95
    mem[2272] = 0xab24006d9bfd2531f95e5dcb0f0e42a43c129911
    mem[2304] = 0x15c9468308b46e7a2d0e79a56e20f228811aab47
    mem[2336] = 0xd29dbcfc6bbc04a9ad0a78290a295573e322c06e
    mem[2368] = 0x6f104e314fcf3a3ccbed4541e1cbbd043b5b721d
    mem[2400] = 0xba74cffe6031582e55807c4ac355292e070001f0
    mem[2432] = 0x8167b4cdc8af9f87e32fce422b3276e1331ba46f
    mem[2464] = 0x2c7cf415f3e2b7f9286425d2e4aecdcdff594a1f
    mem[2496] = 0x81fdfef3cf0407d920edf9dd5433d97e0624e814
    sub_f3d13006.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f3d13006[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f3d13006.length > idx:
        sub_f3d13006[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f3d13006.length:
        if not sub_fdc83d66.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f3d13006.length, sub_fdc83d66.length
        else:
            mem[2660] = address(sub_fdc83d66.field_0)
            idx = 2660
            s = 0
            while (32 * sub_fdc83d66.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fdc83d66[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f3d13006.length, sub_fdc83d66.length, mem[2660 len 32 * sub_fdc83d66.length]
    else:
        mem[2628] = address(sub_f3d13006.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f3d13006.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f3d13006[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f3d13006.length) + 2628] = sub_fdc83d66.length
        if not sub_fdc83d66.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f3d13006.length, data=mem[2628 len (32 * sub_f3d13006.length) + 32]), (32 * sub_f3d13006.length) + 96
        else:
            mem[(32 * sub_f3d13006.length) + 2660] = address(sub_fdc83d66.field_0)
            idx = (32 * sub_f3d13006.length) + 2660
            s = 0
            while (32 * sub_f3d13006.length) + (32 * sub_fdc83d66.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fdc83d66[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f3d13006.length, data=mem[2628 len (32 * sub_f3d13006.length) + (32 * sub_fdc83d66.length) + 32]), (32 * sub_f3d13006.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
