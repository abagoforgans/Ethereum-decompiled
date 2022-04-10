contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage84' / 256
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
array of struct sub_29ebfefe;
array of struct sub_cb0c1841;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_29ebfefe(?) {
    require arg1 < sub_29ebfefe.length
    return sub_29ebfefe[arg1].field_0
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

function sub_cb0c1841(?) {
    require arg1 < sub_cb0c1841.length
    return sub_cb0c1841[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xfca5ddeb01b0e5ad6759c409e8f2b978081315bb
    mem[128] = 0x50984db8b0936fe87605248ff1c55b08fcefc158
    mem[160] = 0xe019bc85193f8d36eb28ed293edef99e431dffdd
    mem[192] = 0x7e86fba2ce23aa92823f07cab156ddd534aef055
    mem[224] = 0xaa8448b33baea52f8ddcea86090317e22668bbff
    mem[256] = 0x5650a0acf70d525f98bc55fc8983cf0b52f8a061
    mem[288] = 0x58a2a8dd725b5defefd61b574dc42bf9e81c5410
    mem[320] = 0xd17d7e631426af55b12e996a4ac88ba30d72ecb
    mem[352] = 0x979af3b766ca90db3dfe84462f722ab2084c667
    mem[384] = 0x5a65551bbd6083680851c605e8bc00ce36cde81a
    mem[416] = 0xd86df3130d53df68f049251db24ebcbb0615bf
    mem[448] = 0x7994c155fb5a8cbddd60706579fb318665eb5c
    mem[480] = 0xabf0a0fe391465ed412a2a1cf2c4622d609a71cd
    mem[512] = 0x575bee285839fa62354d2843b0fcadcfd9e06040
    mem[544] = 0xb641ffd0747ca048aef0779f207d6f32c179c283
    mem[576] = 0xe77902ff826da52d26104c6e0a846027693bdc6c
    mem[608] = 0x245a9b89223c29ed8012f430a2e9afd98d7201f6
    mem[640] = 0x59cdd28f5741c4dc28fe37382f61c3fa7bc960f
    mem[672] = 0x264d31f994a023ef9f2213e9edd4c9eace0acc08
    mem[704] = 0x5ea9eae375de68a4bed20e32c7ae261c23621a2a
    mem[736] = 0x932a56688d185d3596c495c73734276881fba1c1
    mem[768] = 0xa79a857d6c64513425b97237204d6fa53a60d2b2
    mem[800] = 0x3285bc99f670283b1a1bcbdf00f19be94e4c2e1f
    mem[832] = 0xc83e2b802046c7748d8864fcbfe2234ae2837334
    mem[864] = 0x572d6033fbec1c7b455a173f476ed806a0bcf28a
    mem[896] = 0xb79852997a1b6e733bbc638ba3d880015c12486d
    mem[928] = 0x917c98227ab6af97e29ade59eb27c9292ace5d59
    mem[960] = 0xbc3b0213658404539f22b3f09d90c0763845a50e
    mem[992] = 0xea4ace6814d56f5629712b9ba216481fe27604e8
    mem[1024] = 0xe92244748a68ea86ab22f3e97060c755137b5863
    mem[1056] = 0x3ea5d2853b1e9fa9fcf12bb4881a9f18a23de888
    mem[1088] = 0xb86ff51c19a08daaea1611f3b91313b5d28e218b
    mem[1120] = 0xcc5d2138d859e114eef655272f0002d07d158320
    mem[1152] = 0x9879edaa073a9e7fd3f468395f307d7a0766080e
    mem[1184] = 0xfb87165dafdf124a651ad2cf1db4976c811bb168
    mem[1216] = 0x2fe97f6ff33a2149c985fc205d753055a06cfa90
    mem[1248] = 0x93c0b6d557403c2f2f083a77820272327e370d6
    mem[1280] = 0xbe55b290a572ec6a3cd87241c7d3eb900a9a5407
    sub_cb0c1841.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_cb0c1841[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_cb0c1841.length > idx:
        sub_cb0c1841[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xbc2928c6c1d7135e74dc2fb496561cb11549c805
    mem[1344] = 0x4e952ba92db5ef9f0f40d231638f7d5e7849c607
    mem[1376] = 0x34bce8ea616292b7980ab2983386df52fc11bc16
    mem[1408] = 0xf134caa86025cd72d6c679bc147869cece544bd0
    mem[1440] = 0x5bdff8138603990602600bad40aa6a56e3241cbd
    mem[1472] = 0x696d778535ee9b52f241f68d41a5936f271b0116
    mem[1504] = 0x3731f9f5733dcc7f11d94f381c83806ef7b7d141
    mem[1536] = 0x57cae7ffe871e435a465720e57aa6d3b3e47c7a0
    mem[1568] = 0xd32cee01d782d2220a9b1da91c33f95752c594c4
    mem[1600] = 0x5297ec6b227f02e7630649be5596708a3c47bc24
    mem[1632] = 0x680018b575cb0d0e603a4a8efbb0d69dd6a42a3a
    mem[1664] = 0x352026b0dd3d812ad4700f76318c3d9b93fd28
    mem[1696] = 0x9669564d733222a630c6f0b7e684a7c6321cbd64
    mem[1728] = 0x8dda7a20688f97ed9c9706b6c33316c0569eba6f
    mem[1760] = 0x7972f6640e56b16236c6420e80a980f8d0414b17
    mem[1792] = 0x30eb4b1c2c9aae9416143a88688d2cefdc3aa99
    mem[1824] = 0x75bd6a62e82afddc676f2d306f02763e65b020a5
    mem[1856] = 0x72a211d2e3e90c9bb2c975062c3fd1606aa7a4ef
    mem[1888] = 0xc78681121da46f83fd6d4f70aeef083364ca1dd0
    mem[1920] = 0xe810c4c8fcfec511aad97bb5f91c7fc9e95508c9
    mem[1952] = 0xbea33c7fa2c82c4689b2bf4109b4515aff179ab0
    mem[1984] = 0x4790fb27a5524035f97245a821b3accc9ca242b1
    mem[2016] = 0x3559549fae1781088b8d105a4e25fdacd8807e4a
    mem[2048] = 0x926b955c73d2fc09f321c6f26f745172e6dbd914
    mem[2080] = 0x1a43b4ee82ff4dedc91cb2ba77ce01f89ab55e77
    mem[2112] = 0x83a9d2381c1b04e1ad56241f4d45bbd613d6f8ac
    mem[2144] = 0x33b154d2f78fd704645755de158141130926aa9f
    mem[2176] = 0x5340c92e254e66d7675da9e305f83d99b701db8f
    mem[2208] = 0xd74843bfb81f16187383113d4e7505bd27f46306
    mem[2240] = 0x5ef640b2f8aa5491a9dea03b677ddf67d8bf72fa
    mem[2272] = 0x64f77b98372a38d00d62e61f9934ad1d1588b02e
    mem[2304] = 0x1f112f0d31571957a8b4d360805ca3a3ce27ca2b
    mem[2336] = 0x7dc597272483cef4d06fd07b961ab291b7080fec
    mem[2368] = 0xccba704e99fc5aa4f6041706a0f84a2a3f43fd9a
    mem[2400] = 0xb0edc4274b61d34266320be80a0e495becffe33f
    mem[2432] = 0x41ad22101bee38c6b72a573d3b60698396aff4e5
    mem[2464] = 0xccc66851245fb37c306cb4ff7d0998a165b72fb5
    mem[2496] = 0xe72af4164e69bf1c3fd17fc055d0b9b188a14e79
    sub_29ebfefe.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_29ebfefe[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_29ebfefe.length > idx:
        sub_29ebfefe[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_29ebfefe.length:
        if not sub_cb0c1841.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_29ebfefe.length, sub_cb0c1841.length
        else:
            mem[2660] = address(sub_cb0c1841.field_0)
            idx = 2660
            s = 0
            while (32 * sub_cb0c1841.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_cb0c1841[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_29ebfefe.length, sub_cb0c1841.length, mem[2660 len 32 * sub_cb0c1841.length]
    else:
        mem[2628] = address(sub_29ebfefe.field_0)
        idx = 2628
        s = 0
        while (32 * sub_29ebfefe.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_29ebfefe[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_29ebfefe.length) + 2628] = sub_cb0c1841.length
        if not sub_cb0c1841.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_29ebfefe.length, data=mem[2628 len (32 * sub_29ebfefe.length) + 32]), (32 * sub_29ebfefe.length) + 96
        else:
            mem[(32 * sub_29ebfefe.length) + 2660] = address(sub_cb0c1841.field_0)
            idx = (32 * sub_29ebfefe.length) + 2660
            s = 0
            while (32 * sub_29ebfefe.length) + (32 * sub_cb0c1841.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_cb0c1841[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_29ebfefe.length, data=mem[2628 len (32 * sub_29ebfefe.length) + (32 * sub_cb0c1841.length) + 32]), (32 * sub_29ebfefe.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
