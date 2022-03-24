contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 317]
}



// =====================  Runtime code  =====================


address stor0;
address contractAddress;
uint256 stor1;
address callbackAddress;
uint256 stor2;

function getCallbackAddress() payable {
    return address(callbackAddress)
}

function getContractAddress() payable {
    return address(contractAddress)
}

function kill() payable {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setCallbackAddress(address arg1) payable {
    require stor0 == msg.sender
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function setContractAddress(address arg1) payable {
    require stor0 == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}



}
