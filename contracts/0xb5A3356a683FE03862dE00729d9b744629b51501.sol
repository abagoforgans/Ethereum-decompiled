contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 9999
    stor0[tx.origin] = 10000
    return code.data[57 len 780]
}



// =====================  Runtime code  =====================


const generateRandom = 1


mapping of uint256 balance;
uint256 randomNumber;

function getRandom() {
    return randomNumber
}

function randomNumber() {
    return randomNumber
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert 
}

function addCoin(uint256 arg1) {
    balance[address(msg.sender)] += arg1
    return 1
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
    require ext_code.size(0x2096e44d3788905c1740b5bc79db0a98230e298b)
    delegate 0x2096e44d3788905c1740b5bc79db0a98230e298b.0x96e4ee3d with:
         gas gas_remaining - 50 wei
        args balance[address(arg1)], 2
    require delegate.return_code
    return delegate.return_data[0]
}



}
