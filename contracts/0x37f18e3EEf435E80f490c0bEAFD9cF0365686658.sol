contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    idx = 0
    while uint8(idx) < 2:
        require idx < 2
        stor1[0.03125 / idx] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor1[0.03125 / idx]
        idx = idx + 1
        continue 
    return code.data[148 len 331]
}



// =====================  Runtime code  =====================


address stor0;
array of uint8 value;

function getValue(uint8 arg1, uint8 arg2) payable {
    require arg1 < 2
    return value[uint8(arg1)]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
