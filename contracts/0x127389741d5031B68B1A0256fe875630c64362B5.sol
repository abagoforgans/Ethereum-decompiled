contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 9
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 9
            require idx < 9
            stor[(2 * idx) + (18 * s) + 2] = Mask(96, 0, (uint8(stor0.field_160) * idx) + s)
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    return code.data[278 len 352]
}



// =====================  Runtime code  =====================


address stor0;

function getElevation(uint8 arg1, uint8 arg2) payable {
    require arg1 < 9
    require arg2 < 9
    return stor[(2 * arg2) + (18 * arg1) + 2]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
