contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage74' / 256
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
    return code.data[494 len 6877]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_7a62277b;
array of struct sub_f9cc5750;
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

function sub_7a62277b(?) {
    require arg1 < sub_7a62277b.length
    return sub_7a62277b[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_f9cc5750(?) {
    require arg1 < sub_f9cc5750.length
    return sub_f9cc5750[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xf0b60a3908b1854eadae6cf3a40f606e367a62f1
    mem[128] = 0x7219c6f3bfe5367a907613c25796b0fdd965eaaf
    mem[160] = 0x5c7d5e13d2dcf80a616aa6f5b6532968501361c9
    mem[192] = 0x1568ce64c7a5734d7c3fc55f5b3c456114b35ccf
    mem[224] = 0x733c150270d7425c1b5445e49a84b814148d4da9
    mem[256] = 0x7290a47cc9e28fae8267b0be3c598723e9c9497d
    mem[288] = 0xcb08875078e9b294011a61d5156f17a70212bbb8
    mem[320] = 0xa9861964d052561544f40c612a9f9a6d6fdacf7
    mem[352] = 0x3c131d2a9fcd6e22de233d45b0d02ccaadf17fe4
    mem[384] = 0xd5d126c4fb064ab9a130368b70646864a7d5855c
    mem[416] = 0xe1169aa33c578ed814d4a6bc57131dbceebecd72
    mem[448] = 0x7dc1eb779da767eeca02d060eb101eaa624514f1
    mem[480] = 0x17ba9bf220d7b049f109f2b3c1dd97d414c511c
    mem[512] = 0x2b37f5644220842c0fef345b37b3b4aa246aa3ba
    mem[544] = 0xa46ea0cb018f18915343c813287789d1002d5679
    mem[576] = 0x51368a0fcad45f633ef5e337a8ca9959b151ffb0
    mem[608] = 0xca67a86c0e47481bca9585df2132ee8cdf2e1020
    mem[640] = 0xb515077a6c1b52f12a87294bdb56009706d94105
    mem[672] = 0x1116a6a4a86e6472613df13ce16bc22d97b5b0
    mem[704] = 0x5ead97dbe5ccb6b59c06ff9d83caa2979777959e
    mem[736] = 0x69c49aaa8b950519126289342dcfd8cc0b2a928b
    mem[768] = 0x3b9740822a7c9d369bfb59e23de9efd42a739723
    mem[800] = 0x25c29ad11e506879b6bf7f54d08a08292c900cd4
    mem[832] = 0x419dc8d9c59f46b685452cfef1fdcc22b28fbb7e
    mem[864] = 0x9b68ee71bcb9972ef17c2a0bde26606693ae724c
    mem[896] = 0x4a4c3d35f7bcd25464fdf740bebb5eede8895a6e
    mem[928] = 0x20b7b9ddbc483c6ed2cae44fb4a340040d3839d1
    mem[960] = 0xc2f29e0d0dacc07b5be1f70e5dbee3570ed8320c
    mem[992] = 0xa6ed344c790495d14d9f3cd566c07e24bd052e9d
    mem[1024] = 0x1b2fa7d008eb129d82220a10cf7681ce49dfc8cb
    mem[1056] = 0x78e319e248af60b58c95be59e1d5e9e7e5d94261
    mem[1088] = 0xd78e717ddf0e9dcb79dcf8cb9a87dc2ca0c706e4
    mem[1120] = 0xde08393795b9cb1a74c8771151d2c793f875229c
    mem[1152] = 0xe59754c20ae3a707cd629d60acdfc382d7a8512c
    mem[1184] = 0x8580a76997b6278c4584fde6e6580314d4cb7e54
    mem[1216] = 0xf36a6fa1d8854a0513d346ad60ca2cda7251f057
    mem[1248] = 0xedbae352fa837ccc3a1a0188a9f5816c2e6f8908
    mem[1280] = 0x61097ee7eb636f0801e77e388d2c309264d41a0f
    sub_f9cc5750.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_f9cc5750[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f9cc5750.length > idx:
        sub_f9cc5750[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xc95d8b2d41576cb1be8767f23ba10995f4f315c5
    mem[1344] = 0xf6ad3e9fa63c104b669bb040f7d8fd4459ab39b4
    mem[1376] = 0xf230c08149aa9dc26e7f6a2bfcdefd1620fb3b05
    mem[1408] = 0xd3e6997d246b0dc57674e5e5f05cff006cadcd04
    mem[1440] = 0x7914be0349c16e82bf18f4833f6152884af3cbba
    mem[1472] = 0xcaba663a300cfa36f6d1c5eca7e88646d9b8add2
    mem[1504] = 0x573c199a3e69fc80e8cc421bd83d46744e98a932
    mem[1536] = 0x8d25b3e415ee15bc404a7b46dd866f2f86ddbf0f
    mem[1568] = 0x27add7de6d13e631033c58331a70e5216d822211
    mem[1600] = 0x26d2cceab972704658a61769c346a765da43ffb1
    mem[1632] = 0xf8a7952ed56e3c597dd1e81ef6c6c6d0fed75560
    mem[1664] = 0xfd7367d3d25160e8689ec07b5f0d5f9bb4699d27
    mem[1696] = 0xf14b83f6ed6e096cbad2ec190a745bb9442bea0f
    mem[1728] = 0x4371eb9b5d86e52a715cee1a931c4648b8a8ca3d
    mem[1760] = 0xeadcae9b0658bf8d7e7e769196c93fce352067bf
    mem[1792] = 0x7689ec5016a6348058350276ca3c6d6cf424cb2e
    mem[1824] = 0xd906105e818016ff3078cc2d1859425bf3037e33
    mem[1856] = 0xb40d081c1ea565ee01388da98b6715a566e65eaa
    mem[1888] = 0x2be230e45903c8285363af96f255fa55643b7b
    mem[1920] = 0x45eb1e604e1a93b388bc4fd56867c09a615184c3
    mem[1952] = 0x900a4058edf762297a5e665d57326c85894333d5
    mem[1984] = 0x9b58964c8efc5b5102a75d65cc4df81b471e646c
    mem[2016] = 0xfb3a3d69c6f1fa954d6f51a88d299989735cdd64
    mem[2048] = 0xcf2aedc407306a8fbf84a15764fa92509737f0b
    mem[2080] = 0xa2f7d34bc4f9b2c4b235908c90a3e4c73314ae7a
    mem[2112] = 0xd0bd1046d7f72b79d4e0ca379cd70a0961bc8f1a
    mem[2144] = 0x54859dc92990faa2fb9bb5b3169e263f51ccb4dc
    mem[2176] = 0x60e18f1f7e5dbe1a85f8c2c1d50baf8074f87e60
    mem[2208] = 0x94a3497c367e1caae2d011a96c76e9a94ee13544
    mem[2240] = 0x367a1682ac03a1ae7db6d0c16a61751b666b55e6
    mem[2272] = 0x3037c387efe24c833ff950a407936c7541abf0e0
    mem[2304] = 0xf600b345e9703fc1be56f97bb40bbf69c894aab9
    mem[2336] = 0xf26d711cc1574c5e70b5b0467d872d7e0a12fa70
    mem[2368] = 0x8098308bcf56a53e68a6c31efd47db666c92383
    mem[2400] = 0xc4ce7d6b8b01d1ce6aec1e5295aa5c91d8f420fb
    mem[2432] = 0x551d2183a073677266b9af93ecb6ab8970248f64
    mem[2464] = 0xed558479f6d351912cea96b552cc1c7362beaa2a
    mem[2496] = 0x5310adf5dd2e87642887d50a815659016635c6fe
    sub_7a62277b.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_7a62277b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7a62277b.length > idx:
        sub_7a62277b[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_7a62277b.length:
        if not sub_f9cc5750.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7a62277b.length, sub_f9cc5750.length
        else:
            mem[2660] = address(sub_f9cc5750.field_0)
            idx = 2660
            s = 0
            while (32 * sub_f9cc5750.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f9cc5750[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7a62277b.length, sub_f9cc5750.length, mem[2660 len 32 * sub_f9cc5750.length]
    else:
        mem[2628] = address(sub_7a62277b.field_0)
        idx = 2628
        s = 0
        while (32 * sub_7a62277b.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_7a62277b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_7a62277b.length) + 2628] = sub_f9cc5750.length
        if not sub_f9cc5750.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7a62277b.length, data=mem[2628 len (32 * sub_7a62277b.length) + 32]), (32 * sub_7a62277b.length) + 96
        else:
            mem[(32 * sub_7a62277b.length) + 2660] = address(sub_f9cc5750.field_0)
            idx = (32 * sub_7a62277b.length) + 2660
            s = 0
            while (32 * sub_7a62277b.length) + (32 * sub_f9cc5750.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f9cc5750[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7a62277b.length, data=mem[2628 len (32 * sub_7a62277b.length) + (32 * sub_f9cc5750.length) + 32]), (32 * sub_7a62277b.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
