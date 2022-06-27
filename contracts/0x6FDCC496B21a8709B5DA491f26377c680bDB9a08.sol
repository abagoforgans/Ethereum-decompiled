contract main {




// =====================  Runtime code  =====================


#
#  - sub_047d0a44(?)
#  - sub_5bc20b24(?)
#  - sub_6e234f69(?)
#  - initialize(address arg1, uint256 arg2, uint256 arg3)
#
mapping of uint8 stor0;
address owner;
address treasurerAddress;
mapping of uint256 sub_50e261d3;
uint256 sub_b59f1f62;
address sub_c51aba2bAddress;
uint256 sub_f20cd5fb;
uint8 stor8;
uint256 ownerCut;
address sub_025ccbadAddress;
address sub_0d7c414aAddress;
uint256 stor11;
address balance_Address;
uint256 stor12;
address sub_57825684Address;
uint256 stor13;
address sub_96c9e360Address;
uint256 stor14;
address sub_312a4d29Address;
uint256 stor15;
address sub_d272e979Address;
uint256 stor16;
mapping of uint8 stor17;
mapping of uint8 stor99;

function sub_025ccbad(?) {
    return sub_025ccbadAddress
}

function sub_0d7c414a(?) {
    return address(sub_0d7c414aAddress)
}

function sub_312a4d29(?) {
    return address(sub_312a4d29Address)
}

function sub_50e261d3(?) {
    return sub_50e261d3[arg1]
}

function sub_57825684(?) {
    return address(sub_57825684Address)
}

function paused() {
    return bool(stor8)
}

function ownerCut() {
    return ownerCut
}

function owner() {
    return owner
}

function sub_96c9e360(?) {
    return address(sub_96c9e360Address)
}

function whitelist(address arg1) {
    return bool(stor17[arg1])
}

function sub_b59f1f62(?) {
    return sub_b59f1f62
}

function sub_c51aba2b(?) {
    return sub_c51aba2bAddress
}

function sub_d272e979(?) {
    return address(sub_d272e979Address)
}

function balance_() {
    return address(balance_Address)
}

function sub_f20cd5fb(?) {
    return sub_f20cd5fb
}

function treasurer() {
    return treasurerAddress
}

function _fallback() payable {
    revert
}

function sub_b6a27b61(?) {
    require msg.sender == owner
    sub_c51aba2bAddress = 0
}

function pause() {
    require msg.sender == owner
    require not stor8
    stor8 = 1
    emit Pause()
}

function sub_496a298e(?) {
    require msg.sender == owner
    require arg1
    sub_c51aba2bAddress = arg1
}

function transferTreasurer(address arg1) {
    require msg.sender == owner
    if arg1:
        treasurerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    if stor17[address(arg1)]:
        return 0
    stor17[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    if not stor17[address(arg1)]:
        return 0
    stor17[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function sub_50131abc(?) {
    if treasurerAddress != msg.sender:
        revert with 0, 'Only treasurer'
    require sub_b59f1f62 > 0
    sub_b59f1f62 = 0
    call treasurerAddress with:
       value sub_b59f1f62 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4d436c6a(?) {
    if arg1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only company owner can make withdrawing'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Company address should be defined'
    require sub_50e261d3[address(arg1)] > 0
    sub_50e261d3[address(arg1)] = 0
    call arg1 with:
       value sub_50e261d3[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) {
    require not stor0['Pausable'][0]
    require not stor0['Ownable']['1.9.0']
    owner = arg1
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  7,
                  'Ownable' % 72057594037927936,
                  0,
                  5,
                  '1.9.0' % 1099511627776,
    stor0['Ownable'][0] = 1
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  8,
                  uint64('Pausable'),
                  0,
                  5,
                  '1.9.0' % 1099511627776,
    stor0[64 or Pausable][0] = 1
}

function unpause() {
    require msg.sender == owner
    require stor8
    if not address(sub_57825684Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Planet contract should be defined'
    if not address(sub_0d7c414aAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SaleAuction contract should be defined'
    if not address(balance_Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance contract should be defined'
    if not address(sub_96c9e360Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniverseSpaceshipStore contract should be defined'
    require msg.sender == owner
    require stor8
    stor8 = 0
    emit Unpause()
}

function initialize(uint256 arg1) {
    require not stor0['CommissionCollectorMigratable'][0]
    require not stor0['Ownable']['1.9.0']
    owner = msg.sender
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  7,
                  'Ownable' % 72057594037927936,
                  0,
                  5,
                  '1.9.0' % 1099511627776,
    stor0['Ownable'][0] = 1
    require arg1 <= 10000
    sub_f20cd5fb = arg1
    require msg.sender == owner
    if owner:
        treasurerAddress = owner
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  29,
                  Mask(232, 0, 'CommissionCollectorMigratable'),
                  0,
                  5,
                  '1.0.0' % 1099511627776,
    stor0[64 or CommissionCollectorMigratable][0] = 1
}

function sub_b26e51fd(?) {
    require not stor8
    require ext_code.size(address(balance_Address))
    call address(balance_Address).getUIntValue(uint256 arg1) with:
         gas gas_remaining wei
        args 39
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(balance_Address))
    call address(balance_Address).autoClearAuction() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(sub_0d7c414aAddress))
        call address(sub_0d7c414aAddress).clearAll(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_d272e979Address))
    call address(sub_d272e979Address).0xb26e51fd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(uint256 arg1, uint256 arg2) {
    require not stor0['UniverseLaunch'][0]
    require not stor0['CommissionCollectorMigratable']['1.0.0']
    require not stor0['Ownable'][0]
    owner = msg.sender
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  7,
                  'Ownable' % 72057594037927936,
                  0,
                  5,
                  '1.9.0' % 1099511627776,
    stor0[64 or Ownable][0] = 1
    require arg1 <= 10000
    sub_f20cd5fb = arg1
    require msg.sender == owner
    if owner:
        treasurerAddress = owner
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  29,
                  Mask(232, 0, 'CommissionCollectorMigratable'),
                  0,
                  5,
                  '1.0.0' % 1099511627776,
    stor[('map', "'CommissionCollectorMigratable'", ('name', 'stor0', 0)) % 1099511627776][64 or Mask(192, 24, 'CommissionCollectorMigratable') or 1.0.0] = 1
    ownerCut = arg2
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  14,
                  Mask(112, 0, 'UniverseLaunch'),
                  0,
                  5,
                  '1.0.0' % 1099511627776,
    stor0[64 or UniverseLaunch][0] = 1
}

function isMigrated(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
    _21 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = _21
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = bool(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function sub_c8aec99a(?) {
    if not stor17[msg.sender]:
        revert with 0, 'NotWhitelisted'
    require not stor8
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sector coordinates should be in the range'
    if arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sector coordinates should be in the range'
    if arg1 >= 25:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sector coordinates should be in the range'
    if arg2 >= 40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sector coordinates should be in the range'
    require ext_code.size(address(sub_57825684Address))
    call address(sub_57825684Address).checkWhetherEnoughPromoPlanet() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(balance_Address))
    call address(balance_Address).getUIntValue(uint256 arg1) with:
         gas gas_remaining wei
        args 41
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_57825684Address))
    if arg4:
        call address(sub_57825684Address).createPlanet(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, arg3, arg1, arg2, ext_call.return_data[0]
    else:
        call address(sub_57825684Address).createPlanet(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg3, arg1, arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_225aa72d(?) {
    require msg.sender == owner
    require stor8
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0x6630f609 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0x12065fe0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0x6ad41d81 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0xdeb30a18 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0xc52402 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor15) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor15))
    require ext_code.size(sub_025ccbadAddress)
    call sub_025ccbadAddress.0xe2ed7511 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor16) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor16))
}

function sub_b5d61ee8(?) {
    if not stor17[msg.sender]:
        revert with 0, 'NotWhitelisted'
    require not stor8
    require ext_code.size(address(balance_Address))
    call address(balance_Address).autoClearAuction() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(sub_0d7c414aAddress))
        call address(sub_0d7c414aAddress).clearOne(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_57825684Address))
    call address(sub_57825684Address).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(sub_0d7c414aAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_57825684Address))
    call address(sub_57825684Address).getPlanet(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    mem[96 len 448] = ext_call.return_data[0 len 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    require ext_code.size(address(sub_0d7c414aAddress))
    call address(sub_0d7c414aAddress).averageExpansionSalePrice(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] != ext_call.return_data[16 len 16]:
            revert with 0, 'Price can't be bigger that 2 ** 128'
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 33
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_0d7c414aAddress))
        call address(sub_0d7c414aAddress).createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0] * ext_call.return_data[0] / 100, ext_call.return_data[0] * ext_call.return_data[0] / 100, 24 * 3600 * ext_call.return_data[0], msg.sender
    else:
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntArray4Value(uint256 arg1) with:
             gas gas_remaining wei
            args 19
        mem[ceil32(return_data.size) + 224 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] < 4
        if mem[(32 * ext_call.return_data[0]) + ceil32(return_data.size) + 224] != mem[(32 * ext_call.return_data[0]) + ceil32(return_data.size) + 240 len 16]:
            revert with 0, 'Price can't be bigger that 2 ** 128'
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 33
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(balance_Address))
        call address(balance_Address).getUIntValue(uint256 arg1) with:
             gas gas_remaining wei
            args 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_0d7c414aAddress))
        if mem[(32 * ext_call.return_data[0]) + ceil32(return_data.size) + 224] >= ext_call.return_data[0]:
            call address(sub_0d7c414aAddress).createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args arg1, mem[(32 * ext_call.return_data[0]) + ceil32(return_data.size) + 224] * ext_call.return_data[0] / 100, mem[(32 * ext_call.return_data[0]) + ceil32(return_data.size) + 224] * ext_call.return_data[0] / 100, 24 * 3600 * ext_call.return_data[0], msg.sender
        else:
            call address(sub_0d7c414aAddress).createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0] * ext_call.return_data[0] / 100, ext_call.return_data[0] * ext_call.return_data[0] / 100, 24 * 3600 * ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
