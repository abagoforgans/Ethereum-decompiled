contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage26' / 256
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
    return code.data[494 len 6741]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_c0a35363;
array of struct sub_d79aed44;
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

function sub_c0a35363(?) {
    require arg1 < sub_c0a35363.length
    return sub_c0a35363[arg1].field_0
}

function sub_d79aed44(?) {
    require arg1 < sub_d79aed44.length
    return sub_d79aed44[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x227c8be99a9d5c18447a790127a00884c123e5
    mem[128] = 0x259f9e4649c1294932ed05453063b9b5816adc05
    mem[160] = 0x357038e52d9ef043d3ff5808131370a76effa1a8
    mem[192] = 0x22a6bae0d113ea6d3f0fd43327d5e19bd218ca6d
    mem[224] = 0x899e024e7f322abc7fe786a18ed39fce528dfb87
    mem[256] = 0x7f3a47b32d174327b7e37ecfa8e6849a6661103c
    mem[288] = 0xaf2d2f35b9686c8a4f4d1b65450165e9375c9e7d
    mem[320] = 0x70ac2a61f4d3ff6f1a32da039df39f5c40f82d16
    mem[352] = 0x8f12000da8eb877b1a3969ce0f0bc5a4a012d5e4
    mem[384] = 0xfa5e4d76dfa5593064ec566650f4f2ac9ff146e8
    mem[416] = 0x7ea70ee42760a3f2dcbda039e3a0d31e30175012
    mem[448] = 0x81e97d774dae9a6acdceff99859b83c5d69a6b75
    mem[480] = 0x41b68360b5209d31a89eec16bc449ca29b88337d
    mem[512] = 0xfb3fd3a2d5f3d76fe0b24e5ca529e418b1e52648
    mem[544] = 0x8397b3a65367ec2a3856188b08608e510cad641a
    mem[576] = 0x8cc4f18721c6260400f86567e82e8e0f00b9b204
    mem[608] = 0x6cfdec305e5d2cb8241db41299eb540b0ac319
    mem[640] = 0x9eef7d05ab8ef8a57687ee10d524cf94bcfd2b15
    mem[672] = 0xf863511b11c12f79159bc1cfea8525de27490144
    mem[704] = 0x98980b997e393b8d6104a9dd0afd28a7ecf463cf
    mem[736] = 0xe983fbc2c7971c8f20a9b7388f4e376dfc2e5090
    mem[768] = 0xd71eb60eb7c2e5983ddec007a2a6c22916627b77
    mem[800] = 0xaff2fd4d0d14fd2b5a2fb02a2fb0e4c68c908a80
    mem[832] = 0xa2c63c866ca191361ad674d5b80e85090a493bb0
    mem[864] = 0xbd61f4a784849ea6d7cd327423fa6b78932d0603
    mem[896] = 0x21bc7280773f12fe7e8978d64f9b737cfa53e587
    mem[928] = 0xc94eec0966e8347b4ae850fbeed1d8ac8141444a
    mem[960] = 0x932d399ac824063ad2fffce6a236d9ce0139df0b
    mem[992] = 0xcd0e45f9b79e7397da4893e68b8deafc05da753a
    mem[1024] = 0xad1f3a038486d27dc2c1a18cded6e1d661940cc8
    mem[1056] = 0xdbac60bf189dd78da7b6b5b49b43bc1414a515cb
    mem[1088] = 0x562dfad9006682b7b3acffed9a31343e277f9221
    mem[1120] = 0xfdc732d051929ef19cbe0d45c6f2622daab2cd
    mem[1152] = 0xde6f60b135d90085444264c674b00e92f879a59f
    mem[1184] = 0x6e1ee5207ba8be066728dce0e6f810166e20d8aa
    mem[1216] = 0x6a56f81b5c1bab5939cf3df4abc538e61287b8b7
    mem[1248] = 0xa214092bdbcf5c517b1dda025d54cb41deef2648
    mem[1280] = 0xa8def7cbc1f3d6b2bec3188c9ad77585a66606c5
    sub_d79aed44.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_d79aed44[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_d79aed44.length > idx:
        sub_d79aed44[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x36e60345c8a666f67c5de1c993aa7a964a7045
    mem[1344] = 0x807d4ea2ad8515cdc7fb83509f4439e31486ca11
    mem[1376] = 0xf531bcf23ec03bc9587c470622258255355d02bf
    mem[1408] = 0xbfa1da139a52c0994d06ed2f086c5c1f3e4721e8
    mem[1440] = 0x602c5de48b76f7657c7c2772995d2c4dc7a489c2
    mem[1472] = 0x6395a95c24d70e36780a2f602b68052121a0d5a8
    mem[1504] = 0xe5256055017d4630238351a1a310c53602ca9b48
    mem[1536] = 0x94e18c6381c70e8562075df860a3fd685505d9f9
    mem[1568] = 0x1398a9740dcea17665a66311fa94ca5d7071e849
    mem[1600] = 0x8f1b9d90e12c84aada3757b224586ab06bac2042
    mem[1632] = 0x2823f4bde93ea5c546c8860557cb1c96668f04b2
    mem[1664] = 0x31655b93b0d56feb5dc0801a5d90941f499c29b5
    mem[1696] = 0xfe906966a2d61f7bed3215d405db60bd9fa4904e
    mem[1728] = 0x1f0b47ad1fe0ea6a25f6684524dd3116f5998b44
    mem[1760] = 0xfa60e15ce0c463cd6f894193ebb46ecd6ab0a6fc
    mem[1792] = 0xe63c9a15abb164cd13509ec30ed40a125cd8af18
    mem[1824] = 0xa880101c94f436824b5212c1a5299119089485
    mem[1856] = 0xeafb351079d5233e3b73024cf2e71799fb6da8af
    mem[1888] = 0x748e4bdf7759a61d3b8b8a314fa4de867f4ce873
    mem[1920] = 0x4e17a328e72003278df7522b1c48237566b5e7b3
    mem[1952] = 0xad8989879fa1cf4d488268aa5c7d236b3a7c66cf
    mem[1984] = 0x34c766ec3e1cad433c8c2cf6751d3be8595433ee
    mem[2016] = 0x5e42ca7e045958a83852337f90409515cc9b3578
    mem[2048] = 0xf678d9d5275d56b6f44342b1368c854c1349763a
    mem[2080] = 0x7fff363fec61e72c3fdf5ec21ac798037927225d
    mem[2112] = 0x926763dfe28b519f53da5b1bdea654c4a957d013
    mem[2144] = 0x7038c2a1ba21e9898265b043f4d7b180e596892d
    mem[2176] = 0x4a3f6df96bc5801caf38baa4f6d21a0eb38ab06
    mem[2208] = 0xfa12f962eea64dd7ddcfee48f045207e68c96025
    mem[2240] = 0x2f0cb292c849c233d08196b7d1dd2aaafaf22d58
    mem[2272] = 0x5ab7ffc5b0ec17889c7ff669d65009ce223c2624
    mem[2304] = 0xf41bc113491f8fda0de531323206452cc82fac1c
    mem[2336] = 0x5a6452d494051a96f96c15407a075afca045b6
    mem[2368] = 0xefa15052e17b0c6ed292ee812b4d9d53646075b0
    mem[2400] = 0xd398830001acb4197df5f4f6b819d0262b06f01d
    mem[2432] = 0x1d4d93a6e9f2b81d39b7fe1b1d870ff0c2dd30d2
    mem[2464] = 0x648137b452805683c2d2196cbb38692fe93c5539
    mem[2496] = 0x66bb7902ea5116154f13f16ba4206e46e5dffd9f
    sub_c0a35363.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_c0a35363[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c0a35363.length > idx:
        sub_c0a35363[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_c0a35363.length:
        if not sub_d79aed44.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c0a35363.length, sub_d79aed44.length
        else:
            mem[2660] = address(sub_d79aed44.field_0)
            idx = 2660
            s = 0
            while (32 * sub_d79aed44.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d79aed44[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_c0a35363.length, sub_d79aed44.length, mem[2660 len 32 * sub_d79aed44.length]
    else:
        mem[2628] = address(sub_c0a35363.field_0)
        idx = 2628
        s = 0
        while (32 * sub_c0a35363.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_c0a35363[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_c0a35363.length) + 2628] = sub_d79aed44.length
        if not sub_d79aed44.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c0a35363.length, data=mem[2628 len (32 * sub_c0a35363.length) + 32]), (32 * sub_c0a35363.length) + 96
        else:
            mem[(32 * sub_c0a35363.length) + 2660] = address(sub_d79aed44.field_0)
            idx = (32 * sub_c0a35363.length) + 2660
            s = 0
            while (32 * sub_c0a35363.length) + (32 * sub_d79aed44.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d79aed44[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_c0a35363.length, data=mem[2628 len (32 * sub_c0a35363.length) + (32 * sub_d79aed44.length) + 32]), (32 * sub_c0a35363.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
