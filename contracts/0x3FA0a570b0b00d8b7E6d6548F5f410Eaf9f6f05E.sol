contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1109]
}



// =====================  Runtime code  =====================


const sub_0caf0710(?) = 0x1400000000000000000000000000000000000000000000000000000000000000, 0x2000000000000000000000000000000000000000000000000000000000000000, 0

const log = ''

const sub_95431fbd(?) = Array(len=4, data=mem[288])


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_ac9fbfde(?) payable {
    return Array(len=arg1.length, data=arg1[all])
}

function sub_8f5d232d(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require 2 * idx < arg1.length
        require (2 * idx) + 1 < arg1.length
        if mem[(2 * idx) + 128 len 1] >= 97:
            if mem[(2 * idx) + 128 len 1] <= 102:
                if mem[(2 * idx) + 129 len 1] >= 97:
                    if mem[(2 * idx) + 129 len 1] <= 102:
                        require idx < 0
                        mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 87) + mem[(2 * idx) + 129 len 1] - 87 << 248
                        s = mem[(2 * idx) + 129 len 1] - 87
                        s = mem[(2 * idx) + 128 len 1] - 87
                        idx = idx + 1
                        continue 
                require idx < 0
                if mem[(2 * idx) + 129 len 1] < 48:
                    mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 87) + mem[(2 * idx) + 129 len 1] << 248
                    s = mem[(2 * idx) + 129 len 1]
                    s = mem[(2 * idx) + 128 len 1] - 87
                    idx = idx + 1
                    continue 
                if mem[(2 * idx) + 129 len 1] > 57:
                    mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 87) + mem[(2 * idx) + 129 len 1] << 248
                    s = mem[(2 * idx) + 129 len 1]
                    s = mem[(2 * idx) + 128 len 1] - 87
                    idx = idx + 1
                    continue 
                mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 87) + mem[(2 * idx) + 129 len 1] - 48 << 248
                s = mem[(2 * idx) + 129 len 1] - 48
                s = mem[(2 * idx) + 128 len 1] - 87
                idx = idx + 1
                continue 
        if mem[(2 * idx) + 128 len 1] < 48:
            if mem[(2 * idx) + 129 len 1] >= 97:
                if mem[(2 * idx) + 129 len 1] <= 102:
                    require idx < 0
                    mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] - 87 << 248
                    s = mem[(2 * idx) + 129 len 1] - 87
                    s = mem[(2 * idx) + 128 len 1]
                    idx = idx + 1
                    continue 
            require idx < 0
            if mem[(2 * idx) + 129 len 1] < 48:
                mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] << 248
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                continue 
            if mem[(2 * idx) + 129 len 1] > 57:
                mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] << 248
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] - 48 << 248
            s = mem[(2 * idx) + 129 len 1] - 48
            s = mem[(2 * idx) + 128 len 1]
            idx = idx + 1
            continue 
        if mem[(2 * idx) + 128 len 1] > 57:
            if mem[(2 * idx) + 129 len 1] >= 97:
                if mem[(2 * idx) + 129 len 1] <= 102:
                    require idx < 0
                    mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] - 87 << 248
                    s = mem[(2 * idx) + 129 len 1] - 87
                    s = mem[(2 * idx) + 128 len 1]
                    idx = idx + 1
                    continue 
            require idx < 0
            if mem[(2 * idx) + 129 len 1] < 48:
                mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] << 248
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                continue 
            if mem[(2 * idx) + 129 len 1] > 57:
                mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] << 248
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + idx + 224] = (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) + mem[(2 * idx) + 129 len 1] - 48 << 248
            s = mem[(2 * idx) + 129 len 1] - 48
            s = mem[(2 * idx) + 128 len 1]
            idx = idx + 1
            continue 
        if mem[(2 * idx) + 129 len 1] >= 97:
            if mem[(2 * idx) + 129 len 1] <= 102:
                require idx < 0
                mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 48) + mem[(2 * idx) + 129 len 1] - 87 << 248
                s = mem[(2 * idx) + 129 len 1] - 87
                s = mem[(2 * idx) + 128 len 1] - 48
                idx = idx + 1
                continue 
        require idx < 0
        if mem[(2 * idx) + 129 len 1] < 48:
            mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 48) + mem[(2 * idx) + 129 len 1] << 248
            s = mem[(2 * idx) + 129 len 1]
            s = mem[(2 * idx) + 128 len 1] - 48
            idx = idx + 1
            continue 
        if mem[(2 * idx) + 129 len 1] > 57:
            mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 48) + mem[(2 * idx) + 129 len 1] << 248
            s = mem[(2 * idx) + 129 len 1]
            s = mem[(2 * idx) + 128 len 1] - 48
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + idx + 224] = (16 * mem[(2 * idx) + 128 len 1] - 48) + mem[(2 * idx) + 129 len 1] - 48 << 248
        s = mem[(2 * idx) + 129 len 1] - 48
        s = mem[(2 * idx) + 128 len 1] - 48
        idx = idx + 1
        continue 
    return ''
}



}
