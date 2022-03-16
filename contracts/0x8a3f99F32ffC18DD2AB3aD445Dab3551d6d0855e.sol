contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    idx = 0
    s = 0
    while uint8(idx) < 2:
        s = 0
        while uint8(s) < 2:
            require s < 2
            require idx < 2
            stor[(0.03125 / idx) + s + 1] = (s * 256^(idx % 32)) + (idx * 256^(idx % 32)) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + s + 1]
            s = s + 1
            continue 
        idx = idx + 1
        s = None
        continue 
    return code.data[195 len 347]
}



// =====================  Runtime code  =====================


address stor0;

function getValue(uint8 arg1, uint8 arg2) payable {
    require arg1 < 2
    require arg2 < 2
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
