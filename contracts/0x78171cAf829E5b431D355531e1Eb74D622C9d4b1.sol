contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    stor1[tx.origin] = 10 * 10^6
    return code.data[62 len 193]
}



// =====================  Runtime code  =====================


address issuerAddress;
mapping of uint256 balances;

function issuer() {
    return issuerAddress
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
