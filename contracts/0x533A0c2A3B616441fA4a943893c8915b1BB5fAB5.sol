contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) > 10^18 or Mask(248, 8, stor0)
    return code.data[97 len 358]
}



// =====================  Runtime code  =====================


uint8 stor0;

function forked() payable {
    return bool(stor0)
}

function _fallback() payable {
  stop
}

function transferETC(address arg1) payable {
    if stor0:
    call arg1 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}

function transferETH(address arg1) payable {
    if not stor0:
    call arg1 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}



}
