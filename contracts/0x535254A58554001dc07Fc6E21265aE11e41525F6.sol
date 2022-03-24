contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 351]




// =====================  Runtime code  =====================


const isHF = (eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) > 1000000 * 10^18)


function kill() payable {
    require msg.sender == 0xd3cda913deb6f67967b99d67acdfa1712c293601
    selfdestruct(0xd3cda913deb6f67967b99d67acdfa1712c293601)
}

function _fallback() payable {
  stop
}

function transferIfHF(address arg1) payable {
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) > 1000000 * 10^18:
        call arg1 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}

function transferIfNoHF(address arg1) payable {
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) <= 1000000 * 10^18:
        call arg1 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}



}
