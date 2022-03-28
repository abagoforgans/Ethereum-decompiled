contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 967]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 balance;

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function issue(address arg1, uint256 arg2) {
    require msg.sender == stor0
    balance[address(arg1)] += arg2
}

function transfer(address arg1, uint256 arg2) {
    require balance[address(msg.sender)] >= arg2
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
}



}
