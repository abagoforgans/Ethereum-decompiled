contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x1383291272a46cf237a285066a7a1ec4f749e8cf
    return code.data[68 len 259]
}



// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() {
    return destinationAddress
}

function _fallback() payable {
    call destinationAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
