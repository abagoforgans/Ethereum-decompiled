contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage81' / 256
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
    return code.data[494 len 6681]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_c8e07e7b;
array of struct sub_296ed489;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_296ed489(?) {
    require arg1 < sub_296ed489.length
    return sub_296ed489[arg1].field_0
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

function sub_c8e07e7b(?) {
    require arg1 < sub_c8e07e7b.length
    return sub_c8e07e7b[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x7359374376701c1dff81923146b69041f45bc3cf
    mem[128] = 0xaebf1493ebabc6604419a50f3a28498534625587
    mem[160] = 0x6cd22587509d6edf9cd7c2df28b8fecfd17f4fac
    mem[192] = 0x234947745fba61c1f440a1b8ca993cfacdbf99bd
    mem[224] = 0xad806d7f951496565aae32d0b06857d86b324b53
    mem[256] = 0x32e1bd2ba26823175f6e0c2cc5e2259f33876a4
    mem[288] = 0x8a4f73475e3a5f40d2cf5283425766d5e6447265
    mem[320] = 0x54abd42572a0018e738ea69551dda36024809af6
    mem[352] = 0xa42a71162b1ef1114bf439d1813fc9e37bc23595
    mem[384] = 0x53e45c1ec2b0649848470840ebe63604fc28b53d
    mem[416] = 0x5bd6424ebbce411cd2df2ae07b2eab02863cdaa5
    mem[448] = 0x1a316f600a66dfe8ee8111736a7e7608dd6308d8
    mem[480] = 0x29e7f3e92ff91c4bb65348c80685d4d7f47855ce
    mem[512] = 0xa85da22f4efbf407e931a3da2f89e6d5518b89a0
    mem[544] = 0xb94a57d4f779017fdaa79f825f435d92eaec16f9
    mem[576] = 0xbd573be58fa72ac7eb2e9f280493b3fb66fefdb2
    mem[608] = 0x46a3f2d27d1ac76ceff9154ec9cc2b599d2eab51
    mem[640] = 0xf165acbdff218ae2477527f24f8725b34adff6a0
    mem[672] = 0x967991e0aafcdbafc6599e6a3f86dc02142d16ee
    mem[704] = 0x1a689df0759567c8b2495f7e341a6e95274f1e53
    mem[736] = 0x17f60ac27a0206ed059001c66d1e97897c85f425
    mem[768] = 0x3f864fe96e2c4a308ff523b976129cb920cf0d6d
    mem[800] = 0x4447aa2c5eb82f6cb7f653d80e80e364183781f7
    mem[832] = 0x7713fd40f2ee8a9a2afe0615aa7e7a6aa9bbe8a2
    mem[864] = 0xfc91c541d1f4eaf9443774a725b384afdb648115
    mem[896] = 0xb3097c2db15db81e45a970df2f687fa721d66920
    mem[928] = 0xa726ef77da1fb471b6b72066946c55d9fa493f4
    mem[960] = 0xc1c45f6ccc328fb47a46f6cfd5853e9cc8ba441d
    mem[992] = 0xb08cda7f5a2b8cedd663479bbd250a80be6f0ad8
    mem[1024] = 0x8ad9b8f5bb658cd44e03ad9e5599ba19c3d5c54
    mem[1056] = 0xd66cb71d4d7a56f0f3192eb64f3dc24d57a07fd0
    mem[1088] = 0xc2da22d5bc6dba45cf4d2cb8ca7f0db1e53910e0
    mem[1120] = 0x28bc6d74c9c69eda5a0d4d154101ffee6913846
    mem[1152] = 0xc89345924a8f6d472a6bf2ba62e8f2838f0f29d4
    mem[1184] = 0x31b31c10efa799adf1a9bb4fb36d03fa7388dacb
    mem[1216] = 0xd0a993006af3b0b3328ed834abbf7c54dbda1b3d
    mem[1248] = 0x8fae172ac7f7cd5d62026bb4eeaecd944a562084
    mem[1280] = 0x4365b667a10d4d77df5fa11e875ec57d39af1efa
    sub_296ed489.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_296ed489[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_296ed489.length > idx:
        sub_296ed489[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xc963f690df05e03fb50db13dce66579a9ff3373f
    mem[1344] = 0xa783f86e3f9d87a207a84aff9fc7fbe2018498d6
    mem[1376] = 0x25a1ff73d2bb28779532a4f679072ddc66eec15a
    mem[1408] = 0xecf5ac965feccb773fcb739f985babe08baccc3c
    mem[1440] = 0x83faadabe6e7be86b3456b2398035bffb74ab2f2
    mem[1472] = 0xb7ca87e0f8b7feb68c3da70ec54b5d64ee32f44f
    mem[1504] = 0x2f215e6db1a7b3bfa4055a34a6a82b988158f424
    mem[1536] = 0x5976c0841a7567634d5566efc82a7504b2ac0684
    mem[1568] = 0x764f90d118625c3d370a66714f600997282fca1f
    mem[1600] = 0x96b1ed98e6409be4c746fceac81471bd76126a20
    mem[1632] = 0x765849b456fbaf9420d337481c2540cae91e7aa
    mem[1664] = 0xd09c41964cb0127d8a3dfe0b380df8fa29fe9eb9
    mem[1696] = 0x1643d3f584ea07b7ab54b79505924d633faa257c
    mem[1728] = 0xbcbc0171acec644fe9e1eea7ce1d37a9533ef66d
    mem[1760] = 0x5b3e3364114abe22ca0e41d73011a69f08cab9db
    mem[1792] = 0x1f70feac0355ad082033305c0661c2c16117c536
    mem[1824] = 0x97812a120c0323f6978a89b693339a12666a6937
    mem[1856] = 0xa14940c5fe2da42248673e133070ea704e78601d
    mem[1888] = 0x24e2ab20252630c96b9db868509365d314933d35
    mem[1920] = 0x149eeaa41dcb8312fb223f8972d4a46c365fc8eb
    mem[1952] = 0xbe36d7b8aa25dc6a962ce165b3e1a9a7fe80831e
    mem[1984] = 0xfa8492bc4eebc8c62ca47e461a85c77689dd7987
    mem[2016] = 0x416620c157c18f379ca97b930a11d5ce12bb5f29
    mem[2048] = 0x532f1e2d084790ca22b7b95ef2eddbc3457e5050
    mem[2080] = 0x984401bf742485ed96642771fcedd9cb0a5ae3b8
    mem[2112] = 0xae79999a84ad7641f76e2d38cb5fa6cace6f360a
    mem[2144] = 0x4effca51ba840ae9563f5ac1aa794d1e5d3a3806
    mem[2176] = 0x6d8a16ba707d4b66e3dcbe64967e3f6406e41811
    mem[2208] = 0x8136d90abc97ba2cf7284471009c433df888248b
    mem[2240] = 0x5bff01d3f77a319594487b5a006bf1c648d63f2f
    mem[2272] = 0x3705b29e93ecd2d6f607dde85fe8dfc8bfb695f5
    mem[2304] = 0x28738342dd00c226720c626ae75101c42e5c0aca
    mem[2336] = 0xfc055582c8bd19288052a4d5ab9acee43e234361
    mem[2368] = 0x7d1bb2ec2c0d29e023bb902830303f97671a0d52
    mem[2400] = 0xb108acd298d482bd4619c1aebb1f6693a21fbb0
    mem[2432] = 0x1bea84eae0916d5142f9a91c659fa02db0d06dc6
    mem[2464] = 0xd9ca42a3fbdc2bb0492e3d3b1977ab9641fec43c
    mem[2496] = 0x30c28bce150fa87a62893a68e08583cb92945c6
    sub_c8e07e7b.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_c8e07e7b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c8e07e7b.length > idx:
        sub_c8e07e7b[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_c8e07e7b.length:
        if not sub_296ed489.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c8e07e7b.length, sub_296ed489.length
        else:
            mem[2660] = address(sub_296ed489.field_0)
            idx = 2660
            s = 0
            while (32 * sub_296ed489.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_296ed489[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c8e07e7b.length, sub_296ed489.length, mem[2660 len 32 * sub_296ed489.length]
    else:
        mem[2628] = address(sub_c8e07e7b.field_0)
        idx = 2628
        s = 0
        while (32 * sub_c8e07e7b.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_c8e07e7b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_c8e07e7b.length) + 2628] = sub_296ed489.length
        if not sub_296ed489.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c8e07e7b.length, data=mem[2628 len (32 * sub_c8e07e7b.length) + 32]), (32 * sub_c8e07e7b.length) + 96
        else:
            mem[(32 * sub_c8e07e7b.length) + 2660] = address(sub_296ed489.field_0)
            idx = (32 * sub_c8e07e7b.length) + 2660
            s = 0
            while (32 * sub_c8e07e7b.length) + (32 * sub_296ed489.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_296ed489[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c8e07e7b.length, data=mem[2628 len (32 * sub_c8e07e7b.length) + (32 * sub_296ed489.length) + 32]), (32 * sub_c8e07e7b.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
