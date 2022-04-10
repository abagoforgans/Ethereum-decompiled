contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage68' / 256
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
    return code.data[494 len 7209]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_c4008acd;
array of struct sub_be999ade;
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

function sub_be999ade(?) {
    require arg1 < sub_be999ade.length
    return sub_be999ade[arg1].field_0
}

function sub_c4008acd(?) {
    require arg1 < sub_c4008acd.length
    return sub_c4008acd[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xd4da36f0142ce75c9e0d0fce01bcb8b98d6fde9e
    mem[128] = 0xfa25e675e01dbffff51cb012d8e7c77c6aa6d0ea
    mem[160] = 0x825af81ec14f868f49dfbb3acd8f3d19dec6a520
    mem[192] = 0x98d0cda398a13de92b4c527768cf1e29483f8c74
    mem[224] = 0xb7fd6dd6cd66a7a89efcfc3f6c9f63244e34efa5
    mem[256] = 0xd6a6a77f460a2204b836b807dff56ed47aedbed0
    mem[288] = 0x548673c441c824d1571603cc2d66251b4c2c04f8
    mem[320] = 0xc7b7c9c3c91a9fee64b2003847fb1793fcbf68f6
    mem[352] = 0xa61265d755734b103d42a6b31bff8ff3cc8e37f7
    mem[384] = 0x8787e70b11962b45daf2a6e6accbe6b0bf3442c3
    mem[416] = 0x47185ddcbdfc41875fce81dcde6527deb9d6f921
    mem[448] = 0x800944277fe002a9caaecf4886f060353ae1114c
    mem[480] = 0xd4864811638783f5dfe89daaebe4ea603d1e01f5
    mem[512] = 0x9365854dcf7a43c84a52d9f0ced7975d7eca3c60
    mem[544] = 0x138c359500e87714ca40e8ef3befb9d52f085756
    mem[576] = 0xa801947ada8a61ef887db021c5acaf6816efd4f8
    mem[608] = 0xcad25b733464e8f8aa03231c3df0299f49309c0
    mem[640] = 0xd33b88f980b414538d402c6d6eab4b2bea7ecde5
    mem[672] = 0x11d8f1aaec77f91109d605e4ac4dc5ad31e69e0b
    mem[704] = 0xe09b428b2c099f52cc23b6340c618116bf1446f3
    mem[736] = 0xee1ea15f0ff894a5db182a4c99d1441728547978
    mem[768] = 0x9f2e5b4fd74c12e7a085ea50620afe10e57caa80
    mem[800] = 0x8d09cdb8dfed3ee38c3163d87b7cb2f374736109
    mem[832] = 0xb6bd3e6867304c674f7a66a0f2e5e5d695e5e1a4
    mem[864] = 0x8be03de79c5368b938815943db9344ef391fae1e
    mem[896] = 0xfd20ccdd0b1b9380206091289188a8feaae6fe45
    mem[928] = 0x18cae60b6b221debe484d541a66c9ed6f9f70954
    mem[960] = 0xe06b14d00ac512ee802788af37c7a4472a998264
    mem[992] = 0x9c6cdbd47582002fd8595df372862365db9b0e40
    mem[1024] = 0x613a350f5ef289663d34d8a180ed087c26c23436
    mem[1056] = 0x8f028228d8d75ea31fbd1f3b6a52427a4ffd83c
    mem[1088] = 0x8a7694bdce06e0f6819f3dccdc4af5d16187e246
    mem[1120] = 0xd178c2b32fa7b8c6d46b0cfb475cb10eaa89091b
    mem[1152] = 0x1426546d06a442e2f0f9a89ad848b9c460631ffb
    mem[1184] = 0x4dde9c65d3352c029cc471d664c1b9b14133a5e1
    mem[1216] = 0x7f8389c020b80a2e3ae5d06bd972570f514ff5bd
    mem[1248] = 0x91972fbc31e7e101b6bd988074429ed73542e096
    mem[1280] = 0xf7d7e3b3eea03c88e9e2dc620335e585a3367e05
    sub_be999ade.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_be999ade[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_be999ade.length > idx:
        sub_be999ade[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x14374e22d8727a85afab410515d5dea01eeb3457
    mem[1344] = 0xc36a931ad8cd6a345ca4b2ec6983f5a9afa28e41
    mem[1376] = 0x1040ada0bdc7008693967e2763a174b229392162
    mem[1408] = 0xcb755c069db85af0751ad354db71e9044fda78ee
    mem[1440] = 0x6507b191a62749987537dfeeca0cc8de69515058
    mem[1472] = 0xe8bc132c4bd9b3006ad42b94ebbd4c4105f57a71
    mem[1504] = 0x87427c536e391d46f550b69126d887ab89002dc5
    mem[1536] = 0x10bc833ce18c35265980a4127391da7349bd7deb
    mem[1568] = 0xbc53db9fe262fec7c769f2cc66b079e5ef6eb65
    mem[1600] = 0x1e504a987019b1c8db669e8d7ff51a09da9afe45
    mem[1632] = 0xc68327d242615275d022924e7607925fd49e97e8
    mem[1664] = 0xfc1a1a71a3d9014aeda91f1432bd82edbc056fc9
    mem[1696] = 0x87368abda31c3fc02fddbccf7c24410fa2ada632
    mem[1728] = 0x27c28bebc81cb78a4a7ce79a6cb54e7d43ea00dd
    mem[1760] = 0xb283b5a87b8e9142a5e7abee4f3409f6ba6da943
    mem[1792] = 0xd710e330688c31566bf96e411a718e58bdb59207
    mem[1824] = 0xfa0b8518a7f32b83170281f4a053d01f38923325
    mem[1856] = 0xf86c4eeb8d68b47aceb8e3f24f4b8a4bc045556b
    mem[1888] = 0xa485e3fabf7496501ac7c650d5f15a8090f81df3
    mem[1920] = 0xcf95d1311c58de0c7be55882580e0943baf2f3e3
    mem[1952] = 0xbe9893174ca69d0cd4ff18c468e183689ef88e24
    mem[1984] = 0xae8255961a38d0158bcc3e6590be9721c8e44502
    mem[2016] = 0xc8aa57dcba92655256d95ee9c1902c26100c8ae3
    mem[2048] = 0xcee1c40f3b814663174f3a65f690899085a13849
    mem[2080] = 0xa1889ad5c6348fc4feb85a76dc8865673759995a
    mem[2112] = 0xbd57e3cf14cfb8f177f213375de9f15f5c4b951d
    mem[2144] = 0x2d2a70e24566e3bd890a8f052f228ad70038dc14
    mem[2176] = 0x219108630916223cbd49f70d2cdcf80701e915e1
    mem[2208] = 0x930afd0a3e69f7a6e6dce509552da6b0983798c8
    mem[2240] = 0x9191c2e518c89a7781c6b27fa54c524cbd5b5806
    mem[2272] = 0x4ed6a3505335a43926b38d3781e8bdab4731e70
    mem[2304] = 0xc1d8003427bd95d597ea4fe7ace4afe5f743d269
    mem[2336] = 0xe8f6be1d7c7b604925cac5c8efdcba3d9af8ecd6
    mem[2368] = 0xb97dbb929fba26ddef3d8835fc1fb37891f8749f
    mem[2400] = 0x50a23fcaad3fd36a12cb71a672bbaa074e593bf9
    mem[2432] = 0x32b05d006e78f7166809a6deb42c23f0635dcea5
    mem[2464] = 0xdbe2fcda969c4883d91b9e0bb54c33e353186cb8
    mem[2496] = 0xefde620339cc7ce9b46168ec4e5a88789dee1d5d
    sub_c4008acd.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_c4008acd[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c4008acd.length > idx:
        sub_c4008acd[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_c4008acd.length:
        if not sub_be999ade.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c4008acd.length, sub_be999ade.length
        else:
            mem[2660] = address(sub_be999ade.field_0)
            idx = 2660
            s = 0
            while (32 * sub_be999ade.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_be999ade[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c4008acd.length, sub_be999ade.length, mem[2660 len 32 * sub_be999ade.length]
    else:
        mem[2628] = address(sub_c4008acd.field_0)
        idx = 2628
        s = 0
        while (32 * sub_c4008acd.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_c4008acd[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_c4008acd.length) + 2628] = sub_be999ade.length
        if not sub_be999ade.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c4008acd.length, data=mem[2628 len (32 * sub_c4008acd.length) + 32]), (32 * sub_c4008acd.length) + 96
        else:
            mem[(32 * sub_c4008acd.length) + 2660] = address(sub_be999ade.field_0)
            idx = (32 * sub_c4008acd.length) + 2660
            s = 0
            while (32 * sub_c4008acd.length) + (32 * sub_be999ade.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_be999ade[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c4008acd.length, data=mem[2628 len (32 * sub_c4008acd.length) + (32 * sub_be999ade.length) + 32]), (32 * sub_c4008acd.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
