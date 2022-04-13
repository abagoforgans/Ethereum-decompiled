contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[tx.origin] = 10000
    return code.data[51 len 555]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalanceInEth(address arg1) {
    return (2 * balance[address(arg1)])
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function convert(uint256 arg1, uint256 arg2) {
    return (arg2 * arg1)
}

function sendCoin(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
