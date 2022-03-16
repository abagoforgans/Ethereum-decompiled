contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 10^12
    return code.data[51 len 919]
}



// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[address(arg1)]
}

function coinBalance() payable {
    return coinBalanceOf[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function disapprove(address arg1) payable {
    coinBalanceOf[address(msg.sender)][1][address(arg1)] = 0
}

function isApproved(address arg1) payable {
    return (coinBalanceOf[address(msg.sender)][1][address(arg1)] > 0)
}

function approveOnce(address arg1, uint256 arg2) payable {
    coinBalanceOf[address(msg.sender)][1][address(arg1)] += arg2
}

function approve(address arg1) payable {
    coinBalanceOf[address(msg.sender)][1][address(arg1)] = 0x100000000000000000000000000000000
}

function sendCoin(uint256 arg1, address arg2) payable {
    if coinBalanceOf[address(msg.sender)] < arg1:
        return 0
    if arg1 >= 0x100000000000000000000000000000000:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg1
    coinBalanceOf[arg2] += arg1
    emit CoinSent(arg1, msg.sender, arg2);
    return 1
}

function sendCoinFrom(address arg1, uint256 arg2, address arg3) payable {
    if coinBalanceOf[address(arg1)] < arg2:
        return 0
    if coinBalanceOf[address(arg1)][1][address(msg.sender)] < arg2:
        return 0
    if arg2 >= 0x100000000000000000000000000000000:
        return 0
    coinBalanceOf[address(arg1)][1][address(msg.sender)] -= arg2
    coinBalanceOf[address(arg1)] -= arg2
    coinBalanceOf[address(arg3)] += arg2
    emit CoinSent(arg2, arg1, arg3);
    return 1
}



}
