contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = block.timestamp + (168 * 24 * 3600)
    stor3 = 10^18
    stor4 = 1
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[79 len 531]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address sub_d11345e0Address;
uint256 stor1;
uint256 expiration;
uint256 value;
uint256 sub_a9fe33ee;

function value() payable {
    return value
}

function expiration() payable {
    return expiration
}

function owner() payable {
    return address(owner)
}

function sub_a9fe33ee(?) payable {
    return sub_a9fe33ee
}

function sub_d11345e0(?) payable {
    return address(sub_d11345e0Address)
}

function _fallback() payable {
  stop
}

function sub_a4520ecd(?) payable {
    require address(owner) == msg.sender
    value = arg1
}

function sub_dcf7c22c(?) payable {
    require address(owner) == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_968f63d9(?) payable {
    require address(owner) == msg.sender
    value = arg1
    expiration = block.timestamp + sub_a9fe33ee
}

function changeOwner(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function Redeem() payable {
    require msg.sender == address(sub_d11345e0Address)
    if block.timestamp > expiration:
        call address(sub_d11345e0Address) with:
           value value wei
             gas 0 wei
        expiration = block.timestamp + sub_a9fe33ee
}



}
