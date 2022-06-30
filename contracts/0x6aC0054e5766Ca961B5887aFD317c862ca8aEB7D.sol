contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function send(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
}



}
