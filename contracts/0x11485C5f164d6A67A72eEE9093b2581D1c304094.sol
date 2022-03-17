contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    if code.data[742 len 32]:
        stor0[address(msg.sender)] = code.data[742 len 32]
    else:
        stor0[address(msg.sender)] = 10000
    return code.data[117 len 625]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceof;

function balanceof(address arg1) payable {
    return balanceof[address(arg1)]
}

function balanceOf(address arg1) payable {
    return balanceof[arg1]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    if balanceof[address(msg.sender)] < arg2:
        return 0
    balanceof[address(msg.sender)] -= arg2
    balanceof[address(arg1)] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}



}
