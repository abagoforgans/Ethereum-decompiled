contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 979]




// =====================  Runtime code  =====================


const getBalanceInEth(address arg1) = 0


mapping of uint256 balance;
address stor1;
uint256 stor2;

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function MetaCoin() {
    balance[tx.origin] = 10000
    stor1 = tx.origin
    stor2 = 10001
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
