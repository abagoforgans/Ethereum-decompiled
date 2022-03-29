contract main {


// =======================  Init code  ======================


address stor35;

function _fallback() {
    stor35 = msg.sender
    return code.data[54 len 851]
}



// =====================  Runtime code  =====================


array of uint8 stor0;
uint8 locked; offset 160
address stor35;

function getLocked() {
    return bool(locked)
}

function getElevation(uint8 arg1, uint8 arg2) {
    require (33 * arg1) + arg2 < 1089
    return elevation[uint8((33 * arg1) + arg2)]
}

function kill() {
    if locked:
    if stor35 != msg.sender:
    selfdestruct(stor35)
}

function setLocked() {
    locked = 1
}

function _fallback() payable {
    revert 
}

function getElevations() {
    idx = 34944
    s = 0
    while 69792 > idx + 32:
        mem[idx + 32] = stor0[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return stor0.length, mem[34976 len 34816]
}

function initElevations(uint8 arg1, uint8[33] arg2) {
    mem[96 len 1056] = call.data[36 len 1056]
    if not locked:
        idx = 0
        while idx < 33:
            require idx + (33 * arg1) < 1089
            stor[0.03125 / idx + (33 * arg1)] = mem[(32 * idx) + 127 len 1] * 256^(idx + (33 * arg1) % 32) or !(255 * 256^(idx + (33 * arg1) % 32)) and stor[0.03125 / idx + (33 * arg1)]
            idx = idx + 1
            continue 
}



}
