contract main {


// =======================  Init code  ======================


uint8 stor1;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    return code.data[56 len 3019]
}



// =====================  Runtime code  =====================


#
#  - sub_249f7e47(?)
#
array of struct stor0;
uint8 sub_5c3375f4;

function sub_5c3375f4(?) {
    return sub_5c3375f4
}

function _fallback() payable {
    revert
}

function sub_219ea620(?) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (3 * stor0.length) + 3
        while sha3(0) + (3 * stor0.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    stor0[stor0.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_5c3375f4 = uint8(sub_5c3375f4 + 1)
}

function categories(uint256 arg1) {
    require arg1 < stor0.length
    mem[224] = stor0[arg1].field_0
    idx = 224
    s = 0
    while stor0[arg1].length + 224 > idx + 32:
        mem[idx + 32] = stor0[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 224] = stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 256] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0
    idx = stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 256
    s = 0
    while stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 288] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
    idx = stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 288
    s = 0
    while stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[224 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 32], stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length, mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 288 len stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length + 32 % 32)]), 
           stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 128,
           stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 160
}

function sub_b02c6516(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + 32]), arg1.length + 128
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 128
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + 32]), arg1.length + 128
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len floor32(arg2.length)]), arg1.length + 128
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
        if arg2.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg2.length + arg1.length]), arg1.length + 128
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
            emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 128
}



}
