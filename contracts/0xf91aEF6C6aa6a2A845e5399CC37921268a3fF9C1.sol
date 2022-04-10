contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage6' / 256
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
    return code.data[494 len 6503]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_89b4e90c;
array of struct sub_bd976d9d;
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

function sub_89b4e90c(?) {
    require arg1 < sub_89b4e90c.length
    return sub_89b4e90c[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bd976d9d(?) {
    require arg1 < sub_bd976d9d.length
    return sub_bd976d9d[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xb4ca2838aadfa6ab7fd5ea382f52021505c80da4
    mem[128] = 0xb9c38aad3e43d7977ab725e5aa5d02b883a43119
    mem[160] = 0xdfbd621197a3612cf54176a207bd6d8a489f1efc
    mem[192] = 0xaabf83725a1e9bda6d89a53a49c44b1b9b6c7ff6
    mem[224] = 0x1fb5e46e82a9d7ee83101e79d284144c42246abb
    mem[256] = 0x76d6e25ac46f0b7a74ef9efdf6d5013910879605
    mem[288] = 0xafc3c9d37fb2031888cafedcc313b03715171b34
    mem[320] = 0x13d23600f5fd98c6ac841ab6ff978c6b26ce2ad3
    mem[352] = 0x2208416dc1fae3bada39bebfe11759334bfc90f3
    mem[384] = 0x9320b7813920caccf5f7c0e6fe65bfa2d97bf33a
    mem[416] = 0xd3ff4356167cbb5158f98848e7ae41a520f173b6
    mem[448] = 0x8beeb8b43e7a5658055c6ccc1342df67755d243f
    mem[480] = 0xcf944fdee2ddcfb4cae0b7c02d94f625276466e6
    mem[512] = 0x81b1f09b951404d721e0e4e62f10bd2fb2d86c7f
    mem[544] = 0x9a72420490b6b051e10ffe97c001b9570825d2e
    mem[576] = 0xb71c7271dcce04f2f170891eb1fe9d830eb5980a
    mem[608] = 0x566e21229e80a4bca0667d3d7c734180218750
    mem[640] = 0xddc7859095cd45a7cf5a91329938b7ca4357e5a
    mem[672] = 0x2415b53ef357a20d43c8a616f9b2ea2253c2b97c
    mem[704] = 0x7f790cb1bb1c1eac28f87076249211918ad640b5
    mem[736] = 0xaf604d9277c15bb4c475444545788deadf375a55
    mem[768] = 0xe9a2576f19bc6fdeea4bd0daf45cc31e720ecc49
    mem[800] = 0xe9deec3787eb559f35ed56a7f6486381c530605f
    mem[832] = 0x122a5ce8eb4d0c1e99f3804f37333bb7d848e44a
    mem[864] = 0x9f7d4e9a45cccc7a00c192b253d16a2c3ca937f
    mem[896] = 0x18d36bfd8de1473b18c4e3c5f63a1b60ad95238
    mem[928] = 0xe53b92c8e05230159c3e1fd33c8c7e6f9ece6dda
    mem[960] = 0x6da4dd78f813c00f063b3f84c633c80ca1427aa6
    mem[992] = 0xf757a159a5792fd585809ad087df114c42882bd3
    mem[1024] = 0x8acc5ecf11c58fa249672d3ec3bfc54af2f9295b
    mem[1056] = 0x642fd5e05febed0773544973dac0bbd5220f8101
    mem[1088] = 0x5c6091eaa8e119920e5ad795d1dd2a871cf8add9
    mem[1120] = 0xb3d9f2a37dcbb22301db0d89439ab09284cd9ed8
    mem[1152] = 0x646867881d96d579265e93f4957ade4a11b66a54
    mem[1184] = 0xe79576171d3041c85b4b8f3268d95a4cf39b88df
    mem[1216] = 0x2463a95775dff511ba04f627a00635b341a2b475
    mem[1248] = 0x745fb5da6097e2fcb7c8895a07eb514f645fbb2c
    mem[1280] = 0xfac8366c3eab2c209db6a33d84dafb50d20e7add
    sub_bd976d9d.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_bd976d9d[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_bd976d9d.length > idx:
        sub_bd976d9d[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x1bba75abd01ee57fa59d129854a056309a67f77a
    mem[1344] = 0x98ae4ea24f141c6eab391b61d0bd6e510eff8c90
    mem[1376] = 0xc8c27effba7a8ea8621a3deb2941f64fe742f5d
    mem[1408] = 0xa52d34ac36bf12ea64fab1858b360a8ac4059212
    mem[1440] = 0x12582858e39196fe9ca1b51a0ac2188b555cd969
    mem[1472] = 0xa4c01fe6f350d4ae647ecb7970dc9c12437b71b6
    mem[1504] = 0x9ad81b1a44318fa132efce917205e5aa0e19f5e1
    mem[1536] = 0xf044fcf3d0fbe13fcc45725d353c813cf960b07f
    mem[1568] = 0xf913263bbdff03a4de6ee1d9a59abf3e0a2c154c
    mem[1600] = 0x2a377974f3e1b3551b940cea167c544b20794e3f
    mem[1632] = 0x65b887e6ad97d672d3e10e10a3850f1e84225d0b
    mem[1664] = 0x24438233dfe8a4c8bf47a40b9a522b3e141870a8
    mem[1696] = 0x6d2e121558fbbe306d9d8b6eccb21dd069b9b177
    mem[1728] = 0x66b1df017aeaf9fe2b83ad2d3f18d89870dbba16
    mem[1760] = 0x58e342ce65cbab9faf1eef2dea6c1d07f289a719
    mem[1792] = 0x3728cc12e40c9b3a2353edd291e52715419a9275
    mem[1824] = 0xa329c0648769a73afac7f9381e08fb43dbea72
    mem[1856] = 0xb9acee11621bb26d0d575e469c78f955f90ad651
    mem[1888] = 0x2bb4f18bb956ecacdf1394de61387e727a7d0872
    mem[1920] = 0x21ea466e50f828a85a28eef0da8192a164095f2f
    mem[1952] = 0xfd19b7654a122f0a7589d9978ce680552a95f154
    mem[1984] = 0x2cf8a1f2554a129e51fdd272ac3ff367ffbbd82a
    mem[2016] = 0xae31fcf4492c4e41dfbecd81ab1b1c9c3b308679
    mem[2048] = 0xe6032d2aff6751912f6991771ba1179fa6bf9c0a
    mem[2080] = 0x2ed64d513ae8ba0a779010101e9a80e3080b0e23
    mem[2112] = 0x4dd586b3329e896dc388b7275c157d3925c72ef1
    mem[2144] = 0xb9e7b95dc0d9775e4ba310fd9dfb48c6a73fbc73
    mem[2176] = 0xfb5e26ea4f3d40a2ee010a8aca60fcd6d032a867
    mem[2208] = 0xfc2c7876cbd620db533bbf7196a021d36cdc0d44
    mem[2240] = 0xfbdb30943a8e40061b5cfbf0423c6826fac5be6
    mem[2272] = 0x908de7fce16e9d1d392f95510b327645fcb7b0f1
    mem[2304] = 0x64e2ad1385e51fee721c7c30f8105b5df5bb6689
    mem[2336] = 0xcd97c3170ac745c1c497157f8ca566d3c57d6829
    mem[2368] = 0x869f31583e336eea949cf3862fa05960adffcb61
    mem[2400] = 0x2df545fb6d580c979dc5f86315b3787e26ec07f7
    mem[2432] = 0x3efcd7fbff245974b5a85d28b526c6fd3ff4742c
    mem[2464] = 0x4af747e3861c439aff9e0d8277fc9af8b883e978
    mem[2496] = 0x5c3b89898cb51a3b046e9d37adbf505e53106b9f
    sub_89b4e90c.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_89b4e90c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_89b4e90c.length > idx:
        sub_89b4e90c[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_89b4e90c.length:
        if not sub_bd976d9d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_89b4e90c.length, sub_bd976d9d.length
        else:
            mem[2660] = address(sub_bd976d9d.field_0)
            idx = 2660
            s = 0
            while (32 * sub_bd976d9d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_bd976d9d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_89b4e90c.length, sub_bd976d9d.length, mem[2660 len 32 * sub_bd976d9d.length]
    else:
        mem[2628] = address(sub_89b4e90c.field_0)
        idx = 2628
        s = 0
        while (32 * sub_89b4e90c.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_89b4e90c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_89b4e90c.length) + 2628] = sub_bd976d9d.length
        if not sub_bd976d9d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_89b4e90c.length, data=mem[2628 len (32 * sub_89b4e90c.length) + 32]), (32 * sub_89b4e90c.length) + 96
        else:
            mem[(32 * sub_89b4e90c.length) + 2660] = address(sub_bd976d9d.field_0)
            idx = (32 * sub_89b4e90c.length) + 2660
            s = 0
            while (32 * sub_89b4e90c.length) + (32 * sub_bd976d9d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_bd976d9d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_89b4e90c.length, data=mem[2628 len (32 * sub_89b4e90c.length) + (32 * sub_bd976d9d.length) + 32]), (32 * sub_89b4e90c.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
