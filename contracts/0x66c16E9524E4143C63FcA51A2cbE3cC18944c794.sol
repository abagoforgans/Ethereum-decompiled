contract main {




// =====================  Runtime code  =====================


const ETH = 0


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
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

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
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
    if not address(arg3):
        call arg2 with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg2 with:
             gas gas_remaining - 34710 wei
            args call.data[cd[132] + 36 len ('cd', 132).length]
    else:
        require ext_code.size(address(arg3))
        call address(arg3).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        call arg2 with:
             gas gas_remaining - 34710 wei
            args call.data[cd[132] + 36 len ('cd', 132).length]
        require ext_call.success
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function tradeForTokens(address[2] arg1, address arg2, bytes arg3, bytes arg4) {
    require ext_code.size(address(arg3))
    call address(arg3).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(arg3):
        call address(arg1) with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(arg1) with:
             gas gas_remaining - 34710 wei
            args arg4[all]
    else:
        require ext_code.size(address(arg3))
        call address(arg3).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        call address(arg1) with:
             gas gas_remaining - 34710 wei
            args arg4[all]
        require ext_call.success
    call arg2 with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
        args call.data[cd[132] + 36 len ('cd', 132).length]
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
