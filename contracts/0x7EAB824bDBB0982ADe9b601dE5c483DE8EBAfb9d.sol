contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 219]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function transferIfHF(address arg1) payable {
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) <= 1000000 * 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        call arg1 with:
           value msg.value wei
             gas 0 wei
}

function transferIfNoHF(address arg1) payable {
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) > 1000000 * 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        call arg1 with:
           value msg.value wei
             gas 0 wei
}



}
