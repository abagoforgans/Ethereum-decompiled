contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage40' / 256
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
    return code.data[494 len 6897]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_d1bdbc32;
array of struct sub_f3226ebc;
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

function sub_d1bdbc32(?) {
    require arg1 < sub_d1bdbc32.length
    return sub_d1bdbc32[arg1].field_0
}

function sub_f3226ebc(?) {
    require arg1 < sub_f3226ebc.length
    return sub_f3226ebc[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x2da6ab0147ca1e9379b77803d40bb1b820c5baf4
    mem[128] = 0x8636e2696d531dd2faff49bde68fda4464abfb
    mem[160] = 0x4e6797ac9498cbf72d826ef81c84a1ed9204b152
    mem[192] = 0x9ad28d9523e3e98a3219e11a8d5ac0916552595c
    mem[224] = 0x6f4017a8522d4201937bf4aa76467898f580b2f0
    mem[256] = 0xf73c737e7a3eace7dc7f9f11769d39a0c3a35c4e
    mem[288] = 0x263307cb93a25e417765f3671e9ae2ab669e2410
    mem[320] = 0x693877889ab4d962e1d3b13101122778d479af94
    mem[352] = 0x7dd7d58d46b8e2eea614db5f38f3a9fcfa6933b5
    mem[384] = 0x468c8ba38be9646f72c698b14a6024e5cdc7b326
    mem[416] = 0x53dd5bab295cd600d74ae0db94bb4943da340d30
    mem[448] = 0xdb5f9df28c3428ca3ce34083f6a32863ec26f6a
    mem[480] = 0xf1e45cb97ca1a5ed95b7cce164ca2989cc9e52
    mem[512] = 0xf420558975774a6d751f39c5b0af6d685ba62805
    mem[544] = 0x1e33834a1b921950f18dc1d0f13a7b9215cfce9c
    mem[576] = 0x99c84d4637c5c56826b6d37d828396f97aa4566a
    mem[608] = 0x59a2b46f0bd8149ba70a4718a74c10f316531ebc
    mem[640] = 0x6344af627a0292ff760513583e9e4a21fe2d7d22
    mem[672] = 0x56e997f6299277c6bbff3b96bf54d604a25c8825
    mem[704] = 0x92c839879fb789ce6ce010b77005bf7285223ac5
    mem[736] = 0xbab6aba5cb49efdf51c12142ad51a18733d37ac5
    mem[768] = 0x47291531cc3aeed317720a16a67cd369717cf5db
    mem[800] = 0x1422ac493e75d12c4f03bd00cb87fa6d86083af6
    mem[832] = 0x4c55bf674b0caa516bc8fc8e48efcb7d7f6cd75
    mem[864] = 0x423b60c16f1b83133248b7f928431c5234643e51
    mem[896] = 0x8d8fa913b647b1a9c388c6b17fb34911012f8051
    mem[928] = 0x3dabb934b93494f2b76972d610aaaf725f01b251
    mem[960] = 0x503d8bb1c07c1d3502f6c1fbd4424b4f4505ed8f
    mem[992] = 0x8261e6f76e7f74bd9f780f8b35504d2f5f7e2fd0
    mem[1024] = 0x7689eb63bac5523dab8a9c58c81ef96490179a7c
    mem[1056] = 0x74341071a534ca5c266f1f03fae8db103c6496b7
    mem[1088] = 0xb606f55eb07d2febf7fee0094343a4cff140a420
    mem[1120] = 0x82dbba39974de4bad0f7102474b29a63ddfcf1b1
    mem[1152] = 0x69cef919f83acc448243440c1f0d6c2e58c40941
    mem[1184] = 0x4d9d3892f8481aa14c14b28be29d3fee0b088d9b
    mem[1216] = 0x7c18ea294d446a3a3a147ace5dc74363cd69a864
    mem[1248] = 0xd25f9e728133e393c298044de46c60d7c0131c68
    mem[1280] = 0x795db74a47a499745a40e48d8f836067b02de2df
    sub_f3226ebc.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_f3226ebc[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f3226ebc.length > idx:
        sub_f3226ebc[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xc2eed3994c1d98723ab45d3c1bbd2c23100a03a7
    mem[1344] = 0x5d6928e9bcb796cd7114a8dd1ede873fc0fdb7
    mem[1376] = 0xa4772facfc905bf290da9b1db024bad28a13f61b
    mem[1408] = 0xa981932e637f5bf56ba51691422b92268abaa4eb
    mem[1440] = 0x4cd3f97ad6ed6cb4491571cce49022b1a9f1006f
    mem[1472] = 0x951c3bae23f8a6de323170fa3001fe7d231eef19
    mem[1504] = 0x98ebba6a398ed902f625ef302430af1765cf669d
    mem[1536] = 0xf8a942147d928cf98b4dab2a371f316b2079f36e
    mem[1568] = 0xa0f6250a5b859e7515b31ab3e10e63d51cf85e19
    mem[1600] = 0x612b9411464a3aae97bc0aea8758108b046cf27b
    mem[1632] = 0x37708904edd6c6aa778faa63903c7a5f6b3d03db
    mem[1664] = 0x2d2efaa06ad3a2a5be0124bf5031811d1e8affd7
    mem[1696] = 0xf21742dbbb10145c340efebfb051c863e1b0dd
    mem[1728] = 0x24402557b483bc18bf2925719ff16838eabd51e
    mem[1760] = 0xb176635df38f622a5cc9c90360bc25bea37d635c
    mem[1792] = 0xaebb2e1b05ab8f98a5d95d2ef085c6a9eac2af7b
    mem[1824] = 0x11c889752302d17f97489ceb67c5fefca819896d
    mem[1856] = 0x83f9e9769c01f969db58c057dd50d3a397abeef5
    mem[1888] = 0x947236b6885d0af5f849544aede899455f3a6595
    mem[1920] = 0x46c1060e29b90ac2f8e0db457a5ff27d8fe02c32
    mem[1952] = 0x6a1ac0f7e2ce9f98b694ee87fffa4c4a77c924d2
    mem[1984] = 0x6d1810a9be363ac2a4c1c72dfd99244701a8ba47
    mem[2016] = 0x620c0243fa2307f57ec5a22cf1746e404d91a496
    mem[2048] = 0xa39a89055e7cee0a1c59a6f697c518d88dafb9a6
    mem[2080] = 0x7253e39ed9f42788f052c737ca10d15cd06df805
    mem[2112] = 0x384d3e21acfc24e31b6ebaf058fc4ab54316d75a
    mem[2144] = 0x87dd3fd83f29859ba0a3ebf0ea167c7388dcf57f
    mem[2176] = 0x41a93168c424796e7de58c899c903a527ad7bf3e
    mem[2208] = 0x16dfa29defedd61bd007e883d30d088b5fecc2b1
    mem[2240] = 0x765d9695b59e493e7df20d416ec712ad760a4195
    mem[2272] = 0x879ed127d384aa93d93f613418729f0c031b306f
    mem[2304] = 0x31715315a36c13becace2588922db28a13dac932
    mem[2336] = 0x9109de2cc8b1d72e6b6b6d405d90f0ff3fffea2d
    mem[2368] = 0xfbe87088a37589e3f4dd05da9bb9e2ed54f196a2
    mem[2400] = 0x789e20a5eccdc25b0c9b700cf392cdc254a5a574
    mem[2432] = 0x13932e9a00451826b07ce8fdea13d68598cf4d7b
    mem[2464] = 0x8766f6e0e7a34fbd1ff4a6bdc33257c282167c64
    mem[2496] = 0x56f5978566a5e5204b04f4948cf1baf23f71405a
    sub_d1bdbc32.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_d1bdbc32[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_d1bdbc32.length > idx:
        sub_d1bdbc32[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_d1bdbc32.length:
        if not sub_f3226ebc.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_d1bdbc32.length, sub_f3226ebc.length
        else:
            mem[2660] = address(sub_f3226ebc.field_0)
            idx = 2660
            s = 0
            while (32 * sub_f3226ebc.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f3226ebc[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_d1bdbc32.length, sub_f3226ebc.length, mem[2660 len 32 * sub_f3226ebc.length]
    else:
        mem[2628] = address(sub_d1bdbc32.field_0)
        idx = 2628
        s = 0
        while (32 * sub_d1bdbc32.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_d1bdbc32[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_d1bdbc32.length) + 2628] = sub_f3226ebc.length
        if not sub_f3226ebc.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_d1bdbc32.length, data=mem[2628 len (32 * sub_d1bdbc32.length) + 32]), (32 * sub_d1bdbc32.length) + 96
        else:
            mem[(32 * sub_d1bdbc32.length) + 2660] = address(sub_f3226ebc.field_0)
            idx = (32 * sub_d1bdbc32.length) + 2660
            s = 0
            while (32 * sub_d1bdbc32.length) + (32 * sub_f3226ebc.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_f3226ebc[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_d1bdbc32.length, data=mem[2628 len (32 * sub_d1bdbc32.length) + (32 * sub_f3226ebc.length) + 32]), (32 * sub_d1bdbc32.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
