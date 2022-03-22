contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = block.timestamp + (168 * 24 * 3600)
    stor2 = 10 * 10^18
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[56 len 248]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 expiration;
uint256 value;

function value() payable {
    return value
}

function expiration() payable {
    return expiration
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function Redeem() payable {
    if address(owner) == msg.sender:
        if block.timestamp > expiration:
            call msg.sender with:
               value value wei
                 gas 0 wei
            expiration = block.timestamp + (168 * 24 * 3600)
}



}
