contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
address stor1;

function _fallback() payable {
    address(stor1.field_0) = 0xc1cfa6ac1d7cf99bd1e145dcd04ec462b3b0c4da
    uint8(stor1.field_160) = 255
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[151 len 2195]
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
    call address(stor1.field_0).accountBalances(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call address(stor1.field_0).withdraw(uint256 rg1) with:
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
    call address(stor1.field_0).scheduleCall(address rg1, bytes4 rg2, bytes32 rg3, uint256 rg4, uint8 rg5, uint256 rg6) with:
         gas gas_remaining - 25050 wei
        args 0, 0, Mask(32, 224, sha3('doIt()')), sha3(None), block.number + arg1, uint8(stor1.field_0), 0
    require ext_call.success
}

function scheduleUndoIt(uint256 arg1) payable {
    call address(stor1.field_0).scheduleCall(address rg1, bytes4 rg2, bytes32 rg3, uint256 rg4, uint8 rg5, uint256 rg6) with:
         gas gas_remaining - 25050 wei
        args 0, 0, Mask(32, 224, sha3('undoIt()')), sha3(None), block.number + arg1, uint8(stor1.field_0), 0
    require ext_call.success
}

function scheduleSetIt(uint256 arg1, uint256 arg2) payable {
    call address(stor1.field_0) with:
       funct Mask(32, 224, sha3('registerData()')) >> 224
         gas gas_remaining - 25050 wei
        args arg2
    call address(stor1.field_0).scheduleCall(address rg1, bytes4 rg2, bytes32 rg3, uint256 rg4, uint8 rg5, uint256 rg6) with:
         gas gas_remaining - 25050 wei
        args 0, 0, Mask(32, 224, sha3('setIt(uint256)')), sha3(arg2), block.number + arg1, uint8(stor1.field_0), 0
    require ext_call.success
}



}
