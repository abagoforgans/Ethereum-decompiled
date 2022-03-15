contract main {


// =======================  Init code  ======================


const _fallback = code.data[17 len 155]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function forward(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 0 wei
    return ext_call.success
}



}
