contract main {


// =======================  Init code  ======================


address stor54;

function _fallback() {
    stor54 = msg.sender
    return code.data[54 len 1265]
}



// =====================  Runtime code  =====================


array of uint256 stor1;
uint8 locked; offset 160
address stor54;

function getLocked() {
    return bool(locked)
}

function kill() {
    if locked:
    if stor54 != msg.sender:
    selfdestruct(stor54)
}

function setLocked() {
    locked = 1
}

function _fallback() payable {
    revert 
}

function initOccupies(uint8 arg1, int8[24] arg2) {
    mem[64] = 864
    mem[96 len 768] = call.data[36 len 768]
    if not locked:
        idx = 0
        while uint8(idx) < 24:
            require arg1 < 18
            require uint8(idx) < 24
            stor[(uint8(idx) / 32) + (3 * arg1)] = uint8(('signextend', 0, ('mem', ('range', ('add', 96, ('mask_shl', 8, 0, 5, ('var', 0))), 32)))) * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(uint8(idx) / 32) + (3 * arg1)]
            idx = idx + 1
            continue 
}

function initAttachesto(uint8 arg1, int8[48] arg2) {
    mem[64] = 1632
    mem[96 len 1536] = call.data[36 len 1536]
    if not locked:
        idx = 0
        while uint8(idx) < 48:
            require arg1 < 18
            require uint8(idx) < 48
            stor[(uint8(idx) / 32) + (3 * arg1) + 1] = uint8(('signextend', 0, ('mem', ('range', ('add', 96, ('mask_shl', 8, 0, 5, ('var', 0))), 32)))) * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(uint8(idx) / 32) + (3 * arg1) + 1]
            idx = idx + 1
            continue 
}

function getAttachesto(uint8 arg1) {
    require arg1 < 18
    idx = 1632
    s = 0
    while 3168 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'stor1', 1))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('signextend', 0, ('signextend', 0, ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'stor1', 1))))), 
           mem[1664 len 1504]
}

function getOccupies(uint8 arg1) {
    require arg1 < 18
    idx = 896
    s = 1
    while 1632 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('stor', ('mul', 3, ('param', 'arg1'))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('signextend', 0, ('signextend', 0, ('stor', ('mul', 3, ('param', 'arg1'))))), 
           ('signextend', 0, ('signextend', 0, ('div', ('stor', ('mul', 3, ('param', 'arg1'))), 256))),
           mem[928 len 704]
}



}
