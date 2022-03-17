contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    if code.data[287 len 32] != 0:
        stor0[address(msg.sender)] = code.data[287 len 32]
    else:
        stor0[address(msg.sender)] = 10000
    return code.data[76 len 211]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
