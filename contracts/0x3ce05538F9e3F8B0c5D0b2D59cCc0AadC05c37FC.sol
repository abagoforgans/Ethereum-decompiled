contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 332]




// =====================  Runtime code  =====================


function close() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    emit 0x4f655915: msg.value, msg.sender
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
