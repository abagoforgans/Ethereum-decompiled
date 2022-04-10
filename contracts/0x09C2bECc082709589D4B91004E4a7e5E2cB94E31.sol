contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage93' / 256
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
    return code.data[494 len 6921]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_b505e969;
array of struct sub_57a81d73;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_57a81d73(?) {
    require arg1 < sub_57a81d73.length
    return sub_57a81d73[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b505e969(?) {
    require arg1 < sub_b505e969.length
    return sub_b505e969[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x539b9b4b5b8f6494f0ad62851d8765cb350ace62
    mem[128] = 0x93bc2c12c0bade256c528443c7e5b212b4e1ba
    mem[160] = 0x903adf1f00d33278ebf38f0f20093574063750b7
    mem[192] = 0xc87e88a8ecf8ea9b0b660ae7dfbbc1dfa2da09b5
    mem[224] = 0x88d568244f5ed3893d01eec7cae146721566ba43
    mem[256] = 0x7a4ff6d8eabd2893302be84644a2e432cc2b68b6
    mem[288] = 0x379bdbc43f8bbbfced121bc9f83578adbf4a9887
    mem[320] = 0xa0dd7ae065db8421c49e58b5f66bc3ad1b725d9a
    mem[352] = 0x71b0ed1512b8408a5bab09a7421b2a2b6af0238
    mem[384] = 0x9c1833f973394167858cdb180a04a7a2cb209e52
    mem[416] = 0xa53a99f7cd432c024a32e906acda57614bad7678
    mem[448] = 0x53f96d20719d3e25ac813294a4244efb8a50bdd6
    mem[480] = 0x84f1a6de6ef62028d46dda9cfec98e239738de00
    mem[512] = 0x7b3cfda2e7312d053cb625b88bccde21bb9b105a
    mem[544] = 0xea430402031c132c0e74fd2cc58c5de71531322c
    mem[576] = 0xea5b3dd5367429e7236eeca8d96c33332d00203
    mem[608] = 0x45b4834f12ee6ee4931f23419c6544f81c5f033c
    mem[640] = 0x8c8d73becc7dda3aa3c96cc6cc85c7a0b9a072fb
    mem[672] = 0x98ee72bb6372c77a703da7ddf2b563ed767e935f
    mem[704] = 0xe7cab76e3c85c7e08586f02efce65e7db8669ad5
    mem[736] = 0xf438f4aba0357224287dc28eb62d498177af1d1f
    mem[768] = 0xad2b049b3569163c001e6ee15165cf79e6831f8d
    mem[800] = 0x4a6d1e2984885f520f00849cd8aafa2536b1dc0a
    mem[832] = 0x1c4aa26c6a5a28cb9b5e08bb72ee5db6b311ab27
    mem[864] = 0xfa938c746b51952d97eba85fe6b44e563604fdae
    mem[896] = 0xb4f87b4c102e2c1a704363de812e16973f9d363d
    mem[928] = 0x72ec8e9dec6fdee6ad79498903d2536d71e64d0b
    mem[960] = 0x8dda2ac815367ee79afb655977f3a9e0134cded3
    mem[992] = 0x6134e26e7b53bed44de2db69d678af77e0d8e8bf
    mem[1024] = 0x94c0a616d953f0603c14c75dfe2741fdbd8e2b16
    mem[1056] = 0x39dffaefc3ce86fbab285d3c6d1fa42e40dcff25
    mem[1088] = 0x1f85d2744370148ef2811d8f7e0aa72910660750
    mem[1120] = 0x3c0e69f4c34ce471e64520a00bbd7035a426582e
    mem[1152] = 0xc0de6059c7f1b6b7ad9f4e52a69400af329f5937
    mem[1184] = 0x92f384777482825ab5ba1092d9d08b58ed56cc84
    mem[1216] = 0x7473f0d0bf5c86dd81e892d9f5e5110a54584a24
    mem[1248] = 0x57a8ffbaafc0f9320a9870f42109cbc2527db7d5
    mem[1280] = 0x3531bd5ac7d6b8e9c709e165971abb326626db1d
    sub_57a81d73.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_57a81d73[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_57a81d73.length > idx:
        sub_57a81d73[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x56e8e19333c135040f18c463f1c1bca767a2b8d3
    mem[1344] = 0x87d8777dfeef42a7e5ace4e36f2031501906c3
    mem[1376] = 0x6a700a2f829afe281f0c6c7874dfe16dc35496ec
    mem[1408] = 0x9d05a90014ea4b9200d68a816aff2efb71d0759e
    mem[1440] = 0x2ef58f6006da25cffb3f8f823e2e0a4f1017fdc3
    mem[1472] = 0x5c91213fcbff6c849cd5e53eb961a3d2c45f54c
    mem[1504] = 0xd830040b9fec4d85410d6e91df6aaccb59a96a3a
    mem[1536] = 0xf9788703d562929cd6ba1cec3dc2c770d727bf30
    mem[1568] = 0x2e91b5584da8501a43baecf3bf6858e1aee54b97
    mem[1600] = 0xfcfd5d867eb7d8192dbd47263ba5b4904aeaccc9
    mem[1632] = 0xc083f57883fcb9d54854b387af981a96c78a5da7
    mem[1664] = 0xd88704b742dca37cd713d6339d62b2fba30d48af
    mem[1696] = 0x4272754998f4718ee38a33933a6152978fd1e444
    mem[1728] = 0x23c6840abc917f957b151629980169f38a91a91
    mem[1760] = 0x59a689afb3072c4dc5edf705da17e91a3769ab7
    mem[1792] = 0xabf0815de96569adacec80c5f195766acaba1dba
    mem[1824] = 0x896774546b42a3f2e3069e6e95d846dbbf38ffdb
    mem[1856] = 0x89db746fd76e7ded9e0b4027d5f869a2ca4b07c4
    mem[1888] = 0x54fa678dcba5c2f3e1fafad0ab3ef4c8ecb9455b
    mem[1920] = 0xa4b7bf82def6c4553bfa822c4914257104954f9e
    mem[1952] = 0xbf73fe41965271863df553129bf9eb4f95c214c6
    mem[1984] = 0x6577c0cbb86cc7e8c191a852a992bc871dd324fa
    mem[2016] = 0x2f7ad954f6d5701156e7d0ee7c287530dbe8ef8a
    mem[2048] = 0xb9b7713080073360ff4bcd51721cfc2e19ab2c86
    mem[2080] = 0xe0a2fff4fc617a752b398fdc3d0b6437ba43dec4
    mem[2112] = 0xc91de1be2147547cc5c0172cc9c56ef1ea3a3818
    mem[2144] = 0x4bcbfbb24af031ff12b4e893e2ec2a69755cf311
    mem[2176] = 0x9481898b9bb13d523ba8296d90dece7a955f92d1
    mem[2208] = 0xa067dab49c1a1201b6dc217d7b036413fdc41cb2
    mem[2240] = 0x83a9851159ca82ddb04a9e17f3db9b3434b3d132
    mem[2272] = 0xcaf63208d739ed3e218c33572ca707457fc01ce7
    mem[2304] = 0xd3cdd7abd4981e2e003b936ad881cb208924501b
    mem[2336] = 0x6a6b4722cea8a74c837c99bfe5c0e1b7ba1b5a12
    mem[2368] = 0x10f7ecd703f675d4b81f1e5e60765cf656a5597e
    mem[2400] = 0xfe71f49fbf66762a429b8900e74346339196cd94
    mem[2432] = 0x2e14045c1d1a12c98b50098dcb3abc086379931c
    mem[2464] = 0xd6d0f2e6cb8b60f9ef491241521f0bc583a1c2af
    mem[2496] = 0x9cbd78cef3f0dd1a86d5a6876dbd39800f440937
    sub_b505e969.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_b505e969[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_b505e969.length > idx:
        sub_b505e969[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_b505e969.length:
        if not sub_57a81d73.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_b505e969.length, sub_57a81d73.length
        else:
            mem[2660] = address(sub_57a81d73.field_0)
            idx = 2660
            s = 0
            while (32 * sub_57a81d73.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_57a81d73[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_b505e969.length, sub_57a81d73.length, mem[2660 len 32 * sub_57a81d73.length]
    else:
        mem[2628] = address(sub_b505e969.field_0)
        idx = 2628
        s = 0
        while (32 * sub_b505e969.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_b505e969[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_b505e969.length) + 2628] = sub_57a81d73.length
        if not sub_57a81d73.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_b505e969.length, data=mem[2628 len (32 * sub_b505e969.length) + 32]), (32 * sub_b505e969.length) + 96
        else:
            mem[(32 * sub_b505e969.length) + 2660] = address(sub_57a81d73.field_0)
            idx = (32 * sub_b505e969.length) + 2660
            s = 0
            while (32 * sub_b505e969.length) + (32 * sub_57a81d73.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_57a81d73[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_b505e969.length, data=mem[2628 len (32 * sub_b505e969.length) + (32 * sub_57a81d73.length) + 32]), (32 * sub_b505e969.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
