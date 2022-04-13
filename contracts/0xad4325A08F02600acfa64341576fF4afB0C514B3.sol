contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[799 len 20]
    stor1 = code.data[831 len 20]
    return code.data[201 len 586]
}



// =====================  Runtime code  =====================


address sub_f0964241Address;
address sub_bc2e2aecAddress;

function sub_bc2e2aec(?) {
    return sub_bc2e2aecAddress
}

function sub_f0964241(?) {
    return sub_f0964241Address
}

function _fallback() payable {
    call sub_f0964241Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_bc2e2aecAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
