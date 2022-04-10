contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage72' / 256
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
    return code.data[494 len 6983]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f108e8a8;
array of struct sub_fca760a9;
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

function sub_f108e8a8(?) {
    require arg1 < sub_f108e8a8.length
    return sub_f108e8a8[arg1].field_0
}

function sub_fca760a9(?) {
    require arg1 < sub_fca760a9.length
    return sub_fca760a9[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x28d2ab2be16ee4d985c4d1d4dbf860fae2dec219
    mem[128] = 0x1071fb9356b2d8113d7097d5b8c8371753f34101
    mem[160] = 0xa5f40354d7aa55b68acac4a0816840fda1ab8ebf
    mem[192] = 0x77b2ab6ea66965ef1cb7138142c07f1a03ae76b3
    mem[224] = 0xbe96215343cd44d587965d9fae89afb69804341d
    mem[256] = 0xc4dc812854f190d86b63d36fbe0f982fea68bd1e
    mem[288] = 0xda556042c99cc6b217653449450ffe6262acd9bd
    mem[320] = 0x50fd9421e26b4807d09e414f9b76bef034fa111e
    mem[352] = 0xdc8c0cd72f8980d967ea2e2e6df8502ccdc8057b
    mem[384] = 0x8e597a105f45b330187f2d76aa603dae786e247f
    mem[416] = 0x91568ba922a912d56bec009fc9dabb646e1a5c52
    mem[448] = 0x74a35d8a11b1a8406fee69f27011efa1f22b14b0
    mem[480] = 0x231fd854e696cb6ba7640553245895bf6e5705e9
    mem[512] = 0x471c14b5fbcb90f773e53c0966e82f640223f84e
    mem[544] = 0x909dd1c9ceef084793be0eb077feb3f110965df4
    mem[576] = 0x562e388bd74d43573908d87954f843cef30076b3
    mem[608] = 0x97f822c7bdcb59dac2f46c70e43c952e5f2e2b52
    mem[640] = 0xa338862c23230f7eab466d6b484afb84114e6fe3
    mem[672] = 0xd2d33fdcac630022efd218f16f8efc4191d60220
    mem[704] = 0xac533b1cb203a26d66d7328eb49f282f371ab5d
    mem[736] = 0x84826424d63c0eda383edf56f74f83fdbf27fd9d
    mem[768] = 0x6a56d4c7c033d79c1c8fd0a6bf2e19c12c546afc
    mem[800] = 0xa767a98899c26f3b245fd747e9c43ce310901da
    mem[832] = 0xa17c3ce8227d27c133fc661b8bd1116efc4c77bf
    mem[864] = 0xdb84e10e3883bca63d3e28ff20eb0da3d13c898
    mem[896] = 0xdd7788776dbb8388e1f9a472142c58af394effec
    mem[928] = 0xa4061fefb679fa97b2ee17e083cc49913b07a
    mem[960] = 0x40cf0cb2a25def1ad891fc0e433070cbf85eeb74
    mem[992] = 0xeb052b76fca75d2fc8cd6373555fb3e4fb7833b6
    mem[1024] = 0x555ce2bf0033607a6552a3ccb759e40af66de945
    mem[1056] = 0xcc21412a138abf14a666d9d511799143e73b34db
    mem[1088] = 0x4632c6552fbe33ed899e7a2d40b7dac4e06d7b6d
    mem[1120] = 0xd57adee000bda935025a74588635a86120eede
    mem[1152] = 0x2e090873374e39e7918f6be923c6d9683bc060fd
    mem[1184] = 0xa0778a64a3423051ed7c850837a5d2d5c6d05c
    mem[1216] = 0xa27b3caac24ae13cfbb162c075a0cb0de58bfde3
    mem[1248] = 0x842355e51a62a7b75269d0f4e31d4565b1efab8b
    mem[1280] = 0x910d722e1b0caf9ff0d10152e5b473efa39203b3
    sub_fca760a9.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_fca760a9[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_fca760a9.length > idx:
        sub_fca760a9[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x9aa52dfd69b96052157c50470d5c4ce7db6b389
    mem[1344] = 0x9426bd0eff65441d6f28ca5dccbae749bb4e80b6
    mem[1376] = 0x3479705fae0b2aef67549750190fadd9e98849ed
    mem[1408] = 0x12568025f088d22f86555e3e58f5544c0b6ed637
    mem[1440] = 0xa6217573d9f7f744931e770e241845d3fb18f2a4
    mem[1472] = 0xa938c7b62c167d42e6f79ea445756b124b54b594
    mem[1504] = 0xbfb9b43b45e101eeeb55c5bb0d280f6483e46073
    mem[1536] = 0x841d89cb71a68e0f645f603f8723cb5b7e14c6e
    mem[1568] = 0x98421ebfba305cb6d5264211ff57467f23fcb46e
    mem[1600] = 0x64d2df97d24fe85e9828949b7a223f47d51a316a
    mem[1632] = 0x7cea500898ce29ba1aa812d43fa750004d7b0605
    mem[1664] = 0xd84f20ebe918f92ec8f68f374a47f084932aea63
    mem[1696] = 0x2e46fc3000a06d74105c2b56bd33003a4651b4fa
    mem[1728] = 0x900b23500da203b7dcb89ef2a8cbb2f10dc2a013
    mem[1760] = 0xcfa910007fcbd1bbbf1bdcfd3c1641443144f617
    mem[1792] = 0x89fd89fc2b8b76aa81e31d271196c861ef26b9da
    mem[1824] = 0xcadb31cf0c305e0c1a4179ab5a683c49d51763de
    mem[1856] = 0x7da47b0288757e2fe07d13d5179395c212382ee9
    mem[1888] = 0xcbb25b151efcea9ba3217d33e6eab696a4e3d7bf
    mem[1920] = 0x230700f78a7a36f81f2a849a3674329e7bc7669a
    mem[1952] = 0xa2f4a492107bb07a0ad6258b3544064bbbd555b0
    mem[1984] = 0xb7d91b9d57c38ea45488487bfa8be52a88b184fb
    mem[2016] = 0x5be082805bc7781dfb291f2349fda7966f519018
    mem[2048] = 0x4833a02ad57257f069915539f97668dc54d9c267
    mem[2080] = 0x6223777e516e08793a4aaf69e4f3b3274ca53622
    mem[2112] = 0x7e2296fca1dfe0dba410c9fa4b5bbacee1bceb63
    mem[2144] = 0x6ae1356c849bfcac7505198c4f3ccf7010e6af
    mem[2176] = 0x325ecd471b5579611389e618d088a3f1b5546f07
    mem[2208] = 0xd594fe7a7b2307665af18f2c349698c948a30a71
    mem[2240] = 0xb03da622235f8bc6ea1dc9d56c0fd034fbbd74be
    mem[2272] = 0x64f890ed035325ae5362946b95e57c228f8bf610
    mem[2304] = 0x9a7a36ad664a2fce63fb5cb3ff0e4fa4a5176daa
    mem[2336] = 0xd6f9302e157772f5d103e6d237988dac221d6b
    mem[2368] = 0xd744b3f3de26799379b8d63ae36e95acec27560a
    mem[2400] = 0xe1642d004c4cab0ec3851ae2dc27a636f5f432
    mem[2432] = 0x61fc15e068450ebe212d301a7cfcd7c7e5cdf * 3600
    mem[2464] = 0x9e729d5f584e5f2e77bbd6732e8dd01d31c44866
    mem[2496] = 0xecf57cf0d1143685fbc0c9ada939c7787472fd1c
    sub_f108e8a8.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f108e8a8[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f108e8a8.length > idx:
        sub_f108e8a8[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f108e8a8.length:
        if not sub_fca760a9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f108e8a8.length, sub_fca760a9.length
        else:
            mem[2660] = address(sub_fca760a9.field_0)
            idx = 2660
            s = 0
            while (32 * sub_fca760a9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fca760a9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f108e8a8.length, sub_fca760a9.length, mem[2660 len 32 * sub_fca760a9.length]
    else:
        mem[2628] = address(sub_f108e8a8.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f108e8a8.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f108e8a8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f108e8a8.length) + 2628] = sub_fca760a9.length
        if not sub_fca760a9.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f108e8a8.length, data=mem[2628 len (32 * sub_f108e8a8.length) + 32]), (32 * sub_f108e8a8.length) + 96
        else:
            mem[(32 * sub_f108e8a8.length) + 2660] = address(sub_fca760a9.field_0)
            idx = (32 * sub_f108e8a8.length) + 2660
            s = 0
            while (32 * sub_f108e8a8.length) + (32 * sub_fca760a9.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_fca760a9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f108e8a8.length, data=mem[2628 len (32 * sub_f108e8a8.length) + (32 * sub_fca760a9.length) + 32]), (32 * sub_f108e8a8.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
