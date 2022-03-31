contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[619 len 20]
    stor1 = code.data[651 len 20]
    return code.data[199 len 408]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function doit() payable {
    if msg.sender == stor0:
        call stor1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}



}
