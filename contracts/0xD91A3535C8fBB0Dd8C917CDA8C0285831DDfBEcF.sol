contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage55' / 256
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
    return code.data[494 len 7005]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_e5e2e8f3;
array of struct sub_a369d46b;
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

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a369d46b(?) {
    require arg1 < sub_a369d46b.length
    return sub_a369d46b[arg1].field_0
}

function sub_e5e2e8f3(?) {
    require arg1 < sub_e5e2e8f3.length
    return sub_e5e2e8f3[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x5a29a57c55e101c0b8472ab549914b406bf0c049
    mem[128] = 0x8576bee7b392b19232d47db985c29ea957de8535
    mem[160] = 0x1160ca87a8eef04f316d575b474e5afd6bdfe126
    mem[192] = 0xda9e9c7bb72c4e9e72ee5e41b33e259c56e12aaf
    mem[224] = 0xe0c9f8abfcb2159065b94255d9c1aaf74a8760a5
    mem[256] = 0xaf4787692a209afce577504764009e36cd0e6679
    mem[288] = 0x674e59668c55e8058eea62c7fccacd5f3006d65a
    mem[320] = 0x90b82adce0365325cc4270a9e9ad317d7ab97eff
    mem[352] = 0x6b54fa69e561d82e714942427f9eae882ed16a1b
    mem[384] = 0x174670c5ad610cfb0156ff6045c70193aef869
    mem[416] = 0xec6feea3f752630a838f101251378b9739fa5814
    mem[448] = 0x130e43bcdd7ea69b1c3cf6e99fede2f5b6c38376
    mem[480] = 0x235fc20d507e4032c8ff6943b5fadd3775cf64d5
    mem[512] = 0x5944d8c9e1497c1c2ca81e67411fd564dcfcba55
    mem[544] = 0x1ff7f713e2829731afd3690ef23c6e8f72cdbe61
    mem[576] = 0x2a0136ce8ceb3616b348161651486fe54895648f
    mem[608] = 0xfa171c4cef26d1973f203722f5e8029abc721533
    mem[640] = 0xcf5b154a457982033f074e923ef9bbdf754f29d8
    mem[672] = 0xedc088baf1ecd43e09a840e46b7450f92b876471
    mem[704] = 0x18ad830f42606f237b6027ff2a794a70355272bc
    mem[736] = 0xaef0e4bed7adb15298be2d288d12e06fc53fea2f
    mem[768] = 0x486f74900b44973015f2009d5b6c5cfff932b7b5
    mem[800] = 0xa2fe177cf2a5e31472980730e0f58b02e69ac394
    mem[832] = 0xe2a91600c0449723907e436de4a1830f8f639768
    mem[864] = 0x4eb5c78f8bbaed793f6b9e42a6efbf643b52e68f
    mem[896] = 0x9d77da925beed45862fe6b247e7e33645a413087
    mem[928] = 0x820ca8e3dfd432a3c1cf214cd540ec6d1ed71967
    mem[960] = 0xd7bd2307b965a147e9b24bb9602bb10003b2f922
    mem[992] = 0x757f7a7e18ecadc60625d89577eba3449c6a638a
    mem[1024] = 0x8b29d1d416e04e78d1057ac022929902975b66
    mem[1056] = 0x12c3374ff2245712813f00980f6bea09f0bc64c6
    mem[1088] = 0x58f46371f9852b0abd57e277b53939a290855f7e
    mem[1120] = 0x82d0eb268829c1863b451a5a58f21fb42ed2da
    mem[1152] = 0x3a82fd53d4e35dc423b4bc8fbef24ef26ea3986e
    mem[1184] = 0xbcbe63b59ae3790eb2016c8cf9b1bc53a7e085ba
    mem[1216] = 0x6cfd885dd3f70642738e49bf640557a8321537fe
    mem[1248] = 0x6151fe628e109b50829da1f44c52a35f1a547c49
    mem[1280] = 0x2b1a9c1d8f3a7626f126adcc709d8eabafc8b670
    sub_a369d46b.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_a369d46b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_a369d46b.length > idx:
        sub_a369d46b[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x3f465d042bcad59d4d176994bb3f5b95d6c643f4
    mem[1344] = 0x9595362f1117e4fac890f7ca613c5e0b3f2a4019
    mem[1376] = 0xf779b6dea14de3715bc79f4cde005a50abe570c3
    mem[1408] = 0x1cf623f33e051d75690b7022562ed53edc854b7c
    mem[1440] = 0xfa5d3cac4606baf5a79e711153bae974410caea3
    mem[1472] = 0x61dbae4228930a9611e49a903e228a50fbb0145e
    mem[1504] = 0xd3408374ca24043e5a1550cb229bb8868c6ded09
    mem[1536] = 0xea8b927049a684f843351146f411625da07150fb
    mem[1568] = 0x16c7920a57c5a0d62f43bc83a3fd01da922d0c60
    mem[1600] = 0x4f22357ac14314c623f536fcea9743ae9a1b08
    mem[1632] = 0x95c707430b7c9c8efb10c3bc693c1b2b480e48be
    mem[1664] = 0x95107af3d19a13dd5c3639703e95a45c2995933f
    mem[1696] = 0xd02e50be2fa81e77fcf6db653aa882024e2d6300
    mem[1728] = 0x527e987c5f40edefe8cc06ec51d22e482f1915f3
    mem[1760] = 0x9d91435f4f12af8177ef3827a8a8a791e1f6934b
    mem[1792] = 0x6105ad66e6eaf884f7536752c976c9add9715388
    mem[1824] = 0xeb022bae7cba8fe900dcdb3006418f850d66b577
    mem[1856] = 0xd4725a39cc7a240768d772cf80443d5f69e3f6b4
    mem[1888] = 0x5319615fdc927e21ac5d7af8f52caf5d2fba19a0
    mem[1920] = 0x187acd24b087bb3c2d97a65205461ed6fc41ea80
    mem[1952] = 0xc08e60d472f78c81e3eb1f0b5c4dd44dc7f3cd8d
    mem[1984] = 0x2236a8cbc7675540de938090a0093a8535646fdd
    mem[2016] = 0x4cfbefd1a23d05a25039b36ddd6ad358e0bbfb99
    mem[2048] = 0xf699e245fb69f623779294519e4f16eca766e449
    mem[2080] = 0xf24a15dd9777b46840f28d94d1f70496f0d36c6e
    mem[2112] = 0xea2f62c3aa277953ec1f476f382deac07f62f75a
    mem[2144] = 0xe4b105626a599cb4f6ed6453ef965d2af57e8a43
    mem[2176] = 0xebe773caf08899754532c392043bee234390309b
    mem[2208] = 0x7b40bfc79e00b7847caa35f11de496ac35de383c
    mem[2240] = 0xe36c86530953a24de7fa026181cd86088e969c
    mem[2272] = 0xe977f5bfe17a279d27dcdac616192532652197f
    mem[2304] = 0x5e197a6ef17a4e1d4d271bc7f2340ad1f0794029
    mem[2336] = 0xecd9ad910f507dbb12c323173b286ca5720ab4
    mem[2368] = 0x69b50a7c2ece86e0f3f6f7eaf45103617e1acc08
    mem[2400] = 0x40ae974298dc32536ba5c4762be1dcda422b94d6
    mem[2432] = 0xc3592be1f9207535f5492eea6a1093b8968f8801
    mem[2464] = 0x304a4a165610abcf357e7c1d03ab26804b00dee9
    mem[2496] = 0x2223524769112461e784a78631cdcbda487c56e
    sub_e5e2e8f3.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_e5e2e8f3[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e5e2e8f3.length > idx:
        sub_e5e2e8f3[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_e5e2e8f3.length:
        if not sub_a369d46b.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e5e2e8f3.length, sub_a369d46b.length
        else:
            mem[2660] = address(sub_a369d46b.field_0)
            idx = 2660
            s = 0
            while (32 * sub_a369d46b.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_a369d46b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e5e2e8f3.length, sub_a369d46b.length, mem[2660 len 32 * sub_a369d46b.length]
    else:
        mem[2628] = address(sub_e5e2e8f3.field_0)
        idx = 2628
        s = 0
        while (32 * sub_e5e2e8f3.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_e5e2e8f3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_e5e2e8f3.length) + 2628] = sub_a369d46b.length
        if not sub_a369d46b.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e5e2e8f3.length, data=mem[2628 len (32 * sub_e5e2e8f3.length) + 32]), (32 * sub_e5e2e8f3.length) + 96
        else:
            mem[(32 * sub_e5e2e8f3.length) + 2660] = address(sub_a369d46b.field_0)
            idx = (32 * sub_e5e2e8f3.length) + 2660
            s = 0
            while (32 * sub_e5e2e8f3.length) + (32 * sub_a369d46b.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_a369d46b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e5e2e8f3.length, data=mem[2628 len (32 * sub_e5e2e8f3.length) + (32 * sub_a369d46b.length) + 32]), (32 * sub_e5e2e8f3.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
