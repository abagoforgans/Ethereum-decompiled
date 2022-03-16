contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 25
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    idx = 0
    s = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 25
            require idx < 25
            stor[(0.03125 / idx) + s + 1] = (uint8(stor0.field_160) * idx * 256^(idx % 32)) + (s * 256^(idx % 32)) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + s + 1]
            s = s + 1
            continue 
        idx = idx + 1
        s = None
        continue 
    return code.data[277 len 347]
}



// =====================  Runtime code  =====================


address stor0;

function getValue(uint8 arg1, uint8 arg2) payable {
    require arg1 < 25
    require arg2 < 25
    return value[uint8(arg2)]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
