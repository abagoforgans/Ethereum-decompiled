contract main {


// =======================  Init code  ======================


const _fallback = code.data[23 len 145]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function forward(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
