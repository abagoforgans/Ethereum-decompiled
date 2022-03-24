contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 56]




// =====================  Runtime code  =====================


function kill(address arg1) payable {
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}



}
