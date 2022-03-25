contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 348]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 price;
uint256 updatedAt;

function updatedAt() payable {
    return updatedAt
}

function owner() payable {
    return address(owner)
}

function price() payable {
    return price
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    return (address(owner) == arg1)
}

function transfer(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setPrice(uint256 arg1) payable {
    if address(owner) == msg.sender:
        price = arg1
        updatedAt = block.number
        emit 0xd8418c2e: arg1, msg.sender
}



}
