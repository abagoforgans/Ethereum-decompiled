contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1452]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function sub_0bdc832e(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        _22 = mem[64]
        mem[64] = mem[64] + 32
        mem[_22] = 0
        if stor0[idx].length != mem[96]:
            idx = idx + 1
            continue 
        s = 0
        while s < stor0[idx].length:
            require s < mem[96]
            require s < stor0[idx].length
            if not bool(stor0[idx].field_0):
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) + 256, s) << (('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            else:
                mem[0] = (2 * idx) + sha3(0)
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        require idx < stor0.length
        mem[0] = 0
        _39 = mem[64]
        mem[64] = mem[64] + 32
        mem[_39] = 0
        if stor[(2 * idx) + ('name', 'stor0', 0) + 1].length != mem[ceil32(arg1.length) + 128]:
            idx = idx + 1
            continue 
        s = 0
        while s < stor[(2 * idx) + ('name', 'stor0', 0) + 1].length:
            require s < mem[ceil32(arg1.length) + 128]
            require s < stor[(2 * idx) + ('name', 'stor0', 0) + 1].length
            if not bool(stor0[idx].field_256):
                if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) + 256, s) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) - 8 == Mask(8, 248, mem[ceil32(arg1.length) + s + 160]):
                    s = s + 1
                    continue 
            else:
                mem[0] = (2 * idx) + sha3(0) + 1
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('sha3', ('add', 1, ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('sha3', ('add', 1, ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))))), 0) - 8 == Mask(8, 248, mem[ceil32(arg1.length) + s + 160]):
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        return 1
    return 0
}

function addUser(string arg1, string arg2) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + ceil32(arg2.length) + 256
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 352
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = ceil32(arg1.length) + 128
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        _104 = mem[64]
        mem[64] = mem[64] + 32
        mem[_104] = 0
        if stor0[idx].length != mem[96]:
            idx = idx + 1
            continue 
        s = 0
        while s < stor0[idx].length:
            require s < mem[96]
            require s < stor0[idx].length
            if not bool(stor0[idx].field_0):
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) + 256, s) << (('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            else:
                mem[0] = (2 * idx) + sha3(0)
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        require idx < stor0.length
        mem[0] = 0
        _221 = mem[64]
        mem[64] = mem[64] + 32
        mem[_221] = 0
        if stor[(2 * idx) + ('name', 'stor0', 0) + 1].length != mem[ceil32(arg1.length) + 128]:
            idx = idx + 1
            continue 
        s = 0
        while s < stor[(2 * idx) + ('name', 'stor0', 0) + 1].length:
            require s < mem[ceil32(arg1.length) + 128]
            require s < stor[(2 * idx) + ('name', 'stor0', 0) + 1].length
            if not bool(stor0[idx].field_256):
                if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) + 256, s) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))), 0) - 8 == Mask(8, 248, mem[ceil32(arg1.length) + s + 160]):
                    s = s + 1
                    continue 
            else:
                mem[0] = (2 * idx) + sha3(0) + 1
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('sha3', ('add', 1, ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('sha3', ('add', 1, ('mul', 2, ('var', 0)), ('name', 'stor0', 0)))))), 0) - 8 == Mask(8, 248, mem[ceil32(arg1.length) + s + 160]):
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        return 1
    stor0.length++
    mem[0] = 0
    if not stor0.length > stor0.length + 1:
        _109 = mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]]
        mem[0] = (2 * stor0.length) + sha3(0)
        stor0[stor0.length][].field_0 = Array(len=_109, data=mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] + 32 len _109])
        _292 = mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 320]]
        mem[0] = (2 * stor0.length) + sha3(0) + 1
        stor[sha3((2 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=_292, data=mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] + 32 len _292])
    else:
        idx = 2 * stor0.length + 1
        while sha3(0) + (2 * stor0.length) > idx + sha3(mem[0]):
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
            idx = idx + 2
            continue 
        mem[0] = 0
        _215 = mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]]
        mem[0] = (2 * stor0.length) + sha3(0)
        stor0[stor0.length][].field_0 = Array(len=_215, data=mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] + 32 len _215])
        _355 = mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 320]]
        mem[0] = (2 * stor0.length) + sha3(0) + 1
        stor[sha3((2 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=_355, data=mem[mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] + 32 len _355])
    return 1
}



}
