contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    if code.data[881 len 32]:
        stor0[address(msg.sender)] = code.data[881 len 32]
    else:
        stor0[address(msg.sender)] = 10000
    stor1 = code.data[913 len 32] or Mask(96, 160, stor1)
    return code.data[157 len 724]
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

function issueCoin(address arg1, uint256 arg2) payable {
    if stor1 != msg.sender:
        return 0
    coinBalanceOf[address(arg1)] += arg2
    return 1
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
