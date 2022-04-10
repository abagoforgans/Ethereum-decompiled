contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage8' / 256
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
    return code.data[494 len 6678]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_bb87dbdc;
array of struct sub_3285aca0;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_3285aca0(?) {
    require arg1 < sub_3285aca0.length
    return sub_3285aca0[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bb87dbdc(?) {
    require arg1 < sub_bb87dbdc.length
    return sub_bb87dbdc[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xa601513f1911c23ff5b091c7d9c0aab1c8eaeb75
    mem[128] = 0xbb165a32b52b04f626b96eeed8a0b71f9bc101c
    mem[160] = 0x2b28ea10cb828ee446b46ca2c81e4789a17b1dfa
    mem[192] = 0x93a1ca8fe8bdd524a62e01a51313433d4b694436
    mem[224] = 0x582133cb4c762115a6125dae1674e539c4f58689
    mem[256] = 0xb13432cd2e16bee58a6d4bca5fd522a629a0234e
    mem[288] = 0xb67d346419be1e6f1d5f04417b909aed78d01737
    mem[320] = 0x81b5478d8ed551d4a1d20fe34e0362a775840404
    mem[352] = 0x5a4f208f3c6f0194ea3154be84056dc7973697f1
    mem[384] = 0xa4c3ea9ede31d0dc356076327bbe6be4b323195
    mem[416] = 0x8688bbacac1cb5ebec07801234dab33c2ab6b665
    mem[448] = 0x91c3b4ef468e38add38d398eb7953baaf42bc0a9
    mem[480] = 0xeb7eaae7334635cff7ce359d8a7731f1a5646b22
    mem[512] = 0xf4d463f9f26fec038fee6dbc0c4b3ad31f783126
    mem[544] = 0x9f5d50aa7b4a0db7eabe6993b7c606abbc5b03fe
    mem[576] = 0x3cd0e1a587d5df12cfa9f810b173dc4109359829
    mem[608] = 0xb7d8c75a7d68fb85b37da4079444243896f7335
    mem[640] = 0x5e4c528492775eacbf355c3d9f4400432a6589e6
    mem[672] = 0xf10a56b2ec64d61fa081fc37201990d1cb9b9ecd
    mem[704] = 0xafeadcf75eba7ce1b7a6ef65529060527858d5ea
    mem[736] = 0xe708081df316790fc87f81947d749d9f849de637
    mem[768] = 0xd18dc8894ed116cb1b1c3f4b777606268d8c8332
    mem[800] = 0x8a38f416c72e954005bccb662281741767187624
    mem[832] = 0xcb71109158b37794919d3df46aa502c5fcdda0df
    mem[864] = 0xbcff65ec2e87ac252e33bed82f9bf524bbc069fa
    mem[896] = 0x3a0dbc3c3967f7711122a1261d379f292c46e78f
    mem[928] = 0x73e4fdd18b7a2c061c1a3e4a2c1a95a24f702040
    mem[960] = 0x67f6e9c32b95dbfc8d5604285dac4561bcc8c6
    mem[992] = 0x39ae0cd66be3aa839404c6c533f49b3f9747d18a
    mem[1024] = 0xe7667f61087123bf47043b23f0c111fcd7fe339
    mem[1056] = 0x89e09fce31bc11a211e09f484ecdb278580bc5a8
    mem[1088] = 0xddfda64c0bd7b3325c294254d737b7026676cf03
    mem[1120] = 0x638f6d0d6f17a8538dfd82bea6103c8e6719517f
    mem[1152] = 0xbb75f245b143ead923e673b624d13e0ed254f1f5
    mem[1184] = 0x98135af868c0628e003ae66b236e954f9732445e
    mem[1216] = 0x4eb9cf82671b9a0bf8d0f2b1edac2a20b22dd8a1
    mem[1248] = 0x70f86ce1321a763cb7a248c2eba58e184183cb
    mem[1280] = 0x7206ddb3df0f391d12d1f8f04e8139f938c8b3ec
    sub_3285aca0.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_3285aca0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_3285aca0.length > idx:
        sub_3285aca0[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x2d18f7db89a5fc73da7b6ccd98dffdbbac96b70e
    mem[1344] = 0xab90b567c3c3f941c415457f4a0f841c334f285a
    mem[1376] = 0x9b1c16bfd7c424d1a5ae375452fecc7645018785
    mem[1408] = 0xc6757a2b8e1fcda85dbaf0ed45133de95ab8a8c5
    mem[1440] = 0x9f7df0250549af8cabf55af3a078fad6f5a695cd
    mem[1472] = 0xe9155406adf9a3e48e16c418fedfe71b31a216da
    mem[1504] = 0x83b976b310e5b3c7823c29bcd2ecf6192757f247
    mem[1536] = 0xc303934169046a159534ae313e95943af29084f4
    mem[1568] = 0x80b454b7ce12a1d01c18a2a604f3467ac783cbf5
    mem[1600] = 0x44c35cf795f986c75c0f70a916a83fa03e1a1d66
    mem[1632] = 0x821f6d37d312df60803f9c559841baf14e52c13a
    mem[1664] = 0xc82d97539e36fcda060eb56d02bdc92c00fabf06
    mem[1696] = 0x734af7d49d041dbfb9ec0dedbe7620d1a2f6fd1b
    mem[1728] = 0x7408eca271b2e0b5c63dd54dbe86f7905a6fb3b0
    mem[1760] = 0xf39bef8b4d371b778e8d51aac729ca2ca937584e
    mem[1792] = 0xc177f5f4432bfe9e10095b66ba8a706e9463469f
    mem[1824] = 0xfac4e525424a10bb19ce93e9989b17020d1406f3
    mem[1856] = 0xfd64b18aaf1fff57e43e5eb2aa725be5b21bcbe4
    mem[1888] = 0xeac70bbd138eeb932013a510be29a11e96bee5b
    mem[1920] = 0x94cbf4ce22f1ac282306182ad88fa062365e9052
    mem[1952] = 0x15e395aaa541574ea7b33a7803f67374c11c129
    mem[1984] = 0x8d576411f1fe218dfa1cd8e140d60eb724f2b539
    mem[2016] = 0x754937f75157c24a3649344d71bfd7962d5c7be
    mem[2048] = 0x1b5b048d9b066ad1d285406f3230c1aa5b99d6d0
    mem[2080] = 0xbf857127682e8f9a8e9e7788a596cc0df2807e9f
    mem[2112] = 0x79e6603622afbbdbbf244529acf6bcb9ac0d2ccf
    mem[2144] = 0x2eebfce4cd9cac0257b90ce2ebc0a2efed1c14fd
    mem[2176] = 0xb4b98eaf6e4adf26508f6277049fb5f1a828a4
    mem[2208] = 0xe653bfe2738f077a75ab41563fa1a4869cb4a5b7
    mem[2240] = 0xa4403c643446ee1addf5f3878264dd7810806b12
    mem[2272] = 0xb6afb80c9d6de7428a43ffb60ee97f30ad84082
    mem[2304] = 0xe47743a50006c9d5445107af644b9386f8831349
    mem[2336] = 0x35be5acd042335f9d865f11cbb886156fcef9e31
    mem[2368] = 0x7598535e0b13da76fea9442f786cef7945209477
    mem[2400] = 0xcc4dfe3061b2e0f890860201584fa8c74a5d8e76
    mem[2432] = 0x15a4416b8dcd6497d25849693b4de0eccc0c3ef4
    mem[2464] = 0x93ec74725d2a8af43e0256b32c04b803f007e74f
    mem[2496] = 0x803ffa5faa837bd317a54c814c2e0280efb47fe6
    sub_bb87dbdc.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_bb87dbdc[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_bb87dbdc.length > idx:
        sub_bb87dbdc[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_bb87dbdc.length:
        if not sub_3285aca0.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_bb87dbdc.length, sub_3285aca0.length
        else:
            mem[2660] = address(sub_3285aca0.field_0)
            idx = 2660
            s = 0
            while (32 * sub_3285aca0.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_3285aca0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_bb87dbdc.length, sub_3285aca0.length, mem[2660 len 32 * sub_3285aca0.length]
    else:
        mem[2628] = address(sub_bb87dbdc.field_0)
        idx = 2628
        s = 0
        while (32 * sub_bb87dbdc.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_bb87dbdc[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_bb87dbdc.length) + 2628] = sub_3285aca0.length
        if not sub_3285aca0.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_bb87dbdc.length, data=mem[2628 len (32 * sub_bb87dbdc.length) + 32]), (32 * sub_bb87dbdc.length) + 96
        else:
            mem[(32 * sub_bb87dbdc.length) + 2660] = address(sub_3285aca0.field_0)
            idx = (32 * sub_bb87dbdc.length) + 2660
            s = 0
            while (32 * sub_bb87dbdc.length) + (32 * sub_3285aca0.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_3285aca0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_bb87dbdc.length, data=mem[2628 len (32 * sub_bb87dbdc.length) + (32 * sub_3285aca0.length) + 32]), (32 * sub_bb87dbdc.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
