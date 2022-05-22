contract main {




// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getBalanceInEth(address arg1) {
    require ext_code.size(0xa9c23f65a01389136a38e120627b55ab3176bbb0)
    delegate 0xa9c23f65a01389136a38e120627b55ab3176bbb0.convert(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args balance[address(arg1)], 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}



}
