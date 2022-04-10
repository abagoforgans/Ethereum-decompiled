contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage38' / 256
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
    return code.data[494 len 7429]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_c50e7de1;
array of struct sub_2dd30960;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_2dd30960(?) {
    require arg1 < sub_2dd30960.length
    return sub_2dd30960[arg1].field_0
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

function sub_c50e7de1(?) {
    require arg1 < sub_c50e7de1.length
    return sub_c50e7de1[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x21be0ce92729fdf1f5dcffd8311c27c3c9128f4c
    mem[128] = 0x33f2655d1e74c2208c163578c3fba86db3ad0ac0
    mem[160] = 0xac501ef3da23bd286f2ac4d7e58de17ab9024317
    mem[192] = 0xb8c8f45ad8617bdd91a10273dac4648e560b6f1e
    mem[224] = 0x62282d7b458b0ae8b7d968cddc3388b72a0be3e9
    mem[256] = 0xb3a03d854638b3cc79889e2e45a07567b40ca3be
    mem[288] = 0x8f0f6706d171a5c641f96f7cf347c632b19431d3
    mem[320] = 0xd8a93f760157f6d423e4bc23736062a88f155b62
    mem[352] = 0x217c77815294c16abd593312e2f73fa93a6fd31c
    mem[384] = 0xef0010a46e34cdfa60581697b9316359d02fcd33
    mem[416] = 0x3b63faadd455e7055d59630cc40ecb9d6374eb70
    mem[448] = 0xa1ffa24bdceec040819fb42340628ff555308214
    mem[480] = 0xb9e2a578a1723843721fece329e0e2a5adbaa8dd
    mem[512] = 0x875af863ef1831733cf39c16c7d2988c08f9d6f1
    mem[544] = 0x5025a597f24a74daaa860b701b53a99d47bc71f0
    mem[576] = 0xdd98801cdd6de5519b5a41e62cfc7a51ea162c1
    mem[608] = 0xc7d29d2ff9a8de0c787a9a859ca754d6dc78202d
    mem[640] = 0xfef54f2e451db3092f63f10ddaebdf0f34313d48
    mem[672] = 0x3f6606109b4c42ee7a58bd00758625623d3f7863
    mem[704] = 0x78f0637b0b27c04c2d082699905ddecb5317743d
    mem[736] = 0xe908b268e638128af91315d20f88a501945ad735
    mem[768] = 0x29afa82ac5f7def19d61b4fa18865c0756e52896
    mem[800] = 0x25206fa0adabdb9162346241db32a42becd39c1e
    mem[832] = 0x5263404ab0df7655623743cfa1b9efe027332ba5
    mem[864] = 0xfd321517f510f4e87d3869cf098918da5e0a7142
    mem[896] = 0x4196b05b8082ebb4c3f26cb2e41cdef8622bc98d
    mem[928] = 0x6f140f889dc84282ef8647b6a914ed0f6eb86ed0
    mem[960] = 0x93910868b58dc088cf0a22272ce87ad7c0f4ee9b
    mem[992] = 0xa0fcdd5dbcaca5ad6e5faea4378a2f9656648f18
    mem[1024] = 0xdd008e6eac10bdc4f246f5a991ad5d92857c0ed0
    mem[1056] = 0x44a56414a08c287199cf51892fd31f737f5337ef
    mem[1088] = 0xe446f21ba1c3f3ff5a1d9d81c0d2e7c1d3ca447a
    mem[1120] = 0x11a73c9e9f7d3064c48b82c291b2a94e79806e03
    mem[1152] = 0xe93cb6a729679fc8ab761c1b544c64e7defd5fb9
    mem[1184] = 0xa98f16bb10ae7f86622b5ebafd3f04d8e15fc0db
    mem[1216] = 0x1bdbcdf9cb62e7afa4d4697367661eb4e37b32ed
    mem[1248] = 0x50389acd046df96395d9a0bbee61120c87674b9b
    mem[1280] = 0x40e27d5f63a5dc0439d6d141e9b795d38285bee6
    sub_2dd30960.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_2dd30960[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_2dd30960.length > idx:
        sub_2dd30960[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xed66a628235f4a35f65e2a0543757ed836806a3e
    mem[1344] = 0xe0bf30a5611f4c9fd5a467a6ae66f33b01cd4c10
    mem[1376] = 0xca0ef0522e31c4e3ebfa0881430f079cf96c954b
    mem[1408] = 0x716400355a8d2760bec1134b49a06b22ea1462e7
    mem[1440] = 0x7db04755c06d01aeb05640998289e100b35e55ea
    mem[1472] = 0x14c084c466021a7859191ad65b03ac5d704e0e7d
    mem[1504] = 0xf244e5d62f0b4f4ca147fc6745af869a024fd0f2
    mem[1536] = 0xa84bfed94afc167621c7aacb492c71375924e931
    mem[1568] = 0xf3e31ca1041c310fee111b3f3d7fde50dd8c00ac
    mem[1600] = 0xfb3abd1744f954fec09727f7c24c9932aecc2e14
    mem[1632] = 0x5f6497eb622dc0b31bc0bca1ed00c1cd4938b8a9
    mem[1664] = 0x255586d7d00446739d934435b5bb14d37f14b53e
    mem[1696] = 0x5b9c7d4c14892e268f0b62e2f68cfb102046fb8a
    mem[1728] = 0xff8db1fea2f310089f36fde175508d0b2c368776
    mem[1760] = 0x713b10fabd049919d8e5ee6b6c44704230fe1984
    mem[1792] = 0x93791c7294402b2c4f431c1e30f3106287b0e4b6
    mem[1824] = 0xdaa3dc04bcada48b8672c3b476b8e22a7f322b1d
    mem[1856] = 0x46d5301e4a6a713d031583bc7c7a34dcb05827ab
    mem[1888] = 0xf4d84a5bfa9b0ba75048c5c604489a14c25dad88
    mem[1920] = 0xd0a4b02d09f49029618f1764899d7d0aeaa83889
    mem[1952] = 0xa997b28cc36be5575c360e35dd4c2dfb990dfe12
    mem[1984] = 0xbccef90d892716a4ae8950668ee62672c79eb265
    mem[2016] = 0x8be80e5a22781af914e635d87db0aabbef08b344
    mem[2048] = 0x3088c7419791bc38f409e7f4f9c88d543d35639
    mem[2080] = 0xa885307d145601961ed956ffde94c3bd070fdf9c
    mem[2112] = 0x20bf947ff2e7f77db179555a692a0a8ee7b1f893
    mem[2144] = 0xc2dcee696a0c4552ef09ce1576e8d95a7f5710e1
    mem[2176] = 0x926010b1ccbcfbc26cfee129b82a4c99439e0df0
    mem[2208] = 0x85a3e38974d0a026c58bc2dcdd9098a02ba2111d
    mem[2240] = 0xb804fc3eadca1952518e40a09a24de0ddca7f13c
    mem[2272] = 0xcfd7919aee08f6317c7d0c86fb63c112d9d302f1
    mem[2304] = 0xa2749c4529d7ff9861237aa0547e09ce96150dd4
    mem[2336] = 0xb8a8a107bc50fadaa219c89b335b811c1bcf133
    mem[2368] = 0xd9a86683631430371ec5dc5b82e9090d12a6beb3
    mem[2400] = 0x6a05b5103aeac9415afa1ceef99ed447cff28454
    mem[2432] = 0x1e973975ec511b7079f4340789775aff3236f5e9
    mem[2464] = 0xdac998c1cdc699262fc64d7f65ec3207ad4628c4
    mem[2496] = 0x36ee27bfb94bf76737a838cdf8222e35f26bba10
    sub_c50e7de1.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_c50e7de1[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c50e7de1.length > idx:
        sub_c50e7de1[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_c50e7de1.length:
        if not sub_2dd30960.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c50e7de1.length, sub_2dd30960.length
        else:
            mem[2660] = address(sub_2dd30960.field_0)
            idx = 2660
            s = 0
            while (32 * sub_2dd30960.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2dd30960[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c50e7de1.length, sub_2dd30960.length, mem[2660 len 32 * sub_2dd30960.length]
    else:
        mem[2628] = address(sub_c50e7de1.field_0)
        idx = 2628
        s = 0
        while (32 * sub_c50e7de1.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_c50e7de1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_c50e7de1.length) + 2628] = sub_2dd30960.length
        if not sub_2dd30960.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c50e7de1.length, data=mem[2628 len (32 * sub_c50e7de1.length) + 32]), (32 * sub_c50e7de1.length) + 96
        else:
            mem[(32 * sub_c50e7de1.length) + 2660] = address(sub_2dd30960.field_0)
            idx = (32 * sub_c50e7de1.length) + 2660
            s = 0
            while (32 * sub_c50e7de1.length) + (32 * sub_2dd30960.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2dd30960[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c50e7de1.length, data=mem[2628 len (32 * sub_c50e7de1.length) + (32 * sub_2dd30960.length) + 32]), (32 * sub_c50e7de1.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
