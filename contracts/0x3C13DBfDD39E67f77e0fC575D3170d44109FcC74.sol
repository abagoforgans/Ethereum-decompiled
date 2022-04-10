contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage35' / 256
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
    return code.data[494 len 6833]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_32dd93fc;
array of struct sub_8cf07bbb;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_32dd93fc(?) {
    require arg1 < sub_32dd93fc.length
    return sub_32dd93fc[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_8cf07bbb(?) {
    require arg1 < sub_8cf07bbb.length
    return sub_8cf07bbb[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad
    mem[128] = 0xf6b7206899747e136896078d8e4e4cb02ad7020b
    mem[160] = 0x880719a72393db8d85b25de6032bfe5c15652cd5
    mem[192] = 0x85bfbdd4c22f2d6bdb6cafb944e6276a86903d0c
    mem[224] = 0x96f5135c56260667711e3e7009c8996905f2c8ef
    mem[256] = 0xbac3d62e854a029afeebd1e17300cf8c7fe19c0f
    mem[288] = 0x6df44a972f50304491868b19847226c559384fd9
    mem[320] = 0xb0a2a631b8f41a4a01063a618010c334ef82094f
    mem[352] = 0x43628f51b696431d994ef0080556d664aa37bd5c
    mem[384] = 0x7e7b525823e60034bbc713be138c5b24c168ac52
    mem[416] = 0x927bc2e23d6092df226dd7669cbc38c6531ed304
    mem[448] = 0xa2152fc8b78770218d5ef1761f7303209b748297
    mem[480] = 0xd7453443dba65991e2e7562aa1d5518500f86678
    mem[512] = 0x738a96f3966c7b154801b97846e0a3b090dbcb90
    mem[544] = 0xe9f29766a2731d552a3a0ab4dee22ceff1c917bc
    mem[576] = 0xf47ea6d2b30cc4fdf3d116e64dbc517ada8721
    mem[608] = 0x62d2aa0b553039ff47f6b4692bc8f002606bb11e
    mem[640] = 0xdc2daf845e3ddcbd3e83f8800bcdd5780499471d
    mem[672] = 0x230b782f7e4252224c8dbee61ec85fa7dd62173c
    mem[704] = 0x97fecb5dcadacae29301c30f3be0072f0a553d42
    mem[736] = 0x82068bd967b63a38a8055b1483d847632dbbcae7
    mem[768] = 0xcf5b65bd6383e629abdf1685bfdb98604ab0ce41
    mem[800] = 0x24d08c1d8cf4be870a221bb920e0ed8a00a86fda
    mem[832] = 0x9c0fde6edae28ed41e113c703f8623a5f438894f
    mem[864] = 0x6f9c94e50218be50c37c23ae33ad907d0bdb4d29
    mem[896] = 0xe59fe0565932e22869c6e7b98e86a86f4d979524
    mem[928] = 0x248202ab3be994f84b32b7d426a6363090c9522
    mem[960] = 0xf2cc59c4a2d3bb2a02df71239ac20aa6f6596ec5
    mem[992] = 0x3d27192c082a6366bce67470154a0d23431fb6de
    mem[1024] = 0x5b0ab59a88b0196024e8c5883ce578150e5c441c
    mem[1056] = 0xf1d172c936f9ef236e9a049a954e5259b65a5de5
    mem[1088] = 0xbda66324ef5e6740192798bddd11e77af15a418d
    mem[1120] = 0x4bb33b2a223e58ec9550ad0c2db3e783b23be834
    mem[1152] = 0x758c79af8c6a5c31f1157b1201c39ca1991e7056
    mem[1184] = 0x2b642acfcb7e4a73ba1542fb0c774a9605870876
    mem[1216] = 0x4c27380c3d645d3abfee61727ec36a5efa82bef1
    mem[1248] = 0xcf750762fdf48423affa7ca138c791938eb9e950
    mem[1280] = 0x91fad640a8917285d072e5e49b95ffbc4b5c6848
    sub_8cf07bbb.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_8cf07bbb[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_8cf07bbb.length > idx:
        sub_8cf07bbb[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x2f6ef3fea45d465d13451b8a8230bb147923d967
    mem[1344] = 0x963b9c6ac15df256cbaf353c7fde0725363890dd
    mem[1376] = 0xc704cc2d3643637c2876b3ebf2319dd9bc0d78eb
    mem[1408] = 0xef9c0bd2bc66285fa48755e68a931a48cc52b3df
    mem[1440] = 0xacd7b6465e3e5d9c89eb690fe344018201eac922
    mem[1472] = 0x6aad3fe05220268f5657fb6d631af8d9ce35157b
    mem[1504] = 0xf05d1e9e0456262549457644cf90ddae1703f223
    mem[1536] = 0x792f1bb851feafd32a3906f0c7b42e87502b0f4f
    mem[1568] = 0x67db5ad535202877d85b82386bce459e6ca978f1
    mem[1600] = 0x6cda124e170119f2d8e6310949e8f93e389ac35c
    mem[1632] = 0x7b274c2fae87f1fbe9f050b0d046b527d29d659e
    mem[1664] = 0xc6ad7986d218dc468eb688216d163a98acd89832
    mem[1696] = 0xaca90e81acb48c6bd2976b9d24dae7e8c5919846
    mem[1728] = 0x7891f04ba52e6398aa0e1bc09f5d86646479f9fd
    mem[1760] = 0xaa174e0d00bce5dfa660c0e7b10633f61bf174be
    mem[1792] = 0x2846594f17e5470f8cf741fd51176d6f076ffd
    mem[1824] = 0x692bdea439fbdf07134c4ec0d43fa3e08a9517e7
    mem[1856] = 0xa15622d7e11bc556f67ad72cd46295375a9fd40c
    mem[1888] = 0xdca4ae54d7e0bf8b3f1e783bfbd68bd846bb8d27
    mem[1920] = 0x45b74dfeedabb2100865a7b091c801ef395be2c8
    mem[1952] = 0x674d578b608caad942d8fc633a5d660a79d587dc
    mem[1984] = 0x8e20f092c9bf627f406136a1a7348ce730b3f427
    mem[2016] = 0x1340ad7c322a9a8d3b5017448d2f0a373c40dc18
    mem[2048] = 0x457d0925117b504c1b6aab88855063e2af56871a
    mem[2080] = 0xa90fb8015f2b5407f6ce25dd4dceb5cba50515ed
    mem[2112] = 0xe8adeb97bd7bec46d77f2964a4c05d544cfba77d
    mem[2144] = 0xacd17ab75aabd38dc7f2959df0dea64a4da2368c
    mem[2176] = 0x41b826c73c1c4dd9f8f0e8fb8edc7d36346fb3cd
    mem[2208] = 0xbd1560779057a7c8ee5608b1fbe06631e0cc5a17
    mem[2240] = 0x6bc6fe1e5f9491004c453a09f6120bccfc790a3b
    mem[2272] = 0xe19a7544c76d41c3890ebf95218483d96b96d557
    mem[2304] = 0x622877ff4259c4c2367224c2a9f0e626df2f5605
    mem[2336] = 0x56ae765587ec1e49b7e7f3f007af2a1ad373a1d
    mem[2368] = 0x3b3edf38c81752e7aa82f0e84029fd32197e153e
    mem[2400] = 0x3c732cc91f504511480050962f54647852544e6c
    mem[2432] = 0x1f24e8565889c0d2341e2022d19b2f26496acab4
    mem[2464] = 0x2ff6a8f2e69a815d1dfb0bc4bf2da8994184de12
    mem[2496] = 0x4898bfeebe524b076e6a12a8f83622ab9d5c9c2e
    sub_32dd93fc.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_32dd93fc[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_32dd93fc.length > idx:
        sub_32dd93fc[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_32dd93fc.length:
        if not sub_8cf07bbb.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_32dd93fc.length, sub_8cf07bbb.length
        else:
            mem[2660] = address(sub_8cf07bbb.field_0)
            idx = 2660
            s = 0
            while (32 * sub_8cf07bbb.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_8cf07bbb[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_32dd93fc.length, sub_8cf07bbb.length, mem[2660 len 32 * sub_8cf07bbb.length]
    else:
        mem[2628] = address(sub_32dd93fc.field_0)
        idx = 2628
        s = 0
        while (32 * sub_32dd93fc.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_32dd93fc[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_32dd93fc.length) + 2628] = sub_8cf07bbb.length
        if not sub_8cf07bbb.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_32dd93fc.length, data=mem[2628 len (32 * sub_32dd93fc.length) + 32]), (32 * sub_32dd93fc.length) + 96
        else:
            mem[(32 * sub_32dd93fc.length) + 2660] = address(sub_8cf07bbb.field_0)
            idx = (32 * sub_32dd93fc.length) + 2660
            s = 0
            while (32 * sub_32dd93fc.length) + (32 * sub_8cf07bbb.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_8cf07bbb[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_32dd93fc.length, data=mem[2628 len (32 * sub_32dd93fc.length) + (32 * sub_8cf07bbb.length) + 32]), (32 * sub_32dd93fc.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
