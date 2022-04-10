contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage56' / 256
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
    return code.data[494 len 6789]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_8f687396;
array of struct sub_2bce1cbf;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_2bce1cbf(?) {
    require arg1 < sub_2bce1cbf.length
    return sub_2bce1cbf[arg1].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_8f687396(?) {
    require arg1 < sub_8f687396.length
    return sub_8f687396[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xb879fc4dd7bc36b3fe4bc637b5f70ecde3ab353b
    mem[128] = 0xd805520f5531aa13e8da53b60b239672f8db8f57
    mem[160] = 0xfc8927768c4d0f75563af72a3cbd4dd72fb0a4a9
    mem[192] = 0x539d445b119323bebfa9e396d08c4de02bb00934
    mem[224] = 0x7662273d2cf3921ca663154f2bedac96fc14be19
    mem[256] = 0x1d1ca46f1ed6a64e26cf4a6a661ea3c35ad427eb
    mem[288] = 0x3f27b7bb300aec0b7a9d4d60e3c88fe231ca322a
    mem[320] = 0xa19ea6d7b63f2aba51716bea37a4f173dd6dc1af
    mem[352] = 0x1411f90a42029c20e8ffb5cc9682f9b12b398f43
    mem[384] = 0x89bd19fe71dde7746ae075d7f5b1e449b7337ab5
    mem[416] = 0x36de72673d138d623a18aacaf266c62d28825978
    mem[448] = 0xab27c7ee68c820512e7eb477cc3b77ec457a9d2d
    mem[480] = 0xb45e5c109e25e8784095739d1a48aa6341bb7d3d
    mem[512] = 0xa0e71ef4acf7790c2b1ab6ac97886c380173424c
    mem[544] = 0xa3fa278f352a4a7f47177a6303b0a336801d5c37
    mem[576] = 0x79ac9bad7c8cecf9bd363916f50ae28daefc09b6
    mem[608] = 0x654da36bb42f5585a174154371ae7ed3b2758829
    mem[640] = 0x59da666366b52d70526e1dbe56a67720e79fa500
    mem[672] = 0x5b2a4069c44268b11971cca0678e66718ea5f227
    mem[704] = 0xd46a9fdf1ffcd6771a4c45ec51dc2e31d4d2d381
    mem[736] = 0x6ff6206821f1f55c1eaeb8664c68091273008efe
    mem[768] = 0x8e196d7c8f456caee8e9ef5b34e3a67bd9a96b74
    mem[800] = 0xb0220fa0694b42cf65c3709ddff82deb0a370800
    mem[832] = 0x586712eadd6cdb3800f25337b6c4c44784f8f64f
    mem[864] = 0x6b738d0efa7a05c84c1290cae7ba304aec3fc30c
    mem[896] = 0xf73d1103a2791d741918769c23dcc41df8a72cfd
    mem[928] = 0x1fe8f7d80c2037e50dbfbc92a326c535dc5342ea
    mem[960] = 0x9b142e5cae2d12b598f94cccc3f2ed307419a956
    mem[992] = 0x39f34ac96e338750ced636cd467c77a101538851
    mem[1024] = 0x89b96cc0daa0bca0c5e95f38d926aaeb5a920a3
    mem[1056] = 0x41757b85b2fc8db3e65dcfde9b3bae783f0e8300
    mem[1088] = 0xa65ad50b56f1e48d6a34a286af7a1f9de58740c9
    mem[1120] = 0x4f4fd0e631361c0c25082014528b5c926d92e6b1
    mem[1152] = 0xdd6f6a30aa4bc8b5eb4eddf6fb10746ea25d7776
    mem[1184] = 0xf4499ff987a3872c64ea83500141ee0ca8483fb2
    mem[1216] = 0x18092eef634e7e0e39caaf313bfdf521dc08f22d
    mem[1248] = 0xbc0a87f29ae4b79dda1add1969fb8322a8a71a
    mem[1280] = 0xe23c77517c3e4a70817269e3ff2231bddbae7930
    sub_2bce1cbf.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_2bce1cbf[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_2bce1cbf.length > idx:
        sub_2bce1cbf[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xee2fa945ee4f2d8ba11c1c5741635b19a20263df
    mem[1344] = 0xc0debefe036fce713831d7e6a111dcdd965fe429
    mem[1376] = 0x2e37e222ba770244cfbf12568672f8582fb292ae
    mem[1408] = 0xfd48db428d74f6c36a5ee4b7e7df4647999fbc68
    mem[1440] = 0x95986e370d6070bcf21ce79fe1f2626355f31810
    mem[1472] = 0xc6fc6835ce16679c89567c0b33604d1e9a71bf99
    mem[1504] = 0x535e1a1d203fd6492abdfd5cd6ec7c576a8d2e7e
    mem[1536] = 0x9aa5c38a9e413020f8e916eeb38c83030d9349aa
    mem[1568] = 0x3394381afd369a8a04c719fe753aaf0e3b395020
    mem[1600] = 0xee7881fd9fb09bf4a888b5013ec1ae5e232a2ebc
    mem[1632] = 0xfc2169b06a9046c2db62f7260d3b4ac803e5eba5
    mem[1664] = 0xb6655b99b666a2f80540b4f4991c0949944f8fb2
    mem[1696] = 0xadd279cca1c141f3040ea773f085eeb7272986ce
    mem[1728] = 0xdf8d33be05f3a8652d634037f7c9183fd30eea9
    mem[1760] = 0xf06b394314cc76bdeafffedb08368c0c04188311
    mem[1792] = 0x61fcd166c8c4f178e5e78c2afdfa3c5e8aab3223
    mem[1824] = 0x42fb90714bb924b5d1d6c575249e85b2ae11bdbf
    mem[1856] = 0x3187d6c0a663822102289f79996764dce3979f68
    mem[1888] = 0xd538719144825b52cce5b794e391aaf6bcb9d318
    mem[1920] = 0x7850add00a8464aa390ce541d523331f562e3009
    mem[1952] = 0x8f07e9d3b7df5f957506318e3584cc770e850e4e
    mem[1984] = 0xb5fc781be7035bc94347be4c863b4caa2df7a787
    mem[2016] = 0x3a711d6c99974950cd49bd14742b4b2728ea37f4
    mem[2048] = 0xac311ded2e98aebb0299708304829cd4ef65dd6a
    mem[2080] = 0x251cf031b7ae8280a707c93fe730775c1b794298
    mem[2112] = 0x7cdeb792ddca66065ce1894bf6a63a1d10def1b2
    mem[2144] = 0x14cd3a00d6df13f44556018949b23b81e07b95d2
    mem[2176] = 0x663633aa3b9705ebc2de1edc21825f4e332d1fc0
    mem[2208] = 0x84744fd97ed0d0cc1eb11d01281f71a3e7adf201
    mem[2240] = 0x2b9f2008273e032d91f01276ad6c98d59a971c46
    mem[2272] = 0x4e9c2d6791539bbc8267ac96e553d023e4512269
    mem[2304] = 0x2d763d3237a00e2ba5e6ee5d4fbf842fdd6f9b60
    mem[2336] = 0x9d39ae2e1ca131463a84c3441c3f144ed7bdbf8d
    mem[2368] = 0x66cc403eb1168b7cd24c90c66d4526560d248ea7
    mem[2400] = 0x75024617513afb12e266980f1c25b69e00af3ac5
    mem[2432] = 0xe2804e5f5d0be7c009f6a01c29bb2aac14675265
    mem[2464] = 0x76eaea883c20feb2d50ee54a9a2e369ccaf72d
    mem[2496] = 0x56a6355b87ee8d8624ec77ae376e185fd9064acf
    sub_8f687396.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_8f687396[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_8f687396.length > idx:
        sub_8f687396[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_8f687396.length:
        if not sub_2bce1cbf.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_8f687396.length, sub_2bce1cbf.length
        else:
            mem[2660] = address(sub_2bce1cbf.field_0)
            idx = 2660
            s = 0
            while (32 * sub_2bce1cbf.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2bce1cbf[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_8f687396.length, sub_2bce1cbf.length, mem[2660 len 32 * sub_2bce1cbf.length]
    else:
        mem[2628] = address(sub_8f687396.field_0)
        idx = 2628
        s = 0
        while (32 * sub_8f687396.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_8f687396[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_8f687396.length) + 2628] = sub_2bce1cbf.length
        if not sub_2bce1cbf.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_8f687396.length, data=mem[2628 len (32 * sub_8f687396.length) + 32]), (32 * sub_8f687396.length) + 96
        else:
            mem[(32 * sub_8f687396.length) + 2660] = address(sub_2bce1cbf.field_0)
            idx = (32 * sub_8f687396.length) + 2660
            s = 0
            while (32 * sub_8f687396.length) + (32 * sub_2bce1cbf.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_2bce1cbf[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_8f687396.length, data=mem[2628 len (32 * sub_8f687396.length) + (32 * sub_2bce1cbf.length) + 32]), (32 * sub_8f687396.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
