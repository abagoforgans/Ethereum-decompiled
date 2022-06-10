contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function balanceOf(address arg1) {
    if stor1 == arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2, address arg3) {
    require ext_code.size(stor0)
    call stor0.isOperator(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor1 == arg1:
        call arg3 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
