contract main {




// =====================  Runtime code  =====================


const sub_51fd6e9a(?) = eth.balance(this.address)


address owner;
address newOwner;
address sub_54a1cb32Address;

function sub_54a1cb32(?) {
    return sub_54a1cb32Address
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    emit DepositEther(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are not Authorized'
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'Sent a valid address'
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_c7b761d6(?) {
    if owner != msg.sender:
        revert with 0, 'You are not Authorized'
    if not arg1:
        revert with 0, 'Sent a valid address'
    sub_54a1cb32Address = arg1
}

function sub_94c8f312(?) {
    if not arg1:
        revert with 0, 'Sent a valid address'
    if not arg2:
        revert with 0, 'Sent a valid address'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_be2f7748(?) {
    if not arg1:
        revert with 0, 'Sent a valid address'
    if not arg2:
        revert with 0, 'Sent a valid address'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferEther(address arg1, uint256 arg2) payable {
    if sub_54a1cb32Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorized to transfer funds'
    if not arg1:
        revert with 0, 'Sent a valid address'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferEther(address(this.address), address(arg1), arg2);
    return 1
}

function sub_e69caf4c(?) {
    if sub_54a1cb32Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorized to transfer funds'
    if not arg1:
        revert with 0, 'Sent a valid address'
    if not arg2:
        revert with 0, 'Sent a valid address'
    if arg3 <= 0:
        revert with 0, 'Insufficient token balance'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Insufficient token balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb60f7fb6: address(arg1), address(this.address), address(arg2), arg3
    return 0
}

function sub_79cdd3b4(?) payable {
    if sub_54a1cb32Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorized to transfer funds'
    if not arg1:
        revert with 0, 'Sent a valid address'
    if not arg2:
        revert with 0, 'Sent a valid address'
    if arg3 <= 0:
        revert with 0, 'Insufficient token balance'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Insufficient token balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xb60f7fb6: address(arg1), address(this.address), address(arg2), arg3
    return 0
}



}
