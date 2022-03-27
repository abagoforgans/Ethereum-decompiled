contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[tx.origin] = 10000
    return code.data[56 len 547]
}



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
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getBalanceInEth(address arg1) {
    require ext_code.size(0x2fab38cfe11a19278cca648d3aca2685ecb2da03)
    delegate 0x2fab38cfe11a19278cca648d3aca2685ecb2da03.0x96e4ee3d with:
         gas gas_remaining - 50 wei
        args balance[address(arg1)], 2
    require delegate.return_code
    return delegate.return_data[0]
}



}
