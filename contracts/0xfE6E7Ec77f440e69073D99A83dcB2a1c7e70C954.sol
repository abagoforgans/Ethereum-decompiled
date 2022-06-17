contract main {




// =====================  Runtime code  =====================


address erc20ProxyAddress;
address erc20StoreAddress;

function erc20Proxy() {
    return erc20ProxyAddress
}

function erc20Store() {
    return erc20StoreAddress
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x5687f2b8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function increaseApprovalWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x5687f2b8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function decreaseApprovalWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] - arg3 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x5687f2b8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require 100 == calldata.size
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xe30443bc with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x21e5383a with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x23de6651 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFromWithSender(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == erc20ProxyAddress
    require 132 == calldata.size
    require arg3
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xe30443bc with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] - arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x21e5383a with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg2), address(arg1), ext_call.return_data[0] - arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x23de6651 with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
