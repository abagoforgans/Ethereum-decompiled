contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage86' / 256
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
    return code.data[494 len 6923]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_03fcdb0a;
array of struct sub_46189b15;
mapping of uint256 balanceOf;

function sub_03fcdb0a(?) {
    require arg1 < sub_03fcdb0a.length
    return sub_03fcdb0a[arg1].field_0
}

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_46189b15(?) {
    require arg1 < sub_46189b15.length
    return sub_46189b15[arg1].field_0
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
    mem[96] = 0x4b43853ca443901bdafde8bd36c137e04a7ed76c
    mem[128] = 0x75212b9b8cee4cb580b60c8d606adfa3b693fd05
    mem[160] = 0x2e20456e20cfad5de91ff2daca3bd7caafcfffae
    mem[192] = 0xe53486316786b82267d86a66a80af69a3ed347d1
    mem[224] = 0xf4d03f95973fec2405b188a12627fd959d267198
    mem[256] = 0x113b913eab79f9d6760a302178b811c57f967f4
    mem[288] = 0x6058b7e9e30d314b3bacd9a8beaca4bb7eff8c48
    mem[320] = 0x248562228ceab089e1a26cd43ed3fe4c754e0290
    mem[352] = 0xe46b4a5fa7099c65f83119a9abd091699f1f9c52
    mem[384] = 0x2f5ff86a46658aafa4e2de2a2057af6e8eb41dfa
    mem[416] = 0x3badc957d23add4502c085f39a1d4e5da8b9a878
    mem[448] = 0xc6a064a9b8aaa6063cdf2cc9178ecc53963e7936
    mem[480] = 0x6ecb9b5f169f6815be9921de2268d69ed53551d3
    mem[512] = 0xd06c63ee2f5348dafe9f9a105f9981342c8ec62b
    mem[544] = 0xa89203060edf014a700c3f831d56c5986bc2577f
    mem[576] = 0x1d33a9d07542a49e344caf34dcf16843b6aeec44
    mem[608] = 0x57681ff8ab9eadb753d17fa17414661631638d48
    mem[640] = 0x4b54e7a07363ab3f54a7af024944672ef619c1da
    mem[672] = 0x3e5e96c810da1d3f0dada68b1d1a0fe174a26fb2
    mem[704] = 0xbbe35e5a8c3a000c01385cbf86a000cf92013554
    mem[736] = 0xa1e95fabc2d986577957b88369536cda6686410d
    mem[768] = 0xb6a4f33ebafba25e2e17ec5d52a58b6b5cd94dbe
    mem[800] = 0xdbcea29058325e33cf2993a07ef1e609e73e3dd
    mem[832] = 0xcf1baea2b46669b2fabb7af86204776e641d2086
    mem[864] = 0x360a03cf3479480ccdd52a27f9f144bb74c1a1fa
    mem[896] = 0xceac05391234fe0ca771baac4796f402a0000ff2
    mem[928] = 0x7fcf1504fb1a8322991e32c46e37324193bd6599
    mem[960] = 0xbf3f0d0d6947862e064422df4611449bfbc4c674
    mem[992] = 0x1625a233ea4aa8b9bcea175e33f66f0c611b6571
    mem[1024] = 0x86c0616d2f56be9098f803a52f2d9ba9c8a949a0
    mem[1056] = 0x72fb3b741f2c2cbf15016f2c7498765dcc0e6f7c
    mem[1088] = 0x49e23434291b3f4e4329e50351986a16e52840eb
    mem[1120] = 0xd391ee26b9c0456e4f911a670f617b436b621d79
    mem[1152] = 0x21bb6d2ac71e8c41600e2b9e1c4ce6c9ee237c0
    mem[1184] = 0xdfec53c668c5a47082410971ee011ac5b261ff07
    mem[1216] = 0x2bf0b1dc4378afe484d22d707bd2ea7c503d21b3
    mem[1248] = 0xeaff8e34d8b669885bfdecf6ab216107830cb35c
    mem[1280] = 0x7389e33c78149f9a8215664acab3ce670c949b51
    sub_46189b15.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_46189b15[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_46189b15.length > idx:
        sub_46189b15[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xbdd0d3545409485ec510c75797353aaa06ee3fd3
    mem[1344] = 0x6a3ca50f79afad7e1ec86b488f1aa84bf8f8532b
    mem[1376] = 0x1bc41bc7719803751df70996807fa6a620979803
    mem[1408] = 0xdf07f04c6c37d565b198e258fe2c054aad0e5ee5
    mem[1440] = 0xb3be64b4db5497431af11b7c578c866d6a3a7dc2
    mem[1472] = 0x9028d3afaa8bb0794d34dcfd8ebcd500c63e5d7f
    mem[1504] = 0xc5c101bde1629c8a820223d271654a3c852ad848
    mem[1536] = 0xf99ba129aab6e0f82e4a8865598af115bfbb4c4
    mem[1568] = 0xe2ab56eadbe937741280542c75d8ee702ddc1365
    mem[1600] = 0x1b13c50c24c51c8c94ab80a2afc197124d0f13eb
    mem[1632] = 0xa25acd0c1d943827e77214bdcbc991219f7d527c
    mem[1664] = 0x6c1f0a93a5655816155bcb0ef3e06965c5106477
    mem[1696] = 0x2dee2a74fb3a9f33b4e34e66fa0660f6acb14c8e
    mem[1728] = 0x8484e5e484326e9cbe41577455c5bdd1f3b239e5
    mem[1760] = 0xbc07dbcabe7dfb45964b57a64209708dc66f51d4
    mem[1792] = 0x3a86877bdfb968499873f957d548ebe49f723fe0
    mem[1824] = 0x917551e4b3faa9dafc2a0b2e8bf827eac6c7239e
    mem[1856] = 0x9bc8269daa603ec3232a4ef9d206fcedd1629558
    mem[1888] = 0x54703bf5e4d9a9094bab0c20f84dbb2c3478e130
    mem[1920] = 0x70f210f2fb8ec6bc6c6119c5b59f7cbac0cb6705
    mem[1952] = 0x74e4c9ad42b64e66e01ba2f313fee562d57ccc1f
    mem[1984] = 0xaf42f2509bc09a83b310aff4a6dad729d00c8515
    mem[2016] = 0x94e4fb2cf9145ccdbf1305fd569ffdd74c8e5631
    mem[2048] = 0x8c1d3c5f7ae8e003c0c0f4e267702f469d33f55c
    mem[2080] = 0xc3d5361d194f1f2da1d1830177056e4188f6347f
    mem[2112] = 0x943bbaf2d7361a08693962302d67e13d47df9b7e
    mem[2144] = 0xb89aea9fed4874ffb136fe6ee90b7a8e264e67b9
    mem[2176] = 0xf8f5db9c3296862906056b05e1d7502d879d6515
    mem[2208] = 0x81c22095dce3a36ad1c9a4a9297ae90940a24725
    mem[2240] = 0x2db257b73bcc6ee6f71cacffa932aaf21edac172
    mem[2272] = 0x9fb6ce2c3f3da4fb77343ad92eb653ca50cf19ca
    mem[2304] = 0x2a0846c5d9354d4c32e309493d3744d70e5e1872
    mem[2336] = 0xc5e527c26ec72659f0d755a69a6075f1f3959c70
    mem[2368] = 0x43ffc5eee7fb4ad037936bdcdaaa00a36df0ff59
    mem[2400] = 0xfa2dc629ff8ce4cbc4a80d77654eb7407f4096c7
    mem[2432] = 0x51a415dae60e02ff0cba391ec5bb685b687e2dbc
    mem[2464] = 0xb965b01f3cff25e77406bc85aafa019831fc0d54
    mem[2496] = 0x8e7c2f6ad43286a570355823cf79acbdcbdb235f
    sub_03fcdb0a.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_03fcdb0a[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_03fcdb0a.length > idx:
        sub_03fcdb0a[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_03fcdb0a.length:
        if not sub_46189b15.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_03fcdb0a.length, sub_46189b15.length
        else:
            mem[2660] = address(sub_46189b15.field_0)
            idx = 2660
            s = 0
            while (32 * sub_46189b15.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_46189b15[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_03fcdb0a.length, sub_46189b15.length, mem[2660 len 32 * sub_46189b15.length]
    else:
        mem[2628] = address(sub_03fcdb0a.field_0)
        idx = 2628
        s = 0
        while (32 * sub_03fcdb0a.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_03fcdb0a[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_03fcdb0a.length) + 2628] = sub_46189b15.length
        if not sub_46189b15.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_03fcdb0a.length, data=mem[2628 len (32 * sub_03fcdb0a.length) + 32]), (32 * sub_03fcdb0a.length) + 96
        else:
            mem[(32 * sub_03fcdb0a.length) + 2660] = address(sub_46189b15.field_0)
            idx = (32 * sub_03fcdb0a.length) + 2660
            s = 0
            while (32 * sub_03fcdb0a.length) + (32 * sub_46189b15.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_46189b15[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_03fcdb0a.length, data=mem[2628 len (32 * sub_03fcdb0a.length) + (32 * sub_46189b15.length) + 32]), (32 * sub_03fcdb0a.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
