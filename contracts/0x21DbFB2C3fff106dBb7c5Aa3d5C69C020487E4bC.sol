contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function sub_e3418bea(?) {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require not ext_call.success
    revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3c884a42(?) payable {
    call this.address with:
       funct Mask(32, 224, sha3('transfer_and_revert()')) >> 224
         gas gas_remaining wei
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
