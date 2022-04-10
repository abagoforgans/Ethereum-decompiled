contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage39' / 256
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
    return code.data[494 len 6891]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_62407fe6;
array of struct sub_fbf25172;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_62407fe6(?) {
    require arg1 < sub_62407fe6.length
    return sub_62407fe6[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_fbf25172(?) {
    require arg1 < sub_fbf25172.length
    return sub_fbf25172[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x7003ad902dc7da3c870ac64f7f431460eb2d440d
    mem[128] = 0xadc4a972b365b498f5f52c9f448968fa44725300
    mem[160] = 0xa3f5e5baf03a21a7de4259257e6090aa0c5752
    mem[192] = 0xe3c0fcfb62ae13c8cf110cfbc2077df1815cbaa6
    mem[224] = 0x8ec07ee28bac3ef26e9bdf76528dbc1a9a832d9e
    mem[256] = 0x57700add0123ed785bd6f352f95b647975746bc9
    mem[288] = 0xf9661aa7fb44d4e1c1f7920566c0f3705e40e0fa
    mem[320] = 0x6c8b6ff74fa9345adc4b94238bdebeb484078d51
    mem[352] = 0x7b59555e7ce0a4a7f1e112f579d84a05d447e3d8
    mem[384] = 0x7730430754a63ac16598647cfa67d5ec225bb9e
    mem[416] = 0x4570e6e1ab7672d697c757995b8e12031895f356
    mem[448] = 0x66724d2074f7116ff0d9e84a52662f3cd6958a0c
    mem[480] = 0xd307d2466fa16c292a64fb7e4b1229da4465fdc7
    mem[512] = 0x6556a6a05dbe3a330e318e8c9fc91ab3a35a914d
    mem[544] = 0xa9b1371259dc86aa473b53a58c809f62469819
    mem[576] = 0x315a4731de06e192ba3f9b92d02183044d4e3d8c
    mem[608] = 0xd57adee000bda935025a74588635a86120eede
    mem[640] = 0x4478f21bf5de4efa416c4a705ef9fb665456eb45
    mem[672] = 0xb62a02da6bbea06ca9a3c884a39470a8868ad23e
    mem[704] = 0xe46a53d39bae24d1cfd6ba3560ac66aea54e63d9
    mem[736] = 0x78a847441b2c1acf011adb61108290a0565e8cd8
    mem[768] = 0x44fdd9e8d87a3fe814ef14f35291bdbae67f80ed
    mem[800] = 0x5ec86bb6a2c77feeacf6516a6938c07f3e2524f9
    mem[832] = 0x554b05399c5d96d846233bb2a0fde47035b638f2
    mem[864] = 0x47de4a61164456166cab492bb53f9505d184685b
    mem[896] = 0x56922da8058095979abfac464d1cfc17bb763471
    mem[928] = 0x4c9bb06688438fb082aa605865ed4cd289ce4257
    mem[960] = 0x169ac5bb7cdfcd41672399df19f31c59ae4cb1
    mem[992] = 0xecd21644f3128f8acdd2e8a2abdf8946b1af4598
    mem[1024] = 0x6b07bae0effb2df369230293b0755dfd0728e6
    mem[1056] = 0x5ce1c3f1f07782e4df985e3d08108a860cfce365
    mem[1088] = 0x39f2d43d61ca7402f2fb394c0c00d44f38344155
    mem[1120] = 0xdde168af8affef8d64c944fed252847c5e9fa9d6
    mem[1152] = 0xe2c1f8abaf016766414869075ea0437e8f4b0e27
    mem[1184] = 0xb4c8412b231e495a850a378059caa1bec7cbca6a
    mem[1216] = 0xf2e3235bfa0b67434762461a4daad5e3b9b581a
    mem[1248] = 0x96c7722bc08c88c1b95f578c685c49d28338c6e7
    mem[1280] = 0xb25a1859adb5640be06f1e3c235ffbf0ddaf81c6
    sub_fbf25172.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_fbf25172[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_fbf25172.length > idx:
        sub_fbf25172[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x3e884a0a0727b1269b67475f8bb5b490e6bc0f1e
    mem[1344] = 0x67e7e1208daf91b5110701e8bab2b421cc981002
    mem[1376] = 0xbe0ed3d3ee2eb7c3702661ddce156ebedcc1e8
    mem[1408] = 0x82e18a1629b6893574766317185486017390b0
    mem[1440] = 0x4bad2dee29d435fee942a717b210206bb72cfe51
    mem[1472] = 0xdeec1d5038eb11bf523c98ec4c40426860da727a
    mem[1504] = 0xc0fbaa9fd5e74951c077679e4299528c0d845811
    mem[1536] = 0x7d35aae9ec14fe1389d70b42c4d43ebec98e21bd
    mem[1568] = 0x7c3e348f05044dc0d01033ca1e50aad401319f35
    mem[1600] = 0x2f6e14c9223bffcdea005486c0c7d71c177cc48b
    mem[1632] = 0xfe2de28eb2a184a4fe2213cf5a6acf1231d76dcb
    mem[1664] = 0xbdbebc795603d4fe670071521a733687f0bd010b
    mem[1696] = 0xf177015d46b43543b68fe39a0eba974944460f6a
    mem[1728] = 0xc1eaf5893c0cd79b5ad778446314997cceb18a10
    mem[1760] = 0xa4ea181ea401b7c771a53794c0f07679c774f6
    mem[1792] = 0x7f838880b02d56c92fc71641d6efecb59793ac82
    mem[1824] = 0xd6f9302e157772f5d103e6d237988dac221d6b
    mem[1856] = 0x9d54297e9f22aa3bd4f53aaf2e26531703ae1515
    mem[1888] = 0x55f3a571feb75b5e6173dfdd5846c79d716aeacd
    mem[1920] = 0x2d3346585e60ee60b61b518974f8db0a534287ff
    mem[1952] = 0x789834e35550136aef8432a707c09593664d48be
    mem[1984] = 0x21e8fde38acf256e0717dc0a991529979dd2382
    mem[2016] = 0x1a25001ea41e1821d3fc607c5f1c30598e5fa651
    mem[2048] = 0xd6b31c20be7e022ef79a94434ff816f277e5f3ce
    mem[2080] = 0x34ef72100e4590c667f35290f5a1b5e56b8cb70b
    mem[2112] = 0x1b3f29b009652356acebf48428169cbbe31da439
    mem[2144] = 0x921b559152d428aa5903b5d2cd2949c8a76e454c
    mem[2176] = 0x3bd726dba8576aee897ae948241872bd23e132
    mem[2208] = 0x73581e38b4ca8f2ad9e69132d037249aca964054
    mem[2240] = 0x3ddffd6424870260fe0948e01ae1835ab1c37b12
    mem[2272] = 0xd49cafd3763be9951d27fc2c98525a301b2199ba
    mem[2304] = 0x19a1fd61db6dfe22a9eca6ac9985fd18d0f8394d
    mem[2336] = 0x72e3e8587474116c00ae9337d357bde2216f0fc6
    mem[2368] = 0x2653fa7c5c31dac12a78de4362f5d6fe4077ba70
    mem[2400] = 0x8239ac6c5da312938e72f5800292fdfd33b06c7b
    mem[2432] = 0x7d2603cb1a3735093b59006de2696f3d201ab00d
    mem[2464] = 0xe8f5b2ae5efd7019a74ce961e6ac46d990b064a4
    mem[2496] = 0x79491ec4b542c8f310e92c7f23dec4de18cf9477
    sub_62407fe6.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_62407fe6[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_62407fe6.length > idx:
        sub_62407fe6[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_62407fe6.length:
        if not sub_fbf25172.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_62407fe6.length, sub_fbf25172.length
        else:
            mem[2660] = address(sub_fbf25172.field_0)
            idx = 2660
            s = 0
            while (32 * sub_fbf25172.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fbf25172[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_62407fe6.length, sub_fbf25172.length, mem[2660 len 32 * sub_fbf25172.length]
    else:
        mem[2628] = address(sub_62407fe6.field_0)
        idx = 2628
        s = 0
        while (32 * sub_62407fe6.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_62407fe6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_62407fe6.length) + 2628] = sub_fbf25172.length
        if not sub_fbf25172.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_62407fe6.length, data=mem[2628 len (32 * sub_62407fe6.length) + 32]), (32 * sub_62407fe6.length) + 96
        else:
            mem[(32 * sub_62407fe6.length) + 2660] = address(sub_fbf25172.field_0)
            idx = (32 * sub_62407fe6.length) + 2660
            s = 0
            while (32 * sub_62407fe6.length) + (32 * sub_fbf25172.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fbf25172[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_62407fe6.length, data=mem[2628 len (32 * sub_62407fe6.length) + (32 * sub_fbf25172.length) + 32]), (32 * sub_62407fe6.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
