contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3653]




// =====================  Runtime code  =====================


mapping of struct sub_d3965ab0;
mapping of struct sub_c0faabc5;
array of struct sub_cd6976df;

function sub_3c4b5b75(?) {
    mem[160] = sub_c0faabc5[arg1].field_0
    idx = 160
    s = 0
    while sub_c0faabc5[arg1].length + 128 > idx:
        mem[idx + 32] = sub_c0faabc5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_c0faabc5[arg1].length, data=mem[160 len sub_c0faabc5[arg1].length]), sub_c0faabc5[arg1].field_256
}

function sub_c0faabc5(?) {
    mem[128] = sub_c0faabc5[arg1].field_0
    idx = 128
    s = 0
    while sub_c0faabc5[arg1].length + 96 > idx:
        mem[idx + 32] = sub_c0faabc5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_c0faabc5[arg1].length, data=mem[128 len sub_c0faabc5[arg1].length]), 
           sub_c0faabc5[arg1].field_256,
           bool(uint8(sub_c0faabc5[arg1].field_512))
}

function sub_c6940e4e(?) {
    return sub_c0faabc5[arg1].field_256
}

function sub_cd6976df(?) {
    require 0 < sub_cd6976df[arg1].field_0
    return sub_cd6976df[arg1].field_256
}

function sub_d3965ab0(?) {
    return sub_d3965ab0[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_a73c148a(?) {
    require not uint8(sub_c0faabc5[arg2].field_512)
    sub_c0faabc5[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_c0faabc5[arg2].field_256 = 0
    uint8(sub_c0faabc5[arg2].field_512) = 1
    return 1
}

function sub_86fd8a1c(?) {
    require not uint8(sub_d3965ab0[arg3].field_512)
    sub_d3965ab0[arg3][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_d3965ab0[arg3].field_256 = arg1
    uint8(sub_d3965ab0[arg3].field_512) = 1
    sub_d3965ab0[arg3].field_768 = arg3
    sub_d3965ab0[arg3].field_1024 = 0
    sub_d3965ab0[arg3].field_1280 = arg4
    return 1
}

function getUserDetails(uint256 arg1) {
    mem[160] = sub_d3965ab0[arg1].field_0
    idx = 160
    s = 0
    while sub_d3965ab0[arg1].length + 128 > idx:
        mem[idx + 32] = sub_d3965ab0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_d3965ab0[arg1].field_256, 
           Array(len=sub_d3965ab0[arg1].length, data=mem[160 len sub_d3965ab0[arg1].length]),
           sub_d3965ab0[arg1].field_768,
           sub_d3965ab0[arg1].field_1280,
           sub_d3965ab0[arg1].field_1024
}

function users(uint256 arg1) {
    mem[128] = sub_d3965ab0[arg1].field_0
    idx = 128
    s = 0
    while sub_d3965ab0[arg1].length + 96 > idx:
        mem[idx + 32] = sub_d3965ab0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_d3965ab0[arg1].length, data=mem[128 len sub_d3965ab0[arg1].length]), 
           sub_d3965ab0[arg1].field_256,
           bool(uint8(sub_d3965ab0[arg1].field_512)),
           sub_d3965ab0[arg1].field_768,
           sub_d3965ab0[arg1].field_1024,
           sub_d3965ab0[arg1].field_1280
}

function sub_77590ec1(?) {
    sub_cd6976df[arg3].field_0++
    if not sub_cd6976df[arg3].field_0 <= sub_cd6976df[arg3].field_0 + 1:
        mem[0] = sha3(arg3, 2)
        idx = 4 * sub_cd6976df[arg3].field_0 + 1
        while sha3(sha3(arg3, 2)) + (4 * sub_cd6976df[arg3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            stor[idx + sha3(mem[0]) + 3] = 0
            idx = idx + 4
            continue 
    sub_cd6976df[arg3][sub_cd6976df[arg3].field_0][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_cd6976df[arg3][sub_cd6976df[arg3].field_0].field_256 = arg2
    sub_cd6976df[arg3][sub_cd6976df[arg3].field_0].field_512 = arg3
    sub_cd6976df[arg3][sub_cd6976df[arg3].field_0].field_768 = arg4
    sub_d3965ab0[arg2].field_1024++
    sub_c0faabc5[arg4].field_256++
    return 0
}



}
