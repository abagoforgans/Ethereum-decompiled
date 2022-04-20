contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1331]




// =====================  Runtime code  =====================


#
#  - indexOf(string arg1, string arg2)
#
function _fallback() payable {
    revert
}

function compare(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if arg2.length >= arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                idx = idx + 1
                continue 
            return 1
    else:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                idx = idx + 1
                continue 
            return 1
    if arg1.length < arg2.length:
        return -1
    if arg1.length <= arg2.length:
        return 0
    return 1
}

function equal(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if arg2.length >= arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                require idx < arg2.length
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                    idx = idx + 1
                    continue 
                else:
                    return 0
            else:
                return 0
    else:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                require idx < arg2.length
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                    idx = idx + 1
                    continue 
                else:
                    return 0
            else:
                return 0
    if arg1.length >= arg2.length:
        if arg1.length <= arg2.length:
            return 1
        else:
            return 0
    else:
        return 0
}



}
