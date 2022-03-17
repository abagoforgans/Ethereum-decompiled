contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1730]




// =====================  Runtime code  =====================


array of uint8 stor1;
array of uint256 stor11;
uint8 stor2;
uint8 stor2; offset 8
array of uint256 stor3;

function _fallback() payable {
  stop
}

function getOccupies(uint8 arg1) payable {
    mem[64] = 960
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 864
    if var6002 - 1:
        mem[64] = 1056
        var5001 = 960
        var5002 = 3
        continue 
    require arg1 < 32
    mem[64] = 1216
    s = 960
    idx = 0
    while idx < 8:
        _7 = mem[64]
        mem[64] = mem[64] + 96
        mem[_7] = ('signextend', 0, ('div', ('stor', ('array', ('mul', 9, ('param', 'arg1')), ('name', 'stor3', 3))), ('exp', 256, 0)))
        t = _7
        s = 0
        while _7 + 96 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('stor', ('add', 4, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('mul', 9, ('param', 'arg1'))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_7 + 64] = _7
        t = _7 + 96
        s = 3
        continue 
    s = mem[64]
    idx = 0
    while idx < 8:
        mem[s len 96] = mem[mem[(32 * idx) + 960] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 768
}

function getAttachesto(uint8 arg1) payable {
    mem[96] = 0
    require arg1 < 32
    mem[64] = (32 * stor11[arg1]) + 160
    mem[128] = stor11[arg1]
    s = 160
    idx = 0
    while idx < stor11[arg1]:
        mem[0] = (9 * arg1) + 11
        _11 = mem[64]
        mem[64] = mem[64] + 96
        mem[_11] = ('signextend', 0, ('div', ('type', 256, ('stor', ('sha3', ('add', 11, ('mul', 9, ('param', 'arg1')))))), ('exp', 256, 0)))
        t = _11
        s = 0
        while _11 + 96 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 11, ('mul', 9, ('param', 'arg1'))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_11 + 64] = _11
        t = _11 + 96
        s = 3
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _14 = mem[128]
    s = mem[64] + 64
    idx = 0
    while idx < _14:
        mem[s len 96] = mem[mem[(32 * idx) + 160] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _12 + (96 * _14) + -mem[64] + 64
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
    if not uint8(stor2.field_0):
        require arg1 < 32
        s = (9 * arg1) + 3
        idx = 96
        while 352 > idx:
            t = 0
            u = mem[idx]
            while mem[idx] + 96 > u:
                uint256(stor[s]) = mem[u + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[s])
                t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                u = u + 32
                continue 
            u = t
            v = s
            while u:
                uint256(stor[v]) = !(255 * 256^u) and uint256(stor[v])
                u = u + -(u + 1 / 32) + (-1 * u * u + 1 / 32) + 1
                v = (u + 1 / 32) + v
                continue 
            u = s + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (t * None + 3 / 32)
            while s + 1 > u:
                uint8(stor[u]) = 0
                u = u + 1
                continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while (9 * arg1) + 11 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        require arg1 < 32
        uint256(stor[0.03125 / arg1]) = 256^(arg1 % 32) or uint256(stor[0.03125 / arg1]) and !(255 * 256^(arg1 % 32))
        idx = 0
        while uint8(idx) < 32:
            require idx < 32
            if stor(0.03125 / idx)[uint8(idx)]:
                idx = idx + 1
                continue 
        uint8(stor2.field_0) = 1
}

function sub_197bcde7(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13 len 96] = call.data[arg2 + (96 * idx) + 36 len 96]
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    if not uint8(stor2.field_8):
        require arg1 < 32
        stor11[arg1] = mem[96]
        if not stor11[arg1] <= mem[96]:
            idx = mem[96]
            while stor11[arg1] > idx:
                uint256(stor[idx + sha3((9 * arg1) + 11)]) = 0
                idx = idx + 1
                continue 
        require arg1 < 32
        stor11[arg1] = mem[96]
        mem[0] = (9 * arg1) + 11
        if not mem[96]:
            idx = 0
            while stor11[arg1] > idx:
                uint256(stor[idx + sha3((9 * arg1) + 11)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                t = 0
                u = mem[idx]
                while mem[idx] + 96 > u:
                    uint256(stor[s + sha3((9 * arg1) + 11)]) = mem[u + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[s + sha3((9 * arg1) + 11)])
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    u = u + 32
                    continue 
                u = t
                v = s + sha3((9 * arg1) + 11)
                while u:
                    uint256(stor[v]) = !(255 * 256^u) and uint256(stor[v])
                    u = u + -(u + 1 / 32) + (-1 * u * u + 1 / 32) + 1
                    v = (u + 1 / 32) + v
                    continue 
                u = s + sha3((9 * arg1) + 11) + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (t * None + 3 / 32)
                while s + sha3((9 * arg1) + 11) + 1 > u:
                    uint8(stor[u]) = 0
                    u = u + 1
                    continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3((9 * arg1) + 11) + stor11[arg1] > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require arg1 < 32
        uint256(stor1[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor1[0.03125 / arg1])
        idx = 0
        while uint8(idx) < 32:
            require idx < 32
            if uint8(stor1[uint8(idx)]) != 0:
                idx = idx + 1
                continue 
        uint8(stor2.field_8) = 1
}



}
