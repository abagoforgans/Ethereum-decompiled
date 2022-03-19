contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[tx.origin] = code.data[239 len 32]
    return code.data[61 len 178]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function _fallback() payable {
  stop
}

function sendToken(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[arg1] += arg2
        return 0
    else:
        return 0
}



}
