contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bid() payable {
    require ext_code.size(stor1)
    call stor1.0x1998aeef with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEarnings() {
    require ext_code.size(stor1)
    call stor1.0xb73c6ce9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdrawDividends() {
    require ext_code.size(stor1)
    call stor1.0x2e92abdd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
