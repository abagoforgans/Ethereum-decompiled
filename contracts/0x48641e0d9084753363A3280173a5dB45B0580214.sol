contract main {




// =====================  Runtime code  =====================


address sub_c30b8ee8Address;
address owner;

function owner() {
    return owner
}

function sub_c30b8ee8(?) {
    return sub_c30b8ee8Address
}

function collectFees() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.value < 10^16:
        revert with 0, '0.01 ETH Fee'
    require ext_code.size(sub_c30b8ee8Address)
    call sub_c30b8ee8Address.0xaeab24df with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
