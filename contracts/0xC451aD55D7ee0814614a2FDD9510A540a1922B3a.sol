contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage36' / 256
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
    return code.data[494 len 6747]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_6640e669;
array of struct sub_e2f4f862;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_6640e669(?) {
    require arg1 < sub_6640e669.length
    return sub_6640e669[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_e2f4f862(?) {
    require arg1 < sub_e2f4f862.length
    return sub_e2f4f862[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xd4b0722c55f275172f926ab73334762399f31499
    mem[128] = 0x9e10c4cd2cc65c03724e161dd253fca3491f8476
    mem[160] = 0x293a57d7e2e5fe0698d5121e1ea2649b80a2a60d
    mem[192] = 0xf0bd25fa01cdca779f987481292071a692811b9c
    mem[224] = 0xc162b1b817bd9408a3d9613cd0194aced57ea992
    mem[256] = 0x5dbd24617468d503b0d8eedab0b346048a85553f
    mem[288] = 0xe4b2f0094933aa3d3d6c3318604d631cde0f2b81
    mem[320] = 0x542cc657c75a167f6f112b49bd19b0f5ec51af89
    mem[352] = 0x5f9d4f5bf794efe17a66a6bddcb8eac1adb800f7
    mem[384] = 0x3d80d4729ee851b1a6151be76d2fda9670189bfb
    mem[416] = 0x20636df161df78e6385bc4de0d25fc8e59a94e4a
    mem[448] = 0x90eacce75859d9bd2dd4c70a4fb1ece026515e0e
    mem[480] = 0xdecfe72c0e1817d55b22dd0e00bbe978162e50e8
    mem[512] = 0x5ba13593609f09c313b5cbecd93412d2611d8237
    mem[544] = 0xc782a4fc07460751a564b564c9ff23cb22090074
    mem[576] = 0xa8dfdc71c273a4707d724e689a7b66005730fcef
    mem[608] = 0x4362204d8a679bab991d65a2dc2fe49d8dcf9fc6
    mem[640] = 0x1c6f4e6aea5677b196c3d8a6f99db3c1f9e35427
    mem[672] = 0xddc5385c44661a20bbdc1b421f66195bce83072d
    mem[704] = 0x5261aac82e66f13deaa07d6c2572bd9f14b6e923
    mem[736] = 0x264b004a7da2412311a8f482578e14a30076076d
    mem[768] = 0xbd7ca26b28556ec8b610d51bc98bc5a6680fd788
    mem[800] = 0xdaa18cde66d20697bd4fd6e62332187424022a3c
    mem[832] = 0x388e239daab775be5522552fb04295c6ba8214af
    mem[864] = 0x6409655dd7d48acc525a2b73d5f1f9c6724a803a
    mem[896] = 0x44d2f1205d38bab04b1e9e652f1120068ae4bfb2
    mem[928] = 0x830453ad4e305040de87b67f1f3e05533122586b
    mem[960] = 0x848fe2dc4df6be3023bd0adefd54ab63912b840
    mem[992] = 0xd115c9b1e7a9cdb076eba483f26aca996c79827d
    mem[1024] = 0xd6750dcf29c3ba5d43324f8ef74809d4966df398
    mem[1056] = 0x2df97325c0cc7cafa6dc6f014fd230c1bf40860c
    mem[1088] = 0x48e6a7370bb1736e0dbe5e2fe3df40461730a518
    mem[1120] = 0xac1497b94d2dee7b3ed7addd134c94e1ed2a02cc
    mem[1152] = 0x1cda869c6732e1b557211229a03a3a54fc73327a
    mem[1184] = 0xa8d706423ea1620f541ded3ce8c27c7cce164878
    mem[1216] = 0xcb7257b329579bcb67f7068e8890147598f793f6
    mem[1248] = 0x70ce7204cf0d8002161cf2b4ddb0f083378b2648
    mem[1280] = 0x298d70138f5bbc9abb0a896a982af35d8bb02356
    sub_e2f4f862.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_e2f4f862[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_e2f4f862.length > idx:
        sub_e2f4f862[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xd866d87376194334d1bff88d40b2237c97ccb061
    mem[1344] = 0xc82cfd8a4a323b11b8a82226818ac13e2ce67ac9
    mem[1376] = 0x8c2065946c2943dc0ca5aeda177130623a24b608
    mem[1408] = 0x358319a1d24ffbad43b1d8468d9927cecb27fdda
    mem[1440] = 0x5761ac83f806eabb8b476188a8d19c7142deaf9f
    mem[1472] = 0x7078601e3411d3c1bf0bba25cda4d114d1ab3249
    mem[1504] = 0xab91e91d0600fd9a221523a3d687512f2144b96d
    mem[1536] = 0x3ed94d10b5cf3fcac835ac3761cecfee4f33cb38
    mem[1568] = 0xe260a5c604f4b83515bc7f0d6d656944d13255b0
    mem[1600] = 0x11cf8664f5ff8cfb0e5e0370e7aa8644ac69e9ea
    mem[1632] = 0x9153d0da135637c2166067ad7a0d39a08a0a492c
    mem[1664] = 0xe8e23a471e3ba1e81d1c47c2933308a431ab66bc
    mem[1696] = 0x5d698041326fa0a8d238cea6ad4fe0571de33249
    mem[1728] = 0xd74527a37590bab03535930ff975062ef0a5e074
    mem[1760] = 0x3a1f852169494864550f587adcc5809b6fb508b5
    mem[1792] = 0xdf4fc26b88446122ad9ece7df69421cf654791de
    mem[1824] = 0xe9f84a00e22454a45d4d6c530da64b30ec695e67
    mem[1856] = 0xfafa10600696254ace2cdce4c8bb59f993795b33
    mem[1888] = 0x2bb02c21d149ca480c36a4481035bd90df6a0ce6
    mem[1920] = 0x6a9c8ba93d8c3fb6563dc9d8d553933adba2a069
    mem[1952] = 0x297a9813e7d5090fd516ad83eb0abdd826865661
    mem[1984] = 0xc9e62389ab3b99efce304b506b2fd0d1a42b93a9
    mem[2016] = 0x7bb38c55cb03ee4f824a9dd0795b086703863f17
    mem[2048] = 0xe84cb28ace3ceb9bd20690967c67eed15eacb502
    mem[2080] = 0x967a41426752ab9854f1c51da81e5fadedc8783b
    mem[2112] = 0xc6299917784a23beb7898e53d30e5e0cf3127315
    mem[2144] = 0x99b0e15ea15b9516ff318b2e711903335010fc86
    mem[2176] = 0x7e45b04bfa3b84ff70b043e9dd70e53be9f85cf7
    mem[2208] = 0xb1bd3a2e8306fbf0045231de6fdc79fcc15b9902
    mem[2240] = 0x5c73b97dfa239d8e8242bf4bcbaac414b4e8afe2
    mem[2272] = 0x85e8dcad2ed2340756b02016a0664c19e09a38d9
    mem[2304] = 0xf9b5c0732bd052c80e8332aa1aa84223591d01c1
    mem[2336] = 0x2c1b4aa1114a98e0897eac14e66ae22521a87ddc
    mem[2368] = 0x7088081a46e820a570727a2df7db167e2b7b98e3
    mem[2400] = 0x2e3483cf6a2c4ab12931cb105dc83d98be628104
    mem[2432] = 0xdd6175f316676110945c4c33f7e3793536b0e920
    mem[2464] = 0xdc9ef011175b0b9f9b3c3025c3c8bf4cbae03362
    mem[2496] = 0x2a2989344bd34a7e23d8f7847ad9f9fe635adc63
    sub_6640e669.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_6640e669[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_6640e669.length > idx:
        sub_6640e669[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_6640e669.length:
        if not sub_e2f4f862.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_6640e669.length, sub_e2f4f862.length
        else:
            mem[2660] = address(sub_e2f4f862.field_0)
            idx = 2660
            s = 0
            while (32 * sub_e2f4f862.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_e2f4f862[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_6640e669.length, sub_e2f4f862.length, mem[2660 len 32 * sub_e2f4f862.length]
    else:
        mem[2628] = address(sub_6640e669.field_0)
        idx = 2628
        s = 0
        while (32 * sub_6640e669.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_6640e669[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_6640e669.length) + 2628] = sub_e2f4f862.length
        if not sub_e2f4f862.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_6640e669.length, data=mem[2628 len (32 * sub_6640e669.length) + 32]), (32 * sub_6640e669.length) + 96
        else:
            mem[(32 * sub_6640e669.length) + 2660] = address(sub_e2f4f862.field_0)
            idx = (32 * sub_6640e669.length) + 2660
            s = 0
            while (32 * sub_6640e669.length) + (32 * sub_e2f4f862.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_e2f4f862[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_6640e669.length, data=mem[2628 len (32 * sub_6640e669.length) + (32 * sub_e2f4f862.length) + 32]), (32 * sub_6640e669.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
