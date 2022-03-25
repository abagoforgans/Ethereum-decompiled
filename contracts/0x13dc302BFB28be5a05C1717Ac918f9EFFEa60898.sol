contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 864]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint8 stor1;

function owner() {
    return address(owner)
}

function hasPhysicalAddress(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert 
}

function verify(address arg1) {
    if msg.sender == address(owner):
        stor1[address(arg1)] = 1
}

function deverify(address arg1) {
    if msg.sender == address(owner):
        stor1[address(arg1)] = 0
}

function setOwner(address arg1) {
    if msg.sender == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}



}
