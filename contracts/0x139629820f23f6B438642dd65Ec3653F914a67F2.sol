contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[96 len 184]
}



// =====================  Runtime code  =====================


function _fallback() {
    require ext_code.size(msg.sender)
    call msg.sender.sendInvestmentsToOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
