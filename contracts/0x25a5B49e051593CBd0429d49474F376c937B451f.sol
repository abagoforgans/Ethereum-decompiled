contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage90' / 256
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
    return code.data[494 len 6983]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_808ced6b;
array of struct sub_9fd1c8fe;
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

function sub_808ced6b(?) {
    require arg1 < sub_808ced6b.length
    return sub_808ced6b[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9fd1c8fe(?) {
    require arg1 < sub_9fd1c8fe.length
    return sub_9fd1c8fe[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x964f712662517ff3cc2283696e01aa078876a860
    mem[128] = 0xe58d1e5153e0d1f7fbbf3990245fb72ecfa87b
    mem[160] = 0xe224c06cce812bea48f22a9ca50b6bc76f81a52a
    mem[192] = 0x257bc1fd6e2955b6cedf74975fe9801425ed3420
    mem[224] = 0xe5e263ab36021d1096bcaeb2827b12a454c084dc
    mem[256] = 0xcb88114bf537142b114356069d312afdd06d1115
    mem[288] = 0xdf0e2f92be7b219ee1c9058ae2be427db819b58
    mem[320] = 0xa522d3f93712491c9f109c475dfad955867c305f
    mem[352] = 0x5cdd0267e9d5973182d7b5c7d402000a09428471
    mem[384] = 0x9eac1045c868f0ec081c78df831d9a4b169df241
    mem[416] = 0xf14d7d0b4300804d86dfc51ecb5585012087c601
    mem[448] = 0x495c4a2860798bdc626eb125893d0e52e56b08ac
    mem[480] = 0xe391e7def072cee36805a8dd304aef9b8cd1cb66
    mem[512] = 0x5b048a8cfde9946de73148884164c79aa695a22a
    mem[544] = 0xf962a8b46373dd500e783217cfb283ac40768e40
    mem[576] = 0xbce7d12530856e8845c14e5da875a54652bb8992
    mem[608] = 0x294d5ae1559541b1db9f4ba35a7fae51c6b6badd
    mem[640] = 0x7453a3ca54966d2d6da69b937ab3da4c92667e
    mem[672] = 0xc918287bf2fd90a6987e4e2ce14b4f3dcd172744
    mem[704] = 0xbb62379b3edb7383e80538f81be7c08f00877e90
    mem[736] = 0x7ed4ed526c2546423dc00115e9210aba01d0e993
    mem[768] = 0x8424e9dae85998dc902f360142c1070bcad4550
    mem[800] = 0xc819ea10bc19afee591a52430abed4fd8553c8ce
    mem[832] = 0x6278015f302408cd42d3f2393966945267fd2953
    mem[864] = 0x7260a53eb0bca248cc39af8a973e673c0a1fe3fa
    mem[896] = 0x9ba2a65e4b0af6ecc7e2ca386ce46e6fbb3e772d
    mem[928] = 0x40385a16f09b780ba12ca54a199b5a52c5cf5b93
    mem[960] = 0x25a108ce050b344f38e1829f77e0287650ba7019
    mem[992] = 0x108f1e56fe4ccaab9a2c458d7fa48a82dbfcd132
    mem[1024] = 0x725dae856166b52e8d4cfcf8fe9263ed9b937134
    mem[1056] = 0xd70c9ff5219c894233520c91088734d763204712
    mem[1088] = 0xae220b770d3d57c9beb505167bf74d179deaaa9e
    mem[1120] = 0x3409f28715636669cff30a433bc5d14737fde469
    mem[1152] = 0xadef04329b3790de2c0ac06cc899762217d3be3a
    mem[1184] = 0x7930099e6ae98121cc06794184749955ef46e76e
    mem[1216] = 0xe0ce3b40818921259194bc5fe8a038c0a9b3ef69
    mem[1248] = 0x499b955227a0e0cb5de249b163de761aeaa9157d
    mem[1280] = 0xaff6e73e03bee0e85a7b13c3ac4ec6fe1fc6e5
    sub_9fd1c8fe.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_9fd1c8fe[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_9fd1c8fe.length > idx:
        sub_9fd1c8fe[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x2f2fac9cfe3185ab14c55fa88aeb63cf4b2511b
    mem[1344] = 0x28725ca7acd410608d4cdec43a054c99f9cc8d
    mem[1376] = 0x340ce869544d2f7a0d0ccc4996ac86603ea41119
    mem[1408] = 0xf038fd5dae8d5771ac0494f6b5accf7941181f27
    mem[1440] = 0xfa8bff31e21b01f7681ac786db5c27448f03c106
    mem[1472] = 0x48b7ec299387f17fb9fd1aea979f33306bae576e
    mem[1504] = 0x6893e08d2482d41b657d1898006f08f67002bd12
    mem[1536] = 0x3f62e793b13f385f20ad189b9684f93584d658f1
    mem[1568] = 0x53fc02df4b7e199ad54af95c36764af80e159e5a
    mem[1600] = 0xfadab46d0f675b7d0376ea8f26a8b2140799ce76
    mem[1632] = 0xee7b1bd96fdbfd57d070fafbfe34fcd643867e0d
    mem[1664] = 0x81ae3ed0af9de27f1cd4a9fad4c4e91be20c3633
    mem[1696] = 0x15fb4494c93c726a6a557ee695f4eae6d03ca9f4
    mem[1728] = 0x1cd26ed114e0201df444ce7d74020e7b0ddd4edc
    mem[1760] = 0x233c9980149f2a523a1bf2feecef44b976481cad
    mem[1792] = 0x9ffd5867b47c476121fa1d2719a693d29fd56a25
    mem[1824] = 0x662252f714a60ecf3564b8f8ce0c246108780408
    mem[1856] = 0x742a4c4cba5e8bd12c502468b2c402c312f347
    mem[1888] = 0xfe317487185937fe169eb6f61123a314e1924e45
    mem[1920] = 0x3f090b2543d8dcf5c5db1001d09c94a935f5cc06
    mem[1952] = 0xf6368f557b15cd21f36f098c1910a6b46228ee4d
    mem[1984] = 0xb1347fa5feb48cca22e5bc87532d3ace8ca126c3
    mem[2016] = 0xf45fbead3526ba2287355b299c23280df78c301e
    mem[2048] = 0xd7e11a8a0987960507fa53ced9f8a1175aaa121f
    mem[2080] = 0x93f1e9e70e74dcba7c2e5feafb8b80e10a79d6d0
    mem[2112] = 0x329319748e7923d5c2278bb15ffc114ac53d7310
    mem[2144] = 0x8c8f5f58e9b8e5fb103570a1f45c84e642a36a2d
    mem[2176] = 0x233a5686f8f3c129f45ecd4e766472158bc21d7e
    mem[2208] = 0xcef23192a85123a00f2518f2d682a9ade8384ded
    mem[2240] = 0x3e5faefaf1b0c2b329830c0ad5fa7fe3028732b1
    mem[2272] = 0x36adeb4c90ffaeff6c957d0c805986b3f247a141
    mem[2304] = 0x3812e4e51f5e3610954fe50931a723cb57729e1
    mem[2336] = 0xe0fc31ed2b8c645d5a81253ea23089a4536dc66f
    mem[2368] = 0x2fe60bf48b9196723fd1ec74878b5b95cbe0c8f7
    mem[2400] = 0x219ae7a543a0e09929a61a220b920782c228e144
    mem[2432] = 0xd1dd162f00e5ab482bcc885adf9c4cdf4d1c9115
    mem[2464] = 0xb1c19f8da987ac3b843e48b10c5a29a054aefc63
    mem[2496] = 0x7a63ca5f6fb9139e26b3e606ca380ba87a8590
    sub_808ced6b.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_808ced6b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_808ced6b.length > idx:
        sub_808ced6b[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_808ced6b.length:
        if not sub_9fd1c8fe.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_808ced6b.length, sub_9fd1c8fe.length
        else:
            mem[2660] = address(sub_9fd1c8fe.field_0)
            idx = 2660
            s = 0
            while (32 * sub_9fd1c8fe.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_9fd1c8fe[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_808ced6b.length, sub_9fd1c8fe.length, mem[2660 len 32 * sub_9fd1c8fe.length]
    else:
        mem[2628] = address(sub_808ced6b.field_0)
        idx = 2628
        s = 0
        while (32 * sub_808ced6b.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_808ced6b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_808ced6b.length) + 2628] = sub_9fd1c8fe.length
        if not sub_9fd1c8fe.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_808ced6b.length, data=mem[2628 len (32 * sub_808ced6b.length) + 32]), (32 * sub_808ced6b.length) + 96
        else:
            mem[(32 * sub_808ced6b.length) + 2660] = address(sub_9fd1c8fe.field_0)
            idx = (32 * sub_808ced6b.length) + 2660
            s = 0
            while (32 * sub_808ced6b.length) + (32 * sub_9fd1c8fe.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_9fd1c8fe[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_808ced6b.length, data=mem[2628 len (32 * sub_808ced6b.length) + (32 * sub_9fd1c8fe.length) + 32]), (32 * sub_808ced6b.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
