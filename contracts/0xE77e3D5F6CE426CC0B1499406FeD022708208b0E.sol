contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 149]
}



// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() {
    return destinationAddress
}

function _fallback() payable {
    if msg.value <= 0:
    call destinationAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
