contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage57' / 256
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
array of struct sub_fa13fae2;
array of struct sub_78c1752d;
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

function sub_78c1752d(?) {
    require arg1 < sub_78c1752d.length
    return sub_78c1752d[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_fa13fae2(?) {
    require arg1 < sub_fa13fae2.length
    return sub_fa13fae2[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x497f8c8013238b10bd1ad2b0ae29a6ea3633885
    mem[128] = 0x34144d3d212953bbf03dfe9e1240a3deb55bc547
    mem[160] = 0x8ca1d96b8773329d35ea85edaefbf2df06478060
    mem[192] = 0xb72ed5db39e79e89a570dee72e63fbc02b771861
    mem[224] = 0x44e78725a03718dbd0794c8dcab511a17996989f
    mem[256] = 0x63a9317ee7fb5d2839c56f53194ae868aeb237a2
    mem[288] = 0x40d1f1cd3d436a7ac8f6d7670adc0e7b2b3ef80d
    mem[320] = 0x1115b9b647e79afeb991624372e187c873fa0cbf
    mem[352] = 0xd3d2640ee256dde5a34b9297bf84c7ce08974cd8
    mem[384] = 0x9eee6d200a5245a448cc6297893f726a8cc3bdaf
    mem[416] = 0xe91029df98ef6a0d682d09f522fb62a3dbcf574d
    mem[448] = 0xdfd0027904eeaac10837c5e20200736654b9c718
    mem[480] = 0xb9f06fe712eff76931a72883a0353a08665f6516
    mem[512] = 0x194f5899514246fce054f50ffa36517902bc65f5
    mem[544] = 0x71fe3447fc58670b25f8d32e184962a06fce7cc5
    mem[576] = 0x18f876038df99ec95112b0bdaeb718a8aa5636a8
    mem[608] = 0xe1efd1f3c48b1c087e1f2a6e6aec4d58f795d9d1
    mem[640] = 0x41e6d6d430156eb3999df7058d773d1ff473be3d
    mem[672] = 0x4fd87428eaa4f1f984f533e8c3b9a05a73cf2706
    mem[704] = 0xc285219ec949bb2732783953d268aabf346b8a00
    mem[736] = 0x87d1fc883232e7474a38342d47d0f821ddfe3521
    mem[768] = 0x3c7165026cf4df8a1f5a43f692d41fbba188c168
    mem[800] = 0x2ebd3f5d5f4720b2fa92feb3b0ca49fbe42a2f06
    mem[832] = 0xc970b56b0d5d8db06de22bc805ddd964cf2c5f1d
    mem[864] = 0x81e7a2ffc12afd4e58f9448825a8d0907ca8922f
    mem[896] = 0x5bef51cf77d86f2573b4e6f96b7f8fb883ffc88b
    mem[928] = 0xf2fa97b7fa974e5baf78aa512f8c91d2dbeaa7da
    mem[960] = 0x6f2393e61bffe49079ab7452d3101da4ac590f0
    mem[992] = 0xf920e58b2a6aa040a25df7f2063d58f0d7f8faf1
    mem[1024] = 0x5b2afe132b685afbf7a233212b2aade72f122f9a
    mem[1056] = 0x405a728384cfd06465d62a1e2dc2225b849f0fd6
    mem[1088] = 0x5fc071d433599ef8ab0b6d0e731313a6a9f37f31
    mem[1120] = 0xf4d71b48f0a7f7fb39de2ebe757e6ce723eac429
    mem[1152] = 0x61a03d0a02503eb3c843aa3e41cd3de2c116c913
    mem[1184] = 0x8c0a79605296dead46968ae39663c8fc094d4d86
    mem[1216] = 0xda28fff037ea0c9d29102bce9487659dca9c8952
    mem[1248] = 0x134be00fdff22587dddf814088e4bd2e29d43886
    mem[1280] = 0x84d8795ea1951156542124f9a50f5b9af883b37b
    sub_78c1752d.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_78c1752d[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_78c1752d.length > idx:
        sub_78c1752d[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x5a313552aaa30664616e21e3868fa7ff08611d16
    mem[1344] = 0x6cf262c55435c5044828ced8bd2d50c8b3ba6ed8
    mem[1376] = 0x64c8e4bbb71be7fa17d227163c1ac579c66e786d
    mem[1408] = 0xfff4bad596633479a2a29f9a8b3f78eefd07e6ee
    mem[1440] = 0x155d0e3489e4aea7b61ca1905e1d70cb23206586
    mem[1472] = 0x285ab11e33aeac5dd5b00efca512c8a932fea3d1
    mem[1504] = 0x1df1b8ee999cc4964710d9c096d0a2ab3a29e6a4
    mem[1536] = 0x8b9f94b282eb035d0ee315917445476da96891d
    mem[1568] = 0xfd021f04c448eb7aa296e0ebe877896163169d87
    mem[1600] = 0xe3bb7fa78203f369272b1aa52c38c61f197d3643
    mem[1632] = 0xd9ce94761acea2a0f963d6598bbb41005813f3cc
    mem[1664] = 0x73ad8aabc282e03966037177d64b939be4a51e39
    mem[1696] = 0x83b4d63cc570fa23c927c72aa32be389fc0f730e
    mem[1728] = 0x975994e4b61661500ab67cfbb340f738d1a487bf
    mem[1760] = 0x91b86f543fe289f60a5ff4f983cc46139006e258
    mem[1792] = 0x4fb28070c2fc3273c703c4d30941398ccab968bf
    mem[1824] = 0x9de516d90d45d3387729b7ef96d6f1280f030a4a
    mem[1856] = 0x90b49e5fbd72578f1626caad53f30495e417c5e8
    mem[1888] = 0x9d68621204fb821149420ec0f2e387416811ab9
    mem[1920] = 0xd4e59a381f385c8cb409b0f9872ad01a961f5d67
    mem[1952] = 0x9cda9edd7b84cddf5714043ecce57eafe922df5f
    mem[1984] = 0xe24fe08db92e2917645b69449625c7816b009d5
    mem[2016] = 0x588cefab7b9e9d6840e1d0093f9053ec6aa3e1b1
    mem[2048] = 0xd91ec572b6ad8e8d222b86fbcb89aecf71461c39
    mem[2080] = 0x45ffba6c409df0839db48ad139dae98d3ec8cabe
    mem[2112] = 0x4832b3dd06c65a445d65c3f2b4a4cfc70bca3056
    mem[2144] = 0x7cc37db27b6d7e5c4f3b659a03a9fa637d91af1e
    mem[2176] = 0xb6a56d59642190e45a0c9a9c77f16bf4b4b3b713
    mem[2208] = 0xbeccebcbc3221c8e8eaf82ce23f4ea296b827396
    mem[2240] = 0xa5fba2f70c7a5a56d67bcb0ec8048990b267070c
    mem[2272] = 0x48be9cf24331ba61a9ded27e4bb8dabb36fb5431
    mem[2304] = 0x9da1bc70dd7e3dce255da3d2f5911b452f657cf8
    mem[2336] = 0x38768a84f3fb041222dd92fb4f937d9c92470cad
    mem[2368] = 0x6f31540d644479f506d505140697d20050f3c17d
    mem[2400] = 0xebb975d9a8e5b5968e3b56e82d5df1df416791d8
    mem[2432] = 0x4fb5883455380bb3720dd21a8c5eb0adcf481c6a
    mem[2464] = 0x9612435c3ecb4f9ccb7c91b62da817aa382f4f5d
    mem[2496] = 0x404a6badbd5c054e239d4377ec7a067e99a359fa
    sub_fa13fae2.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_fa13fae2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_fa13fae2.length > idx:
        sub_fa13fae2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_fa13fae2.length:
        if not sub_78c1752d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_fa13fae2.length, sub_78c1752d.length
        else:
            mem[2660] = address(sub_78c1752d.field_0)
            idx = 2660
            s = 0
            while (32 * sub_78c1752d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_78c1752d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_fa13fae2.length, sub_78c1752d.length, mem[2660 len 32 * sub_78c1752d.length]
    else:
        mem[2628] = address(sub_fa13fae2.field_0)
        idx = 2628
        s = 0
        while (32 * sub_fa13fae2.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_fa13fae2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_fa13fae2.length) + 2628] = sub_78c1752d.length
        if not sub_78c1752d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_fa13fae2.length, data=mem[2628 len (32 * sub_fa13fae2.length) + 32]), (32 * sub_fa13fae2.length) + 96
        else:
            mem[(32 * sub_fa13fae2.length) + 2660] = address(sub_78c1752d.field_0)
            idx = (32 * sub_fa13fae2.length) + 2660
            s = 0
            while (32 * sub_fa13fae2.length) + (32 * sub_78c1752d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_78c1752d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_fa13fae2.length, data=mem[2628 len (32 * sub_fa13fae2.length) + (32 * sub_78c1752d.length) + 32]), (32 * sub_fa13fae2.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
