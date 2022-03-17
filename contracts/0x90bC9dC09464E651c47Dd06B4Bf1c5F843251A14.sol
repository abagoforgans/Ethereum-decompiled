contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x7307d0b136a79bac718f43388aed706389c4588
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[74 len 1069]
}



// =====================  Runtime code  =====================


address stor0;
uint8 flag; offset 160
address sub_f087a960Address;
uint256 value;

function value() payable {
    return value
}

function flag() payable {
    return flag
}

function sub_f087a960(?) payable {
    return sub_f087a960Address
}

function kill() payable {
    if stor0 != msg.sender:
    call sub_f087a960Address.getAccountBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call sub_f087a960Address.withdraw(uint256 rg1) with:
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
    value = arg1
}

function scheduleDoIt(uint256 arg1) payable {
    call sub_f087a960Address.scheduleCall(address rg1, bytes4 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0xb29f083500000000000000000000000000000000000000000000000000000000, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470, arg1 + block.number
    require ext_call.success
}

function scheduleUndoIt(uint256 arg1) payable {
    call sub_f087a960Address.scheduleCall(address rg1, bytes4 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0x185061da00000000000000000000000000000000000000000000000000000000, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470, arg1 + block.number
    require ext_call.success
}

function scheduleSetIt(uint256 arg1, uint256 arg2) payable {
    call sub_f087a960Address.registerData() with:
         gas gas_remaining - 25050 wei
        args arg2
    call sub_f087a960Address.scheduleCall(address rg1, bytes4 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg2), Mask(32, 224, sha3('setIt(uint256)')), sha3(arg2), arg1 + block.number
    require ext_call.success
}



}
