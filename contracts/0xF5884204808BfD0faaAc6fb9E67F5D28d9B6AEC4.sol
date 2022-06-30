contract main {




// =====================  Runtime code  =====================


address stor0;

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(0x4655e9ae5634a6e72dfc6fb712f753985979eca9)
    call 0x4655e9ae5634a6e72dfc6fb712f753985979eca9.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function tokenTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x4655e9ae5634a6e72dfc6fb712f753985979eca9)
    call 0x4655e9ae5634a6e72dfc6fb712f753985979eca9.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
