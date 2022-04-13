contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'Meta Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'META' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor0[tx.origin] = 10000
    return code.data[364 len 1231]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function getBalanceInEth(address arg1) {
    return (2 * balance[address(arg1)])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function convert(uint256 arg1, uint256 arg2) {
    return (arg2 * arg1)
}

function sendCoin(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
