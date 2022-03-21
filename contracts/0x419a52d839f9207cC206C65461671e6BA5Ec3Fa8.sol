contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 53]




// =====================  Runtime code  =====================


function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}



}
