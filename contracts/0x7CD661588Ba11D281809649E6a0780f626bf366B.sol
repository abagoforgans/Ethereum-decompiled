contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage20' / 256
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
    return code.data[494 len 7055]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_e17f3a99;
array of struct sub_4f691e56;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_4f691e56(?) {
    require arg1 < sub_4f691e56.length
    return sub_4f691e56[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_e17f3a99(?) {
    require arg1 < sub_e17f3a99.length
    return sub_e17f3a99[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xede0a3c6f3e44f3c30b02485fa28c08e521e3216
    mem[128] = 0x757f1ac99991545ad04589b3a001ce82ee769b1b
    mem[160] = 0x447d19bd5953237ec86382d3b6c4fa1c428e1d3a
    mem[192] = 0x17235cc1d444e2df7e3e722456678b5da8670915
    mem[224] = 0xe3fb21e6bf5b6c87f4bf7ac372ad71a25bfd74b6
    mem[256] = 0x2604dd5275894b4309b28c3e7a552e399fcc0f60
    mem[288] = 0xd59a8ee1200016c1130268712d0f656e097a4095
    mem[320] = 0x578ba1cba2d0c50fdb8f80cccd5b9ba730cd953
    mem[352] = 0xaeaf5f69c6aa06f28651af04d89222b452372b19
    mem[384] = 0xfb1af7677a801865d2e44d700e4c09a3020cc938
    mem[416] = 0xd359d0d9fe1e3cdf7498f192787e3765a7d51209
    mem[448] = 0x7f607d51a595b1cb714868e76163c0a39c46f9ad
    mem[480] = 0xb402d85aecda05cff343afa1cb83ce171fe04572
    mem[512] = 0x7794c91f732028329cdf153140848ade0c504b2b
    mem[544] = 0xad350dd4ff2afe2731e2ec6184c89b9d28a287b0
    mem[576] = 0x10d1f2a0754b9565dacf5b099cd38e3c4bf21c55
    mem[608] = 0x3d6fa10885525827bd678f7a4ecad8536ce4e2ff
    mem[640] = 0xf5c3c1c210ad47c31d2de30a8f891c7d491ac0ae
    mem[672] = 0xcb3a5b3e0def0bae7ed4156e79ca7ea5864d8723
    mem[704] = 0xa6595ca50eba5b0298b5f69824da187535cb91fd
    mem[736] = 0xcc160ec2f89788799d920ab65d4feaa45f6197b4
    mem[768] = 0x9e55f0468379645421ce2f04c5827eee9b437b2c
    mem[800] = 0x6e66779bc116d431789888705894dc15af3cf7af
    mem[832] = 0x6a8a2f5a92b6832dfad4f0a01d6478187952528f
    mem[864] = 0xb13369e08a53e677871ad32692e180d22f0794b3
    mem[896] = 0x4d996e1eb98f61337d02fdfcc7f107c89ca3a0c8
    mem[928] = 0xbde774c50c705def1b525d9a99c78c74cbddf8e7
    mem[960] = 0x7fa9b8ce19d990f8569c78e253e0848c9d6ff426
    mem[992] = 0xa6818ff06d27baca6f0a01b8cfd78dab100792e7
    mem[1024] = 0x830650b2c8d18ed020a527c2af6e388ac089d980
    mem[1056] = 0x96f7a628987c16ce134d557e14e3921130457a78
    mem[1088] = 0x78071bbeafbde8ce7c4b0160f9d857605c1dd7e7
    mem[1120] = 0x3d7fcfd0a7f7d4cec0be586f632a52de47d02b61
    mem[1152] = 0x574980353a8023a2108118877add553b397db0e
    mem[1184] = 0x1ce003376bfaaf51f49a0f48b93827828eec3963
    mem[1216] = 0x3ab5ff79a3a67e342a97a0f7f033098c99f596e2
    mem[1248] = 0x2b2d73868c72b881496c87349ddad3da9bf55753
    mem[1280] = 0xd35c514cf826cc98216f285b69a280a7f257325b
    sub_4f691e56.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_4f691e56[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_4f691e56.length > idx:
        sub_4f691e56[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xe5b94e9475a766517085e20b2d7d95b5cd634f53
    mem[1344] = 0x95ae5227c4b05d9cae265448540e2e4ccf928906
    mem[1376] = 0xf9ca5bc61eaf85c1f802fb7db8bc3ba615eb66dd
    mem[1408] = 0x985270c05e91ae1e8ede17df2b8fcf6e31867b60
    mem[1440] = 0x80035fcbc529fcc69c9b4b703603a7a4e94372c4
    mem[1472] = 0x3c4947c4d92b6076dc5ae666ae8bea3d578612e0
    mem[1504] = 0xef56b435c70a3ec18e89a6f7de5a358c96506d6b
    mem[1536] = 0x3999200c262be523405759a0d6921b227e44dac
    mem[1568] = 0xc8f3e9830f2d5181c5cebc265b0fc3f941b16826
    mem[1600] = 0x84ba9103b4b7ae358316f9013ce03c641f7468d6
    mem[1632] = 0xdb9192ad9dce6bb6901fca146f398c6bc0b770f5
    mem[1664] = 0x481491dcd09533cf600988eb81fa390d408caef9
    mem[1696] = 0x6c5b41b71c722380235dea06cf7332caec31b106
    mem[1728] = 0x5f814b66321d339e231a44dff2e94d86bc94cd66
    mem[1760] = 0xb552d447258097812a6d5864ea6f43713b41515c
    mem[1792] = 0xbc708d594a7bc3cf0f59c12f0509461daf85cdd0
    mem[1824] = 0x882a13c59c580b2c5e88e4c12e0219e4200d445b
    mem[1856] = 0xc95937539c82063ced571aaeeb3fde8af4359a3e
    mem[1888] = 0xbcce408ee7af84c76d3e45b134163bc3a087ef12
    mem[1920] = 0xdd901b40fc05f6fa1df4cbdf1fc78c3edd75e055
    mem[1952] = 0x95001a720dc29360d8d136db63c0d225a1753a7d
    mem[1984] = 0xe66e46aec674fee29afd6474739b1d4572d96bf8
    mem[2016] = 0x773d001fa6eeba95cc5e77dc185e29e94895c72
    mem[2048] = 0x1bdcb943d5cf04d59cb01074485cbcdc5447cb99
    mem[2080] = 0x26ea62b0a4a84af70b3df5e24f81b9aecf03519
    mem[2112] = 0xde6b406c00bad00ad71792b7b83572e5a393052e
    mem[2144] = 0xb916fe82d01780c6b0303ab24aaa9623b129593e
    mem[2176] = 0x378bc4c6c9bf504c1fdd3f84692c1f2b097ce579
    mem[2208] = 0xaeb9b3a2932a6278d0bb1ccea564dd21bf9486b0
    mem[2240] = 0x1bce566557bb7fd6e414aa3f3d1cd9315fedfa39
    mem[2272] = 0xbe4329a16d1c20f906ef416ae3623e3a48038a6a
    mem[2304] = 0xbba0f2dfe6860b18b1472254724fc841d11d30fd
    mem[2336] = 0x9a01e86e22959b32a82f7baf42cdb59e1937dc36
    mem[2368] = 0x78476283bbc4cc85f8f0fe195d8710ca03ad7384
    mem[2400] = 0xbb17a19e745c79ef647e317f9fa76a193007f818
    mem[2432] = 0xacd216fd8936ab571ea62a202ab1860d57c095d9
    mem[2464] = 0xf6a19f4bcbc3c6c1628e78fd43af46a20c59cdb
    mem[2496] = 0xcf21d05a257559ca6db82bb0e966234b9ff8f846
    sub_e17f3a99.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_e17f3a99[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e17f3a99.length > idx:
        sub_e17f3a99[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_e17f3a99.length:
        if not sub_4f691e56.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e17f3a99.length, sub_4f691e56.length
        else:
            mem[2660] = address(sub_4f691e56.field_0)
            idx = 2660
            s = 0
            while (32 * sub_4f691e56.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4f691e56[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e17f3a99.length, sub_4f691e56.length, mem[2660 len 32 * sub_4f691e56.length]
    else:
        mem[2628] = address(sub_e17f3a99.field_0)
        idx = 2628
        s = 0
        while (32 * sub_e17f3a99.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_e17f3a99[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_e17f3a99.length) + 2628] = sub_4f691e56.length
        if not sub_4f691e56.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e17f3a99.length, data=mem[2628 len (32 * sub_e17f3a99.length) + 32]), (32 * sub_e17f3a99.length) + 96
        else:
            mem[(32 * sub_e17f3a99.length) + 2660] = address(sub_4f691e56.field_0)
            idx = (32 * sub_e17f3a99.length) + 2660
            s = 0
            while (32 * sub_e17f3a99.length) + (32 * sub_4f691e56.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4f691e56[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e17f3a99.length, data=mem[2628 len (32 * sub_e17f3a99.length) + (32 * sub_4f691e56.length) + 32]), (32 * sub_e17f3a99.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
