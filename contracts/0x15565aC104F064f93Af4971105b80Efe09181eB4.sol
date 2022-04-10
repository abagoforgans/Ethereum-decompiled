contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage48' / 256
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
    return code.data[494 len 6963]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_4c48b68a;
array of struct sub_adcb4158;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_4c48b68a(?) {
    require arg1 < sub_4c48b68a.length
    return sub_4c48b68a[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_adcb4158(?) {
    require arg1 < sub_adcb4158.length
    return sub_adcb4158[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xb1d6bad8a8c343b14f561273bfc86369a1bb83
    mem[128] = 0x93e1d5835ffbef3e0c506c878f811a80347c0c31
    mem[160] = 0xbd9267749abd028a4549ad6a93d974585a8e31
    mem[192] = 0x18c1419a249df9bcdaf4f25c57f206ed1555b75c
    mem[224] = 0x52e1ccde194fd0cb683de5451efc8a04e2b491b1
    mem[256] = 0xc51cf019506c97144a916d8fbba5d8c21306fd79
    mem[288] = 0xbb9bc02ee90674ad67138f0443d78215a6aaa4d2
    mem[320] = 0xab26bd1df14ce1a9654afa689596d9eb7d0ebf6c
    mem[352] = 0x1b1c7f420478555e34e5baf4d5a351d413381419
    mem[384] = 0xeab82741588453511ec84d605b12c30f0bd63a5c
    mem[416] = 0x5487f2f25fdb437496fcdf42e3cd65db62f28f10
    mem[448] = 0x6b13810aa29d18a9ea1c12cbd7eec33f96b6bc5f
    mem[480] = 0xdd4c6d252df28f30ca75058e94108bb1f6112cdc
    mem[512] = 0xdfb8c77a8eb1e3a42011efd8c650f0c342d93d86
    mem[544] = 0x8149e9130d1ec429029be2dd2c18fda1df0cc7f8
    mem[576] = 0x2fac1dc04859abc5776983ec84fc9fec2b81dd63
    mem[608] = 0xb4000c2dc49bc4e36e014c9690b92bc3274d59b0
    mem[640] = 0x2e0f611d7217ba38f4bf905d26c506803ed5863f
    mem[672] = 0xf5fbb2b08c22a1786027e1f69762a257833a771e
    mem[704] = 0x1a39c627978a528e5583f94c16a718f0934ef444
    mem[736] = 0x60592bffcbdac754837cb6ab24de3c918eaf1b83
    mem[768] = 0x47567846e6c951421754bec8155c3d12dd2f5e80
    mem[800] = 0xdc460d43e978104e99391eb2c10a22a82853f791
    mem[832] = 0xf92cd59b2aec78fde27808633bc49f696bd3a515
    mem[864] = 0x7303409fbe9ade5cad814e9782f239382c809459
    mem[896] = 0xb094fd0e4714c474eb83515df7352d86ab64073d
    mem[928] = 0xad2739848f4444ea1d9c81498bfe71a22aafc1ce
    mem[960] = 0x8cb4a06e598979f45b5674122614b6457f3b6296
    mem[992] = 0xdf98911eda572ee7e6e39e98809bf49406506313
    mem[1024] = 0x207a17c063889263d8192e5e978a780ba0094b20
    mem[1056] = 0x90cf1bcae709f4a08f8c1b0d797e83710da239d4
    mem[1088] = 0xa5d6e3607460ec0f56c42a318032bb5823eb61d
    mem[1120] = 0x174007231d23f4d8c394a4198ee12f77cbdb42b0
    mem[1152] = 0xf187a31dac7b0141c5d82a1bdf389a77c08940fb
    mem[1184] = 0x3e202307162f9badd2b9b0b8456b8b62a72f44bb
    mem[1216] = 0x8ffaf7e0b67e22196c77424cfec14b0c5e2104ae
    mem[1248] = 0x975d196643dec0ac7e737f325e3ceb8656b73105
    mem[1280] = 0x6c9aff0b983e534aada8da4bae58d2475234f3d7
    sub_adcb4158.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_adcb4158[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_adcb4158.length > idx:
        sub_adcb4158[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x9ced4dcf922d2efeb6ce18eb47564d3211baf8
    mem[1344] = 0xffb9a31520965ee021d634af67ea2ac6a1606bf3
    mem[1376] = 0xf09380c44d800228e4b5b0848b8ddb5450250
    mem[1408] = 0xe431c5ec93f05b535cd973bc8df08fabeb3e0468
    mem[1440] = 0x256962ca68882fbccb847a9272d0d3037ed6ab34
    mem[1472] = 0xf9db96a03884eb3abcdb510b862bfb46595371e5
    mem[1504] = 0x91cfc9913577096db6306c21bd4dadab9e722e27
    mem[1536] = 0xfb33628fab2865bd092d26e29840695d0cc86fe9
    mem[1568] = 0xc95ffe57489135a3e1d06a97522a133e38594f5c
    mem[1600] = 0x9a95a558885b0140e20f17c630060daaa261afb8
    mem[1632] = 0xb484dc88f3f297e81aafacfbf3a1ba15b22f802
    mem[1664] = 0xe3636724f0dea09de81d522751c5575a54742d92
    mem[1696] = 0xb7fc831587d14308bb3f5bad7a7e5a728b60e995
    mem[1728] = 0x7f0db17fbabbfb53864907773582dafecb3d2518
    mem[1760] = 0x98fc007ba21797a5f081e8bceef18f159a5b17e4
    mem[1792] = 0x5f3782b771ea49e7335aff95f558ad3116406beb
    mem[1824] = 0x6f4fb9eee3806684be2157cd3f87c4c15ea92ac6
    mem[1856] = 0xd710bf7c11f9a94d8ba5b91539067ebe18c6c82
    mem[1888] = 0x71f10116242d8ea79bf70e38ea83f6701c4280ef
    mem[1920] = 0x7689526b75df2b4a6b2c86d4ad72635523e48f1
    mem[1952] = 0x69e9f172df5d80f326e41c11aaaa2b9614cd0442
    mem[1984] = 0x84ea9d0a68f90847f23b4f9f1a4f6a1f6607b454
    mem[2016] = 0xbfd39f637001de9ed46d598990e8d2a1e06d99e6
    mem[2048] = 0x62300757842fdb29f49ff90094a72d4c0ca9465a
    mem[2080] = 0xf569302d6095609b489115965e88716191a46e68
    mem[2112] = 0x30b3ecf41d9671fe04d03029b99bf492c64df7a7
    mem[2144] = 0x89547172a8732f714a37eb1581a5d25b0c778105
    mem[2176] = 0x1aeb47235d9ef68aa487bec6a24d72ddb19830fb
    mem[2208] = 0xaa15791328b03abc4fd0d536176dbcdb4ab37dbd
    mem[2240] = 0xff975336ce1322e338a66f3127d09629a19f8a2c
    mem[2272] = 0xd39f60a0f8ab7fdd5f225fb2950702d51e26534e
    mem[2304] = 0xeb9e7c217821a964433dd4cdfd45f9340d4d2155
    mem[2336] = 0x514f8d55dae45437a6fc629e9835ea532d25144c
    mem[2368] = 0xcdd5e32221b460672bdb47152677adbe3a99dd81
    mem[2400] = 0xa94e1ba4f422edb65d28f76273548d2e533e3fa4
    mem[2432] = 0xaacee81b47a7b4b86c77ae3b65b55bb70af57920
    mem[2464] = 0xf7ea7054fe13b88e038c2701481ffcb0663c8a05
    mem[2496] = 0x7a1aab9be7c23e9c75fffde907448c9677e57000
    sub_4c48b68a.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_4c48b68a[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_4c48b68a.length > idx:
        sub_4c48b68a[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_4c48b68a.length:
        if not sub_adcb4158.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_4c48b68a.length, sub_adcb4158.length
        else:
            mem[2660] = address(sub_adcb4158.field_0)
            idx = 2660
            s = 0
            while (32 * sub_adcb4158.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_adcb4158[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_4c48b68a.length, sub_adcb4158.length, mem[2660 len 32 * sub_adcb4158.length]
    else:
        mem[2628] = address(sub_4c48b68a.field_0)
        idx = 2628
        s = 0
        while (32 * sub_4c48b68a.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_4c48b68a[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_4c48b68a.length) + 2628] = sub_adcb4158.length
        if not sub_adcb4158.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_4c48b68a.length, data=mem[2628 len (32 * sub_4c48b68a.length) + 32]), (32 * sub_4c48b68a.length) + 96
        else:
            mem[(32 * sub_4c48b68a.length) + 2660] = address(sub_adcb4158.field_0)
            idx = (32 * sub_4c48b68a.length) + 2660
            s = 0
            while (32 * sub_4c48b68a.length) + (32 * sub_adcb4158.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_adcb4158[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_4c48b68a.length, data=mem[2628 len (32 * sub_4c48b68a.length) + (32 * sub_adcb4158.length) + 32]), (32 * sub_4c48b68a.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
