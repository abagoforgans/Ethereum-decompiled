contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1[address(msg.sender)] = 1000
    return code.data[83 len 421]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balance;

function owner() {
    return owner
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    return 1
}



}
