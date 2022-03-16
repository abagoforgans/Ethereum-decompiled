contract main {


// =======================  Init code  ======================


uint256 stor0;
bool stor1; offset 256
uint8 stor1; offset 160
address stor1;

function _fallback() payable {
    address(stor1.field_0) = 0xb0059e72ae1802fa1e1add5e7d0cb0eec1cc0cc1
    uint8(stor1.field_160) = 255
    stor1.field_256 % 1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[110 len 1053]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1;
uint8 flag; offset 168
uint128 stor1; offset 160
address stor1;
uint256 value;

function value() payable {
    return value
}

function flag() payable {
    return flag
}

function kill() payable {
    if stor0 != msg.sender:
    call address(stor1.field_0).0x6ff96d17 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call address(stor1.field_0).0x2e1a7d4d with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function doIt() payable {
    flag = 1
}

function undoIt() payable {
    flag = 0
}

function setIt(uint256 arg1) payable {
  stop
}

function sub_12055e8f(?) payable {
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function scheduleDoIt(uint256 arg1) payable {
    call address(stor1.field_0).0x52afbc33 with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0xb29f083500000000000000000000000000000000000000000000000000000000, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470, arg1 + block.number, uint8(stor1.field_0), 0
    require ext_call.success
}

function scheduleUndoIt(uint256 arg1) payable {
    call address(stor1.field_0).0x52afbc33 with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0x185061da00000000000000000000000000000000000000000000000000000000, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470, arg1 + block.number, uint8(stor1.field_0), 0
    require ext_call.success
}

function scheduleSetIt(uint256 arg1, uint256 arg2) payable {
    call address(stor1.field_0).0x52afbc33 with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0xdd012a1500000000000000000000000000000000000000000000000000000000, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470, arg1 + block.number, uint8(stor1.field_0), 0
    require ext_call.success
}



}
