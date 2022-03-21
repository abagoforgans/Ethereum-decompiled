contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 21 * 10^6
    return code.data[47 len 59]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function _fallback() payable {
  stop
}



}
