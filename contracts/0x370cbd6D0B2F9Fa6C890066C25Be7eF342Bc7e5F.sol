contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address sub_058df07bAddress;

function sub_058df07b(?) {
    return sub_058df07bAddress
}

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8205c9b7(?) {
    require msg.sender == owner
    require ext_code.size(sub_058df07bAddress)
    call sub_058df07bAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(sub_058df07bAddress)
    call sub_058df07bAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x796bebb7: ext_call.return_data[0], msg.sender
}

function transferTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(sub_058df07bAddress)
    call sub_058df07bAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= arg2
    require ext_code.size(sub_058df07bAddress)
    call sub_058df07bAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TransferTo(arg2, arg1);
}



}
