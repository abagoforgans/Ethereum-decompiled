contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    if code.data[651 len 32]:
        stor0[0xd1d2c2cb7a9a703fc140f258f17f77dc6ff09899] = code.data[651 len 32]
    else:
        stor0[0xd1d2c2cb7a9a703fc140f258f17f77dc6ff09899] = 10000
    return code.data[143 len 508]
}



// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;

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



}
