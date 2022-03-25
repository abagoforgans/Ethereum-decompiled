contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call 0x54e13ca8e3be520a6858acee04c6e1f562ddf443 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    call 0xf5200578ee1147886b55cfdc3e7798557dfaa1b4 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    return code.data[200 len 12]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}



}
