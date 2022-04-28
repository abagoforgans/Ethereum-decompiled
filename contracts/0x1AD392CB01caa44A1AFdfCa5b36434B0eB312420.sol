contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1[address(msg.sender)] = 100000
    return code.data[77 len 577]
}



// =====================  Runtime code  =====================


address coinerAddress;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function coiner() {
    return coinerAddress
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    if coinerAddress == msg.sender:
        balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[arg1] += arg2
        emit Issue(msg.sender, address(arg1), arg2);
}



}
