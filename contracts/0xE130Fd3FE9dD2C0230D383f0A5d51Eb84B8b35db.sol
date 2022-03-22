contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[tx.origin] = 10000
    return code.data[47 len 340]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalance(address arg1) payable {
    return balance[address(arg1)]
}

function _fallback() payable {
  stop
}

function sendCoin(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    return 1
}

function getBalanceInEth(address arg1) payable {
    delegate 0x946a4c7429108947298bf929f14caa6969c99518.0x96e4ee3d with:
         gas gas_remaining - 50 wei
        args balance[address(arg1)], 2
    require delegate.return_code
    return delegate.return_data[0]
}



}
