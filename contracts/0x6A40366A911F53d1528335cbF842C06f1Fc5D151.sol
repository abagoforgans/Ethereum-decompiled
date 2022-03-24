contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 10^11
    return code.data[77 len 387]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function balance(address arg1) payable {
    return balance[address(arg1)]
}

function _fallback() payable {
  stop
}

function send(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] >= arg2:
        balance[address(arg1)] += arg2
        balance[address(msg.sender)] -= arg2
}



}
