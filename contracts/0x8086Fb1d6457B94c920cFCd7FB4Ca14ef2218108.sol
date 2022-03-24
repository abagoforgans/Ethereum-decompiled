contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) <= 1000000 * 10^18:
        stor0 = 0
    else:
        stor0 = 1
    return code.data[134 len 181]
}



// =====================  Runtime code  =====================


uint8 stor0;

function isClassic() payable {
    return bool(stor0)
}

function classic() payable {
    return bool(stor0)
}

function _fallback() payable {
  stop
}



}
