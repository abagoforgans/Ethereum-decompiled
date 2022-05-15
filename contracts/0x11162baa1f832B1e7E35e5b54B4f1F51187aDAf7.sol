contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function execute(address arg1, bytes arg2) payable {
    call arg1 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
        args arg2[all]
    return bool(ext_call.success)
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function trade(address[2] arg1, address arg2, bytes arg3, bytes arg4) payable {
    call address(arg1) with:
       value msg.value wei
         gas gas_remaining - 34710 wei
        args arg4[all]
    require ext_call.success
    require ext_code.size(address(arg3))
    call address(arg3).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    call address(arg3).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
        args call.data[cd[132] + 36 len ('cd', 132).length]
    require ext_call.success
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
