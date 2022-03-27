contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] += msg.value
    return code.data[80 len 513]
}



// =====================  Runtime code  =====================


const canWithdraw = block.timestamp >= 1483113800


mapping of uint256 balanceOf;

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function balance() payable {
    return balanceOf[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function withdraw() payable {
    require block.timestamp >= 1483113800
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 0 wei
    require ext_call.success
}



}
