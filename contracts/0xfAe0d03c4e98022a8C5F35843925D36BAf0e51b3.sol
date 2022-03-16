contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0[address(msg.sender)] = 10000
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[143 len 1226]
}



// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;
address stor1;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
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

function donate(address arg1, uint256 arg2) payable {
    if arg2 <= 0:
        return 0
    if arg2 > 10^6:
        return 0
    if coinBalanceOf[address(msg.sender)] < arg2:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg2
    if arg2 < 1000:
        coinBalanceOf[address(arg1)] += (75 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6
        coinBalanceOf[stor1] = coinBalanceOf[stor1] + arg2 - ((75 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6)
    else:
        if arg2 < 10000:
            coinBalanceOf[address(arg1)] += (80 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6
            coinBalanceOf[stor1] = coinBalanceOf[stor1] + arg2 - ((80 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6)
        else:
            if arg2 < 100000:
                coinBalanceOf[address(arg1)] += (85 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6
                coinBalanceOf[stor1] = coinBalanceOf[stor1] + arg2 - ((85 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6)
            else:
                if arg2 >= 10^6:
                    coinBalanceOf[address(arg1)] += (75 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6
                    coinBalanceOf[stor1] = coinBalanceOf[stor1] + arg2 - ((75 * 10^6 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6)
                else:
                    coinBalanceOf[address(arg1)] += (25000 * 3600 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6
                    coinBalanceOf[stor1] = coinBalanceOf[stor1] + arg2 - ((25000 * 3600 * arg2) + (10^6 * arg2 / 200000 * arg2) / 10^6)
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    return 1
}



}
