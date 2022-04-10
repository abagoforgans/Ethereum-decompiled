contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage78' / 256
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
    return code.data[494 len 6659]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_e48eeff6;
array of struct sub_ff329569;
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

function sub_e48eeff6(?) {
    require arg1 < sub_e48eeff6.length
    return sub_e48eeff6[arg1].field_0
}

function sub_ff329569(?) {
    require arg1 < sub_ff329569.length
    return sub_ff329569[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xb5deb387b517d39b0211908d23c1189030167815
    mem[128] = 0x6e59c7a166419e9caa148536327938f60db8af9b
    mem[160] = 0x1790fb5a3afa68770148afd1b4d5232716ed4c5
    mem[192] = 0x35c894d8f5fad1f79d7cc82f6e266fd7f257a310
    mem[224] = 0x541ca621d6cfd7914948ef76a84d61bef264a8b2
    mem[256] = 0xd4b0722c55f275172f926ab73334762399f31499
    mem[288] = 0xc07031c9de6fda8e325ea7251715de70c5bfafcf
    mem[320] = 0x5d3e681526e23ab5625dcf4e51f4ef228e96f28a
    mem[352] = 0x79aaf757b752d8898ead4dbede697646f186366d
    mem[384] = 0x3d894e1114c527a132be5635c31536e7e5bd0e7e
    mem[416] = 0xecfc63a6bf9911805886226fddcd9c8bad34f7b2
    mem[448] = 0x8a8a272d6d011296dd507bd8bd58be0fdb5a3c12
    mem[480] = 0xbca05034febd346226232a303ba21554c1b52a22
    mem[512] = 0x606f47baaf600e96e521cf6542c1086219605cab
    mem[544] = 0x5ea666a5923a6c74b9d8e866fa3fb2d7adc7d438
    mem[576] = 0x87fc9aeebbdaa1ef97b3941cd579be80af29f02f
    mem[608] = 0x202503cb39b6586cd932ddbdbcb20ac70dd2fe78
    mem[640] = 0x2056d46ab6a12a51dbcf27ccb69488d50409e2a1
    mem[672] = 0xbf4285272a529977b012d6a9b469a8c421c3dcce
    mem[704] = 0xfa0e792b069ad8cd63b3e4b1d944edb90f1b132a
    mem[736] = 0xa6756a88f181718bd04f5cd76addbd50c7737c22
    mem[768] = 0x4b0df408969d966a6ff6bd47e01e56e2a3ad3c4c
    mem[800] = 0xe24c6b392470adb32d5147999f5ae0e6260c3d59
    mem[832] = 0x91a6a7f6627792ddecf89a6220351b8d1c675f1b
    mem[864] = 0xd602079e6b25e337df78a89039d5dc9be0653ff
    mem[896] = 0x211cb161b2dd0ef74d8a0aebf79571f58ee34a0a
    mem[928] = 0x8690c1425d771312e32362a0f13ef7f7395b7700
    mem[960] = 0x49b9759a95158cdd7d54200901f55d0f18b1994f
    mem[992] = 0x9d8b5f4ae02a0c68540f15347a67787d8738944a
    mem[1024] = 0x3d36c30cf23918f627232aa8e9f16ababfa75122
    mem[1056] = 0xac789bbc4b9e72a3ef679be0367a58ae66943b08
    mem[1088] = 0xa8dc213a610981aa73820c250b669faa2ec3ceeb
    mem[1120] = 0xa202fa01d146abc845b3f820f663c5bf9b9c0b76
    mem[1152] = 0x3bb708df52f4388d3891eef57c29a87ff24bc558
    mem[1184] = 0xd5ea00196403801a0657911988ffaff8de9395bc
    mem[1216] = 0xc80e706f1a3767113dec6303b52e13b1bd886e4c
    mem[1248] = 0xe701cb71fdef527e3e426957080ddbfbe2ca588d
    mem[1280] = 0x4acb1c502b722b95d92628addd4ee9765a89ef51
    sub_ff329569.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_ff329569[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ff329569.length > idx:
        sub_ff329569[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xd1ae134a996b0aa78e5f461c685dcfb61083ed50
    mem[1344] = 0xf67e7fab3c1aa89417373ead389f9fc876b74897
    mem[1376] = 0xbd7a3d76ff957b962ce12ae3288f4ec6a65a1595
    mem[1408] = 0xe7723b92c508383e73238217815c4ff6e8d5b007
    mem[1440] = 0x81996c638e5ec18008080260755f76b2c412deca
    mem[1472] = 0xd866d87376194334d1bff88d40b2237c97ccb061
    mem[1504] = 0xfd9588dae28538514acda403d82d5dd995fa2dc5
    mem[1536] = 0x3e3c338052107b4f8988cfa20b1119adcc588d57
    mem[1568] = 0x9b44dc8e47dafcae34dcca9239f502d39087045f
    mem[1600] = 0x3bd1d12e13a04e8ab71f15fc15e8a7aa865fda25
    mem[1632] = 0x8b8816c6bf1a92678e41cc3ea2c047e901adb494
    mem[1664] = 0x36f5681c9c65aee5955dad7d22f96c0658eb587a
    mem[1696] = 0x84644b0304a04703f25edaa6445d42a9f432661a
    mem[1728] = 0x23208594e1c30f409a05260e83377ae00e08d4c6
    mem[1760] = 0x1e45ed9858de9b4895724c7174e39cbda4ff678a
    mem[1792] = 0x9a2af251de0dd32622b56a816819ea12d2b1da18
    mem[1824] = 0xeec15c8a8a1ab028f332e48cc5f823b942dc0f86
    mem[1856] = 0x42d1c272f25f120a4cda700c6837866519e47be
    mem[1888] = 0x6d9287b530e9208b344977d4bd0023079025dae
    mem[1920] = 0x1df4511ab33f9b9e6b94547f42bdf4a5149093f9
    mem[1952] = 0xc48ded13ea839b07ed4b7cec6f1cd226be65665f
    mem[1984] = 0x285d9ce5d4bf43b9fa0e6c6f0635c33c4f871337
    mem[2016] = 0xba7277a895367ad69874d867adf69cf41c127121
    mem[2048] = 0x663aa1cbe52849058748af1df03b3d8d0c272410
    mem[2080] = 0xbe4dac0efe9ad91a506fb5de1e24b93faad5ae68
    mem[2112] = 0x7b394bbf03893a67723ea18a315370edb43ec10e
    mem[2144] = 0xcfd94bbc139b21fd54586d0dde1ffc2a65b43305
    mem[2176] = 0x44716de4bb0148e11b76c16c1605ba3daf0935ba
    mem[2208] = 0x99d22cbbb8d67c0fe487f70b04e849afe197bbdb
    mem[2240] = 0xe33206efe4b2913b94f0b599212b7cfc98059d5a
    mem[2272] = 0xf43d29d9151ad7c441d9b47cd697f1d1d0a088b0
    mem[2304] = 0xfae315159bf5e59327b1125cbbf33161305ce99f
    mem[2336] = 0x231a3ad754b420763a5e1716a81c06655995d2d4
    mem[2368] = 0xa2d216d977a42eb8dd2a927090b64ac9c1125bc8
    mem[2400] = 0x5fa95f84ce2a93e981533084b0509e0a9195dd79
    mem[2432] = 0x70fc6a80e15c3b77261fca3181f1c4dba8a59271
    mem[2464] = 0x2635ee33fffa29eefeb10f19c49576e82d0fa120
    mem[2496] = 0xe02b81797fd1bdf8f1907834a1e51f435706e2ea
    sub_e48eeff6.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_e48eeff6[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e48eeff6.length > idx:
        sub_e48eeff6[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_e48eeff6.length:
        if not sub_ff329569.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e48eeff6.length, sub_ff329569.length
        else:
            mem[2660] = address(sub_ff329569.field_0)
            idx = 2660
            s = 0
            while (32 * sub_ff329569.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ff329569[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_e48eeff6.length, sub_ff329569.length, mem[2660 len 32 * sub_ff329569.length]
    else:
        mem[2628] = address(sub_e48eeff6.field_0)
        idx = 2628
        s = 0
        while (32 * sub_e48eeff6.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_e48eeff6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_e48eeff6.length) + 2628] = sub_ff329569.length
        if not sub_ff329569.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e48eeff6.length, data=mem[2628 len (32 * sub_e48eeff6.length) + 32]), (32 * sub_e48eeff6.length) + 96
        else:
            mem[(32 * sub_e48eeff6.length) + 2660] = address(sub_ff329569.field_0)
            idx = (32 * sub_e48eeff6.length) + 2660
            s = 0
            while (32 * sub_e48eeff6.length) + (32 * sub_ff329569.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_ff329569[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_e48eeff6.length, data=mem[2628 len (32 * sub_e48eeff6.length) + (32 * sub_ff329569.length) + 32]), (32 * sub_e48eeff6.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
