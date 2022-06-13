contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call code.data[225 len 20] with:
       value msg.value - 2 * 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xc2c1163c1afc8020a4dae494b248f47e94772aa9 with:
       value 10^16 wei
         gas 0 wei
    return code.data[160 len 53]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
