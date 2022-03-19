contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 366]
}



// =====================  Runtime code  =====================


address minterAddress;
mapping of uint256 balances;

function minter() payable {
    return minterAddress
}

function balances(address arg1) payable {
    return balances[arg1]
}

function getBalance(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function mint(address arg1, uint256 arg2) payable {
    if msg.sender == minterAddress:
        balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[arg1] += arg2
        emit Sent(address(msg.sender), address(arg1), arg2);
}



}
