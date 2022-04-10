contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage13' / 256
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
    return code.data[494 len 6765]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_1b0b05db;
array of struct sub_506f4ecb;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_1b0b05db(?) {
    require arg1 < sub_1b0b05db.length
    return sub_1b0b05db[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_506f4ecb(?) {
    require arg1 < sub_506f4ecb.length
    return sub_506f4ecb[arg1].field_0
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
    mem[96] = 0x26a7ac121a84754ee2e7f7829b73e9aa3004844a
    mem[128] = 0x239f6fc01b6e5cc3e83c4c5bd25a2318c8e2a1c5
    mem[160] = 0x174670c5ad610cfb0156ff6045c70193aef869
    mem[192] = 0xe3e4cef36b3af6e8048319e069fe59d7652143e1
    mem[224] = 0x8f50e11f5b7b378512fbd835a6eaa472d4ccdb43
    mem[256] = 0x56f68e4ebe8151537e1daa23da01a7f8f14e3ffd
    mem[288] = 0xa35a3ceba9c7898211bd069af8277e7cae02b1e9
    mem[320] = 0xaf9ceb2a88466b4a3222947e7d1359d6998960e2
    mem[352] = 0xd6cfcbd8e2963d847e062c17c65083ab421dfa82
    mem[384] = 0x2a10dd1eae6b2d37faeb27a4cfccfd2877cefee
    mem[416] = 0x18104113c5de52c1fb9155db716ed4578f7f04bd
    mem[448] = 0xc279dee47da77c803b862932924a09a5666ad41
    mem[480] = 0xcb7476dd6ea70cb513599ac6458b5facb2b2fd17
    mem[512] = 0xd782f05900ef8713da7c826dffa577e398bba8f5
    mem[544] = 0x4de76faaa3706317850426d49224006c83457b
    mem[576] = 0x9d3e4a7bca39d176879dce5f541825f07bff6830
    mem[608] = 0x4d5c2d3df91b9ebc242d4ff65e470d68536ced0b
    mem[640] = 0x9fe1280bc9a68526917237b9c71db46ba95c0f85
    mem[672] = 0x2102be750cb33af45aeff7ef80291694a520d4bb
    mem[704] = 0x984bf1d25aea5cc078e8d780b35f057a1611bc8b
    mem[736] = 0x49e6f10eb29851a7eb6031689bf2acec05391c0e
    mem[768] = 0xaf1f2c328033a54dc7280b69336c0e406656d407
    mem[800] = 0x8bec47490707fbcef6a159336a0f9fb4fb2e3f98
    mem[832] = 0x72f4d742cd498feb6be97dba9342e0daafe7edd3
    mem[864] = 0x6a667f74db9114ddf194627c4cf414bf029c1fa8
    mem[896] = 0x5bfaf1fdaf9c68ae06beaf4c5facb7f366577c5d
    mem[928] = 0x45f90dbd7f3b35286cfb0667d81a3c558c282204
    mem[960] = 0xd372a27ffba3e38eadac90ebac6c223ef16cfb7
    mem[992] = 0x2eec10213e4ba6fd09e43c96606f34734c8f568d
    mem[1024] = 0xf481670eaaf576b474830e3d16e3c3901570742d
    mem[1056] = 0x93fce0eaff853dbcd9f2edd0397dd8213b4b14ce
    mem[1088] = 0x363eff00525cb463b7c5488f8763f95f0140314b
    mem[1120] = 0xed7a8f55056f0b3a8f1784d04e50d9d49a86bcae
    mem[1152] = 0xef75a6439d4e6295669b8996fe7676084bd0ef10
    mem[1184] = 0x758df499182abf8f59b3588c9cee205ee46fe9d5
    mem[1216] = 0x5cc18fd8b5683f52834508996a92732e2cb766b8
    mem[1248] = 0x49ffbef5b687b898584c5e34f5f696d042120a79
    mem[1280] = 0xc03775ae53190242dca8a13e78f29f4ec70e4fde
    sub_506f4ecb.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_506f4ecb[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_506f4ecb.length > idx:
        sub_506f4ecb[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x4c7ba57e6fb0f88ff4cce36b6bfc9c86f21fefd4
    mem[1344] = 0x818a6b477358b5819993ad8f9d36b2c4764787e3
    mem[1376] = 0x4f22357ac14314c623f536fcea9743ae9a1b08
    mem[1408] = 0x15cedf8d3e102f4fb53ffb01339d3ff84b491dbd
    mem[1440] = 0xfd20735e238cd23e0644dfef3f93ce1077b58086
    mem[1472] = 0xae5dac2149ec7f1cc0b3b56c352e47d425f14079
    mem[1504] = 0x430544dfaf9371a2a9c45efce4096702641fd3de
    mem[1536] = 0x5bfd721c27c90834b0f761cf224703380f413596
    mem[1568] = 0xdc32ae4f26bf34e0145e72baca70c47bd093a061
    mem[1600] = 0x7247df61d12ae6de606ce9d5f04cff67b65e206d
    mem[1632] = 0xe5712d1dff0f400f3e9f13c15d74326396fc635b
    mem[1664] = 0xb9828e309758d635114c694099198ad0f26b8cde
    mem[1696] = 0xac5bb9553f0b22f0450aa4ab9a88f2bdf8732628
    mem[1728] = 0xc61de03702608e96420e22d61808d380d75be499
    mem[1760] = 0xdc07e8709406e9c17a3e453e3ab080a346f2db
    mem[1792] = 0x3e16f20d72ed1c91a885bedd266f36cc33157e84
    mem[1824] = 0x2a88eec173f54a96a9d65d4904a771c74850bff
    mem[1856] = 0x700037d11dddab5afcc05c96d604660954e16066
    mem[1888] = 0x9ee43e94f30c7d7eec3495027f0aa7554ec71f11
    mem[1920] = 0x66be9d900adc815634e7bb625fbcfe2b3d36a4f7
    mem[1952] = 0x8cd22783d7f0b516b9da3314cbb264a1627a0b07
    mem[1984] = 0x48a3a8b52958ca4f97b5713174c5877b8e6dc2b0
    mem[2016] = 0x6ac4114f8cb99313658516202fa25d1226af365
    mem[2048] = 0x79291838d35e6925234738d4deb0a950e80839fc
    mem[2080] = 0x57a6133f33dff840f5e58b825c36219fbe3efaa0
    mem[2112] = 0x575130caba11fa8358ae941032754b28fc445f92
    mem[2144] = 0xfb4e3eb0a078f6946c6b9a6b0622f1f3b0c9a0bc
    mem[2176] = 0x20bf1adae33bae854c5579b9ef59d424d82d7875
    mem[2208] = 0xdeb2c543cb97b1b92e354365425637d7833df842
    mem[2240] = 0x6a945d98894f7cd915666bb839cdcda46291a194
    mem[2272] = 0xc15999268726dbff7a179456fde4526506ac672d
    mem[2304] = 0xfd13aaab2375d2ed75e9ec840d18817427693187
    mem[2336] = 0xd0a6e066b4c4d6df1e2d999afd09f4124fcf7540
    mem[2368] = 0x76cae0dd423fa0de7fd5765015a5a766a3c109e6
    mem[2400] = 0x954f420309f625c5f78a1f95075574cd79c99f88
    mem[2432] = 0xf9e2e5c18486bbfb5c8e11b0d775aa12520adc9c
    mem[2464] = 0xfa69b1ea0f732ecdd24fc5222c4f7439ae4af363
    mem[2496] = 0xbbb3d961118d3c0198793a976aad73fcadea396a
    sub_1b0b05db.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_1b0b05db[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_1b0b05db.length > idx:
        sub_1b0b05db[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_1b0b05db.length:
        if not sub_506f4ecb.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_1b0b05db.length, sub_506f4ecb.length
        else:
            mem[2660] = address(sub_506f4ecb.field_0)
            idx = 2660
            s = 0
            while (32 * sub_506f4ecb.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_506f4ecb[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_1b0b05db.length, sub_506f4ecb.length, mem[2660 len 32 * sub_506f4ecb.length]
    else:
        mem[2628] = address(sub_1b0b05db.field_0)
        idx = 2628
        s = 0
        while (32 * sub_1b0b05db.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_1b0b05db[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_1b0b05db.length) + 2628] = sub_506f4ecb.length
        if not sub_506f4ecb.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_1b0b05db.length, data=mem[2628 len (32 * sub_1b0b05db.length) + 32]), (32 * sub_1b0b05db.length) + 96
        else:
            mem[(32 * sub_1b0b05db.length) + 2660] = address(sub_506f4ecb.field_0)
            idx = (32 * sub_1b0b05db.length) + 2660
            s = 0
            while (32 * sub_1b0b05db.length) + (32 * sub_506f4ecb.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_506f4ecb[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_1b0b05db.length, data=mem[2628 len (32 * sub_1b0b05db.length) + (32 * sub_506f4ecb.length) + 32]), (32 * sub_1b0b05db.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
