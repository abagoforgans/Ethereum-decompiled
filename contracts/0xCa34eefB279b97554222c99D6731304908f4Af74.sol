contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage21' / 256
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
    return code.data[494 len 6835]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_7232a560;
array of struct sub_14c2a8e8;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_14c2a8e8(?) {
    require arg1 < sub_14c2a8e8.length
    return sub_14c2a8e8[arg1].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7232a560(?) {
    require arg1 < sub_7232a560.length
    return sub_7232a560[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x4e9cb6e7d038c55f8691596a69ee63cb020b2a85
    mem[128] = 0xda5711aa3edbd9e97824b3ff9ba0b6a6ebf45409
    mem[160] = 0x6f716a91a3cb91fe167b2b2c8e1043d06b9a730a
    mem[192] = 0xa861f1eb25b8177d6baad4bab25fa87f7c1cb34
    mem[224] = 0xa377d3aeeee8c76a5108a93a095aa7562fa423df
    mem[256] = 0xf79d3f6d2c07465e1718b517d76285fa120a8385
    mem[288] = 0x82c8411eda60246bb4b1f34e717f6413221c3457
    mem[320] = 0x1fc457361d2034f26b676510ce26d8c321a48952
    mem[352] = 0xe7e55c34e69de7128563de23cf4e30474dc24657
    mem[384] = 0x4e40221a0d575f7d68c8488c556b65565724d45f
    mem[416] = 0xccb958a806f7db5977303234a7b68892ea9e24e6
    mem[448] = 0x7ce61bf7bb72a7e804313ec90411a46a97f06bac
    mem[480] = 0x65b4e349ce9ee81bfd2f1e0a008730068edf32f2
    mem[512] = 0xbeb50b01778265a163cf689215aa62275a94978
    mem[544] = 0xf87bf2d440d4bc9e0042782dcfec34d523a3eb7f
    mem[576] = 0x7d3e49f2d5cdf2b57e6d93ff59a36da10e9271d5
    mem[608] = 0x37f8c637b6d6fd4fb1a554dcbba7f27cdba0104
    mem[640] = 0x6ca3bb1345147dc4fc8e2facf85eae91107d3992
    mem[672] = 0xc775499bde180c33d73ade1114ddd2dcff739ad8
    mem[704] = 0x87eeb859ecc64d118e1edf7acdf6950a9f5de18a
    mem[736] = 0x4588911348051a2c949793175cd313bd98ff21e9
    mem[768] = 0x1999fae8307c3f475f68fee33a9f4554ec4bae3c
    mem[800] = 0xadb94450916b6d79d570998bcee5c7e2bc141764
    mem[832] = 0x18bb4310ac1b24ef548afb492a6f83f87c7880d0
    mem[864] = 0xd58fb7eaa42556fb570e1d30d5a9625db8896b1d
    mem[896] = 0xc53d56c852acb9e30d1faa7daeee8df868ab48af
    mem[928] = 0x19b8fcdbb099d810860ec89127ee7bdf9cc48b25
    mem[960] = 0x8bd37c2b6e820f67a236fa44d958222c87de5fcd
    mem[992] = 0x3cc799aa42b2af5aae96871ae21cf899d9f8314c
    mem[1024] = 0xd14be1b286367779242d258b56973442d84b5d6b
    mem[1056] = 0x81802283055b116a6aba4d053f3d3f2ed71c99bb
    mem[1088] = 0x7f8ea6992cf29fa43ab29fd3af0d53f9a0b5bcb6
    mem[1120] = 0xfa0febe39f10be31b3c3e945a3cc9196df7c69dc
    mem[1152] = 0xac58f1a973ff600c19ecdd3ec97bc1535489ae5f
    mem[1184] = 0xeb5fbbed0856f28d36519ec057228ced49702524
    mem[1216] = 0x8074297bc80609d69563cf47572bc046d10c8cad
    mem[1248] = 0xf5c25657bf3f7f7717d1b59f8eec4087ca17eb3a
    mem[1280] = 0x57fa4dfc1cc48af7235466c06d07abe7b7f83cc7
    sub_14c2a8e8.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_14c2a8e8[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_14c2a8e8.length > idx:
        sub_14c2a8e8[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x4c2d6eec70380009d9a2aa412cf051b5ad6f4fbb
    mem[1344] = 0x9b0be4f10b6175e2b29e70c09b5c5676c4e9e5f8
    mem[1376] = 0x422458dac74bba36a1545c4047fc0d687d0760a2
    mem[1408] = 0xda945a2a672ce80af97e52e130b80693a305fa4d
    mem[1440] = 0x1acb9e8e58d4b73c78dfc2be020fa9eaf1d78255
    mem[1472] = 0x1b1b828315767c8fc8adce97337e8d5c5ffe14ca
    mem[1504] = 0x9c5194e1b1c188ef21a156af4f5458dbbabfcc5d
    mem[1536] = 0xe1878182dfa5b0ffb93f8247f05fa0b6c58e5374
    mem[1568] = 0x2f1fe941bad8e1c8a73449498336133a1b146060
    mem[1600] = 0x71b5cd06ba7c58153d5ea838eedd3e9348553247
    mem[1632] = 0xd6c484bda6c15a2bc108fd163c817bcd58f0bf19
    mem[1664] = 0x22ad7a2ecdbe0c7d8152dae6820e816ee7100c9d
    mem[1696] = 0x37b0f6eeafcbfb5eb35b84d47d435ce5065b5214
    mem[1728] = 0x7d4f79ea2e4be7cc4a5e7b526149040e72fe59b5
    mem[1760] = 0x51ec89f1fcfed8c69a1b0865a7550ece0677cf5f
    mem[1792] = 0x6e23448dfe58b451639271e357f799adf2dd7881
    mem[1824] = 0x42565a9963698b066bf7867336d47863b7f90bc2
    mem[1856] = 0xd3ebb57a4b7f294616563165d07ee259197ac44d
    mem[1888] = 0xfbe64628a1b9bd2d86b8b12a266e1b5f9d57dd16
    mem[1920] = 0xb293ad89f6b226b5028364bc0f8fcf4f413c3e02
    mem[1952] = 0x40176cf51dfc80c7cc9ac80814e0ce921e46d242
    mem[1984] = 0x6f99c5f762bdb8c494105d1e0508dc4f8f2094c2
    mem[2016] = 0x3e4ebc9199b08a9fd670165f429da35f3602d99f
    mem[2048] = 0x7541816221d50767ef79ede02c9758de9855fc47
    mem[2080] = 0x4239870008c1b3d447af124b950a9bb2037416e3
    mem[2112] = 0xc6b2e7de5ff6dfa2e702cd9082aaa534c1b9ac33
    mem[2144] = 0xe9346e83488d55320a8541eb79db695fa41c5c0b
    mem[2176] = 0x3aff675b2d9b90a5b5c3b7c56d99ed56631fdccf
    mem[2208] = 0x2c38059c1f63bac925ade9daa63958c71072a48
    mem[2240] = 0xcef019e1ec96c5ffb29244f507ea254d5270e810
    mem[2272] = 0x4643d20e3f8d83cb276c427e4a9166ff084f8ac9
    mem[2304] = 0x5b4d1096679aa930b00d41f220d9efe8a5bf2b88
    mem[2336] = 0xe466e2b99b9d0d14f9b2859f48b883e3bc44bc7b
    mem[2368] = 0xdaf830a124db4b5492952c29611f4d359ee27a35
    mem[2400] = 0x79dae47f80329a1f4c7319e4aa3fd6b981a3a26e
    mem[2432] = 0x72c19a2a93ff73192cb0394dcc468a718b9c3ec9
    mem[2464] = 0x4cec038889fe440059d9c886bc1bd1941026c670
    mem[2496] = 0x37a634ed41c218d048dcb6193917f7e099dca0f4
    sub_7232a560.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_7232a560[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7232a560.length > idx:
        sub_7232a560[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_7232a560.length:
        if not sub_14c2a8e8.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7232a560.length, sub_14c2a8e8.length
        else:
            mem[2660] = address(sub_14c2a8e8.field_0)
            idx = 2660
            s = 0
            while (32 * sub_14c2a8e8.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_14c2a8e8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_7232a560.length, sub_14c2a8e8.length, mem[2660 len 32 * sub_14c2a8e8.length]
    else:
        mem[2628] = address(sub_7232a560.field_0)
        idx = 2628
        s = 0
        while (32 * sub_7232a560.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_7232a560[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_7232a560.length) + 2628] = sub_14c2a8e8.length
        if not sub_14c2a8e8.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7232a560.length, data=mem[2628 len (32 * sub_7232a560.length) + 32]), (32 * sub_7232a560.length) + 96
        else:
            mem[(32 * sub_7232a560.length) + 2660] = address(sub_14c2a8e8.field_0)
            idx = (32 * sub_7232a560.length) + 2660
            s = 0
            while (32 * sub_7232a560.length) + (32 * sub_14c2a8e8.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_14c2a8e8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_7232a560.length, data=mem[2628 len (32 * sub_7232a560.length) + (32 * sub_14c2a8e8.length) + 32]), (32 * sub_7232a560.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
