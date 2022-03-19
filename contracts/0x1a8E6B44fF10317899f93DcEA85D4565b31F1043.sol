contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xb21f8684f23dbb1008508b4de91a0aaedebdb7e4
    stor2 = 0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b
    return code.data[189 len 2539]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint8 stor2;
uint8 sub_837a43a3; offset 160
uint8 sub_84a6ff15; offset 168
uint8 stor2; offset 176
uint128 stor2; offset 176
uint128 stor2; offset 168
uint128 stor2; offset 160
address stor2;
uint256 sub_d321181e;

function sub_837a43a3(?) payable {
    return sub_837a43a3
}

function sub_84a6ff15(?) payable {
    return sub_84a6ff15
}

function sub_d321181e(?) payable {
    return sub_d321181e
}

function kill() payable {
    require msg.sender == stor0
    require eth.balance(this.address) >= 100000
    require msg.sender == stor0
    call stor1.setOwner(uint8 rg1, uint8 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args uint8(stor2.field_0), uint8(stor2.field_0), stor0
    require ext_call.success
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_9dd3af1c(?) payable {
    require msg.sender == stor0
    uint8(stor2.field_176) = arg1
}

function empty() payable {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_84f0a7cb(?) payable {
    return ('signextend', 0, ('signextend', 0, ('type', 80, ('field', 176, ('stor', ('name', 'stor2', 2))))))
}

function sub_ec85a928(?) payable {
    require msg.sender == stor0
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    Mask(88, 0, stor2.field_168) = Mask(88, 0, arg2)
}

function sub_4d9a4af7(?) payable {
    require msg.sender == stor0
    call stor1.setOwner(uint8 rg1, uint8 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args uint8(stor2.field_0), uint8(stor2.field_0), stor0
    require ext_call.success
}

function sub_aac3b632(?) payable {
    require msg.sender == stor0
    call stor1.farmTile(uint8 rg1, uint8 rg2, int8 rg3) with:
         gas gas_remaining - 25050 wei
        args uint8(stor2.field_0), uint8(stor2.field_0), ('signextend', 0, ('signextend', 0, ('type', 80, ('field', 176, ('stor', ('name', 'stor2', 2))))))
    require ext_call.success
}

function sub_f7f30387(?) payable {
    require block.number - sub_d321181e >= 2500
    sub_d321181e = block.number
    if ('signextend', 0, ('signextend', 0, ('type', 80, ('field', 176, ('stor', ('name', 'stor2', 2)))))) != 17:
        uint8(stor2.field_176) = uint8(('signextend', 0, ('type', 80, ('field', 176, ('stor', ('name', 'stor2', 2))))) + 1)
    else:
        uint8(stor2.field_176) = 0
    call stor1.farmTile(uint8 rg1, uint8 rg2, int8 rg3) with:
         gas gas_remaining - 25050 wei
        args uint8(stor2.field_0), uint8(stor2.field_0), ('signextend', 0, ('signextend', 0, ('type', 80, ('field', 176, ('stor', ('name', 'stor2', 2))))))
    require ext_call.success
    call address(stor2.field_0) with:
       funct Mask(32, 224, sha3('scheduleCall(bytes4,uint256)')) >> 224
         gas gas_remaining - 25050 wei
        args Mask(32, 224, sha3('scheduleFarmCall()')), block.number + 2501
}



}
