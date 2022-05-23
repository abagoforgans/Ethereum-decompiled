contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 appBalance;
address stor2;

function getAppBalance() {
    return appBalance[msg.sender]
}

function owner() {
    return owner
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

function transferToEscrow(address arg1, uint256 arg2) {
    require arg2 > 0
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + appBalance[msg.sender] >= appBalance[msg.sender]
    appBalance[msg.sender] += arg2
    return 1
}

function transferFromEscrow(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require arg2 <= appBalance[msg.sender]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 <= appBalance[msg.sender]
    appBalance[msg.sender] -= arg2
    return 1
}



}
