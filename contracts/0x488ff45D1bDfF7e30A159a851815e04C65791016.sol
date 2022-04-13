contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[tx.origin] = 10000
    return code.data[51 len 543]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalance(address arg1) payable {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getBalanceInEth(address arg1) payable {
    require ext_code.size(0x6bb8bf288e3709f8fee529880f6d53be4e28e796)
    delegate 0x6bb8bf288e3709f8fee529880f6d53be4e28e796.0x96e4ee3d with:
         gas gas_remaining - 710 wei
        args balance[address(arg1)], 2
    require delegate.return_code
    return delegate.return_data[0]
}



}
