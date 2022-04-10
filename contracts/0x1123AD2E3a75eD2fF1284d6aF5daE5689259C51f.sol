contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage65' / 256
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
    return code.data[494 len 7141]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_9000dd16;
array of struct sub_54eac8bc;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_54eac8bc(?) {
    require arg1 < sub_54eac8bc.length
    return sub_54eac8bc[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_9000dd16(?) {
    require arg1 < sub_9000dd16.length
    return sub_9000dd16[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xe385c5308925afec7d8ae17a7326eb912411ec31
    mem[128] = 0x9ad755c26f7c64f720027f4b32544ce1cae212a8
    mem[160] = 0xa5a65b59acf9664bae193df64465976fca0b6ea8
    mem[192] = 0xb7212ed09d94a47164147459953f36db9b017980
    mem[224] = 0x719dd38465441bb222dc8bea8e2e303d6fad2f71
    mem[256] = 0x77616e31c5850eeacfc6017193550d6cd251f5e5
    mem[288] = 0xe1f3bc5b1443adc303d26bd9a4517a56f1237938
    mem[320] = 0x5cb0a7bd15de6017ca97c413c3d93dfd75405e5a
    mem[352] = 0xb807d5e8bd355719ccece36d39f76548fdb144a5
    mem[384] = 0x304d360a7ed05700d7d559a9588a6dd4e9c315b9
    mem[416] = 0x19c979db7339346ffcc3b489041eaeb094406567
    mem[448] = 0x641658b067d5375feb7f93226f72cb31cfad339
    mem[480] = 0x3a7ed1b232ac2adc76a16d34e3db188ad0c6af39
    mem[512] = 0xd7c055ba087b764b0d995f5b6c581164785a6b12
    mem[544] = 0xa62cf02552568f6a2bfcea617eced1ccf3148062
    mem[576] = 0xbb94a71bffbdfae3756252454560ca5168ad2e13
    mem[608] = 0xd69a46b51e98246bdd198522e149ec9fdcb94f50
    mem[640] = 0xc393125fbd3bc37e42332eefa0eedf86bb77e3fd
    mem[672] = 0x158968337e5e598c514461263ff25f4e9c46e166
    mem[704] = 0xf223522cda356fba20451afeb45d44c1f008912e
    mem[736] = 0x128c90c73584e8f30eefb74d82f7ae5a0f2abd3f
    mem[768] = 0x96d11acb5f817083fefe4e685ed00a5bc1cd2e94
    mem[800] = 0x2c6bcb4ce325b10437cffda89c2532013a61bd67
    mem[832] = 0xc8630e5a3384654a616b62e0341c2ed8c80ab2c9
    mem[864] = 0x82deb78b24c7d1747fcf357f9f121e527af9ca36
    mem[896] = 0x8853dbcec42ba1fad8531923e95600b4a183f5db
    mem[928] = 0xf54b4772efd5b5b5703943c3eb78c2e6ae135d13
    mem[960] = 0x54267a6a958cd871993a389666d429ccc0ea8107
    mem[992] = 0x689a976b1babad075510d20fa3abb7a8bb25eb
    mem[1024] = 0x1f58764604bf0f5e549329878823c3e6d7789054
    mem[1056] = 0xed99733cf94afe4b9c40648253822a66adff29d7
    mem[1088] = 0xe9f0e4e53f2818922d6328c3789788adfc84ec59
    mem[1120] = 0x752f0a7fd17f024670826f5b8ad810bbee95d9a7
    mem[1152] = 0x9ca30a7c79b36a8567a2090f83a30489cb784575
    mem[1184] = 0x392683aaae3edd96a39f6eb897cf571124541989
    mem[1216] = 0x50c11b7c57ce945bfa4de65ee5b9607d125633a9
    mem[1248] = 0xbf7533e95a854e961b40f76d46e02b7bd9e4b256
    mem[1280] = 0x7a1b1b8830f6384bcfb35e0d5b259516e15df0b9
    sub_54eac8bc.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_54eac8bc[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_54eac8bc.length > idx:
        sub_54eac8bc[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xff16910ec61b40c7930eeac894a251bc73a120a3
    mem[1344] = 0x1477ff29eaa8082685f8a8672b8c582f6feb5ea4
    mem[1376] = 0x952ba24df6abe83dd7e9655e26ebe09bed6fb888
    mem[1408] = 0x394b32c8126b2b3765af08e7161409fe64d9cb43
    mem[1440] = 0xf6114b62601f29d80c191899d18e5765717a2e54
    mem[1472] = 0x1ac6da95054edf9f0272994ccc69a5cfcb4d6592
    mem[1504] = 0xb4897205bcaa96aa4fb42841d5bbb7ea16c7f1ec
    mem[1536] = 0x44e4881b898cf9b9c8ed0683e7d23609fa55334b
    mem[1568] = 0x94bc04af258243e1b945e3a0299f84e3364fffd7
    mem[1600] = 0xf84d82066357d18a6b49ad0bfc7c415283fd4a7d
    mem[1632] = 0xdedf6a096061e8520b68233c0b296a0016201b92
    mem[1664] = 0xd261291c4fdbd8c647ac160f022676ea278270cd
    mem[1696] = 0x5bb8eb5a5a76226c4e57ab8529197be963f15e08
    mem[1728] = 0x5084d63bfa9062c55f3f4508cf63d4d3723b9b16
    mem[1760] = 0xd9bd1ac8b8bf9da6288654cb6b422e4c28a41fbc
    mem[1792] = 0x1a67818a68e839f7b410ea63f9fc3363a8cd057e
    mem[1824] = 0x441ee85820d2b08b4ee51e47190dbc2ddcf6ac16
    mem[1856] = 0x45243d443ed652afca8836696116adea4dc460d
    mem[1888] = 0xce874cd5e1a1fe73bd8b7552281b7dfff86fa23b
    mem[1920] = 0xc4a02c9f4e2f09f0e2c681e3d65905f3093897bb
    mem[1952] = 0x8c96193e757e37a492f1a4c4841c8fbb6e8a9f14
    mem[1984] = 0x32816464356a10096dd8043efcdc31f14e2be77e
    mem[2016] = 0xef324094b740b4de09f4f3e30eb5adb724274fba
    mem[2048] = 0x635b4ff1e3172c8548c3354b85fa893dfe0f2586
    mem[2080] = 0x33a3283042e867c46b4a982617835a29a662ef08
    mem[2112] = 0x7696ae98704713ef80c66332a93c0b3eb4cf77b2
    mem[2144] = 0x4640ce9ef7f01013e7d974ba613b71d749c73477
    mem[2176] = 0x41e34e158a1df2e39cbc6d39ddb1cfd7cad5e43e
    mem[2208] = 0x378c6d682051905f05f67f2207956962298ff2
    mem[2240] = 0x668e5bb45f889aa4ed25e9ae29b649f6085d84d2
    mem[2272] = 0xc3e90ad121b9bb3a905fa61e82b3262b84f11532
    mem[2304] = 0x11fa0c4a33f2b9486fa8edfa1f0ff42e3aada8e2
    mem[2336] = 0xc681c8bc5e46be9a4f8e9600787e51bac6b81dee
    mem[2368] = 0x9db18f53fdc0c2859e18afc3daddb5cfe86950f0
    mem[2400] = 0xffd84530db27cc11d3ebf2b4854e3b2b53609a7e
    mem[2432] = 0xc39b65e9c984520ff61a0bd44804425643112171
    mem[2464] = 0x40c0c43891bf83b6d7836004ee38d5b436e71d4
    mem[2496] = 0x4049e4029b3b0b2daeefd23e10cfd4e1c120167a
    sub_9000dd16.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_9000dd16[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_9000dd16.length > idx:
        sub_9000dd16[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_9000dd16.length:
        if not sub_54eac8bc.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_9000dd16.length, sub_54eac8bc.length
        else:
            mem[2660] = address(sub_54eac8bc.field_0)
            idx = 2660
            s = 0
            while (32 * sub_54eac8bc.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_54eac8bc[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_9000dd16.length, sub_54eac8bc.length, mem[2660 len 32 * sub_54eac8bc.length]
    else:
        mem[2628] = address(sub_9000dd16.field_0)
        idx = 2628
        s = 0
        while (32 * sub_9000dd16.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_9000dd16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_9000dd16.length) + 2628] = sub_54eac8bc.length
        if not sub_54eac8bc.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_9000dd16.length, data=mem[2628 len (32 * sub_9000dd16.length) + 32]), (32 * sub_9000dd16.length) + 96
        else:
            mem[(32 * sub_9000dd16.length) + 2660] = address(sub_54eac8bc.field_0)
            idx = (32 * sub_9000dd16.length) + 2660
            s = 0
            while (32 * sub_9000dd16.length) + (32 * sub_54eac8bc.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_54eac8bc[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_9000dd16.length, data=mem[2628 len (32 * sub_9000dd16.length) + (32 * sub_54eac8bc.length) + 32]), (32 * sub_9000dd16.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
