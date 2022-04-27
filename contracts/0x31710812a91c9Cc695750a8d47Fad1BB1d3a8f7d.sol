contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 158]




// =====================  Runtime code  =====================


function take() payable {
    if msg.value <= 15 * 10^15:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}



}
