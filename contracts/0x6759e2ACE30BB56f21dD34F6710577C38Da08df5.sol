contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage33' / 256
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
    return code.data[494 len 6787]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_da9d2804;
array of struct sub_93437c36;
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

function sub_93437c36(?) {
    require arg1 < sub_93437c36.length
    return sub_93437c36[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_da9d2804(?) {
    require arg1 < sub_da9d2804.length
    return sub_da9d2804[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xbf63fc89e71f48771d2c57202129d42223861be4
    mem[128] = 0xa08882d200c044912fbd2b83972e5afd1865f2a8
    mem[160] = 0xc71d910bd0610428e1d6edada6f6f4e93f70832a
    mem[192] = 0xf967da062b75e9e465bf42849a2199031dfc60bf
    mem[224] = 0xddf7a7a6fd7ae8d82fae9af3401b8f7459a8c59c
    mem[256] = 0x7781467e89d168f6bbe13ecb4f8a1d87b91336
    mem[288] = 0x22c092d74d4cfe67c2ae289fb7379ba863e8a39c
    mem[320] = 0xf9ef015f92ae0dc0bf76dd32d4b6b5870b1d6fcc
    mem[352] = 0xa122c44c735dc6a08a83cb388b635c036da2e78d
    mem[384] = 0xedad9aef5c10920a0454dd6efbda178154fc1c09
    mem[416] = 0xe7238e63fa0929876f39ec1d42e72faf9950b318
    mem[448] = 0x5d8936f3c74e11159194086f8c227eb9906ae232
    mem[480] = 0x27fa18ca5dd23a288c87f6f62de001053802da8c
    mem[512] = 0x6fe783fb1b3527a55e16e6f51245c04b08191f6c
    mem[544] = 0xa2bfadf5385960d7eb8e04c5fbdd2c8b729898c0
    mem[576] = 0x48b429ac6a8a237558395cd032f25103d0f350dc
    mem[608] = 0x642e7f0060cae79a2a123dfb1e817727b1aa712e
    mem[640] = 0xe879e58b911cf4138e59e94ee1bcc147e506568a
    mem[672] = 0x4bc9edb23a5e6715054f5864f4872687fbb803d9
    mem[704] = 0x5659ee84602e8eb0c99546f7b3a91c499683f23c
    mem[736] = 0xbc6c9dd501c61f2be60648119693ac076fab9246
    mem[768] = 0x84031d553175b8ed033e538f6354d3f7ba428ce9
    mem[800] = 0xd5681a3a79aed2f30f9f12e1b0bf3ca4e33b50e4
    mem[832] = 0xe96a3f63967ce67231946dddc93d1765e725db5a
    mem[864] = 0x8bc3c7008342f487458327af3636c095f5561b01
    mem[896] = 0xe37dee42bac4c7de6ab4a8595e0f054be1c312a4
    mem[928] = 0x99c5a42f48fc8b3d4f3576f13c2c8fe93c05cc12
    mem[960] = 0x7306b46f49c534eb1a8fed3834f406a8927dc1c7
    mem[992] = 0x8aa6c866404226975543687ba507bdc0ade2681c
    mem[1024] = 0xbda441a7801d2fb59fa0d442fe014ef6280243
    mem[1056] = 0x6068bfdb5b1ac66d524cfa79bef4aeb57d2dbb81
    mem[1088] = 0x6e7af9f4fd06b3c2330908417e85e7b8d4269a45
    mem[1120] = 0x21d6b0bce3ea4693459d31da20e860a930df182b
    mem[1152] = 0x82ab412af3445e8313c5117a0f87075b364a9537
    mem[1184] = 0x2c9ddbea34a8a37811b9faa97c0b2327732121ee
    mem[1216] = 0xf47e94aa5d04627d71fdd780c28725582a336bed
    mem[1248] = 0x5f128173d8447f0b04f05cea94b98a646bb58063
    mem[1280] = 0xb3ce49c192b0d6d750bfd96696ebb87ea61184b1
    sub_93437c36.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_93437c36[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_93437c36.length > idx:
        sub_93437c36[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xe3a1b42e4402bd2a540c1926764f5a4d1659309f
    mem[1344] = 0x6e4a58e0edc3d4fe31a49271a53c773383de447b
    mem[1376] = 0xbc7b6077578b15a149397c64dba331fad2ae3dce
    mem[1408] = 0xe7aa83b2010776eaf47a1b753aa82ce471edc831
    mem[1440] = 0x5321bab79d5a5ad7bb5be0b7995a6c3a023bb4a9
    mem[1472] = 0xc0e596b73361d2f50aa2a4105955d3bd22f9a8
    mem[1504] = 0x87654b082764176f84379b4a2f2835f678a388c7
    mem[1536] = 0x12d403338186988f6aae93ddb6ea57a282c1703f
    mem[1568] = 0x34aa7b2c6fe9d17bdf6c3cbfc13f3d93ff87b176
    mem[1600] = 0xf1a17a6d4ad4828ee300919607a3b711189bf89e
    mem[1632] = 0x2a69bf79af740d099411349b4fb9de8a27836770
    mem[1664] = 0x9c2e5924a96502a637faf5012e710192a4cafaa5
    mem[1696] = 0x991bc0d3bbdea1842ad250ec3c743b24907301f7
    mem[1728] = 0x18df82b36fd6e399010df0de5aa516b87b78e081
    mem[1760] = 0x9e3dcd281b0848ce2e79f9b7e7b315f6e53b5d75
    mem[1792] = 0x57b5f3d267219da6b8e5a00c8dbcdb71bc2b7f9e
    mem[1824] = 0xe1a67c92b036dad99aa4cee1992aad356c6e9e9d
    mem[1856] = 0x705d1f0ebff8165acdc7f28ad46555c64ba6db8e
    mem[1888] = 0x2f03b1614d7be94867f0edc79ff30a9b061cf40f
    mem[1920] = 0xf3aaeecfe42eacca9b4f11774b805c44059e57ed
    mem[1952] = 0x54028e77ef29d1d61274dc39b8a744b145d6ff8e
    mem[1984] = 0xaf1f3c9087f9fc5d10de53ff4c506887e4390cb0
    mem[2016] = 0xb0a368ac45f408339b4581ea4ee138d35a66e481
    mem[2048] = 0x997c5a38fe07721745266dcc3d2359023a34491c
    mem[2080] = 0x28842ddcee777c10ee8c94bcf8380ebb29d28598
    mem[2112] = 0xd6256067b129683f5c03c9d1ab6870d989cb0915
    mem[2144] = 0x9d08de68ecda932165a412eecccd054a726135c3
    mem[2176] = 0x3f2a480d5b83ac10110dd2773d3da9d6c7747b14
    mem[2208] = 0x3c50c11460cff4ae7676a0785f91775407078e3c
    mem[2240] = 0x68bc65429386ae89409c9d6fe1749870ccae5e
    mem[2272] = 0xde2a2f75a7f1f8ce6a8c697630adb16bb91792cd
    mem[2304] = 0xf11c540ec8a81814bf9e170864392cfa60fa53ba
    mem[2336] = 0x13176295867d43d37a8f49c7296b6ef05b1ee3bd
    mem[2368] = 0xe8f0cc244df89c398e85a08d8497f1ccc07a7c14
    mem[2400] = 0x45393da5c9c4ed6194641fe593b41667294f6a28
    mem[2432] = 0x9af8a7019fdd59c3d90acc3d6b67a7c09f1b55b3
    mem[2464] = 0xf2c186a83f87d4c229f0a1d6f5cd008f1551b59
    mem[2496] = 0xd8bc9bfe14bacffb5270eb47ca6e45c11f18537d
    sub_da9d2804.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_da9d2804[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_da9d2804.length > idx:
        sub_da9d2804[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_da9d2804.length:
        if not sub_93437c36.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_da9d2804.length, sub_93437c36.length
        else:
            mem[2660] = address(sub_93437c36.field_0)
            idx = 2660
            s = 0
            while (32 * sub_93437c36.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_93437c36[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_da9d2804.length, sub_93437c36.length, mem[2660 len 32 * sub_93437c36.length]
    else:
        mem[2628] = address(sub_da9d2804.field_0)
        idx = 2628
        s = 0
        while (32 * sub_da9d2804.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_da9d2804[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_da9d2804.length) + 2628] = sub_93437c36.length
        if not sub_93437c36.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_da9d2804.length, data=mem[2628 len (32 * sub_da9d2804.length) + 32]), (32 * sub_da9d2804.length) + 96
        else:
            mem[(32 * sub_da9d2804.length) + 2660] = address(sub_93437c36.field_0)
            idx = (32 * sub_da9d2804.length) + 2660
            s = 0
            while (32 * sub_da9d2804.length) + (32 * sub_93437c36.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_93437c36[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_da9d2804.length, data=mem[2628 len (32 * sub_da9d2804.length) + (32 * sub_93437c36.length) + 32]), (32 * sub_da9d2804.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
