contract main {




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
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    if msg.sender == tokenContractAddress:
        stor0 = 1
        return 0
    else:
        return 0
}



}
