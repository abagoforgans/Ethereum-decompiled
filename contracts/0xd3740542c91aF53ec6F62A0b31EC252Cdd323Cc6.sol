contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 600]




// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
}

function _fallback() payable {
  stop
}

function token(uint256 arg1) payable {
    if arg1:
        coinBalanceOf[address(msg.sender)] = arg1
    else:
        coinBalanceOf[address(msg.sender)] = 200 * 10^6
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
