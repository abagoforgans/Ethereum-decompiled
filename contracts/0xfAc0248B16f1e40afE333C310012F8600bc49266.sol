contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    if code.data[314 len 32] != 0:
        stor0[address(msg.sender)] = code.data[314 len 32]
    else:
        stor0[address(msg.sender)] = 10000
    return code.data[76 len 238]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function balance(address arg1) payable {
    return balance[arg1]
}

function _fallback() payable {
  stop
}

function sendCoin(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit CoinTransfer(address(msg.sender), address(arg1), arg2);
    return 1
}



}
