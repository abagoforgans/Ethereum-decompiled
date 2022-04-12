contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = 0xe736bfb1029ec9e60d18be0148487dd277022ca2
    stor1 = 0x62e3eb0d8f3b8d765a25e4e23c8c145ca6f93de8
    return code.data[202 len 268]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    call stor0 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
