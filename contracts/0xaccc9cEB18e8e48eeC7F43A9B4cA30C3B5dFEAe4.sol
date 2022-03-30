contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;

function _fallback() {
    stor1 = code.data[395 len 32]
    stor0[address(msg.sender)] = code.data[395 len 32]
    return code.data[77 len 318]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
}



}
