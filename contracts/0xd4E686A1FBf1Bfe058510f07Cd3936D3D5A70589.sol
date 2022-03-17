contract main {


// =======================  Init code  ======================


uint256 stor54;

function _fallback() payable {
    stor54 = msg.sender or Mask(96, 160, stor54)
    return code.data[36 len 950]
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

function initOccupies(uint8 arg1, int8[24] arg2) payable {
    mem[96 len 768] = call.data[36 len 768]
    if not locked:
        idx = 0
        while uint8(idx) < 24:
            require idx < 24
            require arg1 < 18
            require idx < 24
            stor[(3 * arg1) + (0.03125 / idx)] = mem[(32 * idx) + 127 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(3 * arg1) + (0.03125 / idx)]
            idx = idx + 1
            continue 
}

function initAttachesto(uint8 arg1, int8[48] arg2) payable {
    mem[96 len 1536] = call.data[36 len 1536]
    if not locked:
        idx = 0
        while uint8(idx) < 48:
            require idx < 48
            require arg1 < 18
            require idx < 48
            stor[(3 * arg1) + (0.03125 / idx) + 1] = mem[(32 * idx) + 127 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(3 * arg1) + (0.03125 / idx) + 1]
            idx = idx + 1
            continue 
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



}
