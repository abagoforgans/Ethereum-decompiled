contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 20000
    return code.data[47 len 476]
}



// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;
mapping of uint256 heldBalanceOf;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
}

function heldBalanceOf(address arg1) payable {
    return heldBalanceOf[arg1]
}

function _fallback() payable {
  stop
}

function sub_0eb03009(?) payable {
    coinBalanceOf[address(msg.sender)] += heldBalanceOf[address(msg.sender)]
    heldBalanceOf[address(msg.sender)] = 0
    return 1
}

function sub_d2e76946(?) payable {
    if coinBalanceOf[address(msg.sender)] < arg2:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg2
    heldBalanceOf[address(arg1)] += arg2
    emit CoinTransfer(address(msg.sender), address(arg1), arg2);
    return 1
}

function sendCoin(address arg1, uint256 arg2) payable {
    if coinBalanceOf[address(msg.sender)] < arg2:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg2
    coinBalanceOf[arg1] += arg2
    emit CoinTransfer(address(msg.sender), address(arg1), arg2);
    return 1
}



}
