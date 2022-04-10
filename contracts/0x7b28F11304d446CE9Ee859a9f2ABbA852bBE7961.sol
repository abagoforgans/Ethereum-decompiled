contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage80' / 256
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
    return code.data[494 len 6791]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_19f60fb0;
array of struct sub_d4696dbc;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_19f60fb0(?) {
    require arg1 < sub_19f60fb0.length
    return sub_19f60fb0[arg1].field_0
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

function sub_d4696dbc(?) {
    require arg1 < sub_d4696dbc.length
    return sub_d4696dbc[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x815f7c473335d19d6263a29c232ecd85c4a85d34
    mem[128] = 0xb0f545bdebf7f695f3ee6a82fc470cca60603cd1
    mem[160] = 0x4e2184beb267c585ed0f97aaf6d15b281b728cf
    mem[192] = 0xf007907748a13cc1b213c963305b0e147839cea7
    mem[224] = 0x27019ebdcd105a3a867515eaa07413303b09b577
    mem[256] = 0x681fb16d28d8e45aa7e06392080bce5d6727188c
    mem[288] = 0x5ce51b5ff4bea233eecd7a82e9b13b9f8b73abfe
    mem[320] = 0x4c36cc13c5a3472be329439b009cbfdf2475a633
    mem[352] = 0xd73e170828f843f45dbdce2abba8e9fd07a80037
    mem[384] = 0x9cfe7850d7b898ba132b60c45cd6894aabf5be2d
    mem[416] = 0xc547d58020b48737b8f2f077ffa568f6fe241767
    mem[448] = 0x1a550f4e6d5323f1a39edb2c7e0ef3f2fa3a9087
    mem[480] = 0x6115efb613bf8ff7effc0dcaedc78d5235dc59f8
    mem[512] = 0x1d45a8ea591285058777787db71effc589c687db
    mem[544] = 0x21b8d0740bf87a38e898b19e9e02b6d7cfa670d5
    mem[576] = 0x87172834bdf38a44b3352fdf1b9a0fc70af926a5
    mem[608] = 0x34bc54736585ac1fa01eef4fffec9e4209297968
    mem[640] = 0x6cf7ed7352f5e8d4d848d59b3021a94ed68a9cce
    mem[672] = 0x1d2783c714405116da976e2da5f3d0a236a78dac
    mem[704] = 0xa91ae50ba7555064e83063084f50df48a7577526
    mem[736] = 0xbb504fe8cbd0215c0068ab126368f4c81527c34d
    mem[768] = 0x2d24ee6a2f3eed1b56733f60cccf568a7003c90e
    mem[800] = 0xf46b93044d7f39ee51677fcc67df91a6f5a8ef0f
    mem[832] = 0x88d662ae24d970c11ac70874545be4cce4f1b932
    mem[864] = 0x6d5dfd5ad463a351c77564c8fa55942d79dc7249
    mem[896] = 0x3de7d7d8376a633ce1c539d85bc5edfac897e7be
    mem[928] = 0x84ea9cd987bfd4fae270fe5c03a1b7acd67dc6cb
    mem[960] = 0x832fa73fc2af310656e5745c9f5f26497930e547
    mem[992] = 0x15d0e5d84315f0412683cebc55bdb61da4daa8f2
    mem[1024] = 0x736a6ba14667242e2471cafd468023008ff47fc1
    mem[1056] = 0xede78d65cfb2307e007b1ff6412cffe19b9ec74f
    mem[1088] = 0x9d604df9c451f5387763bbbc49fc6fefef65e0b1
    mem[1120] = 0xe53b92c8e05230159c3e1fd33c8c7e6f9ece6dda
    mem[1152] = 0x5f15a76fe3af212c021ba3714ad20b87e40784e4
    mem[1184] = 0xc3a1b868725ca51dbc2ee51649dfbe89a39f7777
    mem[1216] = 0xd4f4df53142c1d9944f876dadcf531b3aef82898
    mem[1248] = 0x5a31d34c3da972b759030b1a2ad1969cabf51f50
    mem[1280] = 0xc1b94b5105e710ad6cfc2d260343b2494a036989
    sub_d4696dbc.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_d4696dbc[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_d4696dbc.length > idx:
        sub_d4696dbc[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x56c28ebbe8c95c06fa4fbdbad69522629bb2e718
    mem[1344] = 0x78ae48ab7f92e9d915f4a78740fcd557d87b6f50
    mem[1376] = 0x2a6fe727fe5806289be5653d8d67fb0b19bf1a2a
    mem[1408] = 0x9fe454921443255652a129b60d0074aa9e7381c5
    mem[1440] = 0xb0ba141ad7fd5d15dc434a8b7ed002c4a366d17f
    mem[1472] = 0x57ae50d8129bbda90352eb5a9f5d8203472cc588
    mem[1504] = 0x2ad416588f3344b00d170cd14d0805cc550678a3
    mem[1536] = 0x55dc961ad5bbd4c3dbc729156eefc07ffd7cc395
    mem[1568] = 0xa69c35a19816a9d6ac4b579aaad22bec6265e835
    mem[1600] = 0x533f05d1df852136337d44f1979cabef52d8ff70
    mem[1632] = 0x5d7b4870cde712a4aa8f77211ece223f839f7c41
    mem[1664] = 0xbe1e7e8c92831d0b496afa9bcc83bf465ad12d6c
    mem[1696] = 0x34103f4d233e8d562ec6f085b17ada9aebba642d
    mem[1728] = 0xbc49077041b283c012926ece34a90f1b288588b9
    mem[1760] = 0x5bddd8a9c7a128eacfae59e7f3ba0e21d6ef7ecb
    mem[1792] = 0x9eed9081c746b33521947022847ba5d2d49f752
    mem[1824] = 0x232b7d6eb1625c518aa63bc11a22069e38db0f29
    mem[1856] = 0x80f3841879fa7acf3d15cedfcc675de2d886c2b2
    mem[1888] = 0xab01b85f153e15f194d8cbccbe9a2cb952c38986
    mem[1920] = 0x773c347fe3a8216fa0c86df5459fb0ea4e7ead5c
    mem[1952] = 0x61cca0fd8db4dbac454429ee37d3c093bbc2f404
    mem[1984] = 0xd4aab35ee60bd523c9a348cc7dd6b70f9a4e3225
    mem[2016] = 0xf69b1724427a56a621b90ca3140394b2d5344d66
    mem[2048] = 0x20a4186de576a4cf6ca89492a41e42674e8757c3
    mem[2080] = 0xea4afaf5a89c258b36c5bb3e08e4ad37a276f0d1
    mem[2112] = 0xf13ecec81cc9f6d8b5e7c0379560a071cb30076f
    mem[2144] = 0x702ba00c8f5c3cf3fd80777116b2c8f1c91ce922
    mem[2176] = 0x838b7b573154f802eef2fee58a6d03d268f127cc
    mem[2208] = 0x2c0155ca61b806f1b6ed205c4cd444df347db034
    mem[2240] = 0x546b14a299784a9d3ab16294fb232ee265dff203
    mem[2272] = 0xe3d4f35fe31c3dc1da34e1e0d413d9ba87c10e64
    mem[2304] = 0xcdbdf528783e2e1f2c46d05feabb5c5dfe919385
    mem[2336] = 0xb9e7b95dc0d9775e4ba310fd9dfb48c6a73fbc73
    mem[2368] = 0x43de903ee926dcdaeaa7f41b18c09a5b7f8f67c3
    mem[2400] = 0xe3b388f72525f4a7d76192d5968f50604cafc743
    mem[2432] = 0xf7874378ecf80540ab32393bba799cfbafd724a0
    mem[2464] = 0xecbe2f8f2eea12a6c260a9eee9a77b36976a4f09
    mem[2496] = 0x5f502ca3a3fbc18ecf2e641cdc13bef13ac228b5
    sub_19f60fb0.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_19f60fb0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_19f60fb0.length > idx:
        sub_19f60fb0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_19f60fb0.length:
        if not sub_d4696dbc.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_19f60fb0.length, sub_d4696dbc.length
        else:
            mem[2660] = address(sub_d4696dbc.field_0)
            idx = 2660
            s = 0
            while (32 * sub_d4696dbc.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d4696dbc[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_19f60fb0.length, sub_d4696dbc.length, mem[2660 len 32 * sub_d4696dbc.length]
    else:
        mem[2628] = address(sub_19f60fb0.field_0)
        idx = 2628
        s = 0
        while (32 * sub_19f60fb0.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_19f60fb0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_19f60fb0.length) + 2628] = sub_d4696dbc.length
        if not sub_d4696dbc.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_19f60fb0.length, data=mem[2628 len (32 * sub_19f60fb0.length) + 32]), (32 * sub_19f60fb0.length) + 96
        else:
            mem[(32 * sub_19f60fb0.length) + 2660] = address(sub_d4696dbc.field_0)
            idx = (32 * sub_19f60fb0.length) + 2660
            s = 0
            while (32 * sub_19f60fb0.length) + (32 * sub_d4696dbc.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d4696dbc[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_19f60fb0.length, data=mem[2628 len (32 * sub_19f60fb0.length) + (32 * sub_d4696dbc.length) + 32]), (32 * sub_19f60fb0.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
