contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor3B8F;
uint256 stor3B90;
address stor3B9C;
address stor3B9D;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, '!') or Mask(88, 168, uint256(stor0)) or Mask(96, 160, address(stor0))
    stor3B8F = msg.sender or Mask(96, 160, stor3B8F)
    stor3B90 = block.number
    stor3B9C = 0x782bdf7015b71b64f6750796dd087fde32fd6fdc
    stor3B9D = 0x68549d7dbb7a956f955ec1263f55494f05972a6b
    return code.data[158 len 925]
}



// =====================  Runtime code  =====================


#
#  - sub_bd9807ea(?)
#
address stor0;
uint8 whatHappened; offset 160
uint8 sub_84ad4488; offset 168

function getWhatHappened() payable {
    return whatHappened
}

function sub_84ad4488(?) payable {
    return sub_84ad4488
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getUint8FromByte32(bytes32 arg1, uint8 arg2) payable {
    if arg2 != 0:
        return uint8((arg1 % 16^(-(2 * arg2 % 128) + 64)) - (arg1 % 16^(-(2 * arg2 % 128) + 64) % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
    return uint8(arg1 - (arg1 % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
}



}
