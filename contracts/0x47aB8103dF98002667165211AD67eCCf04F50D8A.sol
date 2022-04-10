contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage92' / 256
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
    return code.data[494 len 6677]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_43f73181;
array of struct sub_7d1437d2;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_43f73181(?) {
    require arg1 < sub_43f73181.length
    return sub_43f73181[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7d1437d2(?) {
    require arg1 < sub_7d1437d2.length
    return sub_7d1437d2[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x5dd6aea09a8509767c313743e6832eb6f493848e
    mem[128] = 0xbdab08225141bcd78414fe2f62fc6687eb57381d
    mem[160] = 0x6304c98372fd4a667af3f73f0a6996c87a3d5fff
    mem[192] = 0xb0ae0581372b7882ba00ebb1be53423666b76f68
    mem[224] = 0x7ad388ae855f155fb9e2ee0b59495e8d6e2c220c
    mem[256] = 0x3150388df752043438d72ade9394707f0fef9256
    mem[288] = 0x4b37fcd06f8cd68d52fefbf24a54f30bc1833266
    mem[320] = 0x363eff00525cb463b7c5488f8763f95f0140314b
    mem[352] = 0x500c818a6f76e368735d730c6ad222f20a87551d
    mem[384] = 0xbe75396240bceaaf96eaf1ef1670565b1bbdd7d7
    mem[416] = 0xfab8b0ae74f50f909f4f9d3c2836b3209207207f
    mem[448] = 0x6fce02e33f8a18a485896c56faeca31068622d21
    mem[480] = 0x8cdd54afdf901a725d226df6ee9dd067e8f16fab
    mem[512] = 0xcc6069d4cf12ccb1ab89bf35a2f20477c4c8daef
    mem[544] = 0x1c2e32c32047f7631773ccf394c52f49e37dc4eb
    mem[576] = 0xc54073c28055330c3b16a676dd6b66f2e24693a5
    mem[608] = 0x13c5e5112913b5bbff301a1566d5eb72aa877ea1
    mem[640] = 0xafb4dae1163cd5a1a2806cb71e1c9503a77ccd71
    mem[672] = 0x73289707a58d1049bedb67c23b5c3fdcd781a90f
    mem[704] = 0x6aa5ab814b12c6a7a832eaac2e5d61448497ebb
    mem[736] = 0xce2f1c5a67890dc6357c021d1c840c9b942d2ea3
    mem[768] = 0x4fcf18cd977f1ab4312d399b6cd8fadc5d6ea621
    mem[800] = 0xcf44287f04b316d63785969c9934750abed4d622
    mem[832] = 0x360a03cf3479480ccdd52a27f9f144bb74c1a1fa
    mem[864] = 0x9d5f2ff300c3c6edfbe4df534208b16c51641bfb
    mem[896] = 0x28b4047a275ea8caf372f84a7ba490d44d45c370
    mem[928] = 0x424b850f87a9683f7f55fd30edf7e2e67fe36f59
    mem[960] = 0x792de6c9a612ebe2a49ebfdc2fda3ef9ace4f0a1
    mem[992] = 0xeb4a21f564de278f1cf3b89603786d0567c5abc7
    mem[1024] = 0x43b4b1be6111f59a6d746a8979036dce6fbdd204
    mem[1056] = 0xfee26e0bab77cbcfb4bc58436c358986b0a651
    mem[1088] = 0x156c14c87fe6c47f20eeada978c34756ff07e09c
    mem[1120] = 0x9e7a5e8571e88c22bf6b37d7053eb86d8151549b
    mem[1152] = 0x688319ab3f8877b7300bed8eca67edecae10ad6e
    mem[1184] = 0xc53627a09329ccc1ee7650e6689d3a0c3ffb7acd
    mem[1216] = 0x2f09e755252759b7bfc0f7c92656e5ef44c50f5c
    mem[1248] = 0xdab6f0798aa37cad4bdb0dae7573e17cc5b * 3600
    mem[1280] = 0x83a3966d4d0b28c324554d521e29b9794b1c74c
    sub_7d1437d2.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_7d1437d2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7d1437d2.length > idx:
        sub_7d1437d2[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x69dbc982e9078c6fa013794cf79610b7e8cc86da
    mem[1344] = 0xa4763597741fe3cc601a1e5fffa44be1825f0370
    mem[1376] = 0xd54057849335951225cd002b7e8501f653596262
    mem[1408] = 0x3a22fcacf1af161deb31b6a1674bcc44e655ed9c
    mem[1440] = 0xbbb71645e136a469c16b58cc13c4c06a5cd1d898
    mem[1472] = 0xd595ba6c2e41099608ccc0b23dde12e1d5fc5a66
    mem[1504] = 0xf6ff9e64837413e4e13aa388ac5224df6c6f0c51
    mem[1536] = 0xfd13aaab2375d2ed75e9ec840d18817427693187
    mem[1568] = 0x1855a056cfada66e0d90476d7c704abf0dfd93d6
    mem[1600] = 0x66f3a2e384fd67c02ddf6d100ecc3a7b4fd1b9be
    mem[1632] = 0x71a63d73bf602e3143724f56184c377aef6c50df
    mem[1664] = 0x519d6a4a961786095fc8f8ad98a93b1b56da0e63
    mem[1696] = 0xaf0ce7ac7db9180f0b3fefe361563629ee97f9a3
    mem[1728] = 0x27b06ad6041895fb36c181d561d86ab1a517e7c4
    mem[1760] = 0x73502d874696389bd5e2becf2ec9668a108e7f3d
    mem[1792] = 0xf2daa65e08d3ceeb9b37e720ef65df61ab450096
    mem[1824] = 0x8b060edfd77cc310007067f31053e77f7f6ea997
    mem[1856] = 0xcc5fdc17e823624682ed6f880e29d7f17b70da7e
    mem[1888] = 0x44e04d3f45a4f71b33940cb025f60f0ef37549cc
    mem[1920] = 0x9f74e421183a9fe984eded407bd89d3009d3d3a0
    mem[1952] = 0xc232fa8cb7472cb4f739fe94e8494ae09d20de50
    mem[1984] = 0x11226f3de43dc9b2faed152d28b1a27b86651355
    mem[2016] = 0x3d802ba5bda303e099ca706677b8196aca66e7d8
    mem[2048] = 0xc3d5361d194f1f2da1d1830177056e4188f6347f
    mem[2080] = 0x99acd8ae656316d88bc5d20a620d7025ec4e01d2
    mem[2112] = 0xf6a8772994fb8a5124bfef47fe48ec7416276bc9
    mem[2144] = 0x9a35b780d9aa9bfb8e2481ec10e11748aa635def
    mem[2176] = 0x2ca2909a980fde5e6825bdbc07e011e71d51bc09
    mem[2208] = 0x6bd9bad489334e9705cc09fa9e489e12f660a82e
    mem[2240] = 0x97eb9b3d45606a0116ca5f85bfe135cc18b26c30
    mem[2272] = 0x40a9b38ecc8b246d91163f23d540a26046077
    mem[2304] = 0x1c1a2cdcba038f8e6a4e71e00dbe90e445edaec0
    mem[2336] = 0xdfbae556c3a6a227ef6b6629222588cca8c2f4cb
    mem[2368] = 0x8c7f4eef318e7e7625529e5b7e94c62d07d6332e
    mem[2400] = 0x90c77a659b2e41f1e55d96abb3ba5083968f6f5e
    mem[2432] = 0x57773364c6c2a3581bf92e6965e9de243102917c
    mem[2464] = 0xdd79f802a01df7d0904e5b8c44e4b19b13bc65
    mem[2496] = 0x9113eb2c8933ff27601e047b89bb8b9686e32501
    sub_43f73181.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_43f73181[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_43f73181.length > idx:
        sub_43f73181[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_43f73181.length:
        if not sub_7d1437d2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_43f73181.length, sub_7d1437d2.length
        else:
            mem[2660] = address(sub_7d1437d2.field_0)
            idx = 2660
            s = 0
            while (32 * sub_7d1437d2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7d1437d2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_43f73181.length, sub_7d1437d2.length, mem[2660 len 32 * sub_7d1437d2.length]
    else:
        mem[2628] = address(sub_43f73181.field_0)
        idx = 2628
        s = 0
        while (32 * sub_43f73181.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_43f73181[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_43f73181.length) + 2628] = sub_7d1437d2.length
        if not sub_7d1437d2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_43f73181.length, data=mem[2628 len (32 * sub_43f73181.length) + 32]), (32 * sub_43f73181.length) + 96
        else:
            mem[(32 * sub_43f73181.length) + 2660] = address(sub_7d1437d2.field_0)
            idx = (32 * sub_43f73181.length) + 2660
            s = 0
            while (32 * sub_43f73181.length) + (32 * sub_7d1437d2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7d1437d2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_43f73181.length, data=mem[2628 len (32 * sub_43f73181.length) + (32 * sub_7d1437d2.length) + 32]), (32 * sub_43f73181.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
