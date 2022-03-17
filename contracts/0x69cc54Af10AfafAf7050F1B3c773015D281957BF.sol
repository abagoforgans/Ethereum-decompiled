contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[776 len 32]
    return code.data[69 len 707]
}



// =====================  Runtime code  =====================


address stor0;
uint8 flag; offset 160
address stor1;
uint256 value;

function value() payable {
    return value
}

function flag() payable {
    return flag
}

function kill() payable {
    if stor0 == msg.sender:
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
    value = arg1
}

function scheduleDoIt(uint256 arg1) payable {
    call stor1.scheduleCall(address rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0xb29f083500000000000000000000000000000000000000000000000000000000, arg1 + block.number
    require ext_call.success
}

function scheduleUndoIt(uint256 arg1) payable {
    call stor1.scheduleCall(address rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0x185061da00000000000000000000000000000000000000000000000000000000, arg1 + block.number
    require ext_call.success
}

function scheduleSetIt(uint256 arg1, uint256 arg2) payable {
    call stor1.scheduleCall(address rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0xdd012a1500000000000000000000000000000000000000000000000000000000, arg1 + block.number
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       funct uint32(arg2)
         gas gas_remaining - 25050 wei
        args Mask(224, 0, arg2)
}



}
