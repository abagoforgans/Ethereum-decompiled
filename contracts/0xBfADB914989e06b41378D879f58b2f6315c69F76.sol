contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 135]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function recover(address arg1, address arg2) payable {
    emit Recovery(address(arg1), address(arg2), msg.sender);
    return 1
}



}
