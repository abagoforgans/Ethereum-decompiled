contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage43' / 256
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
    return code.data[494 len 6803]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_ac32baa3;
array of struct sub_b15f8697;
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

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ac32baa3(?) {
    require arg1 < sub_ac32baa3.length
    return sub_ac32baa3[arg1].field_0
}

function sub_b15f8697(?) {
    require arg1 < sub_b15f8697.length
    return sub_b15f8697[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xe4ed401e35c084c37ab975fea14738f918c1cae2
    mem[128] = 0x92a8b732bb085fbedb139d688bb4722bdbb96008
    mem[160] = 0x4e23a87599eaadfaa19f781324b605203e20941
    mem[192] = 0xcde9e07f81bf689c608ccdff28deb85d303fda9
    mem[224] = 0x492f6834c567108bb634b59b0631d183c6b05ded
    mem[256] = 0xfa4821faa921151a472467255da42c8abc8815fd
    mem[288] = 0xe6ed6c02a4d84abb8342fb3674fdcf9fc32f4ea1
    mem[320] = 0xe49e32773d849e815dfbef18b212b8601ee4e551
    mem[352] = 0xfe8514b28f2a5acab406fd17d3bdf1336a6b409e
    mem[384] = 0x23a1e51988284f8daf5fd5a5056fd055996f3bf8
    mem[416] = 0xfdd6f842dbab43bb2cc24d790fbe240b58fbe744
    mem[448] = 0x7fc5a5b005f2b08b1b01ac93fcdc444cb8545206
    mem[480] = 0x2f1f060640c18f197d8d87afef7c9a5d5e2ad5
    mem[512] = 0xa9daf5e808ad9ed5fdb0929e71583dcdc44adef0
    mem[544] = 0x192472cbf0c0578a8e02668f2ec848cb6ab63f40
    mem[576] = 0x4d259f7b524ef773a20df89e9a3d5581fd97c6fc
    mem[608] = 0x8411ca70db364bfb0763db9ed2102f32993078b5
    mem[640] = 0xa7fe97c42abd79228c2b8e78ef678475bb045aa
    mem[672] = 0xb692ce6c4e6f7d68ec7a7e557290310c1aad6d31
    mem[704] = 0xf1085808cc205bba41d443b627eb98bf7b93ea1e
    mem[736] = 0x9123d768c06fb3cac63391f3de4004a8c5b66890
    mem[768] = 0x6bfe018ea1db254dc1e5baf8995747365f42f3
    mem[800] = 0xea5cf3cf71b894da7640c333672864225ffdbb
    mem[832] = 0xef927b28b89160c56d1adb82672057cc1a76ad07
    mem[864] = 0xf8de5adbdd381aedaa8a58a9edbe07261f839935
    mem[896] = 0x21dd9f68fc4eb3d482ba815b5267697b4b671b19
    mem[928] = 0xf3e72d115b9780db18dca9aae6e6b276c591f469
    mem[960] = 0xd1f0b92b788c80a68bd91261df88ec6e1db157d9
    mem[992] = 0xcb06ead3636abd55faa30aa32d4cb63ac41dee26
    mem[1024] = 0x8ff91660380ec9850c206404f1f1a8d8719a8eda
    mem[1056] = 0xa2985aecb7973c6c5c83e8014d666a0cdaf584
    mem[1088] = 0x36685dae890295b4bdc075dec2243e3ffb69a49d
    mem[1120] = 0x4f80eab4ee3c4a22866618c8a938d86c7102e4a2
    mem[1152] = 0x1f2ae719301c03a52de75660b2a7802fea14ed
    mem[1184] = 0x9ddb91d39af7e3ee835995f0c671df7d4e19ef64
    mem[1216] = 0xea7c1190554ec6aebd3b90fb723a568a1105a56a
    mem[1248] = 0xc102c783598ef3399ce61a4ecf5f8b94c0a1cf96
    mem[1280] = 0x86f906c957b02f5860d02057e659557012039a84
    sub_b15f8697.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_b15f8697[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_b15f8697.length > idx:
        sub_b15f8697[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xcfde6515448afd98d4a21c72ae561d3fbc003c18
    mem[1344] = 0x14b8809f68be8d03e7715a566ebe5e85a05cc405
    mem[1376] = 0xe42e558a9786e229c3af7874e9395de556fe0a7a
    mem[1408] = 0x3176653c7c9d0f3f40b27d9be8f9af544eb218a1
    mem[1440] = 0x56b61fba9a7644712862556f4ce876ba3a99a65c
    mem[1472] = 0x25d71479a8c07c6eff69149db1e6364a2c145a15
    mem[1504] = 0x712235cded340d98b6b11e7f37d07ba82aeaa436
    mem[1536] = 0xa1882ce705e742b71488618b1126e6c3a4b6fc1d
    mem[1568] = 0x54458a18b5160d17def18d42eb1016da4f3bc28e
    mem[1600] = 0x91c1dc3ece03556f9b63429f0f7c6af2d9ee3eb7
    mem[1632] = 0xc57c9a271bca9bfb79ad77fd9c3f32b1c1c7b8e9
    mem[1664] = 0x27694a28fcac641fc37d24ba52ebfe97021b174c
    mem[1696] = 0xc53769b88c6ea3a0fa09e3fd56364b1ec54f7c
    mem[1728] = 0x489227234608b0f6e442837925d1418c6b7af130
    mem[1760] = 0x15e812a9bae1d5be7fa776c4dc7e3f5f611299ed
    mem[1792] = 0xd91a392365fe084400205a695ef14c98607fa256
    mem[1824] = 0x64ec5d0e3806f979c0188ff874ba57db0ee6aec7
    mem[1856] = 0x2a0c0ea5569cfa9799954fb908f414ac06bb1f58
    mem[1888] = 0xb677d58b8a679d8e5844f6f444b0cf857731aa13
    mem[1920] = 0x36fd06a8e7c8f6338fe18343703822d4fa5d63c2
    mem[1952] = 0xc2cfa842c97e2b0835245b5e66130bb76be51a1
    mem[1984] = 0x43bb748e8491e0d2ac50d1247edc7567ea5e91
    mem[2016] = 0x9147f779c4a688598e00ee8abbb47a267a78c3
    mem[2048] = 0x438cffbf653b946351a9e67e4b5ac5fb7d690b5a
    mem[2080] = 0x64b08ab4f7f408cf8f439ec56f9de22ab63c17d8
    mem[2112] = 0xfb78f6a85cb74c11e8b216e87d07ece1b6dacc57
    mem[2144] = 0xa7a6e5e3f09e6007d15dcb356b15b99d199bd237
    mem[2176] = 0xa471d3582cedc918ef44e5a76482a88fbe83bfdd
    mem[2208] = 0xa83edb9192f7c60385c636c33063a90acb32a0fc
    mem[2240] = 0xd17ebdef174edb337d57c2b88eb54d08a29f7fc7
    mem[2272] = 0xe2325f0f9ad29c7bd8eaf9c04c4fe4e9ffee32
    mem[2304] = 0x71790ba6a7c5477670b31cb243b742ef8e314d8f
    mem[2336] = 0x12b85b45352e91b7ab7ceef3c2d55e9737ff006e
    mem[2368] = 0x75047ec8dc2f174db8acb198d37f4a3d0a6705
    mem[2400] = 0xde59b5e214597682e90d7e28bc2157de905578cc
    mem[2432] = 0x6421c86d2ffb2a2cfd00f9a0253b037aa0f264e2
    mem[2464] = 0x97e1b25b419361aa03461d83b937dad28867014b
    mem[2496] = 0x5c9a48a5c6729b67d266b19d06a408846ba2cc14
    sub_ac32baa3.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_ac32baa3[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ac32baa3.length > idx:
        sub_ac32baa3[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_ac32baa3.length:
        if not sub_b15f8697.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ac32baa3.length, sub_b15f8697.length
        else:
            mem[2660] = address(sub_b15f8697.field_0)
            idx = 2660
            s = 0
            while (32 * sub_b15f8697.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b15f8697[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ac32baa3.length, sub_b15f8697.length, mem[2660 len 32 * sub_b15f8697.length]
    else:
        mem[2628] = address(sub_ac32baa3.field_0)
        idx = 2628
        s = 0
        while (32 * sub_ac32baa3.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_ac32baa3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_ac32baa3.length) + 2628] = sub_b15f8697.length
        if not sub_b15f8697.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ac32baa3.length, data=mem[2628 len (32 * sub_ac32baa3.length) + 32]), (32 * sub_ac32baa3.length) + 96
        else:
            mem[(32 * sub_ac32baa3.length) + 2660] = address(sub_b15f8697.field_0)
            idx = (32 * sub_ac32baa3.length) + 2660
            s = 0
            while (32 * sub_ac32baa3.length) + (32 * sub_b15f8697.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_b15f8697[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ac32baa3.length, data=mem[2628 len (32 * sub_ac32baa3.length) + (32 * sub_b15f8697.length) + 32]), (32 * sub_ac32baa3.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
