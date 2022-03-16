contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xcf684dfb8304729355b58315e8019b1aa2ad1bac
    return code.data[80 len 155]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function getMyBalance() payable {
    return eth.balance(stor0)
}



}
