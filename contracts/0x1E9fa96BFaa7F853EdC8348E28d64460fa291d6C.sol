contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage7' / 256
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
    return code.data[494 len 6877]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_ee1abcc9;
array of struct sub_06023072;
mapping of uint256 balanceOf;

function sub_06023072(?) {
    require arg1 < sub_06023072.length
    return sub_06023072[arg1].field_0
}

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

function sub_ee1abcc9(?) {
    require arg1 < sub_ee1abcc9.length
    return sub_ee1abcc9[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x7959ac985d5414c79acaa5de20ac37f69b1d9632
    mem[128] = 0x9b981940e5e0158ae91ba3ef0afe78df6e3ebb95
    mem[160] = 0xc186006efcfe0c40a818ea99c23ea21ba1f6233
    mem[192] = 0x80dfe422510b535ac5fa5c154cd82adce51f416
    mem[224] = 0x2a65139de2dc70f933e3c2cf074ebb0b6f037711
    mem[256] = 0x90cf85e2a94539063291bae78a546706379469bf
    mem[288] = 0xb068689981f5333ed99d9a773123c0822824d1c2
    mem[320] = 0x94ebd40645ea4be89f636b782c1d7258fbe075ff
    mem[352] = 0x272d162e9bf1a00fdcaed446daaa5e895ec9cbd4
    mem[384] = 0x4b538dae601e4f2e50f1bbfa32dcf7bac93633dc
    mem[416] = 0x78f4443279f128432fffda40efb87c4f00d21752
    mem[448] = 0x6778edd5216737d2784a545042eda8487613e389
    mem[480] = 0x194cbe827b9b75fb62675ad6164c73d5b1d929a7
    mem[512] = 0x245e7f4589fa690c2d76868a074034d4bb27d860
    mem[544] = 0xda68601eac8dd411280c38aeae8dc5156dadd9c1
    mem[576] = 0x271d119cf85e77405acd941b35e096e5ac17138c
    mem[608] = 0x91f0e401b83bb23d1454db62ec08d4103720458
    mem[640] = 0xa0778a64a3423051ed7c850837a5d2d5c6d05c
    mem[672] = 0xc306dab96daa51d2a6d327e3b6782ed649dc8fc7
    mem[704] = 0xbfbf0660c40e97ccdf5306e2f4156b26888e7911
    mem[736] = 0x76797499dd9d04c7b116fb9aa92014d5f2f5f903
    mem[768] = 0xc023a54b8d90f8d361b8d00190f7e10b7acbc1fd
    mem[800] = 0x56a339a50e83275c93d1d82fd40ad57478cc95a6
    mem[832] = 0x5fd802024c514407b28ecf6ed13390012c4ae867
    mem[864] = 0xf1add9398cdb6152cc77f646215848e26ac410b0
    mem[896] = 0xe16733f21ec236f72e0927788db6a5d4cfadc90
    mem[928] = 0xaf3ddfa893985e88f4d93c9bf3f0a91e28a97f3a
    mem[960] = 0xc7430f746ad2ae01a0be5f0cae818842f5054ff3
    mem[992] = 0x867c211d2d71ab869f3467362e25aa2f8472c0c5
    mem[1024] = 0xc0530f5a2521f5c2350f07332d6bf73735b8eb88
    mem[1056] = 0x8ccb2cbeb0cb66a3b8b9fa147571e383f58da588
    mem[1088] = 0xfa6f23dbb983aa47b52274dac4a49dc3fbe89569
    mem[1120] = 0xddd5fa2e2b5313e17f370ca1ea407223a2772ad8
    mem[1152] = 0xe29f215ed41b0119d99141cc254e74baf0c5f79b
    mem[1184] = 0x1762b8026b39b7524ca5ea3923164d1db884309f
    mem[1216] = 0x74c3eda19633d2c9e87d46b9dcefa2cd48c983f2
    mem[1248] = 0xb347607340b30beb337524fa19b2a4d7c926745e
    mem[1280] = 0xaf31437afc898c3228a1fff67213537dea6e62e9
    sub_06023072.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_06023072[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_06023072.length > idx:
        sub_06023072[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x8e90cd73a8f793f74d4117019231dced33626384
    mem[1344] = 0x27a429bc9672eec5ec09f0a5d06ceed5d45066d9
    mem[1376] = 0x2b08ebc4d475d4c38298672f66cdaae746b97bdb
    mem[1408] = 0x8585c1d55d420aa7c21ddd7fda640dd8502512d9
    mem[1440] = 0xf9191b70a4247f3186ad60e61cb0040ebea7a4f8
    mem[1472] = 0x40f682ca0f2f0dce89e307f5ef95accfd0f89d93
    mem[1504] = 0xc8f5003707726c26a671c0bd33e7e60e6ff513ea
    mem[1536] = 0xe4fa86e072bc809c022395c7a9cf26c232599841
    mem[1568] = 0xb713d27dcb291903e6e0d4ce05cd1ff3fe631d99
    mem[1600] = 0x2e9b7e070473692361dea129b4755980b16494b2
    mem[1632] = 0xc4af8d95144006ce3c15ac639c89602908a1835
    mem[1664] = 0x559068cac644cb30a0bd403237fa92852342f0a7
    mem[1696] = 0xf3244df95f4013a8d9706fa05d37d5fd45138866
    mem[1728] = 0x1dc01c51219f2cb7c30da111d78879f66acae567
    mem[1760] = 0xc1d7f3a593038bdc53f0731a488e2ab465ab313
    mem[1792] = 0x7bd4540efffc19bee35a521d7a8dcb052ab274fc
    mem[1824] = 0x2c37d0bc2693841f7721ae0f233c4dbd47d1f9b2
    mem[1856] = 0xe1642d004c4cab0ec3851ae2dc27a636f5f432
    mem[1888] = 0x5badf0c8bfad0f995f81495d468170021cac63cb
    mem[1920] = 0xf05b6a88a2399df22f4cc72f064dfa4202c5d74c
    mem[1952] = 0x59559c6c532af6c160896e9e71d7bbfad5812f15
    mem[1984] = 0x305fb8f2a44b964bceea32a7ac377b0606bb5299
    mem[2016] = 0x742f69963439226a745c88ff08ea528566232894
    mem[2048] = 0xc05148ec5096e9acfb7902de50288c960fbf9c71
    mem[2080] = 0xa4fc38eb9820794003dfad559e7bf498e1263632
    mem[2112] = 0x8243580a9791421242d1cced9d05c2df814827b4
    mem[2144] = 0xed3c10fff0e137e99c83224ffb8c410fcbddd70c
    mem[2176] = 0x415be8bed39d2fbae492ef32e90b3da6f63fa073
    mem[2208] = 0x7bc4bfa76fe2adbd7b5e85e952cb2ee40b05dd95
    mem[2240] = 0x3c8ee56c529515482ba222a08778810ba100e78b
    mem[2272] = 0xee2f135bb2348ca3fd85a829e04ca965bb3300e9
    mem[2304] = 0x4d5bd9a14efff624f8c7a765f2f5b667498f6fc3
    mem[2336] = 0x4a1831acd33c5603b70f62c9e1750e4c9b8aabe9
    mem[2368] = 0xa99a9bfd5ae9dba30deafe171fb5c020b442af0c
    mem[2400] = 0xfd087aeda54a9b86d4f25e0a3ed33a70e8b38042
    mem[2432] = 0xbbd46e0807be28d2914251cdc0868992c5830845
    mem[2464] = 0x2461227bc075b591ed62f25655289387db2c64d9
    mem[2496] = 0xbec30e47cfc7065e1cdbe96d16df9ebc38a63bb5
    sub_ee1abcc9.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_ee1abcc9[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_ee1abcc9.length > idx:
        sub_ee1abcc9[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_ee1abcc9.length:
        if not sub_06023072.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ee1abcc9.length, sub_06023072.length
        else:
            mem[2660] = address(sub_06023072.field_0)
            idx = 2660
            s = 0
            while (32 * sub_06023072.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_06023072[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_ee1abcc9.length, sub_06023072.length, mem[2660 len 32 * sub_06023072.length]
    else:
        mem[2628] = address(sub_ee1abcc9.field_0)
        idx = 2628
        s = 0
        while (32 * sub_ee1abcc9.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_ee1abcc9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_ee1abcc9.length) + 2628] = sub_06023072.length
        if not sub_06023072.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ee1abcc9.length, data=mem[2628 len (32 * sub_ee1abcc9.length) + 32]), (32 * sub_ee1abcc9.length) + 96
        else:
            mem[(32 * sub_ee1abcc9.length) + 2660] = address(sub_06023072.field_0)
            idx = (32 * sub_ee1abcc9.length) + 2660
            s = 0
            while (32 * sub_ee1abcc9.length) + (32 * sub_06023072.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_06023072[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_ee1abcc9.length, data=mem[2628 len (32 * sub_ee1abcc9.length) + (32 * sub_06023072.length) + 32]), (32 * sub_ee1abcc9.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
