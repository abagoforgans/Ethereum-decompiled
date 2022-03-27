contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 159]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit LogVote(msg.sender);
    if msg.value <= 0:
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}



}
