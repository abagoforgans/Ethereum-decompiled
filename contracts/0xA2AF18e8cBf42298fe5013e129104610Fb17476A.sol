contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call 0x1db3439a222c519ab44bb1144fc28167b4fa6ee6 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    call 0xd8da6bf26964af9d7eed9e03e53415d37aa96045 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    return code.data[200 len 12]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}



}
