contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
mapping of uint256 balance;

function name() {
    return name[0 len name.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}



}
