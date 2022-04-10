contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage24' / 256
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
    return code.data[494 len 6870]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_1780e745;
array of struct sub_6880fd4e;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_1780e745(?) {
    require arg1 < sub_1780e745.length
    return sub_1780e745[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_6880fd4e(?) {
    require arg1 < sub_6880fd4e.length
    return sub_6880fd4e[arg1].field_0
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
    mem[96] = 0xed2107a6b6e05e6db222155dabb960cdbfdffbef
    mem[128] = 0x1383e363edf19f8df5dbe9aa59b655a7b2577a08
    mem[160] = 0x9694e0f7ff9458c7292688876103816cfaf88daa
    mem[192] = 0x4945a66eeb2cdc6352a076660d984ff96d9679ba
    mem[224] = 0xc5c2eb6e6053f1abc6f40a0770ee589150114765
    mem[256] = 0x2014d994888dac14566b12c1ef747b747a52cc4e
    mem[288] = 0x926939fc0c37a684a4efc00b55ab2c49008785db
    mem[320] = 0x915beb02f503c904d0e6686f923bbb70d4fd673d
    mem[352] = 0x630f1ad5e370738db599193b86a6dd9430582faa
    mem[384] = 0x598c3dcafb8639fd41a6576b2e9352577311393b
    mem[416] = 0x39394ec58f868fcc6f07260f54f8afd0e758f1fb
    mem[448] = 0xc12041b5bb713f871b09fafb855774c2935c8ff
    mem[480] = 0x68c2f45cd41a5607c00faa3d76c69c7b82c60eb1
    mem[512] = 0x5eef68c381668c04fff4872f7eb386b891077b77
    mem[544] = 0xeb2c7fd555441f86e9952f97574a2169a59912d2
    mem[576] = 0x4cd9272e9d573634c339a188915b84ff4fee5906
    mem[608] = 0x150acdcfb73abfee79eaa1ee9957e7ddeb16977e
    mem[640] = 0x634e9d3b80e8383e039edf644fd2b0ba379296cb
    mem[672] = 0x49b149f90be47e98fe4eeee2523caa0fd9ef2f7a
    mem[704] = 0x5e9e74d1ed1a1b020d37ffebc4813aa0b2fa955d
    mem[736] = 0xe51bbc42cd1d9a6fe75050ce462c7e69d277c3a5
    mem[768] = 0x30aa87db963147192172122c5a7c409e83d30c38
    mem[800] = 0xa372020ea5076d8346139813c9e451548b2e9cde
    mem[832] = 0x2bf8879276ed4dc4e405256f42f245e9f9e1ab76
    mem[864] = 0x46d581b1442f18e7494df04d33c580e5bb39a0
    mem[896] = 0x8cf4624f727bfd8387dd5a6627b6cd4c0965a008
    mem[928] = 0x555368419cb41a9c2c15aa0f3a019e32302854dd
    mem[960] = 0x5d0f1eae8dc88abfecfa2a103c8e75c12b2eca5b
    mem[992] = 0x39882a89b00f2237647fe601d30b05923e8a0959
    mem[1024] = 0x7c74195bd44a9163af65bcd2a4018f0dcb51ccba
    mem[1056] = 0xc957c69e4c3906dd2d5ca6c473b9af94c3b94955
    mem[1088] = 0xfee26e0bab77cbcfb4bc58436c358986b0a651
    mem[1120] = 0x8990531eb74a1bcc47f9364135efc602b6806874
    mem[1152] = 0x3d947a70a49547d494c3fe85e413fdd40b71c488
    mem[1184] = 0x61b0ecb33636c264decac2e5e19a3a62344465
    mem[1216] = 0xc14810721aa533dd19878874fbe0c39e8dd019c7
    mem[1248] = 0x20f56ee5b8afe579e1e51e63de4c0c560f8eda5b
    mem[1280] = 0xb64fa2397ccec46613cff68d7994e8cbde21ad
    sub_6880fd4e.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_6880fd4e[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_6880fd4e.length > idx:
        sub_6880fd4e[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x4b326c1865806209846195a48d96ebbdb33e0754
    mem[1344] = 0x22c99ab17e662fcbfff8801bfbbfc695138fdd2e
    mem[1376] = 0xb80fe4f575c3ed318937708371db6e038cab5715
    mem[1408] = 0x7f3fa936863c61d34e6ec6d4d0c3044056b23b9f
    mem[1440] = 0x7a9cc6e9f416934f79fec436d3a8ec9553fb062e
    mem[1472] = 0xd09e4c2ab4c42ca5afd1756ad5899634421abf07
    mem[1504] = 0xfa121bcf517e6399edbc9e94e76bf36b4af6ae05
    mem[1536] = 0x58df183385e3403bf5e734ec4ff59c9335387b3
    mem[1568] = 0xdf46a349cbc7c91b243e69baa6e035b5324ad9ac
    mem[1600] = 0xf14e05366d93fc68a65175ec63ac882a624af08e
    mem[1632] = 0xb86910e974afae00d81f20e71e3f81fa9c9ae2cb
    mem[1664] = 0x6b22e2703eeb7d770d10d3863dfc94516347437f
    mem[1696] = 0xd00357cfc2520d028eb65f0cd422edde33c4deb1
    mem[1728] = 0x7f6886e9f612bc38ab662e9de65730d7ce124ab5
    mem[1760] = 0x8c199517abd3ce36e2c78f41b3fe72f6ef108213
    mem[1792] = 0xb1a0427c8eb5ff2c3586412d8b8e8b1d9572807e
    mem[1824] = 0xc58e20ecbf219fc48897562bca0b69577becdb47
    mem[1856] = 0x5826547e7e9420773a3d2932a6a19a97bd8c7f4e
    mem[1888] = 0x44d450ff67d094677ed64d64e075fb9fd0dc63c7
    mem[1920] = 0xe3db32228d3e4e89682058106cbdb2a726c211fc
    mem[1952] = 0x5bdbd57ed28af1b7f8a6307d11f8455c3a265469
    mem[1984] = 0xf10e720b17089a28f07a5121c987b997f83a5fb
    mem[2016] = 0x8dccc62006db599d9ce2fe9e6f463e0c6ba3b29e
    mem[2048] = 0xf2db394affa5f9dca6864eff4a33291931ac6af2
    mem[2080] = 0x6999ddb1d0555e99d21857c691b2b22810c0
    mem[2112] = 0xd736c6893ddd0772394e021940cc840ec1ae396d
    mem[2144] = 0xb9adff4f2eaa763dbff47869d999f6a42db391c4
    mem[2176] = 0xf435b2da886ca2069c90cf9f75431b92eb4f4d04
    mem[2208] = 0xa2d8e48f974a6a6857e1d5b10432d8f29b4c28e2
    mem[2240] = 0x8b35fb72d48e2c906dc37b33f693a120919ef690
    mem[2272] = 0x799a5ca815894778409dbdfcadc376de0dda4b33
    mem[2304] = 0x40a9b38ecc8b246d91163f23d540a26046077
    mem[2336] = 0x881f8467e1b8c57b1ed4d4972e1454be2c23ea8d
    mem[2368] = 0xd8b12838fe7472f17c5354ac8722e9df7476fd08
    mem[2400] = 0x2cd73ab06cd502e0a84e42d1c730e30dafd3ae
    mem[2432] = 0x7bce7a8caabbee3ef42c9d5d261b7f29e192d783
    mem[2464] = 0xe5c51a9412f5f31bfee15d60da68b01c87fd017c
    mem[2496] = 0x30ca110e5c83658ec50287c7cce037726f8abf
    sub_1780e745.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_1780e745[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_1780e745.length > idx:
        sub_1780e745[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_1780e745.length:
        if not sub_6880fd4e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_1780e745.length, sub_6880fd4e.length
        else:
            mem[2660] = address(sub_6880fd4e.field_0)
            idx = 2660
            s = 0
            while (32 * sub_6880fd4e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_6880fd4e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_1780e745.length, sub_6880fd4e.length, mem[2660 len 32 * sub_6880fd4e.length]
    else:
        mem[2628] = address(sub_1780e745.field_0)
        idx = 2628
        s = 0
        while (32 * sub_1780e745.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_1780e745[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_1780e745.length) + 2628] = sub_6880fd4e.length
        if not sub_6880fd4e.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_1780e745.length, data=mem[2628 len (32 * sub_1780e745.length) + 32]), (32 * sub_1780e745.length) + 96
        else:
            mem[(32 * sub_1780e745.length) + 2660] = address(sub_6880fd4e.field_0)
            idx = (32 * sub_1780e745.length) + 2660
            s = 0
            while (32 * sub_1780e745.length) + (32 * sub_6880fd4e.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_6880fd4e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_1780e745.length, data=mem[2628 len (32 * sub_1780e745.length) + (32 * sub_6880fd4e.length) + 32]), (32 * sub_1780e745.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
