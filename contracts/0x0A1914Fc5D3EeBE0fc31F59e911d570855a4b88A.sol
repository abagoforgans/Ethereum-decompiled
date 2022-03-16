contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 155]
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

function getByteFromByte32(bytes32 arg1, uint8 arg2) payable {
    return ((arg1 % 16^(-(2 * arg2 % 128) + 32)) - (arg1 % 16^(-(2 * arg2 % 128) + 32) % 16^(-(2 * arg2 % 128) + 30)) / 16^(-(2 * arg2 % 128) + 30) << 248)
}



}
