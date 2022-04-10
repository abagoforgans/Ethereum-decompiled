contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage97' / 256
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
    return code.data[494 len 6853]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_27f44e6b;
array of struct sub_30d8a3e3;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_27f44e6b(?) {
    require arg1 < sub_27f44e6b.length
    return sub_27f44e6b[arg1].field_0
}

function sub_30d8a3e3(?) {
    require arg1 < sub_30d8a3e3.length
    return sub_30d8a3e3[arg1].field_0
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

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xbcfbe02ccf0112b69c28a506834b593e131499a6
    mem[128] = 0x2d0c5634c41147f1b2ab364e8f657c7d958a8473
    mem[160] = 0x707fd0561fe4b3097154de0105b863759375ac85
    mem[192] = 0x6a25d4f60cbd4e23596795cdb5b04cf62735306f
    mem[224] = 0x47c40403f5c7fb56e2fdedd6090a4817edcae81a
    mem[256] = 0xc5c0d32f2110f7377f72c4152ea858fc3456cdcf
    mem[288] = 0x9a162d4db21a70d2a8ae9b13737c195c863927
    mem[320] = 0x226a806af2994f555926761be2fe75fe188bb3c1
    mem[352] = 0x1aa93f1b477afa415ff18227c4859fc5913e71af
    mem[384] = 0x39038534cde070d9ec868c7eb430f360ad5e9b2
    mem[416] = 0x91eccaa5f49b2241524f71476bd1ab1351c50825
    mem[448] = 0xae8332ae3ae69c0cffd4e324804b29a237493e0
    mem[480] = 0x77d69196f71daf9a29d1dd6364c9eeee9883cb4b
    mem[512] = 0xd33df039baedeedda92474825b57f889e7813b8a
    mem[544] = 0x93d7d948460e8d6107ef3a791cfeac4a02c4de01
    mem[576] = 0x96c593ac11f541e59b2f7c2a085bbb98f69504a3
    mem[608] = 0x26656572994e18e622af34a22c8acae779870e4c
    mem[640] = 0x55638e02bb0d5ab3fb49ec9a0592929e742cd53e
    mem[672] = 0x72e3f349e4c4b2fa585c3ad81ce7e5d9b6067d54
    mem[704] = 0x62a9e05a0912c1cd4453b8eeff3c0811489cff94
    mem[736] = 0x27cbca0a5e5077912db299c168a0fd8661dce186
    mem[768] = 0xc53d56c852acb9e30d1faa7daeee8df868ab48af
    mem[800] = 0xbf7361b09235dccbc13f6a6aa50af4883217bc
    mem[832] = 0x497759cbbcad1f578284d06d9208df4c5b96ff70
    mem[864] = 0xb75db7d86516bd83b77557871c55e71181967020
    mem[896] = 0x1c011a43f9df7af64d7d74abfae13789272d82ef
    mem[928] = 0x7e42b4cc8373e0145e334aad537f76bd166071d9
    mem[960] = 0x610aec4cf37b12158e6211b72f8091d1e9d0df18
    mem[992] = 0x11e44db4258113266e062ac9132fcb717d069bd1
    mem[1024] = 0x2260955d8114df434d46a1f4e041bdf1bb9ed5c7
    mem[1056] = 0x17f3c7be81187d40cdf53f982e39a1c4367d36ed
    mem[1088] = 0x4681ffb546d4c919c864e302380ef7986d54ec29
    mem[1120] = 0xff1ba233d66330bcac72e18ea06c6aa26b2fb5e2
    mem[1152] = 0x635b9f00097bd1b09d3f27897451872bb1fc67bb
    mem[1184] = 0xd87d4304b60249c09a4083d776dec9f1a2e8f399
    mem[1216] = 0xb3b4d284417ec5d279bc6ba91f1e36eb3a6d3129
    mem[1248] = 0xeee3b36fc328217a5c225d4e8c6daa4ae289c3dc
    mem[1280] = 0x2406b108bf6fa47d4231651b29022c88c3bd71ed
    sub_30d8a3e3.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_30d8a3e3[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_30d8a3e3.length > idx:
        sub_30d8a3e3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x70431c774c882d372c1981af4b1259b008b34c84
    mem[1344] = 0x8bf95f4257b8988a5a0db2b840a4372feeeab059
    mem[1376] = 0x3e72bba5ad21c649e05d9d96718bde8d9706c6fa
    mem[1408] = 0x7522b31cd0cba4e8f64dbebef846456f0aaff9f3
    mem[1440] = 0xd03a126001d9b5b9580746a05498a10e79b7ffbe
    mem[1472] = 0xf0a84f1bc9d826219887bde2584b7580dfd78d83
    mem[1504] = 0xc52db7a1045c892518e075ab0a76ed27c72040
    mem[1536] = 0x59ef6f1cdd65dcd69da51297a1cb61e4fd6b3731
    mem[1568] = 0xddf92932d2e218354e77969918666036a8ac20e9
    mem[1600] = 0x8030f3d7dec0348a081fa065aa68508c58917adf
    mem[1632] = 0x2138e38d3349fde068021416f8564d12b5f04660
    mem[1664] = 0x5cd357ddd845c6a396def0d11d992bbd47a13fd0
    mem[1696] = 0x820595d8c4ad2479526d57451ddfa6e6d4ec094c
    mem[1728] = 0xc81e3999331a7708de7ea1d8f7e752e3e15067b5
    mem[1760] = 0xfae96439073442fe4a0093115e9d3bc92a6a32e8
    mem[1792] = 0x2d86b8f21ececa64508be5ca94f7e5774b69fdbb
    mem[1824] = 0x190cb1445c2220d674c45936e334c412521c253f
    mem[1856] = 0x9df4f5a752f145e1e689f402e1a4860e3394b923
    mem[1888] = 0x886b40cd643656df3ebd65a871e62d23bc1fe384
    mem[1920] = 0x15441fa54d890dd78f967700962386e16faf6066
    mem[1952] = 0xb998d37d9cef1facfcc441e374d66d5c0c31c2a6
    mem[1984] = 0xc6b2e7de5ff6dfa2e702cd9082aaa534c1b9ac33
    mem[2016] = 0x64a26e5247c859552b16d19e108d5ff2ca1553
    mem[2048] = 0xab97cad976f62ee28a4a5366ada6263e7549e298
    mem[2080] = 0xc0ecdb31336276dedb7e0dde4dbef175ce7dc6aa
    mem[2112] = 0x75d1cb562bd90a5ce5a217e06f2fbe22568f2480
    mem[2144] = 0x40a5f44600cc8af30ec7db42dc9ca6c597cca0c0
    mem[2176] = 0xffa6adec873c41f08d6d28d8f4eb978f968969f3
    mem[2208] = 0x3a4b014dd8cc527c8db5f6c546129dc0bc81d7c0
    mem[2240] = 0x9cf8b876c593c1a833a8af92d0051f12662ac03e
    mem[2272] = 0xb26f670ac3e9359902709184e290b4e65d0e6eea
    mem[2304] = 0x35a07064de594d94aa82112768ee34d64d26b9aa
    mem[2336] = 0xaa4e407b5ca0f1933fdc994564fcade9600dcc57
    mem[2368] = 0xc35fd4128b96092aacbd9f12ffd5c7c73db942df
    mem[2400] = 0x99cde962dfe942d9402a0123d082baa72f212274
    mem[2432] = 0x29141c4cc18ae6278ddaafe4bacbd16aac1b1c77
    mem[2464] = 0xae98041e409d3eb3c2979ec948b57255a421913d
    mem[2496] = 0x14f60629e20ddea3a09e24d9ef7c2f5371854959
    sub_27f44e6b.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_27f44e6b[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_27f44e6b.length > idx:
        sub_27f44e6b[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_27f44e6b.length:
        if not sub_30d8a3e3.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_27f44e6b.length, sub_30d8a3e3.length
        else:
            mem[2660] = address(sub_30d8a3e3.field_0)
            idx = 2660
            s = 0
            while (32 * sub_30d8a3e3.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_30d8a3e3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_27f44e6b.length, sub_30d8a3e3.length, mem[2660 len 32 * sub_30d8a3e3.length]
    else:
        mem[2628] = address(sub_27f44e6b.field_0)
        idx = 2628
        s = 0
        while (32 * sub_27f44e6b.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_27f44e6b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_27f44e6b.length) + 2628] = sub_30d8a3e3.length
        if not sub_30d8a3e3.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_27f44e6b.length, data=mem[2628 len (32 * sub_27f44e6b.length) + 32]), (32 * sub_27f44e6b.length) + 96
        else:
            mem[(32 * sub_27f44e6b.length) + 2660] = address(sub_30d8a3e3.field_0)
            idx = (32 * sub_27f44e6b.length) + 2660
            s = 0
            while (32 * sub_27f44e6b.length) + (32 * sub_30d8a3e3.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_30d8a3e3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_27f44e6b.length, data=mem[2628 len (32 * sub_27f44e6b.length) + (32 * sub_30d8a3e3.length) + 32]), (32 * sub_27f44e6b.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
