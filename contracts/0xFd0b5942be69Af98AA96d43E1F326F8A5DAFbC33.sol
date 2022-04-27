contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor1;

function _fallback() {
    stor0[tx.origin] = 10000
    stor1 = msg.sender
    return code.data[164 len 843]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;
address mintAddress;

function mint() {
    return mintAddress
}

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



}
