contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = code.data[249 len 32]
    return code.data[74 len 175]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() payable {
    revert
}



}
