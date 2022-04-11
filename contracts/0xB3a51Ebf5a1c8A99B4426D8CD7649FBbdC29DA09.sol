contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x94e66d0f1a95381b5bfc9b929546d87a0dab4a23
    require not msg.value
    return code.data[65 len 160]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    if eth.balance(this.address) < 10^16:
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
