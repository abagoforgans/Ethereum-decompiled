contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    idx = 0
    s = 0
    while uint8(idx) < 10:
        require s < 10
        if uint8(var12004) >= 10:
            idx = idx + 1
            s = var12004
            continue 
        require s < 10
        require idx < 10
        stor[(0.03125 / idx) + s + 1] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + s + 1]
        require s + 1 < 10
        u = s
        t = s
        while uint8(t + 1) < 10:
            require t + 1 < 10
            require idx < 10
            stor[(0.03125 / idx) + t + 3] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + t + 3]
            require t + 2 < 10
            u = t + 1
            t = t + 1
            continue 
        idx = idx + 1
        s = None + 1
        continue 
    return code.data[215 len 347]
}



// =====================  Runtime code  =====================


address stor0;

function getValue(uint8 arg1, uint8 arg2) payable {
    require arg1 < 10
    require arg2 < 10
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
