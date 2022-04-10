contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage60' / 256
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
    return code.data[494 len 6941]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_4218f28a;
array of struct sub_260a0415;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_260a0415(?) {
    require arg1 < sub_260a0415.length
    return sub_260a0415[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_4218f28a(?) {
    require arg1 < sub_4218f28a.length
    return sub_4218f28a[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x8e97f0fd25c629f58ace057c8856e8f6cd9a87cd
    mem[128] = 0x1dbe2fd38c052f630283ce328d905afcf00f2480
    mem[160] = 0x53bd84d64a07384545daee22016e7f10d5610c45
    mem[192] = 0x7d1ff75e996ec2ea11e4efea99a7caf0a4aa9bfa
    mem[224] = 0xb6e16ac5d240d88b9ff8adb1d0423b2d99f0317c
    mem[256] = 0x563e13feb6c6804c7a664f6c40d96f40efbf4ae1
    mem[288] = 0xed5e1dd59083b7102fac21f92dd4003f552b93e5
    mem[320] = 0x4bb3757489b6ab5345ea57620cc28cc3f92e86e
    mem[352] = 0x5106b62a35d0dd471cc4067bbfe798c7c18c6d20
    mem[384] = 0xac62ce729be890158452799b68fdd449a5c1dc1f
    mem[416] = 0x4ccf24a14f86751b7750a990e614ad4b4db16e66
    mem[448] = 0x2cd85695bc31df6552b63abcedccac9da8866b5d
    mem[480] = 0x9ce8260fe46c40456975e8231093a3c33b003f9b
    mem[512] = 0xf3e01e4d81eb098a14c5633d9983cbec8de03bfb
    mem[544] = 0x65fe3cf63f704a8bdd02437f99d147fe2ff65801
    mem[576] = 0xabb5e0653cdcd57c47ccdf1a0c04f94fcb7e5b25
    mem[608] = 0x1c151e7e78ca9929c8adf04b6222c1db174f0346
    mem[640] = 0x223a3b0b9056502b0e1d440933d10bad3a1f7d58
    mem[672] = 0x992120ad85f531767904f99c7acdd3dcc45f6
    mem[704] = 0xcb21f8ef16f57aac8a8a3c2171dd08edfd3916e2
    mem[736] = 0xb2ca85a9c941be7ae185917f036bf51d374bedab
    mem[768] = 0x99e864a8d2dbb86e608acfa85549d7cd81edcc69
    mem[800] = 0xe75c968f7e04403f6163dc17a4631c0ae45a18a2
    mem[832] = 0x3dae8560922102ffe0d10f5f63382a8c54a127ea
    mem[864] = 0xc23ff94404081af1ac24826c0688c9fe1a39f825
    mem[896] = 0x839aced04791ae2360a9830441747a0e1992c801
    mem[928] = 0xba4dcd7b1457b0b89fd8ff64625859036f738eb9
    mem[960] = 0xfc5416abd06ddd9acaba359442a45c6ed0da0583
    mem[992] = 0x36e55056eed55cc8c12b005c458e9139be783090
    mem[1024] = 0xdf6fe4a702f6f85616ca22a9da41953203063898
    mem[1056] = 0xa41070b5bacc470d4fa16340b45414240fd5aa05
    mem[1088] = 0x30f1390b30a0ce92fbbb38a4eddb75c4f2967ad6
    mem[1120] = 0xa0393954603ce380dda0ec01f46973e9c9c4c2e5
    mem[1152] = 0xfaafba3d27fc330e73531fed97b723acebcbad31
    mem[1184] = 0xa2879e8e436370bc4ac415c67d17fee0b89d7751
    mem[1216] = 0x513bd9bee5d4f22c77e61f024c3960551e41aed2
    mem[1248] = 0x28ec7e43dc4cff391638764f712614e5470c41
    mem[1280] = 0x896a0b2b259d62fd27aeab05c81bb1897ecf767b
    sub_260a0415.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_260a0415[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_260a0415.length > idx:
        sub_260a0415[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x7dbc9f88feffdc3ab706db837b017e970682e911
    mem[1344] = 0x31cf35f20126936c7be14a15b3655662fa524d2f
    mem[1376] = 0xc43d7d859a969e48862bea1f507379c41bf9b590
    mem[1408] = 0xd5be730e34b95cacebd89caf2f9e8f7cd1ceeed6
    mem[1440] = 0x48fc128959c20d4b7ce3c4ea98bcff875407fd32
    mem[1472] = 0x10dcf20035c1f45b59e7a32719f5dbe472642d3a
    mem[1504] = 0x2ed0d055b36926ec6b8c0ad83b0b64d0ba1b80ea
    mem[1536] = 0x250706d5fe40e643956992e3ecc7eacaeb621143
    mem[1568] = 0x441fbf335507f196f13ef5041c69263435002fd3
    mem[1600] = 0x772a3483eb90a9823af2197ecf4814275bf8f4df
    mem[1632] = 0x3d9d61a4bd9c6b94c35d1ef4eac010a99880d66c
    mem[1664] = 0xe5507afb66163dd35d57852e2135543878c5d60d
    mem[1696] = 0xb3b375729de4eaaf215105770db44104fd208f25
    mem[1728] = 0xca2dcc092f633d6b963d7d5fd103957c33ae1ca
    mem[1760] = 0x467f668bbdd03a2f2fd9633a1a594ad8c890c5ab
    mem[1792] = 0x5ed3ce36fb6dc3355ef25d19772b584ffa33b788
    mem[1824] = 0x177aa18be77598d6c0f608b7f0ecf7561ce3a417
    mem[1856] = 0x2f6d4060208fdbc1e410e96037287f6cede3af81
    mem[1888] = 0x92c8f0f9acc2a115a8fae854985623414ab439
    mem[1920] = 0xc257fadfb1eca6f66d814a243e9a85379ab486cf
    mem[1952] = 0x5b345628c40a42bb7baeec062508cc43144f2377
    mem[1984] = 0x81c28e035f19f51e96963799b7fa52325e700faa
    mem[2016] = 0x4d760912c84aedeb5324b323d0f935ff41bb2c6f
    mem[2048] = 0xd47ce4033fe0b9203d541e552225a731c224e891
    mem[2080] = 0x38d46d7b927472b589447ee21c8f8569b8a1759b
    mem[2112] = 0x8a0c7c8e2aeca281b8e8f4d624914f12ea092e8
    mem[2144] = 0xe596015c2bfc1cdf6bcba68ce0f0f0b9668d99d1
    mem[2176] = 0x78edc316e8c63a83bef995e3b4941e2f5aa9bc38
    mem[2208] = 0x986b3344fac3763054e7872682307db35a6d1ffa
    mem[2240] = 0x5177d9dbd7338001c299c16bea979851e4ba6e9
    mem[2272] = 0xdd972f346a67cd55229342bf209d9935be0cbec7
    mem[2304] = 0x978fc1f47a0bd0f23e052342b9c009c9dd853f73
    mem[2336] = 0x678c628996e1906f0fdbe69b544d74cc4a79e1a2
    mem[2368] = 0x3ceda18b526be2586da8ca0a3b728c3b17159808
    mem[2400] = 0x3fdae5680981eeafa3070a546c0b4b9eb3dbe8ee
    mem[2432] = 0x961cb08bd9f0e2091129c274d0670066d78bb480
    mem[2464] = 0x19164892ccc5a2232684921c3351a5b5070271
    mem[2496] = 0xbe90083bc647b4a261ef8d78c374737e6f1f2ea0
    sub_4218f28a.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_4218f28a[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_4218f28a.length > idx:
        sub_4218f28a[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_4218f28a.length:
        if not sub_260a0415.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_4218f28a.length, sub_260a0415.length
        else:
            mem[2660] = address(sub_260a0415.field_0)
            idx = 2660
            s = 0
            while (32 * sub_260a0415.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_260a0415[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_4218f28a.length, sub_260a0415.length, mem[2660 len 32 * sub_260a0415.length]
    else:
        mem[2628] = address(sub_4218f28a.field_0)
        idx = 2628
        s = 0
        while (32 * sub_4218f28a.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_4218f28a[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_4218f28a.length) + 2628] = sub_260a0415.length
        if not sub_260a0415.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_4218f28a.length, data=mem[2628 len (32 * sub_4218f28a.length) + 32]), (32 * sub_4218f28a.length) + 96
        else:
            mem[(32 * sub_4218f28a.length) + 2660] = address(sub_260a0415.field_0)
            idx = (32 * sub_4218f28a.length) + 2660
            s = 0
            while (32 * sub_4218f28a.length) + (32 * sub_260a0415.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_260a0415[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_4218f28a.length, data=mem[2628 len (32 * sub_4218f28a.length) + (32 * sub_260a0415.length) + 32]), (32 * sub_4218f28a.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
