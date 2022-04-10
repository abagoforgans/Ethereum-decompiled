contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage77' / 256
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
    return code.data[494 len 6723]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_c2e1550c;
array of struct sub_38e06875;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_38e06875(?) {
    require arg1 < sub_38e06875.length
    return sub_38e06875[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c2e1550c(?) {
    require arg1 < sub_c2e1550c.length
    return sub_c2e1550c[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x2accf2fa9ad22e30d49d2a2274b4c8d263046dd6
    mem[128] = 0xf5ae480e21333a64474608b11e8ac19f6dbad696
    mem[160] = 0xa15e84c1ee4c5209fe89bbf5f5cde5246798ca84
    mem[192] = 0x11f28423c4d9ca522ae91b41e3a9850e0cdc51c4
    mem[224] = 0x5391967d1730138d470315f42e9c3cf6b4ee8ed
    mem[256] = 0xabfde78fc24343f063d516196e49f3b562cfd8b4
    mem[288] = 0x74ca89d31344e6b7fbe5e06e02963686773ce42c
    mem[320] = 0x86e824d5d6511a6033abdd52e34ac4aa6fec7006
    mem[352] = 0xd36119b71b89d447825497abbfd01731dd5a2214
    mem[384] = 0x60e666e5e714b16069804d6a351b49cc38d57125
    mem[416] = 0xbc0c166cca27b4c482a66d42d600a2b5d6cfc2d8
    mem[448] = 0xc167cb277ad7a3fed351c7aa74028fd7805d9819
    mem[480] = 0xdb255d0bae2c1f95f6447de25d284d16237a4edc
    mem[512] = 0x7a8b69b1919da7c5971b1deed473483f035bcf9f
    mem[544] = 0xa8498ab2d726e7a9b27d199913aedf9d6f9d120d
    mem[576] = 0x8bd8a985c3c5819284c8d06ef4437392c8247806
    mem[608] = 0x61afbc610c611dc9d952e3d73649ab3d0176cc92
    mem[640] = 0xf62919f5ae5b86d9a990c6c9716424f6451435f9
    mem[672] = 0x103683a4574c43b20ca1c6898b885a38e96abef7
    mem[704] = 0x5730c27ee6523a795c8c91567917dabd0b368a9b
    mem[736] = 0x7d45f6dd8a037ca0f077d9e1911c26fb53bd97b5
    mem[768] = 0x4941bd2749fe514e506ab4fb220c3bb515e99c14
    mem[800] = 0x2e0157e050f08a7d52045c1d3eedb8678dacace1
    mem[832] = 0x6c1e0f9517a82493fbd9d2106dec4f699dd3ecaa
    mem[864] = 0x220981f44fedd6db12bb9b63823d4be237a6a2e9
    mem[896] = 0xb7185e31f9c80d3290dc7a690dfeba517a6e2ee5
    mem[928] = 0x335e616d418fc0aa6ced951a665bedb825fdde90
    mem[960] = 0xb8a41bc3f89175928266541c8de09cae5bf17ab9
    mem[992] = 0x41ba77ebf81fcaec34128ed4cafec1c2dfecd340
    mem[1024] = 0x5c65ee90d74ee479ee8aae88505f82f85a581cf9
    mem[1056] = 0x9b4d70bceaf2b3be0903b80a376afe211150a766
    mem[1088] = 0x3acb779709eb929dcf3d54eff5363482b8e15927
    mem[1120] = 0xd9e184c72f40a6a61a60b7bb65b56b6e3e932bbe
    mem[1152] = 0x9a904cb678160718a647586e841c7ddc47a11989
    mem[1184] = 0x8536031499a34e3168a99987a2a0445ae5ca34ef
    mem[1216] = 0xa5c70b0ea2ca6988fce650381442e0304c23bb85
    mem[1248] = 0xc7d4b59cab0ba13962d6e3b31656f38705e295f9
    mem[1280] = 0x58ccba006ce634ff824088cca68481422421c
    sub_38e06875.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_38e06875[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_38e06875.length > idx:
        sub_38e06875[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x117ad55557376afb9a9d5394ca4dd78c6494021b
    mem[1344] = 0xe5498de41d5b7e4cf22bfbd9fbd7a0cc6b40614c
    mem[1376] = 0x693b9c4da4ccffd528126121c711d5e6637473c3
    mem[1408] = 0xc7f18efb2d65fb88c154674310267ae1bf9712b8
    mem[1440] = 0x5007d7e394152b55761d37e62e05c0d46915ffa0
    mem[1472] = 0xcd97d153329b7f5d59e7f2ea23546771f2579593
    mem[1504] = 0xdac0bc2995fe420b8cc048c0ec101ec3a8c25e06
    mem[1536] = 0x434431699572079454d643af795f3aa046a29ed2
    mem[1568] = 0x82e63dab9904743da34531375b80a5212c0f507b
    mem[1600] = 0xb3101b5b0a8e9c8f1f06303cb76d2c08b615cced
    mem[1632] = 0xfc2e2567aaa9159106396e270416663e46f79234
    mem[1664] = 0xa3e5ef8df6c770c7731cd66c5a1da1bc990ae0df
    mem[1696] = 0xcd410129fb9ae303e3a63e8ed6013934e190c77b
    mem[1728] = 0x1666afd01524e861bd5eb80ff7a151601ae73dc0
    mem[1760] = 0xd6447483fec2df71c477cc46b1a488e3d6ebf01a
    mem[1792] = 0x6038d18507c1c7584da604b804ea7f542862e573
    mem[1824] = 0x8f0ed03a33a73bfba3a481f91d67496b9742e154
    mem[1856] = 0xc536824d517034b319dfe0864d8f3b5954e5a09e
    mem[1888] = 0xeec52fe3198ba0f5ae0a16692f6abf1fafdc7df6
    mem[1920] = 0xe5a523bb21bda10eba900c7cc48f1075a4acbfcc
    mem[1952] = 0x421fb13dea321a15eebe98130d7b423b7d7abb5b
    mem[1984] = 0xa2bf40afda304d62eb3f53feb80d68add1dc14e1
    mem[2016] = 0x5c5d6d4f8015108b57812fd9e35381086a26a159
    mem[2048] = 0xa8b6efabc42ef8b80b78fbb817b5eea8b5c711d2
    mem[2080] = 0xa051972ac4c8513355d0839c668c507339bada73
    mem[2112] = 0x9ea014056908ae27e74a360c0545bd58c13324c3
    mem[2144] = 0x6f70831a4a0abd4ead925ee027e148ab66569f40
    mem[2176] = 0xce573eaa1bfab17ee8c6a4c87730813b042a2e47
    mem[2208] = 0x2f704a6b156cdfe9ed6de1a8aff74ffe376f0d44
    mem[2240] = 0xb3d9ff3e0c4379bd8dcac7b28464bd7f6ff2383f
    mem[2272] = 0x8a33dfb20d28e6e895cae2d73b1da5562b08d751
    mem[2304] = 0x9f2f7026c27efe56acae71736b74c2be33165cae
    mem[2336] = 0x93afd11cbb7afe6ba320f64b4b146a5e3ed3cd21
    mem[2368] = 0x174367352b936c8e1ab6796b32775b66c7faa1be
    mem[2400] = 0x3e28d88baa952a4b53f2d0ca6ea5be3797164b48
    mem[2432] = 0x1ce02ab16f2525cc431de14a6672e989df0389b
    mem[2464] = 0x282fc9b6f51ae9f02975b3e3775b0d0d632b4117
    mem[2496] = 0x39f867a35c444f1d4070bb961ff060483b5c9a
    sub_c2e1550c.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_c2e1550c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c2e1550c.length > idx:
        sub_c2e1550c[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_c2e1550c.length:
        if not sub_38e06875.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c2e1550c.length, sub_38e06875.length
        else:
            mem[2660] = address(sub_38e06875.field_0)
            idx = 2660
            s = 0
            while (32 * sub_38e06875.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_38e06875[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c2e1550c.length, sub_38e06875.length, mem[2660 len 32 * sub_38e06875.length]
    else:
        mem[2628] = address(sub_c2e1550c.field_0)
        idx = 2628
        s = 0
        while (32 * sub_c2e1550c.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_c2e1550c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_c2e1550c.length) + 2628] = sub_38e06875.length
        if not sub_38e06875.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c2e1550c.length, data=mem[2628 len (32 * sub_c2e1550c.length) + 32]), (32 * sub_c2e1550c.length) + 96
        else:
            mem[(32 * sub_c2e1550c.length) + 2660] = address(sub_38e06875.field_0)
            idx = (32 * sub_c2e1550c.length) + 2660
            s = 0
            while (32 * sub_c2e1550c.length) + (32 * sub_38e06875.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_38e06875[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c2e1550c.length, data=mem[2628 len (32 * sub_c2e1550c.length) + (32 * sub_38e06875.length) + 32]), (32 * sub_c2e1550c.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
