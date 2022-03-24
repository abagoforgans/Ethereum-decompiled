contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 1023]
}



// =====================  Runtime code  =====================


address issuerAddress;
mapping of uint256 balances;

function issuer() payable {
    return issuerAddress
}

function balances(address arg1) payable {
    return balances[arg1]
}

function _fallback() payable {
  stop
}

function issue(address arg1, uint256 arg2) payable {
    if msg.sender == issuerAddress:
        balances[address(arg1)] += arg2
}

function cashout(uint256 arg1) payable {
    if balances[address(msg.sender)] >= arg1:
        balances[address(msg.sender)] -= arg1
        emit 0xe06967e7: msg.sender, arg1
}

function send(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[address(arg1)] += arg2
        emit Sent(msg.sender, address(arg1), arg2);
}



}
