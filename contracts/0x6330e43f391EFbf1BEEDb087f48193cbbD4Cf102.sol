contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0 = code.data[1026 len 20]
    return code.data[95 len 919]
}



// =====================  Runtime code  =====================


address sub_82ee4ccbAddress;
address owner;

function sub_82ee4ccb(?) {
    return sub_82ee4ccbAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_b5594785(?) payable {
  stop
}

function sub_1cf4e10b(?) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function depositX(uint256 arg1) {
    require owner == msg.sender
    call sub_82ee4ccbAddress.deposit() with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    return bool(ext_call.success)
}

function sub_5781aa86(?) {
    require owner == msg.sender
    call sub_82ee4ccbAddress.withdraw(uint256 rg1) with:
         gas gas_remaining - 25710 wei
        args arg1
    return bool(ext_call.success)
}

function sub_1aff6ef3(?) {
    require owner == msg.sender
    call sub_82ee4ccbAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 25710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
    return bool(ext_call.success)
}



}
