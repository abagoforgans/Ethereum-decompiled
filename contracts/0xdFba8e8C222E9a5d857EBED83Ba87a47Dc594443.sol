contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage52' / 256
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
    return code.data[494 len 6921]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_52cf3f0c;
array of struct sub_b56f972c;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_52cf3f0c(?) {
    require arg1 < sub_52cf3f0c.length
    return sub_52cf3f0c[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b56f972c(?) {
    require arg1 < sub_b56f972c.length
    return sub_b56f972c[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x4546eb518b4a603f60165fa15f41fef6e5ab4923
    mem[128] = 0x63c74a5b33b5d42109a09a00a9c024adeb18ba52
    mem[160] = 0x46e1d26692b17ea3830126d7840ba49ce95f12f1
    mem[192] = 0x7aa573334d5a861b30a84ec4c2549779fe7aaefe
    mem[224] = 0x912e36ec87bb7b6ba62aedcf44384ab2b43d834d
    mem[256] = 0x7ae6c5f42563603cadb5e2e19403ffc80bfb6477
    mem[288] = 0xf38a778992cd0d1485482c8d0a4d89fc953ac186
    mem[320] = 0x5ad2313a180bcaadfa5037b9f97d1d719f06361f
    mem[352] = 0xfa1c1ea538c9b44a03fa68dd4b7e23b2f964d205
    mem[384] = 0x6c891f3ef87eb8db7cc2843f689ab4119e79bfa6
    mem[416] = 0x85fd1af85f09d27574370d58fd970628c60dcca2
    mem[448] = 0x8f573d818c0adf8c81dcd063a50c59469727ec2a
    mem[480] = 0x2aa052c71cd5742bc37cb9874f7e000744bf2c62
    mem[512] = 0x5fa0eebd3b49d861e52d0c1def69627c608ed48a
    mem[544] = 0x503202c7f7b41f59bd96852d9bbb96a8ddb39f4
    mem[576] = 0x22b8c48f10734fdedcffcaa2537f3ed1a8eb82
    mem[608] = 0xc293ac7f9ebf6cfd3e38e9b2463d5b0c6720b40d
    mem[640] = 0xe769f1e14532cbf607b5be8426b2803ee587a27
    mem[672] = 0x3bf9b8c23d005590491022eb1243cc5bee886c4f
    mem[704] = 0x7c0435636662e9b16083ad39aa64fd3c8f6c7907
    mem[736] = 0x22b6ef696e650675c6677e99cf2b9c3772b7872e
    mem[768] = 0x4c0e179849d5bc293e4b36cfb6733084d39c9587
    mem[800] = 0x9305457eaa169946c98ea4e8cc51df138bdafccb
    mem[832] = 0xd4f14dd162d056d25b16c0c545d5e8b360540dee
    mem[864] = 0x755d6c0c1baa7076fb46dc1d833ec57cabee83e3
    mem[896] = 0xe651c3ffcd188ea5bd57de098d608afc6728dca2
    mem[928] = 0xa390f70a72d02553f553f1be26fa4e2c90d23f69
    mem[960] = 0xdeb82f2793386f41f799cb696768704264912212
    mem[992] = 0x8f33295e4164cd622d0a61da71ec702acc2de3ea
    mem[1024] = 0x9981922b81aabd0492ef7a5af78720a355e47d8f
    mem[1056] = 0x6942181377adfd2d8e438a146b35b81fe8cef3db
    mem[1088] = 0x3616683cc072b4983b6c96e0ef5c09f42064faf0
    mem[1120] = 0xefd27c9b0b4e24819cd56832646a2baddeec028b
    mem[1152] = 0xf85bec8599421dca7c9ff453b537e847ebe283d5
    mem[1184] = 0x463d2832e944a7a73a1c4d0796da99b510069eb0
    mem[1216] = 0x3a37333ffaaba26ead96d91499d1c65b22e0aaa8
    mem[1248] = 0xcbe87563e877196e32eede58c0523fd7fd9870a3
    mem[1280] = 0x85d1332424f985a3f61b113b586429f49d15f39a
    sub_b56f972c.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_b56f972c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_b56f972c.length > idx:
        sub_b56f972c[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x33546dca18c038caea46c2e7efce742cbcf0990e
    mem[1344] = 0x2ddc6c9215dc42266211612534232a75ded7a4dc
    mem[1376] = 0x152f18cd1651ed6a5fb1915d36164e406540913a
    mem[1408] = 0xd7be5e5fa02c1ea8d3b3248284e349a7032e9e0a
    mem[1440] = 0x4363e3cee58036741215942a955690b29686a69e
    mem[1472] = 0x23459a89eac054bdac1c13eb5ccb39f42574c26a
    mem[1504] = 0x5df9595fb6fa97fd51cfbba015a35150bd37ed44
    mem[1536] = 0xa1cc6ad47489c6ff259af69c7b136b4ff1ec69a9
    mem[1568] = 0x31ffa0f9b560bb7c8ba377e8d89cd72ad3016ddc
    mem[1600] = 0x3bc1948ea98660ffbf3f82eabf2d934896acd93b
    mem[1632] = 0x8aff1474c1ecc10c273ee2ae23e6cd7eb5cc60ae
    mem[1664] = 0xa8582bab56553689a3815983bcb904efbe0416d
    mem[1696] = 0xb919f455ec6981bc375676d5d06fcf19a9ef8037
    mem[1728] = 0x6d9da320dde848d9a82a134d6165acab7c811d0d
    mem[1760] = 0x4aa6fcef6b985b230391654a44670bf2941fcbc6
    mem[1792] = 0xbdf19b849c05aaa483a4fb0cef432ebbcf19db
    mem[1824] = 0xa182ee9a81c7350ed32671bc312eca2cb789bdf2
    mem[1856] = 0x99a7ab6db251295b43a565c27366791030bb827f
    mem[1888] = 0xda8b7247906ffe2b0ecf7c51756149c26736686a
    mem[1920] = 0x5e170bd589e124d266f6348f18999120be626fbc
    mem[1952] = 0x82b53c60797af3ecdcb072a57b7bcbc1729bceb
    mem[1984] = 0x70f07c9c7fca057169cf702165312aa58f2b6955
    mem[2016] = 0xa7564b256f985400790c9339a799ae9969c3655b
    mem[2048] = 0x7b4b6055f820a5fda8871ebe55e7942334ace068
    mem[2080] = 0xf1c5dd0b50fcede04e98fe79655a8f0f1f20573b
    mem[2112] = 0x398863ef2844fb52f99b2ffb64a633563f228b46
    mem[2144] = 0xd6a6f78f4e73f3ae3f167aab6e8e26482982b9d
    mem[2176] = 0x9acb665473e83639bc30a24888d19442b48c02a
    mem[2208] = 0x6dc3f2bed85a5b821043c5a4e098cffb7c04fffc
    mem[2240] = 0xd58bf67ee0ebbf008b1109c701370b86ea0009a8
    mem[2272] = 0xcc74370181ca10222b76816eee31f48a3da9edb5
    mem[2304] = 0xbd06aedabbdbdecd1e6f64c6f48409960fcef2ff
    mem[2336] = 0xb6e8d96a3d28238a587d8bf82f49c5549e050d0d
    mem[2368] = 0xcfa059e9a8c97a5479a04929960f3b415508e243
    mem[2400] = 0x3a440cf9ab25aeb17ecb559a3b61c08671471a88
    mem[2432] = 0xc788c73d05ac11dc38c2961b1eed280400a2d7a9
    mem[2464] = 0x2d2f7f6b78aaf6ab57c687080e8e5db7d1014769
    mem[2496] = 0xdffecbb3f28edf409d23c4d67a2a91b2872af567
    sub_52cf3f0c.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_52cf3f0c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_52cf3f0c.length > idx:
        sub_52cf3f0c[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_52cf3f0c.length:
        if not sub_b56f972c.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_52cf3f0c.length, sub_b56f972c.length
        else:
            mem[2660] = address(sub_b56f972c.field_0)
            idx = 2660
            s = 0
            while (32 * sub_b56f972c.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b56f972c[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_52cf3f0c.length, sub_b56f972c.length, mem[2660 len 32 * sub_b56f972c.length]
    else:
        mem[2628] = address(sub_52cf3f0c.field_0)
        idx = 2628
        s = 0
        while (32 * sub_52cf3f0c.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_52cf3f0c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_52cf3f0c.length) + 2628] = sub_b56f972c.length
        if not sub_b56f972c.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_52cf3f0c.length, data=mem[2628 len (32 * sub_52cf3f0c.length) + 32]), (32 * sub_52cf3f0c.length) + 96
        else:
            mem[(32 * sub_52cf3f0c.length) + 2660] = address(sub_b56f972c.field_0)
            idx = (32 * sub_52cf3f0c.length) + 2660
            s = 0
            while (32 * sub_52cf3f0c.length) + (32 * sub_b56f972c.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b56f972c[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_52cf3f0c.length, data=mem[2628 len (32 * sub_52cf3f0c.length) + (32 * sub_b56f972c.length) + 32]), (32 * sub_52cf3f0c.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
