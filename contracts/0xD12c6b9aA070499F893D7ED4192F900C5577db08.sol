contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 98]
}



// =====================  Runtime code  =====================


address creatorAddress;

function getCreator() payable {
    return creatorAddress
}

function kill() payable {
    if creatorAddress != msg.sender:
    selfdestruct(creatorAddress)
}

function _fallback() payable {
  stop
}



}
