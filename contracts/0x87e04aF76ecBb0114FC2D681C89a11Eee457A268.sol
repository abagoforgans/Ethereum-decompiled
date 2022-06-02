contract main {




// =====================  Runtime code  =====================


#
#  - sub_212c3925(?)
#  - sub_9e864f24(?)
#
address owner;
address hubAddress;
address sub_f58ec57eAddress;
address sub_f42cb038Address;
address profileAddress;
uint256 sub_67ebbdc6;

function hub() {
    return hubAddress
}

function sub_67ebbdc6(?) {
    return sub_67ebbdc6
}

function owner() {
    return owner
}

function profile() {
    return profileAddress
}

function sub_f42cb038(?) {
    return sub_f42cb038Address
}

function sub_f58ec57e(?) {
    return sub_f58ec57eAddress
}

function _fallback() payable {
    revert
}

function setDifficulty(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call this function'
    sub_67ebbdc6 = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call this function'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function payOut(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.keyHasPurpose(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(address(msg.sender, 0)), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(hubAddress)
    call hubAddress.0xe842426a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x97fa8406 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Identity does not have approval for using the contract'
    require ext_code.size(sub_f58ec57eAddress)
    call sub_f58ec57eAddress.0x38d525f1 with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Sender is not holding this data set!'
    require ext_code.size(sub_f58ec57eAddress)
    call sub_f58ec57eAddress.0xc2fb6096 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 60 * ext_call.return_data[0] / ext_call.return_data[0] == 60
    require ext_code.size(sub_f58ec57eAddress)
    call sub_f58ec57eAddress.0xe845c667 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 61 * ext_call.return_data[0] >= block.timestamp:
        revert with 0, 'Holding time not yet expired!'
    require ext_code.size(hubAddress)
    call hubAddress.0x6c167e03 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf40d71f1 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(hubAddress)
    call hubAddress.0x6c167e03 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f58ec57eAddress)
    call sub_f58ec57eAddress.0xa2657315 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa64b6e5f with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
