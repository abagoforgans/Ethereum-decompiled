contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0xb0f94af0cfccc76113bb5ba2c2d89d56221b18a5
    stor2 = 5000 * 10^18
    stor3 = block.timestamp - (504 * 24 * 3600)
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[97 len 253]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 expiration;

function expiration() payable {
    return expiration
}

function redeem() payable {
    selfdestruct(address(stor0))
}

function _fallback() payable {
  stop
}

function expired() payable {
    if expiration >= block.timestamp:
        return 0
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34050 wei
}

function attack(address arg1, uint256 arg2) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = arg1 or Mask(96, 160, stor1)
    stor2 = arg2
    expiration = block.timestamp - (504 * 24 * 3600)
    return msg.sender
}



}
