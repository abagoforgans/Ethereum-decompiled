contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'storage100' / 256
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
    return code.data[494 len 7139]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_3e17e493;
array of struct sub_6d3d9e4d;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_3e17e493(?) {
    require arg1 < sub_3e17e493.length
    return sub_3e17e493[arg1].field_0
}

function sub_6d3d9e4d(?) {
    require arg1 < sub_6d3d9e4d.length
    return sub_6d3d9e4d[arg1].field_0
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
    mem[96] = 0xda45294d240bfd11ffd0f2c33e3ee449b6cae13c
    mem[128] = 0x532596fca7934722e56e1e14a6e848e97421c2ba
    mem[160] = 0x8d3682d3f372c8e506320f2c7103cae207af3755
    mem[192] = 0x3b0a428c4acd21ed5e62fd72b24f11b3855d7fbb
    mem[224] = 0xeb45ec23a9f7ba71e407dcac58dee90fbf58b2e6
    mem[256] = 0xcb78fbb580694fb3c09fd5e0ad50dda1bd8bb040
    mem[288] = 0x50e68c4972680492f032467bd843f3eab7b2c315
    mem[320] = 0xbe8396cb81eaa9140e4f94e0db7826db66f27abc
    mem[352] = 0x84ffb8d0464ce55d5b6e240bb275e20bf19108e5
    mem[384] = 0x1c26f2fead4fc8bbe8fc4051661cdc529c31d601
    mem[416] = 0x5e2eef82fd22e35cc45d3751ac8aaf45a11dd05b
    mem[448] = 0xfc1d330f27c3740941cbb618df4f832b7666bc
    mem[480] = 0x98119bf5a7d833041a2e94262717b16348ba0596
    mem[512] = 0x38fa6ba91f974e8d662b6c4b365b46647304ff89
    mem[544] = 0x43111f4b68cae68c85d197867c5c563f9fb34d95
    mem[576] = 0x89b7950ca275e4d2d48509d0a9eb6673deb3830
    mem[608] = 0xdc11cf7b4ff26710bdc511cca6e13ed1c7a97710
    mem[640] = 0xee0f05f89609d409d3ca46422acf8292d0b1e055
    mem[672] = 0x3b1798b77a76011a204f0da102622c0fcde8f619
    mem[704] = 0xa1c9a7e7490b7ed01f783bfffa35cab0e1db5f4b
    mem[736] = 0xc79a763887d8e2ec3845cec1cd9709810a530697
    mem[768] = 0x9c22e14cfc60ee21d3ee3cb8e2ddbdf658f8ba2a
    mem[800] = 0xc2715de2ae5090f2b43e73ec2f9dd2d7cc2f7b16
    mem[832] = 0x3e2755a1e4df9b3a5828ca9985d0a85df1afaf48
    mem[864] = 0x3cce4f193b4c48798ede89050c81138aa77fe214
    mem[896] = 0x46d581b1442f18e7494df04d33c580e5bb39a0
    mem[928] = 0x310fe489cb5bd972308e4e650e662320e9615165
    mem[960] = 0x3cc145eaa12392ac47155dc6d020a0b0cfa4b4f8
    mem[992] = 0x7e49b4a22ab2b7e8c585dc538ec3dccf1865bde1
    mem[1024] = 0x212edf2cb52cd42756acd8655d2f9be002c542ca
    mem[1056] = 0x4045a2d56d972fb4721ae2ea449afdfcf9b279a7
    mem[1088] = 0x24b5c0a19d3ea3c01ad0f1c1b5be8341d4ac3fac
    mem[1120] = 0x71886f94dbfe71646ed323b71ffb253d4fc6cb43
    mem[1152] = 0x205c36bfdfb771b9cafba7f6244989fdda52f360
    mem[1184] = 0x737e5c1b1e100c3addceaca79f815e84d822f219
    mem[1216] = 0x6d5eac5f467dbb413fdfc881335f7a52d31666f6
    mem[1248] = 0x7b0f16163f6aaa7ea034a1ca0c8bb3ff5771aacd
    mem[1280] = 0x20a096d07d982ec465c84ac842e9528f818cfcfe
    sub_6d3d9e4d.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_6d3d9e4d[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_6d3d9e4d.length > idx:
        sub_6d3d9e4d[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xd68f9b97fc05f72e3d39ff21bceab4d6ba7f05cc
    mem[1344] = 0x2240bca1a3632abb31a57d98fe005a7660bf3465
    mem[1376] = 0x860bde24157132f0cc1bfe86500c851f51012e4b
    mem[1408] = 0x93f6dcad93be4165da33dc9be2f75e11207d54e3
    mem[1440] = 0x49c89e652e0b8b6584c8055ebbb5e0058b3ec660
    mem[1472] = 0x1e3bdd4e07760f8e787488073c66229a228564a9
    mem[1504] = 0xf18af38254bed5ca4eaecf4ddb57f38774e302d3
    mem[1536] = 0x255c430a69f3663d64d50a85bb34423c950ce9c6
    mem[1568] = 0x26ef10ef80a3dd1554fb2217b223d0a26cff82e2
    mem[1600] = 0x17ee08116c4fe298fc9d826b97337ab96c97cd57
    mem[1632] = 0x289d6a7f8e3277f44ee49470813c37b58bf6814e
    mem[1664] = 0xb1ae0396dae116920ead83f9c54bbe872bb698df
    mem[1696] = 0x98cfea4a7632ef7148b2f6933c5af622d16b956b
    mem[1728] = 0xc97887deddebe3d62c09d8186d46d9d50719e335
    mem[1760] = 0xf13a4dd289b5f208ed25b199a3452082335023d0
    mem[1792] = 0xac4ce0ee4cd196f73aac0605b97fc26f917cd801
    mem[1824] = 0x43daf99c1f06fd0626632e906d5c6d3af333d85f
    mem[1856] = 0x6e39c4e738269e48b1c148c894b1fb85496de621
    mem[1888] = 0x68b9b90e83b11873cdca9109a73929fc1cd54757
    mem[1920] = 0xb5126a99368460450d3422740f4666c5a3ea7ec2
    mem[1952] = 0x491abe8711af71efb086b827a4c7d68905efb0fa
    mem[1984] = 0x6ac6d057398cbbd9a965c81a661068ff9cd3ae9f
    mem[2016] = 0x4f726ac9e02de385621b067ebdebc036f0694593
    mem[2048] = 0x108ded27444d6665c9622438a7dec105519ea666
    mem[2080] = 0x6be5c380e6dccbee03b24ad035d820407ee9603c
    mem[2112] = 0x6999ddb1d0555e99d21857c691b2b22810c0
    mem[2144] = 0x1954271e897dbbdbbb7b91b65c19ade91e06759f
    mem[2176] = 0x9dff9d6452142c6abd237654f64227bb938a3814
    mem[2208] = 0x8d1ad470900aece7c5bd56b4d15e3ccd31f2fc00
    mem[2240] = 0x1150fd170906678ea714160f2dcc17c8b42db7ee
    mem[2272] = 0x6ab60866871df2bdb6bacc5a7cb2dc92a5d16e69
    mem[2304] = 0xb4c51a54e72df5fada00234b155651dde3763c0a
    mem[2336] = 0x3c560ab7aa30ce9c2dbd9e37a5e3cc3dcfe5626f
    mem[2368] = 0x71b5d20a3f946a7435556e97d5245d261e545e58
    mem[2400] = 0x4b3bc7e0e78d1f4c5b5324622c80047d6f759e45
    mem[2432] = 0x2540ac47f3131c2a7f8e57e2ca36f4dfbbd086ca
    mem[2464] = 0xa31540e49b34ea36bb3dcf92f23a220b77d72107
    mem[2496] = 0xc068fdf278144a4443140785f980d9a35c682b7e
    sub_3e17e493.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_3e17e493[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_3e17e493.length > idx:
        sub_3e17e493[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_3e17e493.length:
        if not sub_6d3d9e4d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3e17e493.length, sub_6d3d9e4d.length
        else:
            mem[2660] = address(sub_6d3d9e4d.field_0)
            idx = 2660
            s = 0
            while (32 * sub_6d3d9e4d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_6d3d9e4d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3e17e493.length, sub_6d3d9e4d.length, mem[2660 len 32 * sub_6d3d9e4d.length]
    else:
        mem[2628] = address(sub_3e17e493.field_0)
        idx = 2628
        s = 0
        while (32 * sub_3e17e493.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_3e17e493[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_3e17e493.length) + 2628] = sub_6d3d9e4d.length
        if not sub_6d3d9e4d.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3e17e493.length, data=mem[2628 len (32 * sub_3e17e493.length) + 32]), (32 * sub_3e17e493.length) + 96
        else:
            mem[(32 * sub_3e17e493.length) + 2660] = address(sub_6d3d9e4d.field_0)
            idx = (32 * sub_3e17e493.length) + 2660
            s = 0
            while (32 * sub_3e17e493.length) + (32 * sub_6d3d9e4d.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_6d3d9e4d[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3e17e493.length, data=mem[2628 len (32 * sub_3e17e493.length) + (32 * sub_6d3d9e4d.length) + 32]), (32 * sub_3e17e493.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
