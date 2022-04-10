contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage29' / 256
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
    return code.data[494 len 6722]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_dda9bec7;
array of struct sub_00465c0d;
mapping of uint256 balanceOf;

function sub_00465c0d(?) {
    require arg1 < sub_00465c0d.length
    return sub_00465c0d[arg1].field_0
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

function sub_dda9bec7(?) {
    require arg1 < sub_dda9bec7.length
    return sub_dda9bec7[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xe2f2b63f35e17553553fd5080b81a48175c23df5
    mem[128] = 0x98fcf603e051621a0db298a1e0499f0d77a76b1e
    mem[160] = 0xbe837a4948986d8ecb5f65e0615833f76053f06b
    mem[192] = 0x39cfad5eb97b1592fd7dbdfa8442ae157293711a
    mem[224] = 0x4053491279432f8ab7dae243c98cb0565e338f6c
    mem[256] = 0x5b3a3efc92d8e84b20def9da09365818a11df4c3
    mem[288] = 0xa394e01cd01b5757e56972cccc44d4298294f1de
    mem[320] = 0x9095a99edeaf21f7c78b04bc047290c72343e1fc
    mem[352] = 0xae2466d3d7967ba44f655521176b5f2ac14536da
    mem[384] = 0xef24f3111b24a816a84989999c92e053ae735680
    mem[416] = 0x34c8e2378384da228c22a4fc026f57296bdcd634
    mem[448] = 0x919b8c9807c68ffdd0a5ff3699358283a68c6344
    mem[480] = 0xd34027d23b30b867b562b45d2ca4f52941a885b5
    mem[512] = 0xd9964735cac5d04539174034acdc870c542bdb9e
    mem[544] = 0xcf8e0480b4b0cd58c99b2bb6f20ddd9744cf487c
    mem[576] = 0xf526fe3e0ba77b9b1dd20d22a7e1179836ceebbc
    mem[608] = 0x4b0011f35767adfa88b829dd6a186c4e4f21619f
    mem[640] = 0x55057129b7540a62e468f7d5e0bc42b7b3dd25d2
    mem[672] = 0x69f9afb1244aeedede25c379f9792a7a35000090
    mem[704] = 0xd05b32f4701c177f9049282487196e6670512c06
    mem[736] = 0xa5a67f3e61cb025c7afa7171180b63446fea6d17
    mem[768] = 0xeeede3e1b3e55c13d365f686cc645074f7e7e1ad
    mem[800] = 0x1bff7385fb2affcb01945db05fdd373ea70f8a
    mem[832] = 0x3311c8dbdccfbc1fc37d090af3de945ff55b5476
    mem[864] = 0xb38e9a91260fc22d01425473d56830d6e2f4bc28
    mem[896] = 0x40cfe57c420f9631bb09bf54056b8dc09bdbf71d
    mem[928] = 0x50e3f2319a1ac8e3f896898a16e0e7c9972540e7
    mem[960] = 0x2a75d34e4a599d767e10d235c449edcf0125e78a
    mem[992] = 0xb0d6823f3aebb3d70652b1b18dd659b2ad01b0fd
    mem[1024] = 0xfea868c122049e086b1ebde459699130884371c4
    mem[1056] = 0x12e50fb54508ec7d338921bac1b6db9e02aaf62b
    mem[1088] = 0x156f72a7c3bf488efb9938fdba43711401a04cad
    mem[1120] = 0x31b1b3351ec15b871500297b74ce4537f3592a2f
    mem[1152] = 0x82deae2ec78ebeb579e65a977a13f12f97dbde6c
    mem[1184] = 0x4cd9847625563a3ce807626285eb81948fcd0fa2
    mem[1216] = 0x5a02645c3e4165a2fd0edcba8e8eed23719cf632
    mem[1248] = 0x4690fdd54b1840c0fdde65fefd67b3aa3716c793
    mem[1280] = 0x4fd829601799bb73264fb87e57c47a77b57e72ac
    sub_00465c0d.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_00465c0d[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_00465c0d.length > idx:
        sub_00465c0d[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x71cfe082b3da7a37e303fe35fc324c711194d772
    mem[1344] = 0xaa810d436d7be37fd58b693a2ea09111b542b6b5
    mem[1376] = 0xd0a8a956c1401960b1986a6a8042aee87a8ec5f1
    mem[1408] = 0x2c7d378e50fce508ef3e4819cfb59d4b0d1b6a79
    mem[1440] = 0x45f009b360035dcd7ffbaa7e5cafc6dcb71e8a0e
    mem[1472] = 0xf30dca0cbb2355f5031920bf6314b8005c311a14
    mem[1504] = 0xc3eb2a2ad4e5b0c9b9066c21cabe4327e8ca9871
    mem[1536] = 0x8e8e2fce2be771e5709a542c26e99b1858784001
    mem[1568] = 0xba084d897edd54aebbb9dff81882195fe790352e
    mem[1600] = 0xcb4928daa83d6ecca95da079b98b46079e7483a2
    mem[1632] = 0xe7b294e73ab56b83cc0de8d78680d2b10e9d975
    mem[1664] = 0x3952956569ebe5e28def2614e542d87d258f7b0c
    mem[1696] = 0x48f55967010ddb22b139a2ed6380f6ae95c657a0
    mem[1728] = 0xac8a60feabd6758a38cd2a8024671e2ac0159ab6
    mem[1760] = 0x57a13925f76f8c755f8e6fb3a2118855a9ded4fc
    mem[1792] = 0xc33ffdf27045ef38463ffb3589763c85841ab8b6
    mem[1824] = 0xf9a73495a4a321abdc91a1cae5233e3af201aee3
    mem[1856] = 0x5528d23c5d006e6d9e489e6040e8c262e8d9d59
    mem[1888] = 0xfc2105cccc5c36151c4fb85bd356b1a811610e0e
    mem[1920] = 0xcd2078a4b874cdd43da79014ef3d743e404e6c87
    mem[1952] = 0x7d4e6b17889c467ca9e71199525026660cfea96a
    mem[1984] = 0x54c1903d6c2b32eb797a1db24ba891ee5c4dbdc6
    mem[2016] = 0xd3547d7fa157d9eee839726ad2be7ad16b69c7
    mem[2048] = 0xd4124ed339aae428c245389af6f0b2477dd60168
    mem[2080] = 0x9ee98a2bc86b3d371062497f9c7daf864bb49715
    mem[2112] = 0x986f66f400c204aeb47dd2a622150c4cde8498ae
    mem[2144] = 0x767b66d5c7cc9165f531b4c09efc7780bdd19412
    mem[2176] = 0x2e86434ddee3c75b54d2aa9ca530ef127051b179
    mem[2208] = 0x8e155c02a1c952f991f5c044e70d6dd90a09fedd
    mem[2240] = 0x523f9626d690e5677b4f860171210a2652325ab1
    mem[2272] = 0xb0378fdf4db58f284e670af45196ce8f12fd511
    mem[2304] = 0xa4dfdbf44337b017574588264c2846d208c91d25
    mem[2336] = 0x9ea8aedf1a25ff0311f8ff549bb9eceb0e023638
    mem[2368] = 0x4e7e5cb2f24e44a330f1ded0e58cff7d9ea56926
    mem[2400] = 0xc378f140d95579a3e31427d8aa0cad64f6b3dfd8
    mem[2432] = 0xe2d6166a989debfff72515549cdd1e82c22d607b
    mem[2464] = 0xc634b67069e54a9d18b5e9e9cf4d9bc535b08d2e
    mem[2496] = 0x6a7b55274b4ad9929a96539e7f15a1ce52ccb8d4
    sub_dda9bec7.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_dda9bec7[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_dda9bec7.length > idx:
        sub_dda9bec7[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_dda9bec7.length:
        if not sub_00465c0d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_dda9bec7.length, sub_00465c0d.length
        else:
            mem[2660] = address(sub_00465c0d.field_0)
            idx = 2660
            s = 0
            while (32 * sub_00465c0d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_00465c0d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_dda9bec7.length, sub_00465c0d.length, mem[2660 len 32 * sub_00465c0d.length]
    else:
        mem[2628] = address(sub_dda9bec7.field_0)
        idx = 2628
        s = 0
        while (32 * sub_dda9bec7.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_dda9bec7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_dda9bec7.length) + 2628] = sub_00465c0d.length
        if not sub_00465c0d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_dda9bec7.length, data=mem[2628 len (32 * sub_dda9bec7.length) + 32]), (32 * sub_dda9bec7.length) + 96
        else:
            mem[(32 * sub_dda9bec7.length) + 2660] = address(sub_00465c0d.field_0)
            idx = (32 * sub_dda9bec7.length) + 2660
            s = 0
            while (32 * sub_dda9bec7.length) + (32 * sub_00465c0d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_00465c0d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_dda9bec7.length, data=mem[2628 len (32 * sub_dda9bec7.length) + (32 * sub_00465c0d.length) + 32]), (32 * sub_dda9bec7.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
