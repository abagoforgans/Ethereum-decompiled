contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage51' / 256
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
    return code.data[494 len 6631]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_bdebc22c;
array of struct sub_9481e27f;
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

function sub_9481e27f(?) {
    require arg1 < sub_9481e27f.length
    return sub_9481e27f[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bdebc22c(?) {
    require arg1 < sub_bdebc22c.length
    return sub_bdebc22c[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x84f122bcb6ff70158ca40442debc2725f80a480e
    mem[128] = 0xb2edf2ecb9f174629370b158873721224d1c1825
    mem[160] = 0xaebef7d2df9bd722c224f4f6f40ceed4642ba794
    mem[192] = 0xfc51497960b189b04e13c2b889b01020816bbb09
    mem[224] = 0x7b2b249bd7738135bd87d4c21dcc68664f659e88
    mem[256] = 0x62259fd5195b7e83ce421e74279d599a7bf79138
    mem[288] = 0x6cea4dda70022820d427c4894f32aaaa3bf008aa
    mem[320] = 0xf52f54da9ca046761af84fa9f116cb0cee1a9d23
    mem[352] = 0xc35ac854fc172897b04d3317ff5611ae5536aaff
    mem[384] = 0xe907f847691308082dbc3f2bc1312d03b79b0ce7
    mem[416] = 0xe64bb046ab4f2a4f7fd9e1d6fb4eb45c5dcfc1f4
    mem[448] = 0xb1b4ade641f7b71e6405abf64f18b256e286395f
    mem[480] = 0x8526abbf06544d49191b73f5ea652d45f4269e
    mem[512] = 0x70dc0213347a4803f522ad4a10f000a39773a25f
    mem[544] = 0xd6d4ef998b3677db67e542849174c727afe86126
    mem[576] = 0x3ae205948d486e3a07acc79bd4734a1d3dd63f1a
    mem[608] = 0x71e97a33e4663198110e431fb68e91f0e4a5adf7
    mem[640] = 0x2d00f282a609f26ad6199f097e553e652080fb28
    mem[672] = 0xe8079a56f9917f264703d4e2327a4af7fdafb4c4
    mem[704] = 0x4ec07b6f35e5837b5e6e3e3e0298da1244284a71
    mem[736] = 0x2a6e203fc443f92e1d3df5d075d6bc7c1acfbaf9
    mem[768] = 0xdd7f45bc2091278e0594bedeb45e6b04ac29554d
    mem[800] = 0x5ab71c63dd9796a4a05f7e85a7070c28f1b8e619
    mem[832] = 0xce23fbc3bea128c6fb3f9cc24a6582da0dd0b723
    mem[864] = 0xf7f3e80fbabcfdaa473a366295d3e24bbd8b8076
    mem[896] = 0xd6acfff990c04277e236b65ce27a4b0cea23a313
    mem[928] = 0x2d6869bfca3f46524ad4d0bfd6b65b0fa091f55f
    mem[960] = 0xfa4421295369ffff61a4cf61ddf17d957c7c5e
    mem[992] = 0xec1d7bf5327ca704754d90279d62fc297fd4709b
    mem[1024] = 0x633928a602a07e797f31873a482f089f6a999b8b
    mem[1056] = 0x1db649eede1312873ccdc431f455d1a82a6d1556
    mem[1088] = 0x54d989bfb0ecc49ca000e7cf91d96c8a45b8109c
    mem[1120] = 0x45e832cd120ee2cccbd5aea2dad05d2917a602c7
    mem[1152] = 0xb3c68f799fb6d6429258faaccce180e90b97880b
    mem[1184] = 0x545958f5b852f969e51dd0f5bfdfaef466a4bb70
    mem[1216] = 0x293d583f54e7fa77aa8c1e731ac4752b71de27ae
    mem[1248] = 0x17a9b5ce7768e87be09e69f8d9a7d6adad35670b
    mem[1280] = 0x8243234d5831cfbba57e172f74073d1a75c5a
    sub_9481e27f.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_9481e27f[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_9481e27f.length > idx:
        sub_9481e27f[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x6446fbe843284f8080236a9e5d7b8b3d572a87b9
    mem[1344] = 0x15651a90326331499852737cfb08908c3ee5d495
    mem[1376] = 0xe57a1916baf2b4ac2e4a94a16a037a732139714b
    mem[1408] = 0x589f4535fd5f9aaaeb6216aa3cba81683b93e51f
    mem[1440] = 0x9c309cf1ccaef01648f4a3e0e90b0742c0819203
    mem[1472] = 0x4f60f8675bb5a811d64fe6ee16691a065aab22c4
    mem[1504] = 0xebad93dae6356e9b728cf5b1800d8b84d32ea260
    mem[1536] = 0xe2aeaed05113791eb407b329aee322d54d5ad2ca
    mem[1568] = 0xbf161afd4ac4646a9a0a3b7b7a648d793e9c53d2
    mem[1600] = 0xf9f24f9ec3cac815719ff8faabe316ff121a9562
    mem[1632] = 0x9c924b6951a37794838bc0d328ea966d4f9ab800
    mem[1664] = 0xdb9d21390d0080f0305f45a854a0387d5f8f8a7e
    mem[1696] = 0x1a2861d697bf0f4529f021a2c7a7970e7a0ac6
    mem[1728] = 0xa303c677f84aa07aed7ba7d02cf7101be4ab0426
    mem[1760] = 0xbf8b0dd21b518d77365b678fbf9a0fea98315601
    mem[1792] = 0x43099d011842a745c910fa3715c5129f444b9c0d
    mem[1824] = 0xa481998817dc58287a214aab16847a6b60808a71
    mem[1856] = 0x5af112cd37879e06b0287924340532cc3e113d70
    mem[1888] = 0xbe193f644e0cf1839f7a2318fd1438b361381b2a
    mem[1920] = 0x1d415475713589c0ae678e90c3fc1e4ddda1c15b
    mem[1952] = 0xa05631c09f9e332a6d0d8941afb5a60dd6b8af0b
    mem[1984] = 0x82c0d10ecb5ad6bc4b55f4e73c3163000a2ab596
    mem[2016] = 0xc7f9727ff48060e4391e8b3ac1adbef1b88e15ec
    mem[2048] = 0x822057ef0aa71282d304683cab7fdda83d7b3755
    mem[2080] = 0xbec3fda5a11ebc5e64971d771d5714c55a0fd0c1
    mem[2112] = 0xf0540d326341743e068e4fd432f1bdd6e15963e4
    mem[2144] = 0x13cdef1a25c67fd53df5d0878e8cacee639f9349
    mem[2176] = 0x79354242187de3c9376b4b4530ac273d3bc334
    mem[2208] = 0xfb3be4734d65e0f8c96bde3819fb484eb13c5795
    mem[2240] = 0xa1be4d3f93f0e3f83ae99a37b56342dc08065356
    mem[2272] = 0xcbbbd8c9af7323c544229abb3cd55e5a25dcff99
    mem[2304] = 0xf44c2a0f985548eafa3b9bde42e0de4a36022738
    mem[2336] = 0x4ee420ed10373ef23917b5715b446fc6ce021b53
    mem[2368] = 0xea42187be5d1d75a4f2e309d4360892c7988782c
    mem[2400] = 0x5f82cd93e1445684cb6d15bc8398c1cff5b877c4
    mem[2432] = 0x886c2c0b7b2f807dd0051554f4fe41292ff81df1
    mem[2464] = 0x172b77bfad3cdf1fc0b0d69b4dcb43e40a4ff437
    mem[2496] = 0x4787f7d1e51eb5f67ba7802df26140dc661259
    sub_bdebc22c.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_bdebc22c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_bdebc22c.length > idx:
        sub_bdebc22c[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_bdebc22c.length:
        if not sub_9481e27f.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_bdebc22c.length, sub_9481e27f.length
        else:
            mem[2660] = address(sub_9481e27f.field_0)
            idx = 2660
            s = 0
            while (32 * sub_9481e27f.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_9481e27f[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_bdebc22c.length, sub_9481e27f.length, mem[2660 len 32 * sub_9481e27f.length]
    else:
        mem[2628] = address(sub_bdebc22c.field_0)
        idx = 2628
        s = 0
        while (32 * sub_bdebc22c.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_bdebc22c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_bdebc22c.length) + 2628] = sub_9481e27f.length
        if not sub_9481e27f.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_bdebc22c.length, data=mem[2628 len (32 * sub_bdebc22c.length) + 32]), (32 * sub_bdebc22c.length) + 96
        else:
            mem[(32 * sub_bdebc22c.length) + 2660] = address(sub_9481e27f.field_0)
            idx = (32 * sub_bdebc22c.length) + 2660
            s = 0
            while (32 * sub_bdebc22c.length) + (32 * sub_9481e27f.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_9481e27f[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_bdebc22c.length, data=mem[2628 len (32 * sub_bdebc22c.length) + (32 * sub_9481e27f.length) + 32]), (32 * sub_bdebc22c.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
