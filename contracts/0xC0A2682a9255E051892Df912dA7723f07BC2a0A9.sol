contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 267]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 coinBalanceOf;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
}

function Kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    coinBalanceOf[address(msg.sender)] += msg.value
}

function Withdraw(uint256 arg1) payable {
    if coinBalanceOf[address(msg.sender)] < arg1:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    return 1
}



}
