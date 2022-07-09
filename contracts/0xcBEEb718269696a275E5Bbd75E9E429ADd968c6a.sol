contract main {




// =====================  Runtime code  =====================


address owner;
address erc20Address;
mapping of uint256 deposit;

function erc20() {
    return erc20Address
}

function owner() {
    return owner
}

function deposit(address arg1, address arg2) {
    return deposit[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(arg1);
}

function sub_d8f09de8(?) {
    require msg.sender == owner
    require arg3
    require deposit[address(arg1)][address(arg2)] >= arg3
    require arg3 <= deposit[address(arg1)][address(arg2)]
    deposit[address(arg1)][address(arg2)] -= arg3
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Cancel(arg3, arg1, arg2);
}

function cancel(address arg1, uint256 arg2) {
    require arg2
    require deposit[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= deposit[address(arg1)][address(msg.sender)]
    deposit[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Cancel(arg2, arg1, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require arg2
    require deposit[address(msg.sender)][address(arg1)] >= arg2
    require arg2 <= deposit[address(msg.sender)][address(arg1)]
    deposit[address(msg.sender)][address(arg1)] -= arg2
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Approval(arg2, msg.sender, arg1);
}

function approveOwner(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3
    require deposit[address(arg1)][address(arg2)] >= arg3
    require arg3 <= deposit[address(arg1)][address(arg2)]
    deposit[address(arg1)][address(arg2)] -= arg3
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Approval(arg3, arg1, arg2);
}

function sub_6d2b56b8(?) {
    require arg1
    require arg2
    require ext_code.size(erc20Address)
    call erc20Address.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require deposit[address(msg.sender)][address(arg1)] + arg2 >= deposit[address(msg.sender)][address(arg1)]
    deposit[address(msg.sender)][address(arg1)] += arg2
    require ext_code.size(erc20Address)
    call erc20Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xcd50f57c: arg2, msg.sender, arg1
}



}
