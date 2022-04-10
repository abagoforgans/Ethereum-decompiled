contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage49' / 256
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
    return code.data[494 len 6762]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_cb858272;
array of struct sub_48fd306b;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_48fd306b(?) {
    require arg1 < sub_48fd306b.length
    return sub_48fd306b[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_cb858272(?) {
    require arg1 < sub_cb858272.length
    return sub_cb858272[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xda027a794246af4063d96e88db94612fab53a936
    mem[128] = 0x836b2abfc8c5ad1a25d7857361b0dfb1deebcab0
    mem[160] = 0x78f0943efed002f06f2c536a922eb89860ad0a48
    mem[192] = 0xb26e7d4c10fda5111225be2d0bc1622cc193ec97
    mem[224] = 0x855778cb82bd1b34b2a1669c5c683d48d585d525
    mem[256] = 0xaf550432545f67bcdf316f474ac2d61a09e51e22
    mem[288] = 0xad6565066590f6cb6117e2e78c8116c620c906ed
    mem[320] = 0x34f92ca628a762789033d1d3526d50a3549f3562
    mem[352] = 0x8f6f93f19f2b3de12ec20b5c01bbb86c7408cbff
    mem[384] = 0xd0a236206878a3846adecb894dded7c9affff20f
    mem[416] = 0x3c12346c2a3a4c95c5982796c47694f1829024e2
    mem[448] = 0x220ae490a688204aa3bad8bff5b14b0c18dbdea8
    mem[480] = 0x56613e489ac97f67315dca0b70d86195933683ed
    mem[512] = 0x59ee80291ea66407b76b121d8ddb2125afede478
    mem[544] = 0xa0131797d64aeb5cb3109d724894aa095056c445
    mem[576] = 0x46c505ae057531011692102d62bd1a3aff77cab3
    mem[608] = 0xf119f9811bfac864e6ab06cd2eac3af04ff809c4
    mem[640] = 0xcdb499f2373d433442872b32fa923490150cc5de
    mem[672] = 0xc6574ea06032b3d26170ec7e21fd2295c4ce8278
    mem[704] = 0x5686be4c3b664aed437b35e637aebf34c48db22c
    mem[736] = 0xc307046ea5b880e8fb781e06ca74adf652b838a6
    mem[768] = 0x69f3609dabf56709e34450554dc5417d2e1b43b
    mem[800] = 0xd3264a6ef1b37710c4fc3c75fe42cd8eba1142f8
    mem[832] = 0xdb54924e162632d5192b317102af832dfd3d41b9
    mem[864] = 0xa7d922ba5096365ae3ac9d5fb1de57bfb22aee2
    mem[896] = 0xac0dc0d146f0211fca0f2331f4ca46f17ea09f69
    mem[928] = 0xd174a3e960f699ae1dd2f40aa4167335ffafe297
    mem[960] = 0xe547993c05c66e42ae5f05ddcf045d455ddc65
    mem[992] = 0x70b2c95acad44e5c210c4cf05989f1cd2d1839c3
    mem[1024] = 0x8dde5526970a5fc6868604555e071850182fb573
    mem[1056] = 0xa7da4c0816d270fce4e3b8271d06b95a7cdd73c8
    mem[1088] = 0xa3f5e5baf03a21a7de4259257e6090aa0c5752
    mem[1120] = 0x1548e85101278d0245fc88da14a6758bcd5302de
    mem[1152] = 0x5dd537af0987b1e5abc874ab9f29081e84b58639
    mem[1184] = 0x128d7ebe777b92282a21e7e0e30aefbca87025f5
    mem[1216] = 0x25748bf5dba60bddf63b4f6d4ff1da31917c966f
    mem[1248] = 0x2144c74651a2ef829b687617f87bbd24895a4d65
    mem[1280] = 0x108f9dfc43a983a9a6ae5faafb27d97b8570ca
    sub_48fd306b.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_48fd306b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_48fd306b.length > idx:
        sub_48fd306b[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x951ef3383f5622c2d2ad19df3e134dd1d91454b5
    mem[1344] = 0x958f2a58ecc71bf543915c80ab2137e5e04e29a6
    mem[1376] = 0xcf79f625b84521ffebfb4af385884c6ffaa6a01e
    mem[1408] = 0x11945566aa8d25319e2664539addfaa806b3aa72
    mem[1440] = 0xd31b425ef9d2b68dbe1e9b1c961b7e08dce03e45
    mem[1472] = 0x5c2a26fa958c31c75ffe4e0f3a61618996ecc278
    mem[1504] = 0x112bc5aefe564f6486566a75b6183574d30f6d9
    mem[1536] = 0x6b38074e35f997d5219f1109b4c226b8781a1fa7
    mem[1568] = 0x2b08c5b9cb8e45b617712fa4d3f34f44ef2080be
    mem[1600] = 0x8828a400a2323acc8ea037d3869605603f767c87
    mem[1632] = 0x4e4f9cc96dc416192f02148062fc68171dbbebf0
    mem[1664] = 0x60b418c91155861b19e7474fa01cf28eac8db56c
    mem[1696] = 0x78bb72589f60d314a5486de9ff873a4b41368185
    mem[1728] = 0x4019e6ed1437867506e1816f8c6c8e04b55f0a53
    mem[1760] = 0x76f9e319aa3b5ca301babd58913a201abece9033
    mem[1792] = 0x75a886fbc34c8df67e3f09a6cdcb6bb6d5040f7
    mem[1824] = 0x3f053f42b897b56083d584b010249bff0aae1063
    mem[1856] = 0x507d97157a5056e1606c7e2b8ef52b244070825
    mem[1888] = 0xf6a21bd69140d0578fcc5190901315eace6bc808
    mem[1920] = 0x738eca7b56cd7bffc7e986bd293377374581522f
    mem[1952] = 0x3c66f25cb15fc8e629b2214ca3d36c7f9663675a
    mem[1984] = 0xde9e6cbb6a9c21ddbf3c990c137b72dbb3f25744
    mem[2016] = 0x4f0a3f9376bd033638f85db0bb43954add8f646e
    mem[2048] = 0xffd044f8abe74571628948bb323b3696b580d01
    mem[2080] = 0x29269b334efdfd6355f2d941153bc2b36e847b7d
    mem[2112] = 0x7ac794c66f31a917ca2a9a6e7c767d18db35d0f5
    mem[2144] = 0x33085365d84dc44605cd665e130a01d892f9446
    mem[2176] = 0xae718580abdf9c535287068f2950468a5c4622
    mem[2208] = 0xf4ecde5505039dd8b6f34c738cb79aab27fd8963
    mem[2240] = 0x139b54ce6dd44d9cdc9963ac0ce51921c9fd72a
    mem[2272] = 0xb5f55bf68f0723b8ffab2285d2aef296263973bb
    mem[2304] = 0xbe0ed3d3ee2eb7c3702661ddce156ebedcc1e8
    mem[2336] = 0xff5b69fe3be3dfcaa4e02a53f3727e10b113079e
    mem[2368] = 0xa2ef1ecb2c65ff257822bb1d681dc7e5b8ad1069
    mem[2400] = 0xe0902f1968c84a7d20dc371176ce25add9420346
    mem[2432] = 0x17fe6990a352086484c6322941d7061fd2039e83
    mem[2464] = 0xd56c4656dda7112e1a0d830c01d54f28d5d1d0
    mem[2496] = 0xd54787155b8bbae23c8fbcfda9e5c6bc973dfc
    sub_cb858272.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_cb858272[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_cb858272.length > idx:
        sub_cb858272[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_cb858272.length:
        if not sub_48fd306b.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_cb858272.length, sub_48fd306b.length
        else:
            mem[2660] = address(sub_48fd306b.field_0)
            idx = 2660
            s = 0
            while (32 * sub_48fd306b.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_48fd306b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_cb858272.length, sub_48fd306b.length, mem[2660 len 32 * sub_48fd306b.length]
    else:
        mem[2628] = address(sub_cb858272.field_0)
        idx = 2628
        s = 0
        while (32 * sub_cb858272.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_cb858272[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_cb858272.length) + 2628] = sub_48fd306b.length
        if not sub_48fd306b.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_cb858272.length, data=mem[2628 len (32 * sub_cb858272.length) + 32]), (32 * sub_cb858272.length) + 96
        else:
            mem[(32 * sub_cb858272.length) + 2660] = address(sub_48fd306b.field_0)
            idx = (32 * sub_cb858272.length) + 2660
            s = 0
            while (32 * sub_cb858272.length) + (32 * sub_48fd306b.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_48fd306b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_cb858272.length, data=mem[2628 len (32 * sub_cb858272.length) + (32 * sub_48fd306b.length) + 32]), (32 * sub_cb858272.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
