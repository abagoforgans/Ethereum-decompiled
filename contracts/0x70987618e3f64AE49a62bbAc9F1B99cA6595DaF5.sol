contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage4' / 256
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
    return code.data[494 len 6788]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_5fd7f783;
array of struct sub_dcbdea7e;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_5fd7f783(?) {
    require arg1 < sub_5fd7f783.length
    return sub_5fd7f783[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_dcbdea7e(?) {
    require arg1 < sub_dcbdea7e.length
    return sub_dcbdea7e[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x3f61ec29d467650220cef7a29697da72cadc9fa1
    mem[128] = 0x49c8750c38f56e80d8896980e69cd5617b18014b
    mem[160] = 0x446d14e80fd09337daa6a3873c07c66a1507db1e
    mem[192] = 0x44983eaf699e5971faf473b995a147391f9997
    mem[224] = 0xcf0ac6491365368da453230cf529380c4d3a1146
    mem[256] = 0xeb5538c4eaaa0fd4c9747437dff1eb755893760c
    mem[288] = 0xe9d0d10140098fda1cfdd0890060b4c8979cb803
    mem[320] = 0xb043675a1c4f208d455f88ab9ae8f9ce3678ad7f
    mem[352] = 0xe1acd73385bac10b20db908bc38b1282e1f60794
    mem[384] = 0x5e0c82b59fc3cefe969559c2ec4486e5e1c77291
    mem[416] = 0x2e854c686d45ab92677f0df57ef7e70d7622fbf9
    mem[448] = 0xdd98823255864472d7350d3ba21ccb87483fc94c
    mem[480] = 0xbc88ba00ed6991ca02055bb730da190ee8de20e5
    mem[512] = 0x994f3cb91fd9828e1e066c407e34a45a8b4c8061
    mem[544] = 0xed1ab632038adc12faf37ef851da7b8544bee65f
    mem[576] = 0x59957bc2a63e492f0a4a88ae8a3856c9dd246c79
    mem[608] = 0xd77c68d119806f4ca3ceb3be586865b024116b05
    mem[640] = 0x4f482988ab3390edfc14ab12151a7dcac8f648d
    mem[672] = 0xded200824f6ef4e9bd2e55f52cb8e4a684fe50bd
    mem[704] = 0xc27d0dbc6aad5cf92d9cc6c74c19a9800c851c40
    mem[736] = 0x5ac10bbd38478f2ca10fc4577ccebe38500655ea
    mem[768] = 0x9d6b150387845f3264394a03cf0e9b6dd7219daf
    mem[800] = 0x8e64cde714762e2a2ffb44f4ca37a86170436a67
    mem[832] = 0xa86b0689e07482b3f797860c59bef2a377d23743
    mem[864] = 0x88d216a78c8feaec0b4e848fd91784728adbeb39
    mem[896] = 0xafa0f0dfb5369718cd7ef30ba49d0ce39f911f90
    mem[928] = 0x3565e290b647163de76fd75bc50c5d6d687711
    mem[960] = 0x75f084bf48bedaa5f1c97d6b752b553d170970b8
    mem[992] = 0x49d8c07afe66842d816f938583d2fa537c71d58c
    mem[1024] = 0xc1b2e7a51ddab78977c1bb39b59ff8498c470f8c
    mem[1056] = 0xb9762a935812a0422d5cf400bb78c4fd5982e3fd
    mem[1088] = 0xcd0e5f3f09cd5bf80cba3ae38c16cce377756ed5
    mem[1120] = 0xceaee593755e5ef809b181c0f7044aba0f715cb7
    mem[1152] = 0xdbaf5e62c4b3d003f22cc42a4d337935c5d28451
    mem[1184] = 0xce98434f738f028d2e3bd9c3d23b9eba18493b0c
    mem[1216] = 0xbb6809d35f5de7d2fac43b77b12a79f36f196cb8
    mem[1248] = 0x9f829d363c9de5f456ebe5bbfa5d3b8fba7ecc88
    mem[1280] = 0x87febc2f9d6b3c781af4c4220c67e3b19a767315
    sub_5fd7f783.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_5fd7f783[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_5fd7f783.length > idx:
        sub_5fd7f783[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x96b9d9845d92cd6c68dbcf147c78729a78bd4c5f
    mem[1344] = 0x8e18e559f0200ab6a33dace69da8cc6873b987c0
    mem[1376] = 0x22ccf4af93d48efd9f469f2c0f13d4909c0ad8c9
    mem[1408] = 0x371c3196e4ff2c558015828508b8622b6d7b9d
    mem[1440] = 0x1dd9eb617fd83a9ec06354aa67cde8a3a24521b6
    mem[1472] = 0xa6b1737b13ca7b2479eb11e3e0f487e296cb3df2
    mem[1504] = 0x60d1bd68811a2e1aad0f510130a8da46511dc6ec
    mem[1536] = 0x8798c113cea053c13724b23636f4d600cb512bee
    mem[1568] = 0x9909339c4b4b10ab0407eaf63639df2f754e1861
    mem[1600] = 0x99d985e8da57440f5852490a113e8ccd5ee43007
    mem[1632] = 0x271971a85e651b742eecf09d94dd7d7c94a00017
    mem[1664] = 0x53bcf0299eda24834945013b472f0d93e3e6c556
    mem[1696] = 0x5b1c77916841bcd7d0134ce2cc56d2c315d698cb
    mem[1728] = 0x384ff8ae2632df7cf85d999eb2a6d4f524cd2abd
    mem[1760] = 0x813bb110a53d0a52f927c14bcd902c25a1653773
    mem[1792] = 0x41da9dd816c5a7c299c3e02060b73b36148d0c52
    mem[1824] = 0xd949ea0610d4517dc2a79cce5ad866f7d17cccd8
    mem[1856] = 0x9b240bb7d6a20448a70d9feea31d627e5b003dfd
    mem[1888] = 0x25fa6366e9d1193517779acf981b9eed9f1c10a9
    mem[1920] = 0xe23b1f13a0c96dcd20b25de432cad1a5c1a31d9e
    mem[1952] = 0xf63b5b3b68b1844a36818548875edaf37397adf6
    mem[1984] = 0xcde8fe7f20f34e7341216fe96b069315185060fa
    mem[2016] = 0x2de2683abf0ae9e637c0afb2b8b2210c1b1994d2
    mem[2048] = 0xda737ce98cb45d2625c7642d994f61b5dfd5c43c
    mem[2080] = 0xb85148b6063ec1d8b26d2cfe51d01a7b2f36b086
    mem[2112] = 0x2b3f1368fd390cd9bf0dd54b9ddb8ef87fdf0da
    mem[2144] = 0x74270bb4aadfd6786d7c404ca3ac4188d4c52bb6
    mem[2176] = 0xee099c6ea4461adad3c1737e8538ab357e147a0e
    mem[2208] = 0xcf7c0b9a6e12a2a8b18e23ef32d34b7d3b424d91
    mem[2240] = 0xedf9537b7de3b9c0643fd13c1a325f3eb56b80f9
    mem[2272] = 0xe21a25f6d0b16b5b052cf2f540d6b2db4e310293
    mem[2304] = 0x9126e40ed886d23eb7881fc439806153d084a06d
    mem[2336] = 0xddd56fcd13a14e547e5bdfc61c40f60fc56bb1eb
    mem[2368] = 0xa2c73336fa4f5d603eb0e9aa0c3e5b1d08954 * 3600
    mem[2400] = 0xc30113b323fed84620a3d0762e17d4ea50d9e636
    mem[2432] = 0x686a0ee646ae2f9c7d11a9b1801b02d4f3176c42
    mem[2464] = 0x776d9de4c56c16493b00f3751987086ffcab39b
    mem[2496] = 0xed3f605d8a3576928b572780fa558ac5c6307086
    sub_dcbdea7e.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_dcbdea7e[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_dcbdea7e.length > idx:
        sub_dcbdea7e[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_5fd7f783.length:
        if not sub_dcbdea7e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_5fd7f783.length, sub_dcbdea7e.length
        else:
            mem[2660] = address(sub_dcbdea7e.field_0)
            idx = 2660
            s = 0
            while (32 * sub_dcbdea7e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_dcbdea7e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_5fd7f783.length, sub_dcbdea7e.length, mem[2660 len 32 * sub_dcbdea7e.length]
    else:
        mem[2628] = address(sub_5fd7f783.field_0)
        idx = 2628
        s = 0
        while (32 * sub_5fd7f783.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_5fd7f783[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_5fd7f783.length) + 2628] = sub_dcbdea7e.length
        if not sub_dcbdea7e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_5fd7f783.length, data=mem[2628 len (32 * sub_5fd7f783.length) + 32]), (32 * sub_5fd7f783.length) + 96
        else:
            mem[(32 * sub_5fd7f783.length) + 2660] = address(sub_dcbdea7e.field_0)
            idx = (32 * sub_5fd7f783.length) + 2660
            s = 0
            while (32 * sub_5fd7f783.length) + (32 * sub_dcbdea7e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_dcbdea7e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_5fd7f783.length, data=mem[2628 len (32 * sub_5fd7f783.length) + (32 * sub_dcbdea7e.length) + 32]), (32 * sub_5fd7f783.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
