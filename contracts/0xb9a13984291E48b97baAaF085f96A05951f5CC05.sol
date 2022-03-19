contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 324]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint8 hasPhysical;

function owner() payable {
    return address(owner)
}

function hasPhysicalAddress(address arg1) payable {
    return hasPhysical[address(arg1)]
}

function _fallback() payable {
  stop
}

function verify(address arg1) payable {
    if address(owner) == msg.sender:
        hasPhysical[address(arg1)] = 1
}

function deverify(address arg1) payable {
    if address(owner) == msg.sender:
        hasPhysical[address(arg1)] = 0
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}



}
