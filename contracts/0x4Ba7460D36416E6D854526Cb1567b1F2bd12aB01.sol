contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 698]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getDigitFromUint(uint256 arg1, uint8 arg2) payable {
    return ((arg1 % 10^(-arg2 + 64)) - (arg1 % 10^(-arg2 + 64) % 10^(-arg2 + 63)) / 10^(-arg2 + 63))
}

function getDigitFromByte32(bytes32 arg1, uint8 arg2) payable {
    return ((arg1 % 16^(-arg2 + 64)) - (arg1 % 16^(-arg2 + 64) % 16^(-arg2 + 63)) / 16^(-arg2 + 63))
}

function getByteFromByte32(bytes32 arg1, uint8 arg2) payable {
    return ((arg1 % 16^(-arg2 + 64)) - (arg1 % 16^(-arg2 + 64) % 16^(-arg2 + 62)) / 16^(-arg2 + 62) << 248)
}



}
