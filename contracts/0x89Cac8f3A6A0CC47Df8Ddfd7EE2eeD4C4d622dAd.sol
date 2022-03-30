contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = code.data[430 len 32]
    return code.data[72 len 358]
}



// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;

function coinBalanceOf(address arg1) {
    return coinBalanceOf[arg1]
}

function _fallback() payable {
    revert 
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
