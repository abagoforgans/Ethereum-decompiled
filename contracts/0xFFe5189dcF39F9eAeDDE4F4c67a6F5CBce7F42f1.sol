contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = code.data[317 len 32]
    return code.data[63 len 254]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}



}
