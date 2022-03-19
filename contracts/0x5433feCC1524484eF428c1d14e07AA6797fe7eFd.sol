contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = eth.balance(address(stor0))
    return code.data[130 len 481]
}



// =====================  Runtime code  =====================


const getContractAddress = address(this.address)


address stor0;
uint256 creatorBalance;

function getCreatorBalance() payable {
    return creatorBalance
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getCreatorDotBalance() payable {
    return eth.balance(stor0)
}



}
