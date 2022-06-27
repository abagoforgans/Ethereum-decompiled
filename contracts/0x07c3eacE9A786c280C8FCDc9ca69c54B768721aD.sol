contract main {




// =====================  Runtime code  =====================


#
#  - sub_b26e51fd(?)
#  - initialize(address arg1)
#
uint8 stor2; offset 160
address owner;
address sub_025ccbadAddress;
address sub_0d7c414aAddress;
uint256 stor4;
address balance_Address;
uint256 stor5;
address sub_57825684Address;
uint256 stor6;
address sub_96c9e360Address;
uint256 stor7;
mapping of uint8 stor99;

function sub_025ccbad(?) {
    return sub_025ccbadAddress
}

function sub_0d7c414a(?) {
    return address(sub_0d7c414aAddress)
}

function sub_57825684(?) {
    return address(sub_57825684Address)
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function sub_96c9e360(?) {
    return address(sub_96c9e360Address)
}

function balance_() {
    return address(balance_Address)
}

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == owner
    require not stor2
    stor2 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require stor2
    if not address(sub_57825684Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Planet contract should be defined'
    if not address(sub_0d7c414aAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SaleAuction contract should be defined'
    if not address(balance_Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance contract should be defined'
    if not address(sub_96c9e360Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniverseSpaceshipStore contract should be defined'
    require msg.sender == owner
    require stor2
    stor2 = 0
    emit Unpause()
}

function sub_225aa72d(?) {
    require msg.sender == owner
    require stor2
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0x6630f609 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0x12065fe0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0x6ad41d81 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0xdeb30a18 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}

function isMigrated(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    _21 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = _21
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = bool(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function sub_218335cd(?) {
    require msg.sender == owner
    require ext_code.size(address(sub_96c9e360Address))
    call address(sub_96c9e360Address).0x9bf3cda9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Earth spaceship draft was created'
    require ext_code.size(address(balance_Address))
    call address(balance_Address).getUIntArray3Value(uint256 arg1) with:
         gas gas_remaining wei
        args 28
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(balance_Address))
    call address(balance_Address).getUIntArray3Value(uint256 arg1) with:
         gas gas_remaining wei
        args 29
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(balance_Address))
    call address(balance_Address).getUIntValue(uint256 arg1) with:
         gas gas_remaining wei
        args 26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(balance_Address))
    call address(balance_Address).getUIntValue(uint256 arg1) with:
         gas gas_remaining wei
        args 27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(balance_Address))
    call address(balance_Address).getUIntValue(uint256 arg1) with:
         gas gas_remaining wei
        args 25
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_96c9e360Address))
    call address(sub_96c9e360Address).0xf5a8e9bb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], 0, 0, 0 >> 1024, ext_call.return_data[32], ext_call.return_data[64], 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x6b5d1407: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], 0, 0, 0 >> 1024, ext_call.return_data[32], ext_call.return_data[64], 0, 0, 0, arg1
}



}
