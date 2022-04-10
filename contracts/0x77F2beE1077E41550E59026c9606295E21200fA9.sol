contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage45' / 256
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
    return code.data[494 len 6742]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_59b12308;
array of struct sub_46036ba9;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_46036ba9(?) {
    require arg1 < sub_46036ba9.length
    return sub_46036ba9[arg1].field_0
}

function sub_59b12308(?) {
    require arg1 < sub_59b12308.length
    return sub_59b12308[arg1].field_0
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
    mem[96] = 0xe8bf97addc9e673201b672c699bf2e0d8af36131
    mem[128] = 0x880414faaf74697244410114d3dc97ba52cbee1b
    mem[160] = 0x46ffc9fca5a5b038c1b0c38aa5513eb51ebf4586
    mem[192] = 0xc1e37d93c285f07e9d21e1834e814f3b5858b873
    mem[224] = 0x4dd4a90e2b69a020a0b3b17fcf7e7abe776292c2
    mem[256] = 0x31f0b207701c2d8189ef7136cc61eb389cfd5547
    mem[288] = 0x8f4fa0bf6d34baf491dd93d5af3687a00e255a
    mem[320] = 0xf1e49d2efe070f4d926de82047d681d751c4abf2
    mem[352] = 0x76f2b6096e2f303c455a5eaef189330db0be24
    mem[384] = 0x86ad7edc36fd50ccb53223910932a069769d5b89
    mem[416] = 0x78539a0bafab514b3cb0d69b8f1a445475283c1d
    mem[448] = 0xa417910becb7e78f6bc002dc57ff20db24ef21ca
    mem[480] = 0x92f9691fda67bde6e53370e2e1830ae63265af
    mem[512] = 0xba60086b48cb879b871e27824a6963465ed1dd6d
    mem[544] = 0xfd5bf6f80c47104b8856ff95f871a89b784320b3
    mem[576] = 0xb42589dbf5868b8706a9417f50c3e65044ad8bdf
    mem[608] = 0xec8556cbf088b64616caaab7b2376f9e83de6f4e
    mem[640] = 0x68a5f059d5291f5102350f99d1f636710536ed42
    mem[672] = 0xb8d664b5ffa9d37002124121ac172d307bacccb4
    mem[704] = 0xd4d0046b2fe740109e6c388fc13dffab5e3dfbc0
    mem[736] = 0x22443cbc856060600b6c9d52d6e48639868823ec
    mem[768] = 0x982457107b650e5878084ea74b785e29f844e23d
    mem[800] = 0xddd39b9e05b80ff028ab41e15bde67a0947ed5ac
    mem[832] = 0xc64748ae89407ed37fd5b30d996d88f7f56549c2
    mem[864] = 0xc9a85ae9879e50a6a7183c7b545684c3f040d4a9
    mem[896] = 0xf8a4bbeffdc4034f7322e0f94fc12e166d1002f1
    mem[928] = 0x13221d0d68b738009475fd244b8c49f857d77b33
    mem[960] = 0xa9d5e47d2b27e1b81d13233fa37f69a3d90d0005
    mem[992] = 0x967991e0aafcdbafc6599e6a3f86dc02142d16ee
    mem[1024] = 0xad22782b5225514c33419dc8aa03115c1a68b85a
    mem[1056] = 0xc1b2847b0c046bdfd4d754f0ad89a409e9c96428
    mem[1088] = 0x89fb825e09fd6cfeedb70e269206495873227da0
    mem[1120] = 0x90f5560a548b62dfdc87ecba254ac8f31327f63a
    mem[1152] = 0x159824225f543333b005f36ecca50f51a8445c5
    mem[1184] = 0xc5d9732ca828b596072dc02da8eeeedf62aa7ae
    mem[1216] = 0xec7a6ca27f293c90266fc6489e66a21c9ae1a0fa
    mem[1248] = 0xa3908689738b26db954f9928f6303753d601952a
    mem[1280] = 0xd729a48bfaae98b2e567297a7f2fdc3dc1fc20c5
    sub_46036ba9.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_46036ba9[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_46036ba9.length > idx:
        sub_46036ba9[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x524b3f07a36a5e4e52fe13bdb91d581b998ad216
    mem[1344] = 0x204cc64d12581bc62de3c6137c4b3bafdefa916
    mem[1376] = 0x20d2c04ee401de25553286a430af9fc8b137a2f6
    mem[1408] = 0xe67bde53b404ed9a1e078ba418601b0137a1ce4b
    mem[1440] = 0xb9b680b54a5805d77722fc775284fdf86c48bd70
    mem[1472] = 0x7bf958035899a74ebd6e43747ab11372cdeb395c
    mem[1504] = 0x19395362d6326b99a7885a4a5451723c06462c
    mem[1536] = 0x91652948e0bb51e2cf2c8a5492a3f687c8b22743
    mem[1568] = 0x3e1321fe76b7637749ba3baef8d46f3f1831c1
    mem[1600] = 0xfef2e8d54b44e194c0756c9d8e1d593fa411483b
    mem[1632] = 0x8d313ee9ab8fa60b25b8c0aa322735eab4a0eb99
    mem[1664] = 0xc30f5653484dd834c50c315d5c64d606719c10f9
    mem[1696] = 0x13a1f5833fbc5705122b4f44732eccfd104d8092
    mem[1728] = 0x3dfaaeabf830dcea23dc2cd72d7c284ae6d36523
    mem[1760] = 0x7e750b252b3676f8926bd3275e6e7086f14b782
    mem[1792] = 0x46019317ab73ff746f1e99a50c09ea64e4bff5da
    mem[1824] = 0xe96c3650e85d3b4ec394f2f37be7bb165cda2251
    mem[1856] = 0xec16edadbfaa5ac9bc167b612decbc68dae9b3e
    mem[1888] = 0x662781440ace21871582efab5b595a2f0a2209d0
    mem[1920] = 0xa54f6bb4ef101d6a743c2e591d36b22bcc38fcd5
    mem[1952] = 0x67ec449b0c5e8507d169e008f281b6e70d2d7586
    mem[1984] = 0xa827047cfc1b8885918cd9a1693acb5e8b6f4548
    mem[2016] = 0xf0203e3735f8fe5a929058ba7a0ec71c4ce3db07
    mem[2048] = 0x9fcb1da33e7732c0c5399eeaa1cf816a5f9418f0
    mem[2080] = 0x15905e28baac221dec6977abc7a03d57d59248b0
    mem[2112] = 0xa8765d16ee6a9ab56a8ee62a05125c692e1f9cf9
    mem[2144] = 0x5b3e6bcc3710281fab9857193456c56fe6db5bf1
    mem[2176] = 0x8ce98c57965c6822ec882e20b9fd0ad73057b329
    mem[2208] = 0x24e2ab20252630c96b9db868509365d314933d35
    mem[2240] = 0x991555ed883f6bdb036eed64c310d876e333100b
    mem[2272] = 0x9026c0ffc00f34df646ad6ee46574ba1b38f40e9
    mem[2304] = 0x19509dd61821389eace6d329ae3e8b28d31297cc
    mem[2336] = 0xd918183eb984736e528c5fd8d44229743488aee7
    mem[2368] = 0x28fe5ac2ca1da7035f79bfe1ab2fe80e1e332d7f
    mem[2400] = 0x11b2faba801adc48ddf03e34c0bee65db6f2aa75
    mem[2432] = 0xbf6aa4776298c28871cf345ef9b19b78cc831180
    mem[2464] = 0x5643056e0c80ab9eb69e1d14cc9ba4eb3572a4d6
    mem[2496] = 0x8efb7738281a3638c58ef825d962c18abe497609
    sub_59b12308.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_59b12308[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_59b12308.length > idx:
        sub_59b12308[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_59b12308.length:
        if not sub_46036ba9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_59b12308.length, sub_46036ba9.length
        else:
            mem[2660] = address(sub_46036ba9.field_0)
            idx = 2660
            s = 0
            while (32 * sub_46036ba9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_46036ba9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_59b12308.length, sub_46036ba9.length, mem[2660 len 32 * sub_46036ba9.length]
    else:
        mem[2628] = address(sub_59b12308.field_0)
        idx = 2628
        s = 0
        while (32 * sub_59b12308.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_59b12308[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_59b12308.length) + 2628] = sub_46036ba9.length
        if not sub_46036ba9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_59b12308.length, data=mem[2628 len (32 * sub_59b12308.length) + 32]), (32 * sub_59b12308.length) + 96
        else:
            mem[(32 * sub_59b12308.length) + 2660] = address(sub_46036ba9.field_0)
            idx = (32 * sub_59b12308.length) + 2660
            s = 0
            while (32 * sub_59b12308.length) + (32 * sub_46036ba9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_46036ba9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_59b12308.length, data=mem[2628 len (32 * sub_59b12308.length) + (32 * sub_46036ba9.length) + 32]), (32 * sub_59b12308.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
