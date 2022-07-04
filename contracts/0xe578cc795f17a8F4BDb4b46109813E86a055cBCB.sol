contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8

function _fallback() {
    uint8(stor0.field_0) = 0
    address(stor0.field_8) = code.data[768 len 20]
    return code.data[150 len 606]
}



// =====================  Runtime code  =====================


uint8 stor0;
address tokenContractAddress; offset 8

function tokenContract() {
    return tokenContractAddress
}

function sub_63ccd85f(?) {
    return bool(stor0)
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == tokenContractAddress
    stor0 = 1
    return 0
}



}
