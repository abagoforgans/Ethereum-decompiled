contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 340]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;

function owner() {
    return address(owner)
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}



}
