contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage22' / 256
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
    return code.data[494 len 6854]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_9962fc4b;
array of struct sub_ef63d0ce;
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

function sub_9962fc4b(?) {
    require arg1 < sub_9962fc4b.length
    return sub_9962fc4b[arg1].field_0
}

function sub_ef63d0ce(?) {
    require arg1 < sub_ef63d0ce.length
    return sub_ef63d0ce[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xd30f360fc207686c7de6bdaea75a9bcea7627b16
    mem[128] = 0xb203cf28f6fd0610414bf8665644268cc19b5ec0
    mem[160] = 0xbf6abc7ed8f68e71fb03a21934bebf7d2f029eb8
    mem[192] = 0xe227b2b8a938df10b7cb006286cba67ae1919806
    mem[224] = 0xe29fe70858230a26c0a1f07493ad6a07c29bc35f
    mem[256] = 0xcec4b616009b76bd4d6634ff1d6ffc98cb4b3390
    mem[288] = 0x757aedef18f3b83903d00d4c01cb7012e4c9357b
    mem[320] = 0x5f4ed91d82a9346b5adbf0e26f1419e4e7a47dc4
    mem[352] = 0x3a3feae35835947c903cd52391e291b416c8a138
    mem[384] = 0xa478142849728b9965f327bdcc39df0b2fe9dc5f
    mem[416] = 0xd5826390ffa5d4d356f117451b45e3ea825b9a8c
    mem[448] = 0x626a88769a7bff27361f9153f15e263df8e6565
    mem[480] = 0xab74cc78575558590baa216ac0e971382d4c7b65
    mem[512] = 0x71addbe39fa8566175e461b1e8c508a7d12fa991
    mem[544] = 0x66d80bbcf04c6138f7e457e662eabb51b930ebf6
    mem[576] = 0x29d5076bf4e7e0cab10c86c6ee5c33fd51bc50eb
    mem[608] = 0x82efd37149e9718d2e01b3042600d3f356322ec5
    mem[640] = 0xcf08a3314b82ae41e86ecad237b5d8170145b610
    mem[672] = 0x501b44c1815063be0a0bc651dcd8328dc4e9c168
    mem[704] = 0xdebf78959c85716da81ec04a5ad17b0391a0eea6
    mem[736] = 0x96a3334567a19899fa6c174d9aaa5ae30ec822f4
    mem[768] = 0xa1ab3bf29e861ae960a329e7882474894e0abe77
    mem[800] = 0xa3fcdb3b00f5fd4978981d53533b8383fb93f6e1
    mem[832] = 0x7587457ff93586ff4a9c2c4b272e43156181bf31
    mem[864] = 0x343f2ca122bbb58ffa00fce769ce5f1d4b3b104
    mem[896] = 0xfdbf2fe8fee0f5d22298b003a52ce620632764
    mem[928] = 0xea37580c742eedb2ff303c2009bbe10dae112963
    mem[960] = 0xfcf426561773857dea6356de8d2bbad35214811a
    mem[992] = 0x7388c0b467cdc928c1fd48754704f4982a83d2d9
    mem[1024] = 0x9204a158e0fd0e8b0e7ce1a4dcd2b8ff8bdfc83b
    mem[1056] = 0xe769f1e14532cbf607b5be8426b2803ee587a27
    mem[1088] = 0xf5cc87aa83665853894ed30f48ce3e835910dcf2
    mem[1120] = 0xf98db716d9eda2a845ee63dec567875df2d7c9a7
    mem[1152] = 0xcd5bd5c7ccac67c0e44bf9f8e83201baeb99a596
    mem[1184] = 0x7618b5e6d551379a9ba9b053ea5ae8d8c46a310d
    mem[1216] = 0x59d2d2a10c1c86367a88e35f0ef4c2fbba918471
    mem[1248] = 0xfe7e2b049f3766864aa476152c0c258470aa9491
    mem[1280] = 0xb6cdc970a2d8020d357e357a884c6aa83f40fc1
    sub_ef63d0ce.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_ef63d0ce[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ef63d0ce.length > idx:
        sub_ef63d0ce[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x57ab0af2889f4012e8d8aed8a7107773aba33bd0
    mem[1344] = 0x845888bb52e35663008385fcdd3b8e326a66925
    mem[1376] = 0xe00b8bbd2728a9065289b4be6b835ac74f0b8556
    mem[1408] = 0xc81ee5a062a29c2638458bdf4b5983feffb36d2d
    mem[1440] = 0x1dab9130ee5773ae5394f4ccae952e1748e8ebf1
    mem[1472] = 0x262864f0bf974c30a8f47ff79afebaf8df537046
    mem[1504] = 0x7aba273e1d7e79ccc1b35655bd3eae1605400b50
    mem[1536] = 0x51fa8c2ee8771fdf417351a5b9986425ca8e8a04
    mem[1568] = 0xe9495586357eae57e5d754d8c375024a9be34970
    mem[1600] = 0x59eac1225da36f8872e391bd2ea99ccab07b7a3d
    mem[1632] = 0xa7bbf1a4a13a8c6a523a3168e74edd3dd960daa
    mem[1664] = 0x9f702e2121d435cb47924e829732a2466872cd48
    mem[1696] = 0x5ebdbd7c74ecff259101d0490f439e99800a2605
    mem[1728] = 0xf8f4c281cc8d4867fee6dff9d70a18266acd1c5c
    mem[1760] = 0x98dca02a5228e9337f91c09e6da92a6604800bb7
    mem[1792] = 0x86fd86ca287cddac9d16f199ada1fa455e1c9331
    mem[1824] = 0x3b2cbb25070f8121d2db1e3800abeab1aee7e880
    mem[1856] = 0xd24827165dd8740ce897935e9c0c7669abd29e
    mem[1888] = 0xfcd2e440a9ff6cd8f860b69e4189a9c36099c74
    mem[1920] = 0x5e0f6fc7804c81a20be8ac8c04e61dd5f4feaf67
    mem[1952] = 0xedafb342a5a485ec55a06e51ae9c2b9a244a57fc
    mem[1984] = 0x6c700fcd10f691970adf2a66fa4b071d2c0c9b33
    mem[2016] = 0x1c04c1b72e8c1a22ff6188e5ed4c1bb132f8b7f2
    mem[2048] = 0x56b881f502c11f305f9c0ce8f6072b0b3087a49b
    mem[2080] = 0x83261759a9d98b060f6295ab0daa704f8dc0d879
    mem[2112] = 0xfb4119fc91566335d05de92119ed12abc90d34
    mem[2144] = 0x981892076a907b5245c5fafe303ea90424879b4c
    mem[2176] = 0xc232155c74d9a0f7f3ab27d718e881809496a56
    mem[2208] = 0x5cdc87001dd04b8a1257fdacfa67ae4d7f26b33a
    mem[2240] = 0x16214be2730bb63af020c0ab994379a8cf06d436
    mem[2272] = 0x99a7ab6db251295b43a565c27366791030bb827f
    mem[2304] = 0xa6a11bb1fae34b08c88ddb1ab2e70d5968c9a0da
    mem[2336] = 0x344edb0c7d7d762788cb9338c65fd7e1d81784d
    mem[2368] = 0x3504111e653f8d068434f3199a086e8aeee8a964
    mem[2400] = 0xdc9e1a618ef3dcea277e8eae1170c165a3832458
    mem[2432] = 0x7c0f6d5fe23e44e616e3131c014aff717c89c38b
    mem[2464] = 0xde86660a8220e2b89c79d1827cdafea52fc6175d
    mem[2496] = 0x6f010cacdcd0549ccd0a40219c7155baacf7ab39
    sub_9962fc4b.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_9962fc4b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_9962fc4b.length > idx:
        sub_9962fc4b[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_9962fc4b.length:
        if not sub_ef63d0ce.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_9962fc4b.length, sub_ef63d0ce.length
        else:
            mem[2660] = address(sub_ef63d0ce.field_0)
            idx = 2660
            s = 0
            while (32 * sub_ef63d0ce.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ef63d0ce[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_9962fc4b.length, sub_ef63d0ce.length, mem[2660 len 32 * sub_ef63d0ce.length]
    else:
        mem[2628] = address(sub_9962fc4b.field_0)
        idx = 2628
        s = 0
        while (32 * sub_9962fc4b.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_9962fc4b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_9962fc4b.length) + 2628] = sub_ef63d0ce.length
        if not sub_ef63d0ce.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_9962fc4b.length, data=mem[2628 len (32 * sub_9962fc4b.length) + 32]), (32 * sub_9962fc4b.length) + 96
        else:
            mem[(32 * sub_9962fc4b.length) + 2660] = address(sub_ef63d0ce.field_0)
            idx = (32 * sub_9962fc4b.length) + 2660
            s = 0
            while (32 * sub_9962fc4b.length) + (32 * sub_ef63d0ce.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ef63d0ce[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_9962fc4b.length, data=mem[2628 len (32 * sub_9962fc4b.length) + (32 * sub_ef63d0ce.length) + 32]), (32 * sub_9962fc4b.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
