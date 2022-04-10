contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage31' / 256
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
    return code.data[494 len 7152]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_00ef6c49;
array of struct sub_ace81ec7;
mapping of uint256 balanceOf;

function sub_00ef6c49(?) {
    require arg1 < sub_00ef6c49.length
    return sub_00ef6c49[arg1].field_0
}

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

function sub_ace81ec7(?) {
    require arg1 < sub_ace81ec7.length
    return sub_ace81ec7[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x284eff9536e561bbba82f03aa00724e717e90cf8
    mem[128] = 0x6b557d04bdcb0834eb65086e234a99267a724795
    mem[160] = 0x8d40c9b18e5bd7ca0156a8f495046597b474b821
    mem[192] = 0x474928cb56426bdeab3472c92fa3f6f3053cdec7
    mem[224] = 0xfc1ea4ab6bb5db30e872331f538a9750d0c2da1c
    mem[256] = 0x3d0d32d533e0cef3795b7c3143cb02d0001c891b
    mem[288] = 0x5bc5387caf1e53541581f62c41049afb0dd5a425
    mem[320] = 0x931341b08078881e1aa12a7b46e7832bb895b9
    mem[352] = 0x868c99aff9e8d36b87dc2d47165ab784eb960679
    mem[384] = 0x6c1f2f171f1e0d39f2a872d6032300f30efbe1
    mem[416] = 0xa9c48b2997984cc7439647e8145fd9eddb1bf314
    mem[448] = 0x868c0b6f84f5d8677c7dfb6aff901e004981cc8e
    mem[480] = 0x9f70cc9e10b92cafee5d4f355ff54bd0553de3
    mem[512] = 0xc63c2ff00db27543ca6f78847e9b4d716abc7f66
    mem[544] = 0x540660c3db7b1b67a08d25f0ad2bf6a911a173e5
    mem[576] = 0x18e638cf2b369650990f8345a4d967680387ae76
    mem[608] = 0x51c5554f3096baafbb622463f8805b83b17fa3fa
    mem[640] = 0xfcccf72e6c4eea8bc55509c8ac097ba93c55f1e2
    mem[672] = 0x9cc7a3f63f0be8f24789355eba6c9fe60437314d
    mem[704] = 0xe19f1592819d82623b099856604013b1a0225bad
    mem[736] = 0x4ea7840b8a6f14619970e1ccd5c99f4342555d47
    mem[768] = 0xdbc10f8259461c5b22c83c8ae49ab4706e6273c8
    mem[800] = 0x9ddd54d805a59aa1a62f7ac515b4e0503440d802
    mem[832] = 0x7b2654f96f1a3708eba40126cb5d013d5da4c032
    mem[864] = 0xc20985fbbcd4c5fe04e03a14c6e74025bbadde
    mem[896] = 0xc95b24c9125a59fa61c4ce3d503dd36648f4158a
    mem[928] = 0xaca66957d8d5cc3859e529dc9cdb1e6a3bcc2d
    mem[960] = 0xdfc608add1cc9ca93718eaa69d26929b81b9bd0e
    mem[992] = 0xfe6ae746d36b4603d215d6758f9f264a34453a1c
    mem[1024] = 0xf3d403a735061ea5327cc59dc9b8158ee99b5069
    mem[1056] = 0x3df25c7125a517fb468a6075036c2da70dda4051
    mem[1088] = 0x581d06c516ab3f9e4c6ea161617f990063ad97
    mem[1120] = 0x949dc683c102a90de50fa52133d5797c8e2440a8
    mem[1152] = 0x8b298aa91989d09e60b9ac2b50bc6288e5099395
    mem[1184] = 0x7a61cc02547bb6f97006b878545a2db3b134dfe3
    mem[1216] = 0xa681c50e167ae4546257b60b6e4e87abf318da32
    mem[1248] = 0x3c0eede6a2140c9427aa9e3e002c3eb1570aeb36
    mem[1280] = 0x84044a5fb6e8839050f242418da0d9cff718ef4
    sub_ace81ec7.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_ace81ec7[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ace81ec7.length > idx:
        sub_ace81ec7[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x67fad8faac8f7af78d3e6c25f8d765f1195cfb96
    mem[1344] = 0x99983c8c85bf5ba6730da84d6a3450f3b821b125
    mem[1376] = 0x2fcac875f9b040a318ff6dc4254735d151424e46
    mem[1408] = 0x982559b58dc0fee50bb7854b078fa6de34c7aa68
    mem[1440] = 0xf4613279b48b4e32ebdb5adc5ab54111125914c
    mem[1472] = 0x13483d01be56b158cc0c9f7d43af96d77b0cfd86
    mem[1504] = 0x1a5e20ef2583ef420d6d713801a7310db45605f6
    mem[1536] = 0x44351d59e5574aa39b69eddf3dd13d1f402a93
    mem[1568] = 0x2e88767c1e3bf82c6e90ab5e75d2bff045f264ae
    mem[1600] = 0xb621cd03ea506a61b9587936957c2646af5489
    mem[1632] = 0x260adc046bd8cadc9520e88cc340cc8b0a64aeec
    mem[1664] = 0x18d77179bbb5c8c2ec874dd1fdb874a2935fd5bc
    mem[1696] = 0x2b8420ef58d37a2dc74b775717794735f1b5dc
    mem[1728] = 0x3891afcd40005289772f70ecfd507b653e825afd
    mem[1760] = 0x7da6e3f3b14c8a09914eaf8e8044a82152bc3b13
    mem[1792] = 0xd714207e04e06ba593ed7a2082a4f381884525a
    mem[1824] = 0x8646500f6f64ee3d19b0b70a6c75dda1e5c7fa76
    mem[1856] = 0x223a659f0949a5b7f8c182bce70f2db71fe566ea
    mem[1888] = 0x4f994c789e6e9dea3b047c99753944f7c6a20b96
    mem[1920] = 0x9106c1b3e0a11b12cf73ca28cad3dd783748dd66
    mem[1952] = 0x23b665170eb4542dadc836370a985df171c3b2d8
    mem[1984] = 0xc17c0fe8edefbc4b617050ece9ff517e7220372e
    mem[2016] = 0x4284c55c3309c6d652b037d63230ec367bad0714
    mem[2048] = 0x30ab3b04b2beff5ee86c8ada50b1db2de8d63379
    mem[2080] = 0x81d535b63f832697d3ab271dceab21308e3890
    mem[2112] = 0x7be6ddcc1af7f6cc2dca741d980d43a413908f89
    mem[2144] = 0xba5fcb4ac11e0db381247475a10ad2618ff8e4
    mem[2176] = 0xb57646af2f2488503f1280eea74878b89e18db56
    mem[2208] = 0xf9c365174c587729b03f53458f72e424d10306b0
    mem[2240] = 0xbe2404d72e22e9e7a21ee3f93fae0583e3a4211
    mem[2272] = 0xf9e9ae1f45f879ba16a86f457d016b3268b2f785
    mem[2304] = 0xb10c3de6ad074f9d4642bcfde47e3b6591c1fe
    mem[2336] = 0x8b75d91270fc080670484dd39fc377507de99fe9
    mem[2368] = 0xc5631f701d3278f36fee819ea74bc7f58269df8e
    mem[2400] = 0x61f78664c0fa93417d751d0b2fb0d05f6460736d
    mem[2432] = 0xdda03a2e46fbb97303350455ac842c2c49306654
    mem[2464] = 0x88f9eb74d99a1b1192032d1ffd6679d46b73f240
    mem[2496] = 0xa84c26fd35cf3da6a1c899f319cc624d6c9f76c
    sub_00ef6c49.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_00ef6c49[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_00ef6c49.length > idx:
        sub_00ef6c49[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_00ef6c49.length:
        if not sub_ace81ec7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_00ef6c49.length, sub_ace81ec7.length
        else:
            mem[2660] = address(sub_ace81ec7.field_0)
            idx = 2660
            s = 0
            while (32 * sub_ace81ec7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ace81ec7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_00ef6c49.length, sub_ace81ec7.length, mem[2660 len 32 * sub_ace81ec7.length]
    else:
        mem[2628] = address(sub_00ef6c49.field_0)
        idx = 2628
        s = 0
        while (32 * sub_00ef6c49.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_00ef6c49[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_00ef6c49.length) + 2628] = sub_ace81ec7.length
        if not sub_ace81ec7.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_00ef6c49.length, data=mem[2628 len (32 * sub_00ef6c49.length) + 32]), (32 * sub_00ef6c49.length) + 96
        else:
            mem[(32 * sub_00ef6c49.length) + 2660] = address(sub_ace81ec7.field_0)
            idx = (32 * sub_00ef6c49.length) + 2660
            s = 0
            while (32 * sub_00ef6c49.length) + (32 * sub_ace81ec7.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ace81ec7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_00ef6c49.length, data=mem[2628 len (32 * sub_00ef6c49.length) + (32 * sub_ace81ec7.length) + 32]), (32 * sub_00ef6c49.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
