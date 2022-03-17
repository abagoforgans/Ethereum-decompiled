contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1234]




// =====================  Runtime code  =====================


uint8 locked;
array of uint256 stor1;
array of uint256 stor2;

function getLocked() payable {
    return locked
}

function _fallback() payable {
  stop
}

function setLocked() payable {
    locked = 1
}

function getOccupies(uint8 arg1) payable {
    require arg1 < 32
    idx = 864
    s = 0
    while 1632 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('div', ('stor', ('array', ('mul', 2, ('param', 'arg1')), ('name', 'stor1', 1))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('signextend', 0, ('stor', ('array', ('mul', 2, ('param', 'arg1')), ('name', 'stor1', 1)))), mem[896 len 736]
}

function sub_1256c698(?) payable {
    mem[64] = 352
    s = 96
    idx = 0
    while idx < 8:
        _3 = mem[64]
        mem[64] = mem[64] + 96
        mem[_3 len 96] = call.data[(96 * idx) + 36 len 96]
        mem[s] = _3
        s = s + 32
        idx = idx + 1
        continue 
    if not locked:
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < 8:
            t = 0
            u = s
            while uint8(t) < 3:
                require idx < 8
                require t < 3
                require arg1 < 32
                require u < 24
                stor[(2 * arg1) + (0.03125 / u) + 1] = mem[(32 * t) + mem[(32 * idx) + 96] + 31 len 1] * 256^(u % 32) or !(255 * 256^(u % 32)) and stor[(2 * arg1) + (0.03125 / u) + 1]
                t = t + 1
                u = u + 1
                continue 
            s = None
            idx = idx + 1
            s = s + None
            continue 
}

function getAttachesto(uint8 arg1) payable {
    require arg1 < 32
    if stor2[arg1]:
        mem[160] = ('signextend', 0, ('stor', ('sha3', ('add', 2, ('mul', 2, ('param', 'arg1'))))))
        if (32 * stor2[arg1]) + 32 > 64:
            mem[192] = ('signextend', 0, ('div', ('stor', ('sha3', ('add', 2, ('mul', 2, ('param', 'arg1'))))), ('exp', 256, 1)))
            idx = 192
            s = 1
            while (32 * stor2[arg1]) + 128 > idx:
                mem[idx + 32] = ('signextend', 0, ('div', ('stor', ('sha3', ('add', 2, ('mul', 2, ('param', 'arg1'))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    return Array(len=stor2[arg1], data=mem[160 len 32 * stor2[arg1]])
}

function sub_197bcde7(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _15 = mem[64]
        mem[64] = mem[64] + 96
        mem[_15 len 96] = call.data[arg2 + (96 * idx) + 36 len 96]
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    if not locked:
        require arg1 < 32
        stor2[arg1] = 3 * mem[96]
        if not stor2[arg1] > 3 * mem[96]:
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < mem[96]:
                t = 0
                u = s
                while uint8(t) < 3:
                    require idx < mem[96]
                    require t < 3
                    _49 = mem[(32 * t) + mem[(32 * idx) + 128]]
                    require arg1 < 32
                    require u < stor2[arg1]
                    mem[0] = (2 * arg1) + 2
                    stor[(0.03125 / u) + sha3((2 * arg1) + 2)] = uint8(_49) * 256^(u % 32) or !(255 * 256^(u % 32)) and stor[(0.03125 / u) + sha3((2 * arg1) + 2)]
                    t = t + 1
                    u = u + 1
                    continue 
                s = None
                idx = idx + 1
                s = s + None
                continue 
        else:
            mem[0] = (2 * arg1) + 2
            idx = (3 * mem[96]) + 31 / 32
            while stor2[arg1] + 31 / 32 > idx:
                stor[idx + sha3((2 * arg1) + 2)] = 0
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < mem[96]:
                t = 0
                u = s
                while uint8(t) < 3:
                    require idx < mem[96]
                    require t < 3
                    _57 = mem[(32 * t) + mem[(32 * idx) + 128]]
                    require arg1 < 32
                    require u < stor2[arg1]
                    mem[0] = (2 * arg1) + 2
                    stor[(0.03125 / u) + sha3((2 * arg1) + 2)] = uint8(_57) * 256^(u % 32) or !(255 * 256^(u % 32)) and stor[(0.03125 / u) + sha3((2 * arg1) + 2)]
                    t = t + 1
                    u = u + 1
                    continue 
                s = None
                idx = idx + 1
                s = s + None
                continue 
}



}
