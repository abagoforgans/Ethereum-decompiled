contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[tx.origin] = 100000
    return code.data[60 len 393]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() payable {
    revert
}

function sendToken(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[arg1] += arg2
        return 0
    else:
        return 0
}



}
