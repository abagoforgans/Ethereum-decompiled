contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage15' / 256
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
    return code.data[494 len 6569]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_362105f2;
array of struct sub_1133dedd;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_1133dedd(?) {
    require arg1 < sub_1133dedd.length
    return sub_1133dedd[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_362105f2(?) {
    require arg1 < sub_362105f2.length
    return sub_362105f2[arg1].field_0
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
    mem[96] = 0x66de15f7823d68f3a3f0a12cd50a4f9b70692459
    mem[128] = 0xd0c108066921b04082610c33f45541f32ae5eca9
    mem[160] = 0xd05a048a8c519583436ccd62c07364b05525481f
    mem[192] = 0xabc9dc84caf89de6ac45623fd5101dc8be71e496
    mem[224] = 0x2e04fa2e50b6bd3a092957cab6ac62a51220873c
    mem[256] = 0x17fac2204b50ccf50c487b6394fe2e7675248a6c
    mem[288] = 0x7924c35574d6cad1ad7ba6cd5eb9c1fb623989ad
    mem[320] = 0x9d8b1c160bc864170fc8a679bf90f4f8287e7afc
    mem[352] = 0xc2bdc203f6806879fccf3d5c505e0548c1709847
    mem[384] = 0xca1b8be28daf79bbc263ab066401aabc7d65d436
    mem[416] = 0x7d77d3752ec3e094cb3c1caa774e1ee3e56956d0
    mem[448] = 0x9a99ee54c3099e288f38a38a7a363ec4aa6c73
    mem[480] = 0x351ef9e1552cbd483b5a174aaa424f9d77787a4f
    mem[512] = 0x2ee812c3ea094db83457d25657fcf606df26bf05
    mem[544] = 0xe7bdddd2a1250dbe8db56a66303c2c9f7304b526
    mem[576] = 0xd4b928ce850d0ce0fa734eb1f4681a1432e897d
    mem[608] = 0x42acf658cc5c31bba8cea0cdf4306b88308c6330
    mem[640] = 0x296acdc7ea84107d86e045066e004d831bc1f777
    mem[672] = 0xfd40d1ab20afbdd402c6c71e53a26d4fbe07fd12
    mem[704] = 0x6cb7652a5b6a4b9cc849932622ade4979b466dcc
    mem[736] = 0x132dcd1611baebb7fd25678f389ff9344371e695
    mem[768] = 0x96a253f84bf95b5fca1c088f4347d0446707c9f8
    mem[800] = 0xb312d3f18868b0d5a8078a139d621f14393c8856
    mem[832] = 0x640a5a75a1e895646c1ebca1366a18dfd711af6f
    mem[864] = 0x91ee95b34d073d1158ee95386009953d0a5dc7eb
    mem[896] = 0x7d0027a6ba990644b6ad795caca9a4287296c974
    mem[928] = 0xa96868a28c0aa5b38a2e3636afb49ab271618359
    mem[960] = 0x40cfe57c420f9631bb09bf54056b8dc09bdbf71d
    mem[992] = 0x96e8711d9e7a19e737570f4b972883f8562efe56
    mem[1024] = 0xcf9b452b7887e0a468d03d647579db9fd7673cf6
    mem[1056] = 0x6677a3899283891b6ba154a72c3bbb89ab27edff
    mem[1088] = 0xb1071b95732c0d9a03d4ae032d9dd846cef264bb
    mem[1120] = 0x9c65bd2142681621db2541ca0454c796b96e19cd
    mem[1152] = 0x41f46ac3f3266bc7c21f6a7993f06c1addfa9514
    mem[1184] = 0x6acdd09aeb02b8b0eec49abb63a8680edd6d8155
    mem[1216] = 0x88e301149d8bdde6eace84ebd2be41b902d58644
    mem[1248] = 0x7073941fbfe51e763554020f7b7a05a15bce4944
    mem[1280] = 0xab575ebcdf3cceab2be8239f3c3026e156cfae48
    sub_1133dedd.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_1133dedd[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_1133dedd.length > idx:
        sub_1133dedd[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xcc509b2f8712b3593900ac47eb51afd9cebc0f74
    mem[1344] = 0x6c660f6d7c714d573f3a4f2c95c6781866fd3662
    mem[1376] = 0x89803fc577f9a18efbd993f0474403c616314b11
    mem[1408] = 0xdba69b4e18990e848e89ca6082969743aee6532a
    mem[1440] = 0x3f70431822b2b9ade4d9e8e13dff51d0f9937fdb
    mem[1472] = 0x1ff60e72c816c30326012af3894d2d563b08959e
    mem[1504] = 0x80705bd9e13def23946b795e5624eaf6839e8025
    mem[1536] = 0x7181b1c44498e912f28bda796ee29d0a1f201aec
    mem[1568] = 0x422bc0f009a1cda2cfb2b4cb7a23eff79997e802
    mem[1600] = 0xa8d95fb3313699e18d740bc813987f4dbbd46b85
    mem[1632] = 0xdc1a5cb47f2c1391d74c972ba3b3695553fc0068
    mem[1664] = 0xb00fba8c32503f3b7f93f46ab7f94fdbceb76a
    mem[1696] = 0xfb57589d4016ca04c0c98b4e431da5b9740015c3
    mem[1728] = 0x635e7c5eff16625dcd826254072e161a9a63cc4c
    mem[1760] = 0x6f59ceee59f7419ceef06fd3704ca7838a3b3809
    mem[1792] = 0x9a3395714353e682f7baff238b87ef043bbe31d8
    mem[1824] = 0xfcd991ba83bb0c10132ed03989e616916591a399
    mem[1856] = 0x68074f401c90354e6f36b925b5a1f90436ff00f1
    mem[1888] = 0xf7548a5be105db17321114fc205b39966a10c11f
    mem[1920] = 0xff794ff176dde7640064983d8f2b942b12a4ab7d
    mem[1952] = 0xf37dee6a9ab0726df649b766269bbfe085429139
    mem[1984] = 0x6e064cc59ab269e6765aded6d7ca9a05f206316b
    mem[2016] = 0x7a8a3212fa3c7a4aacd8d764e50a7d7f45df2376
    mem[2048] = 0x1c4617d4cc5fa873a93994eb15e0f45ef16826ae
    mem[2080] = 0xcace525b0c0c08e3316b5cdfda4b0a8092c3b9af
    mem[2112] = 0xd66eeb6d8880910a823fc6d9e9d4c34bfb5023b7
    mem[2144] = 0xa5e34871a16b7e59f11c1368f238b956a9a2c46c
    mem[2176] = 0x986f66f400c204aeb47dd2a622150c4cde8498ae
    mem[2208] = 0xd11f40c21f27bfa4d182b9d932ef831818241582
    mem[2240] = 0x2133f57e65532b9b6aee13be4141dac7a785d330
    mem[2272] = 0x716c8408c274dcdc9b8fc5f7f1825cf83bdde4bd
    mem[2304] = 0x89ee31dee4da5e5d35ed5a71b5ca4cc695c8f0e5
    mem[2336] = 0x9e075dee4fe621406aeb3804f2f6068ab879ac17
    mem[2368] = 0x424f0933b6328af663995da93987d5483605b61a
    mem[2400] = 0x907a0f92b7969c75039dbf50a1785b5dd80b93cd
    mem[2432] = 0x34953cbb9262d486cf92c0654dfd2117a5a946ec
    mem[2464] = 0x2ffc0728fb496e8846e7f162dde6a4d73307eae5
    mem[2496] = 0x92056939abbb73be193836b83345cfdaae26858a
    sub_362105f2.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_362105f2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_362105f2.length > idx:
        sub_362105f2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_362105f2.length:
        if not sub_1133dedd.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_362105f2.length, sub_1133dedd.length
        else:
            mem[2660] = address(sub_1133dedd.field_0)
            idx = 2660
            s = 0
            while (32 * sub_1133dedd.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1133dedd[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_362105f2.length, sub_1133dedd.length, mem[2660 len 32 * sub_1133dedd.length]
    else:
        mem[2628] = address(sub_362105f2.field_0)
        idx = 2628
        s = 0
        while (32 * sub_362105f2.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_362105f2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_362105f2.length) + 2628] = sub_1133dedd.length
        if not sub_1133dedd.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_362105f2.length, data=mem[2628 len (32 * sub_362105f2.length) + 32]), (32 * sub_362105f2.length) + 96
        else:
            mem[(32 * sub_362105f2.length) + 2660] = address(sub_1133dedd.field_0)
            idx = (32 * sub_362105f2.length) + 2660
            s = 0
            while (32 * sub_362105f2.length) + (32 * sub_1133dedd.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1133dedd[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_362105f2.length, data=mem[2628 len (32 * sub_362105f2.length) + (32 * sub_1133dedd.length) + 32]), (32 * sub_362105f2.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
