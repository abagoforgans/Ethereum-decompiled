contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 149]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function deposit() payable {
    emit Deposit(msg.value, msg.sender);
}



}
