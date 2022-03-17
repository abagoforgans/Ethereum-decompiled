contract main {


// =======================  Init code  ======================


uint256 stor54;

function _fallback() payable {
    stor54 = msg.sender or Mask(96, 160, stor54)
    return code.data[36 len 1172]
}



// =====================  Runtime code  =====================


array of uint256 stor1;
uint8 locked; offset 160
address stor54;

function getLocked() payable {
    return locked
}

function kill() payable {
    if locked:
    if stor54 != msg.sender:
    selfdestruct(stor54)
}

function _fallback() payable {
  stop
}

function setLocked() payable {
    locked = 1
}

function getOccupies(uint8 arg1) payable {
    require arg1 < 18
    idx = 864
    s = 0
    while 1632 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('div', ('stor', ('mul', 3, ('param', 'arg1'))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('signextend', 0, ('stor', ('mul', 3, ('param', 'arg1')))), mem[896 len 736]
}

function getAttachesto(uint8 arg1) payable {
    require arg1 < 18
    idx = 1664
    s = 1
    while 3168 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('div', ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'stor1', 1))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('signextend', 0, ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'stor1', 1)))), 
           ('signextend', 0, ('div', ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'stor1', 1))), 256)),
           mem[1696 len 1472]
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
                require arg1 < 18
                require u < 24
                stor[(3 * arg1) + (0.03125 / u)] = mem[(32 * t) + mem[(32 * idx) + 96] + 31 len 1] * 256^(u % 32) or !(255 * 256^(u % 32)) and stor[(3 * arg1) + (0.03125 / u)]
                t = t + 1
                u = u + 1
                continue 
            s = None
            idx = idx + 1
            s = s + None
            continue 
}

function sub_d7f3b73b(?) payable {
    mem[64] = 608
    s = 96
    idx = 0
    while idx < 16:
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
        while uint8(idx) < 16:
            t = 0
            u = s
            while uint8(t) < 3:
                require idx < 16
                require t < 3
                require arg1 < 18
                require u < 48
                stor[(3 * arg1) + (0.03125 / u) + 1] = mem[(32 * t) + mem[(32 * idx) + 96] + 31 len 1] * 256^(u % 32) or !(255 * 256^(u % 32)) and stor[(3 * arg1) + (0.03125 / u) + 1]
                t = t + 1
                u = u + 1
                continue 
            s = None
            idx = idx + 1
            s = s + None
            continue 
}



}
