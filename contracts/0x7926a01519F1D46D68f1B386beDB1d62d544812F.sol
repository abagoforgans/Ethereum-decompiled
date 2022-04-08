contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 526]




// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;

function coinBalanceOf(address arg1) {
    return coinBalanceOf[arg1]
}

function _fallback() payable {
    revert
}

function token(uint256 arg1) {
    if arg1:
        coinBalanceOf[address(msg.sender)] = arg1
    else:
        coinBalanceOf[address(msg.sender)] = 10000
}

function sendCoin(address arg1, uint256 arg2) {
    if coinBalanceOf[address(msg.sender)] < arg2:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg2
    coinBalanceOf[arg1] += arg2
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    return 1
}



}
