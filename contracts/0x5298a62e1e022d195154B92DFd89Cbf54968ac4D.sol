contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage76' / 256
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
    return code.data[494 len 6655]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_bfb3d4c0;
array of struct sub_32e9cb28;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_32e9cb28(?) {
    require arg1 < sub_32e9cb28.length
    return sub_32e9cb28[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bfb3d4c0(?) {
    require arg1 < sub_bfb3d4c0.length
    return sub_bfb3d4c0[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x6e4bff5cd7c26c210bab952e1d6d1dc21d59c6ba
    mem[128] = 0x63fd53c8cee86f19557e634d816099de0d248952
    mem[160] = 0xaffbcc6437e2f46fdd5f6d1b4aae521809100cf8
    mem[192] = 0x71b1687680a32e724c45edbe0d005d0afed963c2
    mem[224] = 0x364cfa2423bf1df19ee7d9d2f6f7c6e095cfbb38
    mem[256] = 0xcb0bab36d36a4c893a4ce00699fbefbb1a08b9d2
    mem[288] = 0x1730e4730f3840029ce5dfaa1a212d0c34d287ca
    mem[320] = 0xa07d01482b005147faa9a8751dba87562724156c
    mem[352] = 0xcfd3014b5cd746b701f339f52a72528391b82414
    mem[384] = 0x22b8c48f10734fdedcffcaa2537f3ed1a8eb82
    mem[416] = 0xad721d87989f7c32939bdcd401a5bed9968dc727
    mem[448] = 0x39d95023ecfa0d2df23e030c0c531380148ec7
    mem[480] = 0x3b2cd9c220b8e0d6e18abbab896f80061af955bc
    mem[512] = 0xf80ce42ee1561586ce42bd3cb04ebcdb0dbcfa3
    mem[544] = 0xfba2c3cf070be516b40bed1e710df6f585fd8bc5
    mem[576] = 0xc1d12ac98b2e9aa7ea83594f274c453938a80960
    mem[608] = 0x3d9682bad19f1e3ceef6ed0a111c7d92208d6356
    mem[640] = 0x29ee443c0c970de79e34901ee791088c38cf5b63
    mem[672] = 0xd75f728614a3a44f9d596793a739c1aa757573cb
    mem[704] = 0x18a7ce889a475bbeec0d3a651dc3337e4807dfc1
    mem[736] = 0xa681529aa732f5172b4a73ab46f990892d2b14e3
    mem[768] = 0xe7df04324fb0c298ee3b3ff3eb80a5a4235f1886
    mem[800] = 0xcdff6c4a75035fc05de373293e58e7a3827dad34
    mem[832] = 0x63a14e982f3cbe185d73aae1c0132efba64c98a
    mem[864] = 0xfd185d3020384d9eac2dfcff821727d0a4f9e51e
    mem[896] = 0xb5a0d50dcef86e7e5d3eacce03b14bddfa8c8709
    mem[928] = 0x7d88f177c81ab5f6551901ed0a0227aa989e7d2a
    mem[960] = 0x1233bf6fb2a2230d75e26f3dfe7d394a2ad770eb
    mem[992] = 0x48a653e9e77d17121a3be9a0a26e89d753327925
    mem[1024] = 0x46c6d4b38ebbf43d8fa8e516c744dc0973feb33f
    mem[1056] = 0xd318140dd3b952200f5c56d58c3b7543e49f7848
    mem[1088] = 0xa9d5f0c4c232b1cb451316e44fe15d2871e39a64
    mem[1120] = 0x6a048d79ca07a1a7f5c386fcde22b082c405afe6
    mem[1152] = 0xbe46b12cd854506764e82f5f31f81be374d7c568
    mem[1184] = 0x612b9411464a3aae97bc0aea8758108b046cf27b
    mem[1216] = 0xd8c74e135cf68db83719611940b5b5666249ae92
    mem[1248] = 0xbbb64b268c7d2ec6acbc25f4daccd79470398508
    mem[1280] = 0x211abe7890278c9ad300cca3a9fe9471d84b1e8
    sub_32e9cb28.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_32e9cb28[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_32e9cb28.length > idx:
        sub_32e9cb28[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xc319be650b799a7d49e82ffa8ad2389cc124e84c
    mem[1344] = 0x326dd60f4c3c7dada0f33b5d05cf2b26eac62768
    mem[1376] = 0x1fbbd1cef775eff433faeda5cf4729eb4f1c8b5f
    mem[1408] = 0x9cf846b1f76e83bda3b41b99d1f01334bc37a239
    mem[1440] = 0x48f4e0b86148794a5560644f0d53f68fdc35b187
    mem[1472] = 0xb465ce864175e006ad27406a1eb2e63c71dff352
    mem[1504] = 0x916c4323cfff514aa551dc6a8b4ad84815eb657d
    mem[1536] = 0x92ffbb4ce05a9c5b23ccc37446cf50488f4aa56
    mem[1568] = 0xb1954c0bdda0d0b07895dea14826d56e8f5f4c75
    mem[1600] = 0xbdf19b849c05aaa483a4fb0cef432ebbcf19db
    mem[1632] = 0x4595a28df03e6a29b84f33f47faefd555dada7f3
    mem[1664] = 0x5cf8578c6c644973d41221979b0d16ebd03cd9
    mem[1696] = 0xef3a15d2675db7eb0cb9a2639311a7460969d89b
    mem[1728] = 0xd143d6123c72fcd8bf67025b4f69713dfcaae717
    mem[1760] = 0xd77150fedec1fa206d268104935e23e4e86c6b69
    mem[1792] = 0xbe271b1800e822262bc5000fb6dae4866cbb893f
    mem[1824] = 0x19bf0caf8bdfcf9991292a5571dc686cb41ab14a
    mem[1856] = 0x42b7d3338344b786e8dc28df03f74cb80dfd696d
    mem[1888] = 0xcf251965e7bb709c4855bdafbb88ae95eca90cd2
    mem[1920] = 0xda542aa09727fd813afc4c7459c57466f1117240
    mem[1952] = 0xd4bb209fab161a00f4efd7d1959eefae0663346e
    mem[1984] = 0xcc17ac4e26a183ba3566869c58fd9502792a8bc9
    mem[2016] = 0xb268c68c6e66f2148ab7dfd184ce4f0ffb50204c
    mem[2048] = 0x76502a9dd2e2d451f4f6fa3139484b3493b6dd0a
    mem[2080] = 0x95731e47ff94b5d55306a048f52b2eca6535f7fa
    mem[2112] = 0x6e1968ef17d6c68158fe452bf44e94c8ccccd928
    mem[2144] = 0x7802cc093b245c2a427547ddc51e7667f140f70
    mem[2176] = 0xa7967ebfd2b896f9e538db1e55bf43ed0aafde26
    mem[2208] = 0x8fee061bd46aca84447c6233123cdd10468e8168
    mem[2240] = 0xf8be85d481c449fa7125f57501b6ae3de2722a8a
    mem[2272] = 0x8b35db12324cb00f63e4803cecb17d026aaa8eb9
    mem[2304] = 0x2c8e65137bf9fe327b6e3e68a17ca8f32375b729
    mem[2336] = 0x9ac256b42b366b16f48242ead6ebfbc62dc9441c
    mem[2368] = 0xb60f9486da91317efdb109d6b21ff319dc487fda
    mem[2400] = 0xe4527c250e0d2bb98129d3968e44dc81a82cb42d
    mem[2432] = 0xbbd391691c0db49108b9ef9a672d218f26466041
    mem[2464] = 0xe633f3f4b09e62ae8be2a9158990a1f0a84ecd40
    mem[2496] = 0x6450a90db44095310035b2592536b8f6cb96aa4b
    sub_bfb3d4c0.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_bfb3d4c0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_bfb3d4c0.length > idx:
        sub_bfb3d4c0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_bfb3d4c0.length:
        if not sub_32e9cb28.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_bfb3d4c0.length, sub_32e9cb28.length
        else:
            mem[2660] = address(sub_32e9cb28.field_0)
            idx = 2660
            s = 0
            while (32 * sub_32e9cb28.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_32e9cb28[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_bfb3d4c0.length, sub_32e9cb28.length, mem[2660 len 32 * sub_32e9cb28.length]
    else:
        mem[2628] = address(sub_bfb3d4c0.field_0)
        idx = 2628
        s = 0
        while (32 * sub_bfb3d4c0.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_bfb3d4c0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_bfb3d4c0.length) + 2628] = sub_32e9cb28.length
        if not sub_32e9cb28.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_bfb3d4c0.length, data=mem[2628 len (32 * sub_bfb3d4c0.length) + 32]), (32 * sub_bfb3d4c0.length) + 96
        else:
            mem[(32 * sub_bfb3d4c0.length) + 2660] = address(sub_32e9cb28.field_0)
            idx = (32 * sub_bfb3d4c0.length) + 2660
            s = 0
            while (32 * sub_bfb3d4c0.length) + (32 * sub_32e9cb28.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_32e9cb28[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_bfb3d4c0.length, data=mem[2628 len (32 * sub_bfb3d4c0.length) + (32 * sub_32e9cb28.length) + 32]), (32 * sub_bfb3d4c0.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
