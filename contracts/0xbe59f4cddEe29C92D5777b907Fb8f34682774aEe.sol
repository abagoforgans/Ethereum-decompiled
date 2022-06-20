contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() {
    revert
}

function sub_c5a05892(?) {
    require calldata.size - 4 >= 352
    require msg.sender == stor0
    require arg4
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, arg11 * arg2 / arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9 - 100, arg10 + 100, arg11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.feeTake() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg11:
        require arg11
        require ext_call.return_data[0] * arg11 / arg11 == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args (arg11 - (ext_call.return_data[0] * arg11))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
