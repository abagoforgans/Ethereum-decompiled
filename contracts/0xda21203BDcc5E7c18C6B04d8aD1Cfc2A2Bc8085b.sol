contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 balance;
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function balance() {
    return balance[address(msg.sender)]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balance[address(msg.sender)] >= arg2:
        balance[address(msg.sender)] -= arg2
        balance[address(arg1)] += arg2
}



}
