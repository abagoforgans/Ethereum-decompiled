contract main {




// =====================  Runtime code  =====================


address owner;
address sub_df708a37Address;
address sub_bc09d387Address;
mapping of uint256 sub_b34fe5a5;
address sub_b3feeac3Address;

function owner() {
    return owner
}

function sub_b34fe5a5(?) {
    return sub_b34fe5a5[arg1]
}

function sub_b3feeac3(?) {
    return sub_b3feeac3Address
}

function sub_bc09d387(?) {
    return sub_bc09d387Address
}

function sub_df708a37(?) {
    return sub_df708a37Address
}

function _fallback() payable {
    revert
}

function sub_f03af083(?) {
    return (arg1 / 24 * 3600)
}

function sub_9b9b7249(?) {
    require owner == msg.sender
    sub_b3feeac3Address = arg1
}

function sub_b8ce65d3(?) {
    require owner == msg.sender
    sub_bc09d387Address = arg1
}

function sub_ddc6e982(?) {
    require owner == msg.sender
    sub_df708a37Address = arg1
}

function renounceOwnership() {
    require owner == msg.sender
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_92cd8306(?) {
    require sub_df708a37Address == msg.sender
    require arg1 > 0
    require arg1 < block.timestamp
    sub_b34fe5a5[arg1] = 0
    require ext_code.size(sub_b3feeac3Address)
    call sub_b3feeac3Address.0xa9059cbb with:
         gas gas_remaining wei
        args sub_bc09d387Address, sub_b34fe5a5[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit LogWithdrawal(sub_b34fe5a5[arg1], sub_bc09d387Address);
    return 1
}

function sub_bee9d69a(?) {
    require arg1 > 0
    require block.timestamp / 24 * 3600 < arg2
    require arg1 + sub_b34fe5a5[arg2] >= sub_b34fe5a5[arg2]
    sub_b34fe5a5[arg2] += arg1
    require ext_code.size(sub_b3feeac3Address)
    call sub_b3feeac3Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x4f28e91d: arg2, arg1, msg.sender
    return 1
}

function sub_0bbfa1ba(?) {
    require sub_df708a37Address == msg.sender
    require arg1 > 0
    require block.timestamp / 24 * 3600 > arg1
    sub_b34fe5a5[arg1] = 0
    require ext_code.size(sub_b3feeac3Address)
    call sub_b3feeac3Address.0xa9059cbb with:
         gas gas_remaining wei
        args sub_bc09d387Address, sub_b34fe5a5[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit LogWithdrawal(sub_b34fe5a5[arg1], sub_bc09d387Address);
    return 1
}



}
