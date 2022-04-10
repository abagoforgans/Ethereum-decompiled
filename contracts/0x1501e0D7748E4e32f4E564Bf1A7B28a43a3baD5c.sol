contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage12' / 256
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
    return code.data[494 len 6717]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_80970743;
array of struct sub_7d3d8a37;
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

function sub_7d3d8a37(?) {
    require arg1 < sub_7d3d8a37.length
    return sub_7d3d8a37[arg1].field_0
}

function sub_80970743(?) {
    require arg1 < sub_80970743.length
    return sub_80970743[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x1148d233b8dc3f3770fc6f0f1f76ab1b3dba99e8
    mem[128] = 0x175500301eabc441b7cbb20de787df2cf776e94a
    mem[160] = 0x4467e2711fefa9480ab97612625f4c32f16d6818
    mem[192] = 0xd5d7cff160184b2be470bcb96af4b36ad873423d
    mem[224] = 0x1ad3b62125cf06beabf29eb24d78b61e8aff9bfb
    mem[256] = 0x462ad07fc1055e4978fd51f8adcdb23cb34102f6
    mem[288] = 0x7584c993fafd102b40837a01fc018ee3fbccf6c4
    mem[320] = 0xb5909b9ed52320251373b6bb0d808ecb6e85b7b7
    mem[352] = 0xf101207b63e7c0f496c6c397c7d7e94817f48a0f
    mem[384] = 0xa5b19bfac7a8baf2063a5199da28ec81fb9fab85
    mem[416] = 0x26582336bbcb4dce6165e8188ac47984439f22
    mem[448] = 0x58b260f00f0161f04fa4e63448b6592ea95e98
    mem[480] = 0x24fd2216393dc3eb77edf8c98bba94b177b40b3e
    mem[512] = 0xd28dd21b3f30dc1901f1b417121e4cb5ddb069d5
    mem[544] = 0xdf840b5f4eae9b91fddc00ca825cbdd7a42b987a
    mem[576] = 0xb8aea993fe4dc459834697f99479ceaf7600764d
    mem[608] = 0xfb7a61c18a824862999bee04639663300c2178d3
    mem[640] = 0x84f4fb5470da23281f9b7f425deb4b7db3abc409
    mem[672] = 0xccb2d66ac781dbfc41e35581f321d07f9cffce54
    mem[704] = 0x9e94cd62409118ce800b24b8eb979b578fc21a31
    mem[736] = 0x66f4cab5fef20db661a2686e8648ac422238158d
    mem[768] = 0x8da53f0415cc77cdd6a3768c2a31fdedcd4a2d
    mem[800] = 0x7bbf692a62d291363368b5ed49a9b7b9101b90ad
    mem[832] = 0x52145f65d6076c86f03f62aa029dba88e54b92df
    mem[864] = 0x18f71a348e3f58544a1afdd52a54373d7634cac
    mem[896] = 0xd60f056ef88f8c67d51b1265fb5b95ebf3f4add9
    mem[928] = 0x3b1b5f13881f5ecca9f3f243b06e56eedc7fe12c
    mem[960] = 0x350f7bc3bbe3e5f7b52081ae4c381f59e14645e4
    mem[992] = 0xb3e9385d575141fde4bd66303472cc2ecc519487
    mem[1024] = 0x2580ada293caa7bc5adfd6444bee7e833eadb20d
    mem[1056] = 0x99cd77d1b5fe6e4002f1f12f41183395bdacdcca
    mem[1088] = 0x3d0e25c43345b564e528a7e84d32545139f474a1
    mem[1120] = 0x1d349bcdf48a1c946c3227b49a263b6e5712b9a3
    mem[1152] = 0x62aa01bea706ad25924dca35af2b55d2218f21
    mem[1184] = 0xefc0db87651eb4e8258c87832ab99278f1fb0443
    mem[1216] = 0x60d7e9e09d66eecf6c7f87eb81cff22f38530112
    mem[1248] = 0x79d8f7dca6b3d54538d4c24c66812fe3193d01ac
    mem[1280] = 0x76a311fadbc5a1286dd36a2c8abaaafae0e14a23
    sub_7d3d8a37.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_7d3d8a37[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7d3d8a37.length > idx:
        sub_7d3d8a37[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xe8027dca217460183b550c86e701d0b08f09a23b
    mem[1344] = 0x31b056d00276a3f8e14bdfcd9553a91f036bef73
    mem[1376] = 0xb3abaf33ccf698f10cd8a8d339aa482096de28d6
    mem[1408] = 0x121719d48d9ea9ed7da9b4566335860264c2596c
    mem[1440] = 0x5d070c542a972d90b02a955dfc36ac826fbf033d
    mem[1472] = 0x98697bd39286f7447850c7d890728d2f3b015606
    mem[1504] = 0x829032ba968c222c9442d0d58ad00bc1611ea71
    mem[1536] = 0xccf1a143c4b999a163a7f76417dffeb30ad38b7d
    mem[1568] = 0x71eb5ede022cd9e4c4295da638619ae711d75cf0
    mem[1600] = 0x73ee930e976c967e278e099a11c20257f3e8d25a
    mem[1632] = 0xf8b053782d9b149f6dbd68b6079e727dec515
    mem[1664] = 0x7a9742e4fe5132e0bf7d107203a342a3a7f31a
    mem[1696] = 0xcb00272d2b2cdbc993232f60630e6287159a1a16
    mem[1728] = 0x9a7b80e837f49937b8af7a8daabcd7dd29b3f88e
    mem[1760] = 0x2234025fdda171c0be57419b9128df0de415d57d
    mem[1792] = 0xfdb9ad0c251880ac7cc7896990abf2ba1be69352
    mem[1824] = 0xa9dd5c34a624acf59f82c97b1adceb5cdc55931e
    mem[1856] = 0xfd7c20adc515692c6114ffde33800d40ec31336b
    mem[1888] = 0x47f42442ce819b9c4c6e0aa53ea5f85a4952348d
    mem[1920] = 0x5b5169f549dd5cd19c645e1904efa6c6b3e3a91c
    mem[1952] = 0x6420eafecba9d7e67efba351da0cc112d236cedc
    mem[1984] = 0xb3ab12b9f7cf529d3c36342d75f9ba6a338a1e
    mem[2016] = 0xefb49b710b796552da3468594fe29c3aafd69f14
    mem[2048] = 0xcf7567143e4c6ddd18da11f9d37c43ed8d7721a4
    mem[2080] = 0xb48ec82339c739e1b3cdf6714027ed13856aedc1
    mem[2112] = 0x6f1857d458e451e141fc572b97465aea03c7d06d
    mem[2144] = 0x6afaac6d205286fb09d3fac7be98d52aedd209fd
    mem[2176] = 0x8b7d42f9cef00a669a8c07a2dba99e1e80782d00
    mem[2208] = 0x1bde5effe98bdca842d401d2d319f1d6f293d612
    mem[2240] = 0xc88eea647a570738e69ad3dd8975577df720318d
    mem[2272] = 0x80b627ce4cc7c784bdf4076170f437aba41754b3
    mem[2304] = 0x68c954efb3d5ac98042fe1b6bebfa833c178797a
    mem[2336] = 0xd5be267a2d2f1e1554cab756a1cebbbfe4bed0b0
    mem[2368] = 0x525fddae2767b1a1d220f9445b8aab176a0592
    mem[2400] = 0xb495b5fee79a5d5b4e4edba38162f4552655f430
    mem[2432] = 0xd372b48b1f794b90a957c11fd5da326b67680719
    mem[2464] = 0xd1783b1a12e3e8fe8e488fabd1fa2da49cfde574
    mem[2496] = 0x4ecb93f4d8862b1ea160134bc14e55b90230ed7b
    sub_80970743.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_80970743[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_80970743.length > idx:
        sub_80970743[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_80970743.length:
        if not sub_7d3d8a37.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_80970743.length, sub_7d3d8a37.length
        else:
            mem[2660] = address(sub_7d3d8a37.field_0)
            idx = 2660
            s = 0
            while (32 * sub_7d3d8a37.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7d3d8a37[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_80970743.length, sub_7d3d8a37.length, mem[2660 len 32 * sub_7d3d8a37.length]
    else:
        mem[2628] = address(sub_80970743.field_0)
        idx = 2628
        s = 0
        while (32 * sub_80970743.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_80970743[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_80970743.length) + 2628] = sub_7d3d8a37.length
        if not sub_7d3d8a37.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_80970743.length, data=mem[2628 len (32 * sub_80970743.length) + 32]), (32 * sub_80970743.length) + 96
        else:
            mem[(32 * sub_80970743.length) + 2660] = address(sub_7d3d8a37.field_0)
            idx = (32 * sub_80970743.length) + 2660
            s = 0
            while (32 * sub_80970743.length) + (32 * sub_7d3d8a37.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7d3d8a37[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_80970743.length, data=mem[2628 len (32 * sub_80970743.length) + (32 * sub_7d3d8a37.length) + 32]), (32 * sub_80970743.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
