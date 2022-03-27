contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 201]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit LogVote(msg.sender);
    if msg.value <= 0:
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
