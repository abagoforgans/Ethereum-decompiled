contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 62]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function getBalance(address arg1) payable {
    return eth.balance(arg1)
}



}
