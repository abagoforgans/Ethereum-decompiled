contract main {




// =====================  Runtime code  =====================


address owner;
address liquidatorAddress;
address batAddress;

function liquidator() {
    return liquidatorAddress
}

function owner() {
    return owner
}

function bat() {
    return batAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(batAddress)
    call batAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function liquidateBorrow(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require ext_code.size(liquidatorAddress)
    call liquidatorAddress.0xe61604cf with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function returnToken() {
    require msg.sender == owner
    require ext_code.size(batAddress)
    call batAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(batAddress)
    call batAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7f7e8f43(?) {
    require msg.sender == owner
    require ext_code.size(batAddress)
    call batAddress.0xa9059cbb with:
         gas gas_remaining wei
        args liquidatorAddress, 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(liquidatorAddress)
    call liquidatorAddress.0xe61604cf with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
