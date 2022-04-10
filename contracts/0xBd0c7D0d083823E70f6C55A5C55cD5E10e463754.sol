contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage30' / 256
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
    return code.data[494 len 7120]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_95b89429;
array of struct sub_b7319f01;
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

function sub_95b89429(?) {
    require arg1 < sub_95b89429.length
    return sub_95b89429[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b7319f01(?) {
    require arg1 < sub_b7319f01.length
    return sub_b7319f01[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xe8a5b5e25ef20fc28284a0d17f1ce6ece60b426
    mem[128] = 0x91965f82e29b26f02c81abc6b1f93ae467313ea6
    mem[160] = 0x5a0a6a484452c2b5ff6a9c7f8de98b051360708d
    mem[192] = 0xe3c83379a4b46fb31ef35e9c1ff4d1fe4b47f866
    mem[224] = 0x315acd93ee2b0b45be375f7ef2f2b9e47c9379ac
    mem[256] = 0xb31138745a38dc06759a09b1ff7713f6a204f435
    mem[288] = 0x620010196fb5d44752c6662ad3829057ce01603b
    mem[320] = 0x131d278819a6080084a2e1d3b5dfccf590e3dc6f
    mem[352] = 0x1a2d46026ae74ab2bde6255180b140aa87fa880e
    mem[384] = 0xe7fbdda67bfc7a8aea2c10d48a2ec60e5506854d
    mem[416] = 0xd23705ef7cc69a3a9d7d71fc79023abba969d2e7
    mem[448] = 0x38192b5faaab14c2a4b7fb1fb706b8d18bbe1c6f
    mem[480] = 0x35da6091e6d012b81c7665d80590445e7bc6ce78
    mem[512] = 0x7335dbdc5cd38af1ef5fdd01c9f6925c45bbfce5
    mem[544] = 0x8f26c40e71bb6533089d66590d93590499d3a895
    mem[576] = 0x9c8b15c5ee81999b7e1db3388148c2c033bf71
    mem[608] = 0xbc993d8f9fa95ca000aea8f372fb01f2f38f41c8
    mem[640] = 0x92e248cb8c7911b495be7f8a4791ae54d5c0f9a9
    mem[672] = 0x590e9652c045f8f31356695d968b6ebb471d167a
    mem[704] = 0x9a3490b25cafaac27a7dffbc586a1cd5471ae92d
    mem[736] = 0xb8b15576b83a85d5a1174be341d0922e38728734
    mem[768] = 0xbf5229c0aeb37e42cec7718a2b66e0d2a55ad032
    mem[800] = 0x6ce9077a32289c27348ddef4ec21383ee49fe49b
    mem[832] = 0x8cd820af35cfd04305d57372f4b9fdd5a2dbca72
    mem[864] = 0xbceb817741831757ab163618094eb1d8f2c7ae24
    mem[896] = 0xb563f9a46befb0491fd57736b82f32e13749dae7
    mem[928] = 0xfb7197120696c421ff98b4e30042dd0bd5abcee5
    mem[960] = 0x1b3c6f24ed15768269a01f445da0fa95876af553
    mem[992] = 0x167127d6484bb4370a33248e22ca7ceb031fb639
    mem[1024] = 0x807eab5ce6688655a9c6f3d246207ee7ea26bea
    mem[1056] = 0xf3a39cd2a1b735481126426c5714f2d7fc5b63ef
    mem[1088] = 0x2e89c12e9b7cf7d65f4fbbf25fd6ce924de34675
    mem[1120] = 0x66a8347c30333f262308c9be2a4fa71d92e08529
    mem[1152] = 0x2b990ed840cd4e2202d82eb69bb0db4e3d6f57c4
    mem[1184] = 0x1403045b3d31d3842728a81240d69bdc3da8e7a2
    mem[1216] = 0xb084c78d10960204fb243926136fed297d04f694
    mem[1248] = 0x57cebc5ceb5247cf97cdb963de35e33175e1138
    mem[1280] = 0x15eefbe44be6df2f6a2311e708297b83497745e1
    sub_b7319f01.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_b7319f01[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_b7319f01.length > idx:
        sub_b7319f01[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x8b4c9a94ce4357b842bafe6a10532d6b04dea1c5
    mem[1344] = 0xc6c2f5e5c93cd409896bc444d85783e90c2dcb71
    mem[1376] = 0x1c7ffc82af1e679f392dfb60a61ccd98ab181805
    mem[1408] = 0x6053597508570e1725b1b2cc5f760339adce6138
    mem[1440] = 0xf9ddef3d6fd4363b53e6d946994dff53abe3989e
    mem[1472] = 0xe5f179ad06dea37e43f29af38b6304fc7b8e7273
    mem[1504] = 0xe2a24c7c0ceb20ff60a7a9ab99d5cd413271cfd2
    mem[1536] = 0x4ced2b7d27ac74b0ecb2440d9857ba6c6407149f
    mem[1568] = 0x7972dfd473d99cba39d45b70652a84ff4bfa6f41
    mem[1600] = 0xfeae4166d120a2636afc5a1407ab16efe75e6d8d
    mem[1632] = 0x20d21f0c025ffea820ccdb954494f0ab81f91557
    mem[1664] = 0x273bb808f81c68bf3e02a15ccec581c36518dab5
    mem[1696] = 0x29cb16e144ebb6a41c61f5740d5907d1ee2665f6
    mem[1728] = 0x483a34253dd3d379beb0145339ba38582400cd3f
    mem[1760] = 0x6ae95f7e9b6e3ed3066c4957549a08180bc30714
    mem[1792] = 0x73536af37130b977775743aa760aa678857de139
    mem[1824] = 0x30fb6787a970e5a75b731b54925e99e5f1d8e56a
    mem[1856] = 0x53940fd40ede990c4cc1f6e225ab6d8aab7a92b8
    mem[1888] = 0xbc1bda8aa8f43bd924c781474e95940601c787a6
    mem[1920] = 0xf7c35dedcd3962ddbdae3b2b699afaf05560db93
    mem[1952] = 0xf1edf5e1daca14c80978443cd3297ad408b7f3fb
    mem[1984] = 0xe68e126be5a8e8c14105a2d5c980f7cfb717e18b
    mem[2016] = 0x9e35be123aca2aa7accc6e62d00073a193924476
    mem[2048] = 0xf9e375d276e99974506ce3b25d67c62097347686
    mem[2080] = 0x3cdcdc11b8867a1e5356e1f78bc289c27c5b58e0
    mem[2112] = 0xa358b0a77d961c08bd7871b4c0a169502b826ee4
    mem[2144] = 0xdc3205464db7e2d35149e85788788aa1089a98cd
    mem[2176] = 0xe052ed56a29bb5960eced19fb56effad7b440568
    mem[2208] = 0xbe2b1ef8c5521174a9f8cc55a77d090945f99cc0
    mem[2240] = 0x48c071d449b6aa6a9bfe5cb8a7d41caf457f657e
    mem[2272] = 0x273c8e583e0bf746c060296c6e225d012cf7bae8
    mem[2304] = 0x75c61b667ab0741db4605e61bd56e4ab4461e46f
    mem[2336] = 0x7cd79b9056398b058a5b22a96f3aefb75b253afe
    mem[2368] = 0xcce5a5d88df34573ee44d6c663067aecb0e26b3
    mem[2400] = 0xd5693146492952f47180f4d77202675169d05a43
    mem[2432] = 0x118b17a9464561f69769ed472b424392853da4b0
    mem[2464] = 0x6564b9fb141fe7bff066628bf058f45acf1c0aa5
    mem[2496] = 0x173d0dc49db12fdc572d102ce5fbc1f6ef1e7a2f
    sub_95b89429.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_95b89429[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_95b89429.length > idx:
        sub_95b89429[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_95b89429.length:
        if not sub_b7319f01.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_95b89429.length, sub_b7319f01.length
        else:
            mem[2660] = address(sub_b7319f01.field_0)
            idx = 2660
            s = 0
            while (32 * sub_b7319f01.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b7319f01[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_95b89429.length, sub_b7319f01.length, mem[2660 len 32 * sub_b7319f01.length]
    else:
        mem[2628] = address(sub_95b89429.field_0)
        idx = 2628
        s = 0
        while (32 * sub_95b89429.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_95b89429[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_95b89429.length) + 2628] = sub_b7319f01.length
        if not sub_b7319f01.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_95b89429.length, data=mem[2628 len (32 * sub_95b89429.length) + 32]), (32 * sub_95b89429.length) + 96
        else:
            mem[(32 * sub_95b89429.length) + 2660] = address(sub_b7319f01.field_0)
            idx = (32 * sub_95b89429.length) + 2660
            s = 0
            while (32 * sub_95b89429.length) + (32 * sub_b7319f01.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b7319f01[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_95b89429.length, data=mem[2628 len (32 * sub_95b89429.length) + (32 * sub_b7319f01.length) + 32]), (32 * sub_95b89429.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
