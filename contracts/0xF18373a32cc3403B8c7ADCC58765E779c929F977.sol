contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage54' / 256
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
    return code.data[494 len 7095]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_7d773b56;
array of struct sub_eeacf223;
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

function sub_7d773b56(?) {
    require arg1 < sub_7d773b56.length
    return sub_7d773b56[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_eeacf223(?) {
    require arg1 < sub_eeacf223.length
    return sub_eeacf223[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x2d8cbfb5881cb337301d54eb6cfd5eb5ca1b7602
    mem[128] = 0xfa8a8dd7c07ffc762ca82d15c1bd1d418543fdd5
    mem[160] = 0x860fdcdfbccbc22c721cffb9a714a5767ee387b4
    mem[192] = 0x8fc2368e97f0ebce1bce266f2d6a3e141fcbbf72
    mem[224] = 0x5149a2c26fab68e2b67d89abde1be9584c698f1b
    mem[256] = 0x69d2163d8a82895ba849554be9f24de05488e38f
    mem[288] = 0x348577a34302e3c936b42002954808740e72947d
    mem[320] = 0x56e868e7d665afc6866045dc846c8b02f19264d3
    mem[352] = 0xf77332f2f67fa4ab9208f49e1b6b30fdeac47108
    mem[384] = 0xb88ac46545e58d7e69096639274c8b1cd57ebeaf
    mem[416] = 0x33213cffd61d96d150d518b1b1da4023c7f65126
    mem[448] = 0x92e268e18112bbae7f227993f0ee478b16e32d03
    mem[480] = 0x30cc6638f0ad24dfddcc73a6f8fa3655fd6ece45
    mem[512] = 0x76b4ba66898e21fa1733cc95420dbf170e108573
    mem[544] = 0x9c1ba55be64a5e76ee7925c404760cdd0a8df0e9
    mem[576] = 0xe25abd26a31cdc925557a8d51293546a3cb78785
    mem[608] = 0x3398def3cf9d1f41c133fcd385f5f290e310b353
    mem[640] = 0x16fbb3618d815950309e8756a5b7c73a810b80ee
    mem[672] = 0x4ce0c0612588fd73271edf2b93590c24dd795521
    mem[704] = 0x425c32f781c497e32eedf90cdd13042f6cb5ffb6
    mem[736] = 0x3a945ca46f0c2bfe5daf94a8343ba8047725f158
    mem[768] = 0x247b7cbb5cc3cf298b24f226e0ec8662dfe2a685
    mem[800] = 0x15dc9f48e1943c631440b0b61f60e60c6a1e7aa1
    mem[832] = 0xc8c8664eb42dd5929c33441706dbaa047c25b1e8
    mem[864] = 0xe7584140be8dd79c9f6c747eda0878fc0e720e0c
    mem[896] = 0x35b6345d95c46fcc8630543e37a7019e758a84
    mem[928] = 0xc418c346a93d7660fabe5428613a20ee87dc993c
    mem[960] = 0x8a9af302a34df1cbb2c2a02bb78f06e39a39f956
    mem[992] = 0xe642b14fc9be3c7912334080678bdaf6e94c1335
    mem[1024] = 0x5b1c59a7d09c81db53f64b211b2f4b15557b9d9a
    mem[1056] = 0x43a7a8b9a62321aae6e9da5db269402b77a49210
    mem[1088] = 0x3bc4a3a6cf3ad96b3a80e76cca2ce100a022cf1a
    mem[1120] = 0x7dd68015a0f1dc0b23028f92330a49055685e2fd
    mem[1152] = 0x9fc1ab7488d997613141c68a02f33a7d54a086af
    mem[1184] = 0x4eec671ea224521f451c71f09dabb2eb1054cf51
    mem[1216] = 0xeb86bad3a6f35cbd5982b9c17b0b8412c8a6cc95
    mem[1248] = 0xe549f8d668cca3152760cb80026c03030e2f5cf3
    mem[1280] = 0x5493fe8ddd401c0201db187cc3c1ae43b78c66
    sub_eeacf223.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_eeacf223[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_eeacf223.length > idx:
        sub_eeacf223[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x339df63a18b88a1922c3b03e7c8b620484abc1bc
    mem[1344] = 0x99e9b2e27b562a7f5d45e7a32631b5ec15f6fe80
    mem[1376] = 0x4fc7cf0957fee8e1eb634a8459d70197b84bb3f8
    mem[1408] = 0xd5b97629c1b4329d53f047e3bddecaed99fb93aa
    mem[1440] = 0xf9fe54ebf86e12019f41e8cae6b62508c03e6b43
    mem[1472] = 0xdf534600d7e0d37e21fcea5bfb526e6237a4bc7a
    mem[1504] = 0x86c0b6e8d1e5f19742aa87384f976ffff515f260
    mem[1536] = 0xd05728da12a1c5e7017d28d3a1a5ab772ff61c91
    mem[1568] = 0xee0cfb92b3dc5735cd7f4a18a9c17411356080c1
    mem[1600] = 0x16ffeb41110dd13c79d41d6c0f9baa4bcd3c0cd9
    mem[1632] = 0xa8f1054124de718cc98880b7087674c50d33b56e
    mem[1664] = 0x2639143bd65dc4c0d6282d77140ae21b97090183
    mem[1696] = 0x469a6e2e891cfe54e425937f6af5b6912323ec7f
    mem[1728] = 0x4d01c61454d64c30f70d0fcd41ad389394738b2d
    mem[1760] = 0x8b9c8bbd10bd278698e200f02b70b38b4d398cd7
    mem[1792] = 0x8272d3944b01b9b59a1e8b0d8887ebf4a7b9e8c0
    mem[1824] = 0x87e4b536b4fca18dc1041187b8643e1ba8cd9564
    mem[1856] = 0x406360a9d29888852198657d684568c788166a98
    mem[1888] = 0x3a52e98151207cde8d40e21860371ed8c01fccf8
    mem[1920] = 0x69fdb8e8fd7737550673f1ca2d722d9d32fa453b
    mem[1952] = 0x4f3bafb56962c93655a1d8da8d76ec30c331130
    mem[1984] = 0x27fe45ab32fb9218e65d12f7940587e26bfbaf45
    mem[2016] = 0x8ffb86f984517e915901ed2c7359f13498edbbb2
    mem[2048] = 0x12b7d0b3c91efab347d141acf4c2ebc452930c7
    mem[2080] = 0x238af4850a10a0d44987e331dc146f94e911e29f
    mem[2112] = 0x35d0657ec05d99c6cb139434d6de9485bfbfe4
    mem[2144] = 0x8c7c04553fff9402725cf08d0f09ede987e32346
    mem[2176] = 0x20d08a2e48cebe51e1696b4d93963afbfb2cfb80
    mem[2208] = 0xabbe7d02ff3529095a086dab22e089e9d1784f69
    mem[2240] = 0x74f6ded6534c329046e82a9ebdc32d2c1c442389
    mem[2272] = 0x859c0275f159d9d97add0c8b5cddccb02c9dfed2
    mem[2304] = 0x6f93df9ce5f73ce1973e5e686de8971001a3610d
    mem[2336] = 0x3d9082dd369d1c72f6467f2cbc5d606e83cd8dd7
    mem[2368] = 0x7eb7a52e649e8cef16ea53d060de8f2c4637e2d1
    mem[2400] = 0x73203a203a9407faaea86c9ea780cbd5c0c0e772
    mem[2432] = 0x5c56cbbf9b3e4ebb9259e0cc3ea4af57f6234046
    mem[2464] = 0xe7bafa7bd2491632c9dc33bec87372218277a2ce
    mem[2496] = 0xb6f529436111c364c099abe42c2a51db899f2e
    sub_7d773b56.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_7d773b56[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7d773b56.length > idx:
        sub_7d773b56[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_7d773b56.length:
        if not sub_eeacf223.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7d773b56.length, sub_eeacf223.length
        else:
            mem[2660] = address(sub_eeacf223.field_0)
            idx = 2660
            s = 0
            while (32 * sub_eeacf223.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_eeacf223[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7d773b56.length, sub_eeacf223.length, mem[2660 len 32 * sub_eeacf223.length]
    else:
        mem[2628] = address(sub_7d773b56.field_0)
        idx = 2628
        s = 0
        while (32 * sub_7d773b56.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_7d773b56[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_7d773b56.length) + 2628] = sub_eeacf223.length
        if not sub_eeacf223.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7d773b56.length, data=mem[2628 len (32 * sub_7d773b56.length) + 32]), (32 * sub_7d773b56.length) + 96
        else:
            mem[(32 * sub_7d773b56.length) + 2660] = address(sub_eeacf223.field_0)
            idx = (32 * sub_7d773b56.length) + 2660
            s = 0
            while (32 * sub_7d773b56.length) + (32 * sub_eeacf223.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_eeacf223[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7d773b56.length, data=mem[2628 len (32 * sub_7d773b56.length) + (32 * sub_eeacf223.length) + 32]), (32 * sub_7d773b56.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
