contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[tx.origin] = 100000
    return code.data[47 len 215]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalance(address arg1) payable {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert 
}

function sendCoin(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    return 1
}



}
