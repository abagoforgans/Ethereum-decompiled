contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage25' / 256
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
    return code.data[494 len 6893]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_80c1dbd3;
array of struct sub_0c1595ce;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_0c1595ce(?) {
    require arg1 < sub_0c1595ce.length
    return sub_0c1595ce[arg1].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_80c1dbd3(?) {
    require arg1 < sub_80c1dbd3.length
    return sub_80c1dbd3[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x53767c01ade29694d2c454659ea6a43483f2ac3
    mem[128] = 0x8b0fa1d058d1aec9e7b0e0112c709bf70e87e17c
    mem[160] = 0x371c3196e4ff2c558015828508b8622b6d7b9d
    mem[192] = 0xf5a24c4808b0652bcbb77825d915cbf3678e6c8d
    mem[224] = 0xa2c4aa259cbe7dca506c055e04f2c9ba7ceb794
    mem[256] = 0xf18acfff5282bcc97d2200e00fed9631f17d85de
    mem[288] = 0x1bdee73ef677f7401ca104971657a2b9692f21ae
    mem[320] = 0xe795e7f518c5eb14a1bb80f879c2df74096f99db
    mem[352] = 0xc8d589b70f46d09e7fe7aeee65ad21153a7b3e9f
    mem[384] = 0xa61157a1eb9adfa7068641b4bdea81478a6da745
    mem[416] = 0x9302d68bbe7923058edd9af2e22ef988ea6ec7f8
    mem[448] = 0x490b76eab9f917d6b5fe528a4a4c5a53635122a9
    mem[480] = 0xd3d30316ce488548ce9d55bfdedc64769782dee1
    mem[512] = 0x6a921146af2e58dd3aa3582a4fddef84acffa3de
    mem[544] = 0x34589855bc1dff924d7681dee3ac10824acf7a36
    mem[576] = 0x8c2602831784bd8c213e84aff2c6368b6447808d
    mem[608] = 0x96470083aa065975a41757f663abdb38e4c4822a
    mem[640] = 0x59c32c04d8fb3147a730b1050324ad1906098a
    mem[672] = 0xb62dbdeb44b4048310faa4b33a99d4dbeae1fb
    mem[704] = 0x72e74afff04b1d381341c92e6b3813284f452e35
    mem[736] = 0x9c4769df4f0f4d03e950e83e8d104ffc00ccf4bd
    mem[768] = 0x30a9e2c172d5750434d11f45fb366da7eaeed39f
    mem[800] = 0x4fd9ef031accb016a00ba74749b1c4ca3b2a251b
    mem[832] = 0xcb65655ccc8f0b704530984240fafb65bf249721
    mem[864] = 0xe775fd9e0981aca6112263acaa3494dd390c15
    mem[896] = 0x298bb4e7d99f2b98bdbd38a0fc39825f83c1611f
    mem[928] = 0x196a484db36d2f2049559551c182209143db4606
    mem[960] = 0xafc22b2f35195835c9db271047699407424ebc37
    mem[992] = 0x5dab4cf027a2e7de5d3666af58ad92094cc31449
    mem[1024] = 0x367a91d7cca010c087dcfbd72b07f33386ebddb8
    mem[1056] = 0xdc6f596a9303ddd65aa14e180fe16ee4de9e1cc1
    mem[1088] = 0x3da4a7a2c89192300696d100204d9007379e4bec
    mem[1120] = 0xd93d2bbfaf14b43337468fc909aac2182d4369ea
    mem[1152] = 0x2a8b51a2bc239e48f3099548dd1c3268269b3476
    mem[1184] = 0x50c2a3b48361a8493ce3af753b1deed1e14e7068
    mem[1216] = 0x1c03e06add518fa76c5fde477a1994dad96c414d
    mem[1248] = 0x5384cda127b3e226a73154966aeeb009a1864e70
    mem[1280] = 0xe783f6478ee5114422c104fb702da3212560d80
    sub_0c1595ce.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_0c1595ce[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_0c1595ce.length > idx:
        sub_0c1595ce[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xfbecd0b96b4dd017fdf74ecd4dc776dc072eb15b
    mem[1344] = 0x9335bf84e0ba88cfc0d979fd6bdcd6319b337298
    mem[1376] = 0x44983eaf699e5971faf473b995a147391f9997
    mem[1408] = 0x4cfc85a14ab31afb18bd09553c6f61375c44a873
    mem[1440] = 0xacc88906182b17db00edc7921260db566747412d
    mem[1472] = 0xbfd90597b4402a56516953680849eb220c07c6ef
    mem[1504] = 0x98ab1d1d7160ae4e635cd5e4834b6d7f6abb97ff
    mem[1536] = 0xd2fb8c121945b4d3fd61a1d206e0e4f71a5d39fe
    mem[1568] = 0x862ade5e280eda0d9f4beaa443661f4221076195
    mem[1600] = 0xbfde9fb5193921e8d3c22ca1755d60c24d4f9721
    mem[1632] = 0x4a8de9857f63190d9e4e4383724f74d6f8dee035
    mem[1664] = 0x4a055cde3cac8168f2a4ee34979bf7edb7ac45ea
    mem[1696] = 0x285a877f059dcaf1abcfcb3d2b7642fbd9603ee0
    mem[1728] = 0x4cc5b1213f40d0658f426ec2e7a42fc1a7f2260
    mem[1760] = 0x454d9cc2c0fafb2e1258f3d6584f2ddaba520403
    mem[1792] = 0x72eb41ae7f943445da9932662d31a06d56a3cfaa
    mem[1824] = 0x49848a617ba98c05a695c877889b907889ae6ba8
    mem[1856] = 0x9b227ffb95472ce738ecf4416ebd890546c543
    mem[1888] = 0x4520e23dc81b7e47ce8933bad28d7d17447c4e
    mem[1920] = 0x9d732682ba17b229ec750593df06bc7678d87657
    mem[1952] = 0x82ab9ad331ce091082840f2f66046c040270326e
    mem[1984] = 0x2e13206a688db159dd8b116d0f33b70b0950a565
    mem[2016] = 0x944812fcfe8a6249f4d1a12125cc6f84d3ce997b
    mem[2048] = 0xc92d5d97199323e6fb464cb6e91f566c0650d5f5
    mem[2080] = 0x3a842f94e8122d2b29253e7ffd1d99c433b3d3
    mem[2112] = 0x313872e85f6982d0ae396b3ee34ba02c83f162a6
    mem[2144] = 0x30dee845483a815fee2a26c30da63e5344a13e32
    mem[2176] = 0x7676a6fa9d8341c05e41963f49754eae3501c981
    mem[2208] = 0x7a730c3f6619b59b02df385a6953e661e54c2d59
    mem[2240] = 0xa2fd512e9f709b981b0e362058ed525aea0c5674
    mem[2272] = 0x80c01b6f6b6499c8a1e4891f99041fa3109c5638
    mem[2304] = 0x4e309e53bf29af7a0626c3b87e61d959f09ca2e2
    mem[2336] = 0xfe46e094d4b003423c1d143a5c151919e30717ca
    mem[2368] = 0x3764ff034267afc3a345eda5a576c310b71e4dc4
    mem[2400] = 0xd8236ffca706aa16751e262f9af4c6ef825ccfb2
    mem[2432] = 0xd6f34fe150827246d6c99f9c85e601eb6958dd51
    mem[2464] = 0x62010693444942c34ebf1dc9a4541403db12e742
    mem[2496] = 0x76991104468d111d68ad409cab8db3699a9222b
    sub_80c1dbd3.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_80c1dbd3[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_80c1dbd3.length > idx:
        sub_80c1dbd3[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_80c1dbd3.length:
        if not sub_0c1595ce.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_80c1dbd3.length, sub_0c1595ce.length
        else:
            mem[2660] = address(sub_0c1595ce.field_0)
            idx = 2660
            s = 0
            while (32 * sub_0c1595ce.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_0c1595ce[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_80c1dbd3.length, sub_0c1595ce.length, mem[2660 len 32 * sub_0c1595ce.length]
    else:
        mem[2628] = address(sub_80c1dbd3.field_0)
        idx = 2628
        s = 0
        while (32 * sub_80c1dbd3.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_80c1dbd3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_80c1dbd3.length) + 2628] = sub_0c1595ce.length
        if not sub_0c1595ce.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_80c1dbd3.length, data=mem[2628 len (32 * sub_80c1dbd3.length) + 32]), (32 * sub_80c1dbd3.length) + 96
        else:
            mem[(32 * sub_80c1dbd3.length) + 2660] = address(sub_0c1595ce.field_0)
            idx = (32 * sub_80c1dbd3.length) + 2660
            s = 0
            while (32 * sub_80c1dbd3.length) + (32 * sub_0c1595ce.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_0c1595ce[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_80c1dbd3.length, data=mem[2628 len (32 * sub_80c1dbd3.length) + (32 * sub_0c1595ce.length) + 32]), (32 * sub_80c1dbd3.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
