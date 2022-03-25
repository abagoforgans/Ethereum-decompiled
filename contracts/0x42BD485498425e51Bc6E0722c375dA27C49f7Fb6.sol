contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 802]
}



// =====================  Runtime code  =====================


address minterAddress;
mapping of uint256 balances;

function minter() {
    return minterAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() payable {
    revert 
}

function mint(address arg1, uint256 arg2) {
    if msg.sender == minterAddress:
        balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[address(arg1)] += arg2
        emit Sent(msg.sender, address(arg1), arg2);
}



}
