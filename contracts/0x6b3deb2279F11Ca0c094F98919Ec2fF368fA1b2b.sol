contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[93 len 146]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
