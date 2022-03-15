contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 10^6
    return code.data[101 len 607]
}



// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
}

function balance(address arg1) payable {
    return coinBalanceOf[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function sendCoin(address arg1, uint256 arg2) payable {
    if coinBalanceOf[address(msg.sender)] < arg2:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg2
    coinBalanceOf[address(arg1)] += arg2
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    return 1
}



}
