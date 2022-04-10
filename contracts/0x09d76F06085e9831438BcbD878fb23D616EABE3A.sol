contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'storage102' / 256
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
    return code.data[494 len 4873]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_8c223920;
array of struct sub_c2f33cc1;
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

function sub_8c223920(?) {
    require arg1 < sub_8c223920.length
    return sub_8c223920[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c2f33cc1(?) {
    require arg1 < sub_c2f33cc1.length
    return sub_c2f33cc1[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xdccb542e232a235d3668f5124ad35a36613dfaf3
    mem[128] = 0x38c4de4dd54bf1e9caa7f430c055dbacd92358cf
    mem[160] = 0x9c6a3ad80d721cc821a50f88358283286f9b482
    mem[192] = 0x20ee4749251fd021a85496ff0eb7e9b6f248d769
    mem[224] = 0x663278856c5c99e8efb186370adcd0db910b3898
    mem[256] = 0xd730d52dbafe27382df0bedf18014ac53645d438
    mem[288] = 0xafb25c793571d48413c346721aba49cf300b297f
    mem[320] = 0x144b58baf492c1a15e6f8533a18ea12463599ddf
    mem[352] = 0x45609aa85ffeedf7fb1a4f71112813bf9a80fbbf
    mem[384] = 0xe0514be62a9cc4fbc06607536bbaa265b1e407e7
    mem[416] = 0xb3aa5ceb1ebee9939079067213d22c2b3119ca34
    mem[448] = 0xfe0b2a50779df3918c6d3cbfcff3344ce30881ac
    mem[480] = 0x229215d943230542a8ad1c85228d407cfa30275c
    mem[512] = 0x6c4728c5f625765112c510b35df9ee70719428e7
    mem[544] = 0x65c26c2560f5e0f1a74c93b5454a031f40e2f0cd
    mem[576] = 0x9fb6f203057384c5fdf4ac6380eaca93adb31141
    mem[608] = 0xdf0f9d22ec8248a7a1494269fec46c4305a8c8f6
    mem[640] = 0xc599c52b25d0af77d1384cab494db9393e57b7ac
    mem[672] = 0x4cc8fcf69d9d022f7c9d68d01bd16f238b83dabb
    mem[704] = 0x7ac737aabd24ebf21334e430e24fd6b17dca30a3
    mem[736] = 0xf1b348ca463e69f599432abdf32fad54ba5a5bf7
    sub_c2f33cc1.length = 21
    s = 0
    idx = 96
    while 768 > idx:
        sub_c2f33cc1[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 21
    while sub_c2f33cc1.length > idx:
        sub_c2f33cc1[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[768] = 0x459999c14975665a4a14f4d4c00b2533f6172acd
    mem[800] = 0x61ec2527bae25d56300baf07c9b836f2f588138
    mem[832] = 0xfb595ecbc3d03871fc98b07bfdeeba49ca338bd8
    mem[864] = 0x7f60b7193de735ce59a88bb230966fa7a0279f18
    mem[896] = 0x44b18cbd57c49f2e49147640f1f77441686853de
    mem[928] = 0xca99de453375757291b4a2054899b3d7959ad70a
    mem[960] = 0x8be7bcb450beddff155a272ec16c732e469f2ee8
    mem[992] = 0x56821bf3d31e19c4fbab8f3c1e3d4ba4e887d4e4
    mem[1024] = 0xc39a3c5bf110a2e6c78293eae86763fec0f087f2
    mem[1056] = 0xee9a0aca88f27ceceeb4111aee8df85a8ed4bc52
    mem[1088] = 0xf72e76ab3feb7f5bcf27c0d1a77f8a83d59754fc
    mem[1120] = 0x992bd88bdae7adeef41f3d68dafbf01ee52caeb8
    mem[1152] = 0x63351755fe031f623224f8114e309c866c4eca9f
    mem[1184] = 0xc481f9009176e7aecf82748e4c4fdd25835be808
    mem[1216] = 0xe98d7bfc1f8cc7ec75d7290cef49e01ad0c3fd7a
    mem[1248] = 0xa5385711a229da0170b3d0bd69a605e4ab4c3a08
    mem[1280] = 0x30d40fce58013d88c2e30abed00b6460e8b969ee
    mem[1312] = 0xad0e7f0fa67975c99355322f89b4aba8fddd870c
    mem[1344] = 0x29e343cab15d2de17ff8320716f91b730f1d696b
    mem[1376] = 0x3806efbcc78794f35a94ac9d41fd7b41d9029d2b
    mem[1408] = 0xaf624509951698eb1ce49eeba426e1caea34c79
    sub_8c223920.length = 21
    s = 0
    idx = 768
    while 1440 > idx:
        sub_8c223920[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 21
    while sub_8c223920.length > idx:
        sub_8c223920[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_8c223920.length:
        if not sub_c2f33cc1.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_8c223920.length, sub_c2f33cc1.length
        else:
            mem[1572] = address(sub_c2f33cc1.field_0)
            idx = 1572
            s = 0
            while (32 * sub_c2f33cc1.length) + 1572 > idx + 32:
                mem[idx + 32] = sub_c2f33cc1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_8c223920.length, sub_c2f33cc1.length, mem[1572 len 32 * sub_c2f33cc1.length]
    else:
        mem[1540] = address(sub_8c223920.field_0)
        idx = 1540
        s = 0
        while (32 * sub_8c223920.length) + 1540 > idx + 32:
            mem[idx + 32] = sub_8c223920[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_8c223920.length) + 1540] = sub_c2f33cc1.length
        if not sub_c2f33cc1.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_8c223920.length, data=mem[1540 len (32 * sub_8c223920.length) + 32]), (32 * sub_8c223920.length) + 96
        else:
            mem[(32 * sub_8c223920.length) + 1572] = address(sub_c2f33cc1.field_0)
            idx = (32 * sub_8c223920.length) + 1572
            s = 0
            while (32 * sub_8c223920.length) + (32 * sub_c2f33cc1.length) + 1572 > idx + 32:
                mem[idx + 32] = sub_c2f33cc1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_8c223920.length, data=mem[1540 len (32 * sub_8c223920.length) + (32 * sub_c2f33cc1.length) + 32]), (32 * sub_8c223920.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
