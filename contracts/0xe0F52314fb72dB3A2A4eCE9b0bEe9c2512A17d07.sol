contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 228]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function updateETH() payable {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) - msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
