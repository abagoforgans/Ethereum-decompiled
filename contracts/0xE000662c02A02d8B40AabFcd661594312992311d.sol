contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = this.address or Mask(96, 160, stor0)
    return code.data[74 len 220]
}



// =====================  Runtime code  =====================


address identityAddress;
uint256 stor0;

function identity() payable {
    return address(identityAddress)
}

function _fallback() payable {
  stop
}

function setIdentity(address arg1) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}



}
