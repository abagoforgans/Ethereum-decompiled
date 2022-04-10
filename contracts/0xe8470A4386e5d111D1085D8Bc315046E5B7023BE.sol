contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage3' / 256
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
    return code.data[494 len 6894]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_3aad7d1c;
array of struct sub_1a12f4cd;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_1a12f4cd(?) {
    require arg1 < sub_1a12f4cd.length
    return sub_1a12f4cd[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_3aad7d1c(?) {
    require arg1 < sub_3aad7d1c.length
    return sub_3aad7d1c[arg1].field_0
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
    mem[96] = 0x9f51513f912c2148e5b02b9d64d816f7422ee261
    mem[128] = 0xa1443f6765f3b2d82441398b9ac14f3755d3fdb9
    mem[160] = 0x5df26f2af73ddc01c14c94052981ffcd9149ea11
    mem[192] = 0x125ced83d1bfbd5ff250baef4c612816eee01ff8
    mem[224] = 0xb348a2d9d392db860324536a5a40e9b18df4a712
    mem[256] = 0x2fb2da2aa1789902ac3df30413b19276341317
    mem[288] = 0x4d4c37155f2bcc630b4e48334be2ffa2659b2f89
    mem[320] = 0xf15afdbe3d8df0ee768f943002deb3bf3f3ebc86
    mem[352] = 0xd45e35c81cf8efec3621b6b660a9539487da1428
    mem[384] = 0xa398eaed5570d4852197ee1d93a23f4f7deca2f6
    mem[416] = 0x79dcd8d41859ebd34a1c1a69adcf089ab206b2c3
    mem[448] = 0xbc377b7910f2d7c818c6b858625f8144b54303b3
    mem[480] = 0xd01a7418cbb6b9856d53bc452dc2744f3f852878
    mem[512] = 0x1b6bd04a23825ebd0b536326bfe59ca13356761
    mem[544] = 0xb0fb18334e54a4ce487b6fb1530e1678fe8bc671
    mem[576] = 0x70e017867e2464369b0ff7cd0374a8ced4a34924
    mem[608] = 0x465a07a8be4d22f28846bbd653347a67b056adc5
    mem[640] = 0x3ca88e208b5f14213c8335b2b045543468dc5007
    mem[672] = 0x23f09b32df115d297a29a3081b82525b371c9c4a
    mem[704] = 0xd3b107c80cd5608488bd1e76ed21dd22f0ab8e
    mem[736] = 0x33d303addb3afb1096edfeca06b4f09deaf2bf86
    mem[768] = 0x5d04e8adbf60548c645cbd3d2b711af90534214b
    mem[800] = 0xe57d464e5ea7edce0af0a407bdcc82f40a9bd09
    mem[832] = 0x9019372a7d375f6e88d8b116350ccfe3b3f9f74c
    mem[864] = 0xd178fc96b8c43d87da7da51f771131604e6429f6
    mem[896] = 0x4835192b64458c5d5fa73422cd4798953f57267a
    mem[928] = 0xde2a215787aedeef9a78d838dda2d95d1738894a
    mem[960] = 0xd6a972219b072f205b25eb9d8123a24e1f099752
    mem[992] = 0xe312c4decde60c802ef6018276de0d74be0f5538
    mem[1024] = 0x45f7b9a397e4362f90a4a29a00e77e5252b7c526
    mem[1056] = 0xe6c128e1d55beb2c25a1a43d80bbc569b629fabf
    mem[1088] = 0xc8c57a2f2bd6fe70b50d505a8b2a10b9ca1f8d48
    mem[1120] = 0xc96aae8747f6bbc2c762121c48595cfdb0a6dfd4
    mem[1152] = 0xc634c8b032ca2f899e52cd199afb605adec139f1
    mem[1184] = 0xb91c0b4d72acfd81c43c21641424c019ce90536c
    mem[1216] = 0xf6c29e2785818202fac838ddd97ddf76c2b150
    mem[1248] = 0xe88df66f55f595a9c09d69df957e7a3c840640d9
    mem[1280] = 0x17c906d870b82f3f0db8f0313b523bcd09a10366
    sub_1a12f4cd.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_1a12f4cd[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_1a12f4cd.length > idx:
        sub_1a12f4cd[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x97f3f789856479c82b4fa329eceb1c0523c4cfeb
    mem[1344] = 0x5135236523cd46ce744feea9195049bdf465e961
    mem[1376] = 0x52bc37ee6b005a1e092868c9dfb830dd92793c89
    mem[1408] = 0x4b1f860c566a35e3341e83894c663be7eae7d2e9
    mem[1440] = 0xf973d4a7f850b932db68ec823c68950ebc763e96
    mem[1472] = 0xd3eea3555d8370abb5543546bf449c9d51f4e7
    mem[1504] = 0x1ea01e8da9fd2ca34a1217017a2f1f717487dbbe
    mem[1536] = 0xab8568719957eba2b9535e8dc03a4178673a01fa
    mem[1568] = 0xcab0781f317eb514d412c2aa55b122012ba34e27
    mem[1600] = 0x60596fd88c9ca2f5c6fbb8dc962c714608103896
    mem[1632] = 0xe50cdd48f44e329d1381bed17d54db65ec9cfd81
    mem[1664] = 0x57a185fade8e87f285e0275cfc2b85373312afc2
    mem[1696] = 0x3d090c6c471c8b80ceada80cb76fa5ee5285c25
    mem[1728] = 0x9a0a9d3e293e48d955c0d049df1cb2c84c393d0c
    mem[1760] = 0x556f5ccd2cd28ee1f82cb391636d9961cfb1bf
    mem[1792] = 0x381dd312cb1fa4e01514989a289834d7f1fb6a2b
    mem[1824] = 0xebc95bc7925d5b6995e12c77a50d3f12fa2c73f5
    mem[1856] = 0x9efa4879a5c69acdb1929f94043791b55d3373f
    mem[1888] = 0x3ab3c25f4643ef25e5c566470a3fb88f21443b51
    mem[1920] = 0x23e9efb7937d8ab645131e97e4490900480e65
    mem[1952] = 0xa84ce80f5f5a691508533578ea2c818134f6bbd1
    mem[1984] = 0x6e89b4e4c1fe0e91c17077f139c92fc7e04cfab9
    mem[2016] = 0x770b8fa87ed9218601c34d095ad09e417aed192c
    mem[2048] = 0x8ce272991cdb49aa937fd33d49585825369e050
    mem[2080] = 0x736cbcb5e2a757f7b4434863fb465d0fba48640e
    mem[2112] = 0x4337ea297017c02e57b65fbb64cffb13ada689d0
    mem[2144] = 0x35ac307d51aa63943c00a8aac568ba70e3e51f28
    mem[2176] = 0x439b4e9ff2f360548fe506e2c0d2325e4af7e039
    mem[2208] = 0x57aacdbf1b8bd38e0de142433a52c6b30de2187a
    mem[2240] = 0xd53c53347871187e5410437495dc410df559e958
    mem[2272] = 0xa8abbdd6057111c07317bac1cc888476a70470b8
    mem[2304] = 0x1e10b45e06a45f8b67fb8aa2a277f7e1e206a61d
    mem[2336] = 0x68015c178d398bf36cf113168f83e453fbc5add3
    mem[2368] = 0xfd57554ba68b1945157a32a83285be0fe3fa0ca8
    mem[2400] = 0xadf714d7d6ad6a5e0ccfa0000066b243cad92d0d
    mem[2432] = 0x5a68391432d25e4f00bbe76eedf604fe637f92
    mem[2464] = 0x8601a6654f020805c47352f6d8aa53009c550cb3
    mem[2496] = 0x719abe399996d16b7bed5d5bec8e0ff357bf3fd8
    sub_3aad7d1c.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_3aad7d1c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_3aad7d1c.length > idx:
        sub_3aad7d1c[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_3aad7d1c.length:
        if not sub_1a12f4cd.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3aad7d1c.length, sub_1a12f4cd.length
        else:
            mem[2660] = address(sub_1a12f4cd.field_0)
            idx = 2660
            s = 0
            while (32 * sub_1a12f4cd.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1a12f4cd[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3aad7d1c.length, sub_1a12f4cd.length, mem[2660 len 32 * sub_1a12f4cd.length]
    else:
        mem[2628] = address(sub_3aad7d1c.field_0)
        idx = 2628
        s = 0
        while (32 * sub_3aad7d1c.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_3aad7d1c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_3aad7d1c.length) + 2628] = sub_1a12f4cd.length
        if not sub_1a12f4cd.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3aad7d1c.length, data=mem[2628 len (32 * sub_3aad7d1c.length) + 32]), (32 * sub_3aad7d1c.length) + 96
        else:
            mem[(32 * sub_3aad7d1c.length) + 2660] = address(sub_1a12f4cd.field_0)
            idx = (32 * sub_3aad7d1c.length) + 2660
            s = 0
            while (32 * sub_3aad7d1c.length) + (32 * sub_1a12f4cd.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1a12f4cd[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3aad7d1c.length, data=mem[2628 len (32 * sub_3aad7d1c.length) + (32 * sub_1a12f4cd.length) + 32]), (32 * sub_3aad7d1c.length) + 96
    require ext_call.success
    emit 0xddf252ad: arg2, msg.sender, arg1
}



}
