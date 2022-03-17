contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 881]
}



// =====================  Runtime code  =====================


uint8 locked; offset 160
address stor0;
array of uint8 elevation;

function getLocked() payable {
    return locked
}

function getElevation(uint8 arg1, uint8 arg2) payable {
    require arg2 + (33 * arg1) < 1089
    return uint8(elevation[uint8(arg2 + (33 * arg1))])
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setLocked() payable {
    locked = 1
}

function getElevations() payable {
    idx = 34944
    s = 0
    while 69792 > idx + 32:
        mem[idx + 32] = uint8(elevation[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return uint8(elevation.length), mem[34976 len 34816]
}

function initElevations(uint8 arg1, uint8[33] arg2) payable {
    mem[96 len 1056] = call.data[36 len 1056]
    if not locked:
        idx = 0
        while idx < 33:
            require uint8(33 * arg1) + idx < 1089
            uint256(elevation[0.03125 / uint8(33 * arg1) + idx]) = mem[(32 * idx) + 96] * 256^(uint8(33 * arg1) + idx % 32) or uint256(elevation[0.03125 / uint8(33 * arg1) + idx]) and !(255 * 256^(uint8(33 * arg1) + idx % 32))
            idx = idx + 1
            continue 
}

function sub_abd6dc23(?) payable {
    mem[96 len 34848] = call.data[4 len 34848]
    if not locked:
        s = 0
        idx = 96
        while 34944 > idx:
            elevation.length = mem[idx] * 256^s or !(255 * 256^s) and elevation.length
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = 1089
        s = 1
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (-1087 * None + 3 / 32) + (None * None + 3 / 32) + 1
        while 36 > idx:
            uint8(stor[idx]) = 0
            idx = idx + 1
            continue 
}



}
