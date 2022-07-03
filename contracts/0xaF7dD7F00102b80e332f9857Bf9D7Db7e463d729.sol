contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1757]
}



// =====================  Runtime code  =====================


address owner;
array of struct sub_206f0caa;

function sub_206f0caa(?) {
    require arg1 < sub_206f0caa.length
    mem[288] = stor[sha3((5 * arg1) + ('name', 'sub_206f0caa', 1) + 2)].field_0
    idx = 288
    s = 0
    while stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'sub_206f0caa', 1) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + 288] = stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length
    mem[stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + 320] = stor[sha3((5 * arg1) + ('name', 'sub_206f0caa', 1) + 3)].field_0
    idx = stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + 320
    s = 0
    while stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + 320 > idx + 32:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'sub_206f0caa', 1) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + 32 % 32) + 352] = stor[sha3((5 * arg1) + ('name', 'sub_206f0caa', 1) + 4)].field_0
    idx = stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + 32 % 32) + 352
    s = 0
    while stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 4].length + 352 > idx + 32:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'sub_206f0caa', 1) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_206f0caa[arg1].field_0, 
           sub_206f0caa[arg1].field_256,
           Array(len=stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length, data=mem[288 len stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + 32 % 32) + 32], stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 4].length, mem[stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + 32 % 32) + 352 len stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 4].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 4].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 4].length + 32 % 32)]),
           stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + 192,
           stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'sub_206f0caa', 1) + 3].length + 32 % 32) + 224
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_c51c0b53(?) {
    sub_206f0caa.length++
    if not sub_206f0caa.length <= sub_206f0caa.length + 1:
        mem[0] = 1
        idx = (5 * sub_206f0caa.length) + 5
        while sha3(1) + (5 * sub_206f0caa.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 3] = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 4] = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 5
            continue 
    sub_206f0caa[sub_206f0caa.length].field_0 = arg1
    sub_206f0caa[sub_206f0caa.length].field_256 = arg2
    stor[sha3((5 * sub_206f0caa.length) + ('name', 'sub_206f0caa', 1) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor[sha3((5 * sub_206f0caa.length) + ('name', 'sub_206f0caa', 1) + 3)][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor[sha3((5 * sub_206f0caa.length) + ('name', 'sub_206f0caa', 1) + 4)][].field_0 = Array(len=arg5.length, data=arg5[all])
    return 1
}



}
