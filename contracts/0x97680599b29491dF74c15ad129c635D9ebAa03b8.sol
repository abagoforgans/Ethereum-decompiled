contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 175]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;

function owner() payable {
    return address(owner)
}

function kill() payable {
    if address(owner) != msg.sender:
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function transfer(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}



}
