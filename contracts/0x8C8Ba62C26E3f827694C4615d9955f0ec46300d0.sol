contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0[address(msg.sender)] = code.data[518 len 32]
    return code.data[84 len 434]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;

function balances(address arg1) {
    return balances[arg1]
}

function getMyBalance(address arg1) {
    return balances[address(msg.sender)]
}

function getOwner() {
    return owner
}

function getBalance(address arg1) {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert 
}

function sub_1287963f(?) {
    balances[address(arg1)] += arg2
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    return 1
}



}
