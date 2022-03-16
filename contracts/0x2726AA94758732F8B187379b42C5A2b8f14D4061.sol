contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint8 stor1; offset 8
uint8 stor2;
uint8 stor2; offset 8

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint8(stor1.field_0) = 0
    uint8(stor2.field_0) = 1
    uint8(stor1.field_8) = 2
    uint8(stor2.field_8) = 3
    return code.data[342 len 347]
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
