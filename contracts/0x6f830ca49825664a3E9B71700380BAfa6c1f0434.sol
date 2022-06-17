contract main {




// =====================  Runtime code  =====================


#
#  - sub_08524d89(?)
#  - addClaims(uint256[] arg1, address[] arg2, bytes arg3, bytes arg4, uint256[] arg5)
#  - sub_6b8f4613(?)
#  - sub_a7d742ba(?)
#
mapping of struct stor5;
address stor6;
address stor7;
uint16 stor8;
uint16 stor8; offset 160
uint16 stor8; offset 176
uint16 stor8; offset 192
address stor8;
array of struct stor9;
array of struct stor10;
array of struct stor11;
mapping of uint8 stor12;
address stor13;
array of struct stor14;
array of struct stor15;
uint256 sub_7b935c20;
address stor17;
address tokenAddress;
array of struct stor19;
array of struct stor20;
mapping of struct stor21;
array of struct stor22;
uint256 stor23;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function sub_7b935c20(?) {
    return sub_7b935c20
}

function sub_ec7ed53b(?) {
    return bool(stor12[arg1])
}

function token() {
    return tokenAddress
}

function sub_92afc610(?) {
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Access denied'
    s = 0
    idx = 0
    while idx < stor15.length:
        mem[0] = stor15[idx].field_0
        mem[32] = 14
        require stor14[stor15[idx].field_0].field_0 <= 4
        if stor14[stor15[idx].field_0].field_0 != 1:
            s = s
            idx = idx + 1
            continue 
        require idx < stor15.length
        mem[0] = 15
        require ext_code.size(stor15[idx].field_0)
        call stor15[idx].field_0.0x8af1d76b with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = stor15[idx].field_0
        idx = idx + 1
        continue 
    require ext_code.size(stor17)
    call stor17.0x8f2691cc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
    selfdestruct(msg.sender)
}

function _fallback() {
    revert
}

function sub_a679e9ae(?) {
    if stor12[msg.sender]:
        revert with 0, 'You are blacklisted'
    emit 0x5150cb79: Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
}

function sub_edec6f26(?) {
    if stor12[msg.sender]:
        revert with 0, 'You are blacklisted'
    emit 0x32f8dc42: arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1
}

function isMember() {
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == this.address)
}

function sub_491a0676(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xabefd8e7 with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function removeClaim(bytes32 arg1) {
    require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
    delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0x5c02fae1 with:
         gas gas_remaining wei
        args 0, 4, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_c4e23a1c(?) {
    require ext_code.size(stor13)
    call stor13.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor14[ext_call.return_data[12 len 20]].field_0 <= 4
    return (stor14[ext_call.return_data[12 len 20]].field_0 == 1)
}

function approve(uint256 arg1, bool arg2) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0x67d4865f with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function removeKey(bytes32 arg1, uint256 arg2) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.'?Gam' with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function keyHasPurpose(bytes32 arg1, uint256 arg2) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function addKey(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0x5d601c3a with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_8af1d76b(?) {
    require stor14[msg.sender].field_0 <= 4
    if stor14[msg.sender].field_0 == 1:
        stor14[msg.sender].field_8 = 0
        stor14[msg.sender].field_256 = 0
        if 31 < stor14[msg.sender][1].length:
            idx = 0
            while stor14[msg.sender][1].length + 31 / 32 > idx:
                stor14[msg.sender][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        require 1 <= sub_7b935c20
        sub_7b935c20--
    stor14[msg.sender].field_0 = 4
    return 1
}

function sub_023e16f3(?) {
    require stor14[msg.sender].field_0 <= 4
    if stor14[msg.sender].field_0 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have no authorized partnership'
    stor14[msg.sender].field_256 = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        stor14[msg.sender][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor14[msg.sender][1].length + 31 / 32 > idx:
        stor14[msg.sender][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x2d5877e6 
}

function sub_83c23d06(?) {
    require ext_code.size(stor13)
    call stor13.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(stor13)
    call stor13.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor14[ext_call.return_data[12 len 20]].field_0 <= 4
    return stor14[ext_call.return_data[12 len 20]].field_0
}

function sub_54bdbb6b(?) {
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        return (msg.sender == ext_call.return_data[12 len 20])
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_018f2da1(?) {
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_5da601fd(?) {
    require stor14[msg.sender].field_0 <= 4
    require stor14[msg.sender].field_0 <= 4
    if stor14[msg.sender].field_0:
        require stor14[msg.sender].field_0 == 4
    if not stor14[msg.sender].field_0:
        stor15.length++
        stor15[stor15.length].field_0 = msg.sender or Mask(96, 160, stor15[stor15.length].field_0)
        stor14[msg.sender].field_8 = block.timestamp % 1099511627776
    stor14[msg.sender].field_0 = 2
    stor14[msg.sender].field_256 = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        stor14[msg.sender][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor14[msg.sender][1].length + 31 / 32 > idx:
        stor14[msg.sender][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xd2494fa9 
    return 1
}

function getClaimIdsByTopic(uint256 arg1) {
    if not stor5[arg1].field_0:
        mem[(32 * stor5[arg1].field_0) + 128] = 32
        mem[(32 * stor5[arg1].field_0) + 160] = stor5[arg1].field_0
        mem[(32 * stor5[arg1].field_0) + 192 len floor32(stor5[arg1].field_0)] = mem[128 len floor32(stor5[arg1].field_0)]
        return memory
          from (32 * stor5[arg1].field_0) + 128
           len (96 * stor5[arg1].field_0) + 64
    mem[128] = stor5[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor5[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5[arg1].field_0) + 192 len floor32(stor5[arg1].field_0)] = mem[128 len floor32(stor5[arg1].field_0)]
    return Array(len=stor5[arg1].field_0, data=mem[128 len floor32(stor5[arg1].field_0)], mem[(32 * stor5[arg1].field_0) + floor32(stor5[arg1].field_0) + 192 len (32 * stor5[arg1].field_0) - floor32(stor5[arg1].field_0)]), 
}

function getKeyPurposes(bytes32 arg1) {
    mem[96] = 0xf982bac00000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xf982bac with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function getKeysByPurpose(uint256 arg1) {
    mem[96] = 0x746199f900000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0x746199f9 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function getKey(bytes32 arg1) {
    mem[96] = 0xb01a9fb300000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xb01a9fb3 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    _7 = uint32(arg1), mem[164 len 28]
    mem[ceil32(return_data.size) + 128] = 0, Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 160] = _7
    mem[ceil32(return_data.size) + 96] = 96
    mem[ceil32(return_data.size) + 192] = mem[_4 + 96]
    _10 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 96, 0, Mask(224, 32, arg1) >> 32, _7, mem[ceil32(return_data.size) + 192 len (32 * _10) + 32]
}

function sub_28c51e06(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        return bool(delegate.return_data[0])
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_5ad078c9(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20004
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    stor12[address(arg1)] = 1
}

function sub_c5573ec8(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20004
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    stor12[address(arg1)] = 0
}

function sub_5e8c2aa6(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    require stor14[address(arg1)].field_0 <= 4
    if stor14[address(arg1)].field_0 != 2:
        revert with 0, 'Partner must be Pending'
    stor14[address(arg1)].field_0 = 3
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0xe9356c6f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
        delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xe9356c6f with:
             gas gas_remaining wei
            args 0, address(arg1), arg2, 128, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
        delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xe9356c6f with:
             gas gas_remaining wei
            args 0, address(arg1), arg2, 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_61b2e53b(?) {
    mem[216] = 20003
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20003
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[152] = address(ext_call.return_data[0])
    mem[184] = address(ext_call.return_data[0])
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    if stor15.length:
        mem[180] = address(stor15.field_0)
        idx = 180
        s = 0
        while (32 * stor15.length) + 148 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor15.length) + 244 len floor32(stor15.length)] = mem[180 len floor32(stor15.length)]
    return Array(len=stor15.length, data=mem[180 len floor32(stor15.length)], mem[(32 * stor15.length) + floor32(stor15.length) + 244 len (32 * stor15.length) - floor32(stor15.length)]), 
}

function deleteDocument(uint256 arg1) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20002
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    require arg1 > 0
    require stor21[arg1].field_0
    require 1 <= stor22.length
    if stor21[arg1].field_16 < stor22.length - 1:
        require 1 <= stor22.length
        require stor22.length - 1 < stor22.length
        require stor21[arg1].field_16 < stor22.length
        stor22[stor21[arg1].field_16].field_0 = stor22[stor22.length].field_0
        stor21[stor22[stor22.length].field_0].field_16 = stor21[arg1].field_16
    stor22.length--
    if stor22.length > stor22.length - 1:
        idx = stor22.length - 1
        while stor22.length > idx:
            stor22[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor21[arg1].field_0 = 0
    emit 0x480c8c4f: arg1
}

function sub_984bdb37(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20002
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    stor19.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        stor19[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor19.length + 31 / 32 > idx:
        stor19[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor20.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor20[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor20.length + 31 / 32 > idx:
        stor20[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_80d93864(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20002
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    require arg1 < 60000
    require stor23 + 1 >= stor23
    stor23++
    if arg1 >= 60000:
        stor21[stor23 + 1].field_64 = 0
    else:
        stor22.length++
        storD833[stor22.length] = stor23
        require 1 <= stor22.length + 1
        stor21[stor23 + 1].field_0 = 1
        stor21[stor23 + 1].field_8 = stor21[stor23 + 1].field_8
        stor21[stor23 + 1].field_16 = uint16(stor22.length)
    stor21[stor23 + 1].field_8 = Mask(248, 0, arg7)
    stor21[stor23 + 1].field_32 = arg1
    stor21[stor23 + 1].field_48 = arg2
    stor21[stor23 + 1].field_512 = arg3 % 1099511627776
    stor21[stor23 + 1].field_80 = arg5
    stor21[stor23 + 1].field_96 = msg.sender
    stor21[stor23 + 1].field_256 = arg4
    stor21[stor23 + 1][3][].field_0 = Array(len=arg6.length, data=arg6[all])
    emit DocumentAdded(stor23);
    return stor23
}

function sub_a4779498(?) {
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[(32 * arg3.length) + (32 * arg1.length) + ceil32(arg2.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + 388] = arg2.length
    mem[(64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + 420 len ceil32(arg2.length)] = arg2[all], mem[(32 * arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + (64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + 420] = arg3.length
        mem[arg2.length + (64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + 452 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
        delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xe4832fc6 with:
             gas gas_remaining wei
            args 0, 4, 160, (32 * arg1.length) + 192, arg2.length + (32 * arg1.length) + 224, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg3.length) + (32 * arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 388 len (32 * arg1.length) + (32 * arg3.length) + arg2.length + -floor32(arg1.length) + 64]
    else:
        mem[floor32(arg2.length) + (64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + 420] = mem[floor32(arg2.length) + (64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
        mem[floor32(arg2.length) + (64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + 452] = arg3.length
        mem[floor32(arg2.length) + (64 * arg1.length) + (32 * arg3.length) + ceil32(arg2.length) + 484 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
        delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xe4832fc6 with:
             gas gas_remaining wei
            args 0, 4, 160, (32 * arg1.length) + 192, floor32(arg2.length) + (32 * arg1.length) + 256, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg3.length) + (32 * arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 388 len (32 * arg1.length) + (32 * arg3.length) + floor32(arg2.length) + -floor32(arg1.length) + 96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c222008a(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20002
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    require not stor21[arg1].field_0
    require stor21[arg1].field_32 >= 60000
    stor22.length++
    storD833[stor22.length] = arg1
    require 1 <= stor22.length + 1
    stor21[arg1].field_0 = 1
    stor21[arg1].field_8 = stor21[arg1].field_8
    stor21[arg1].field_16 = uint16(stor22.length)
    if stor21[0 or stor21[arg1].field_64].field_0:
        require stor21[arg1].field_64 > 0
        require stor21[stor21[arg1].field_0].field_0
        require 1 <= stor22.length
        if stor21[stor21[arg1].field_0].field_16 < stor22.length - 1:
            require 1 <= stor22.length
            require stor22.length - 1 < stor22.length
            require stor21[stor21[arg1].field_0].field_16 < stor22.length
            stor22[stor21[stor21[arg1].field_0].field_16].field_0 = stor22[stor22.length].field_0
            stor21[stor22[stor22.length].field_0].field_16 = stor21[stor21[arg1].field_0].field_16
        stor22.length--
        if stor22.length > stor22.length - 1:
            idx = stor22.length - 1
            while stor22.length > idx:
                stor22[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor21[stor21[arg1].field_0].field_0 = 0
        emit 0x480c8c4f: stor21[arg1].field_64
    emit 0x47324225: arg1, stor21[arg1].field_256, stor21[arg1].field_96
}

function sub_8f0b676a(?) {
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20002
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    require arg2 < 60000
    require arg1 > 0
    require stor21[arg1].field_0
    require 1 <= stor22.length
    if stor21[arg1].field_16 < stor22.length - 1:
        require 1 <= stor22.length
        require stor22.length - 1 < stor22.length
        require stor21[arg1].field_16 < stor22.length
        stor22[stor21[arg1].field_16].field_0 = stor22[stor22.length].field_0
        stor21[stor22[stor22.length].field_0].field_16 = stor21[arg1].field_16
    stor22.length--
    if stor22.length > stor22.length - 1:
        idx = stor22.length - 1
        while stor22.length > idx:
            stor22[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor21[arg1].field_0 = 0
    emit 0x480c8c4f: arg1
    require stor23 + 1 >= stor23
    stor23++
    if arg2 >= 60000:
        stor21[stor23 + 1].field_64 = 0
    else:
        stor22.length++
        storD833[stor22.length] = stor23
        require 1 <= stor22.length + 1
        stor21[stor23 + 1].field_0 = 1
        stor21[stor23 + 1].field_8 = stor21[stor23 + 1].field_8
        stor21[stor23 + 1].field_16 = uint16(stor22.length)
    stor21[stor23 + 1].field_8 = Mask(248, 0, arg8)
    stor21[stor23 + 1].field_32 = arg2
    stor21[stor23 + 1].field_48 = arg3
    stor21[stor23 + 1].field_512 = arg4 % 1099511627776
    stor21[stor23 + 1].field_80 = arg6
    stor21[stor23 + 1].field_96 = msg.sender
    stor21[stor23 + 1].field_256 = arg5
    stor21[stor23 + 1][3][].field_0 = Array(len=arg7.length, data=arg7[all])
    emit DocumentAdded(stor23);
    return stor23
}

function sub_1ca882e0(?) {
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(ext_call.return_data[0]), 0, 0) >> 96), 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0]
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 >= 60000
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor23 + 1 >= stor23
    stor23++
    if arg1 >= 60000:
        stor21[stor23 + 1].field_64 = arg7
    else:
        stor22.length++
        storD833[stor22.length] = stor23
        require 1 <= stor22.length + 1
        stor21[stor23 + 1].field_0 = 1
        stor21[stor23 + 1].field_8 = stor21[stor23 + 1].field_8
        stor21[stor23 + 1].field_16 = uint16(stor22.length)
    stor21[stor23 + 1].field_8 = Mask(248, 0, arg6)
    stor21[stor23 + 1].field_32 = arg1
    stor21[stor23 + 1].field_48 = arg2
    stor21[stor23 + 1].field_512 = 0
    stor21[stor23 + 1].field_80 = arg4
    stor21[stor23 + 1].field_96 = address(ext_call.return_data[0])
    stor21[stor23 + 1].field_256 = arg3
    stor21[stor23 + 1][3][].field_0 = Array(len=arg5.length, data=arg5[all])
    emit DocumentAdded(stor23);
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x36b518fe: stor23, arg3, address(ext_call.return_data[0])
    return stor23
}

function sub_ae4936cb(?) {
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.data(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        return True
    require ext_code.size(stor13)
    call stor13.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor14[ext_call.return_data[12 len 20]].field_0 <= 4
    if stor14[ext_call.return_data[12 len 20]].field_0 == 1:
        return True
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20001
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor7)
        call stor7.hasVaultAccess(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return not bool(ext_call.return_data[0])
    return bool(msg.sender)
}

function getDocument(uint256 arg1) {
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.data(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[832] = stor21[arg1][3].field_0
        idx = 832
        s = 0
        while stor21[arg1][3].length + 800 > idx:
            mem[idx + 32] = stor21[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require stor21[arg1].field_0
        return stor21[arg1].field_0, 
               stor21[arg1].field_0,
               stor21[arg1].field_512,
               stor21[arg1].field_0,
               stor21[arg1].field_256,
               stor21[arg1].field_0,
               Array(len=stor21[arg1][3].length, data=mem[832 len stor21[arg1][3].length]),
               bool(stor21[arg1].field_8),
               stor21[arg1].field_0
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        mem[832] = stor21[arg1][3].field_0
        idx = 832
        s = 0
        while stor21[arg1][3].length + 800 > idx:
            mem[idx + 32] = stor21[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require stor21[arg1].field_0
        return stor21[arg1].field_0, 
               stor21[arg1].field_0,
               stor21[arg1].field_512,
               stor21[arg1].field_0,
               stor21[arg1].field_256,
               stor21[arg1].field_0,
               Array(len=stor21[arg1][3].length, data=mem[832 len stor21[arg1][3].length]),
               bool(stor21[arg1].field_8),
               stor21[arg1].field_0
    require ext_code.size(stor13)
    call stor13.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor14[ext_call.return_data[12 len 20]].field_0 <= 4
    if stor14[ext_call.return_data[12 len 20]].field_0 == 1:
        mem[832] = stor21[arg1][3].field_0
        idx = 832
        s = 0
        while stor21[arg1][3].length + 800 > idx:
            mem[idx + 32] = stor21[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require stor21[arg1].field_0
        return stor21[arg1].field_0, 
               stor21[arg1].field_0,
               stor21[arg1].field_512,
               stor21[arg1].field_0,
               stor21[arg1].field_256,
               stor21[arg1].field_0,
               Array(len=stor21[arg1][3].length, data=mem[832 len stor21[arg1][3].length]),
               bool(stor21[arg1].field_8),
               stor21[arg1].field_0
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20001
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        if ext_call.return_data[0]:
            revert with 0, 'Access denied'
        if not msg.sender:
            revert with 0, 'Access denied'
    else:
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor7)
        call stor7.hasVaultAccess(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                revert with 0, 'Access denied'
            if not msg.sender:
                revert with 0, 'Access denied'
    mem[884] = stor21[arg1][3].field_0
    idx = 884
    s = 0
    while stor21[arg1][3].length + 852 > idx:
        mem[idx + 32] = stor21[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor21[arg1].field_0
    return stor21[arg1].field_0, 
           stor21[arg1].field_48 << 240,
           stor21[arg1].field_512,
           address(stor21[arg1].field_96),
           stor21[arg1].field_256,
           stor21[arg1].field_80 << 240,
           Array(len=stor21[arg1][3].length, data=mem[884 len stor21[arg1][3].length]),
           bool(stor21[arg1].field_8),
           stor21[arg1].field_64 << 240
}

function getClaim(bytes32 arg1) {
    mem[96] = 0x8522d0eb00000000000000000000000000000000000000000000000000000000
    mem[100] = 4
    mem[132] = arg1
    require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
    delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0x8522d0eb with:
         gas gas_remaining wei
        args 4, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 192
    _6 = uint32(arg1), mem[164 len 28]
    _7 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 32 <= return_data.size
    require return_data.size >= mem[mem[192] + 96] + mem[192] + 32 and mem[mem[192] + 96] <= 4294967296
    _9 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 32 <= return_data.size
    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 32 <= return_data.size
    require return_data.size >= mem[mem[256] + 96] + mem[256] + 32 and mem[mem[256] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[96 len 4], 0
    mem[ceil32(return_data.size) + 128] = 4, Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 160] = address(_6)
    mem[ceil32(return_data.size) + 192] = 192
    mem[ceil32(return_data.size) + 288] = mem[_7 + 96]
    _15 = mem[_7 + 96]
    mem[ceil32(return_data.size) + 320 len ceil32(mem[_7 + 96])] = mem[_7 + 128 len ceil32(mem[_7 + 96])]
    if not _15 % 32:
        mem[ceil32(return_data.size) + 224] = _15 + 224
        mem[_15 + ceil32(return_data.size) + 320] = mem[_9 + 96]
        _52 = mem[_9 + 96]
        mem[_15 + ceil32(return_data.size) + 352 len ceil32(mem[_9 + 96])] = mem[_9 + 128 len ceil32(mem[_9 + 96])]
        if not _52 % 32:
            mem[ceil32(return_data.size) + 256] = _52 + _15 + 256
            mem[_52 + _15 + ceil32(return_data.size) + 352] = mem[_11 + 96]
            _87 = mem[_11 + 96]
            mem[_52 + _15 + ceil32(return_data.size) + 384 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
            if not _87 % 32:
                return mem[ceil32(return_data.size) + 96], 
                       4,
                       Mask(224, 32, arg1) >> 32,
                       address(_6),
                       Array(len=_52 + _15 + 256, data=mem[ceil32(return_data.size) + 288 len _87 + _52 + _15 + 96]),
                       _15 + 224
            mem[floor32(_87) + _52 + _15 + ceil32(return_data.size) + 384] = mem[floor32(_87) + _52 + _15 + ceil32(return_data.size) + -(_87 % 32) + 416 len _87 % 32]
            return mem[ceil32(return_data.size) + 96], 
                   4,
                   Mask(224, 32, arg1) >> 32,
                   address(_6),
                   Array(len=_52 + _15 + 256, data=mem[ceil32(return_data.size) + 288 len floor32(_87) + _52 + _15 + 128]),
                   _15 + 224
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 352] = mem[floor32(_52) + _15 + ceil32(return_data.size) + -(_52 % 32) + 384 len _52 % 32]
        mem[ceil32(return_data.size) + 256] = floor32(_52) + _15 + 288
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 384] = mem[_11 + 96]
        _93 = mem[_11 + 96]
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 416 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _93 % 32:
            return mem[ceil32(return_data.size) + 96], 
                   4,
                   Mask(224, 32, arg1) >> 32,
                   address(_6),
                   Array(len=floor32(_52) + _15 + 288, data=mem[ceil32(return_data.size) + 288 len _93 + floor32(_52) + _15 + 128]),
                   _15 + 224
        mem[floor32(_93) + floor32(_52) + _15 + ceil32(return_data.size) + 416] = mem[floor32(_93) + floor32(_52) + _15 + ceil32(return_data.size) + -(_93 % 32) + 448 len _93 % 32]
        return mem[ceil32(return_data.size) + 96], 
               4,
               Mask(224, 32, arg1) >> 32,
               address(_6),
               Array(len=floor32(_52) + _15 + 288, data=mem[ceil32(return_data.size) + 288 len floor32(_93) + floor32(_52) + _15 + 160]),
               _15 + 224
    mem[floor32(_15) + ceil32(return_data.size) + 320] = mem[floor32(_15) + ceil32(return_data.size) + -(_15 % 32) + 352 len _15 % 32]
    mem[ceil32(return_data.size) + 224] = floor32(_15) + 256
    mem[floor32(_15) + ceil32(return_data.size) + 352] = mem[_9 + 96]
    _55 = mem[_9 + 96]
    mem[floor32(_15) + ceil32(return_data.size) + 384 len ceil32(mem[_9 + 96])] = mem[_9 + 128 len ceil32(mem[_9 + 96])]
    if not _55 % 32:
        mem[ceil32(return_data.size) + 256] = _55 + floor32(_15) + 288
        mem[_55 + floor32(_15) + ceil32(return_data.size) + 384] = mem[_11 + 96]
        _90 = mem[_11 + 96]
        mem[_55 + floor32(_15) + ceil32(return_data.size) + 416 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _90 % 32:
            return mem[ceil32(return_data.size) + 96], 
                   4,
                   Mask(224, 32, arg1) >> 32,
                   address(_6),
                   Array(len=_55 + floor32(_15) + 288, data=mem[ceil32(return_data.size) + 288 len _90 + _55 + floor32(_15) + 128]),
                   floor32(_15) + 256
        mem[floor32(_90) + _55 + floor32(_15) + ceil32(return_data.size) + 416] = mem[floor32(_90) + _55 + floor32(_15) + ceil32(return_data.size) + -(_90 % 32) + 448 len _90 % 32]
        return mem[ceil32(return_data.size) + 96], 
               4,
               Mask(224, 32, arg1) >> 32,
               address(_6),
               Array(len=_55 + floor32(_15) + 288, data=mem[ceil32(return_data.size) + 288 len floor32(_90) + _55 + floor32(_15) + 160]),
               floor32(_15) + 256
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 384] = mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + -(_55 % 32) + 416 len _55 % 32]
    mem[ceil32(return_data.size) + 256] = floor32(_55) + floor32(_15) + 320
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 416] = mem[_11 + 96]
    _95 = mem[_11 + 96]
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 448 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
    if not _95 % 32:
        return mem[ceil32(return_data.size) + 96], 
               4,
               Mask(224, 32, arg1) >> 32,
               address(_6),
               Array(len=floor32(_55) + floor32(_15) + 320, data=mem[ceil32(return_data.size) + 288 len _95 + floor32(_55) + floor32(_15) + 160]),
               floor32(_15) + 256
    mem[floor32(_95) + floor32(_55) + floor32(_15) + ceil32(return_data.size) + 448] = mem[floor32(_95) + floor32(_55) + floor32(_15) + ceil32(return_data.size) + -(_95 % 32) + 480 len _95 % 32]
    return mem[ceil32(return_data.size) + 96], 
           4,
           Mask(224, 32, arg1) >> 32,
           address(_6),
           Array(len=floor32(_55) + floor32(_15) + 320, data=mem[ceil32(return_data.size) + 288 len floor32(_95) + floor32(_55) + floor32(_15) + 192]),
           floor32(_15) + 256
}

function sub_17721bdb(?) {
    mem[128] = address(msg.sender)
    mem[96] = 20
    mem[148 len 0] = None
    mem[216] = 20003
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20003
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[152] = address(ext_call.return_data[0])
    mem[184] = address(ext_call.return_data[0])
    require ext_code.size(stor7)
    call stor7.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    mem[148] = 0x4dcc739600000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x4dcc7396 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[148 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    _138 = mem[276]
    require mem[276] <= 4294967296
    require mem[276] + 32 <= return_data.size
    require return_data.size >= mem[mem[276] + 148] + mem[276] + 32 and mem[mem[276] + 148] <= 4294967296
    require mem[308] <= 4294967296
    require mem[308] + 32 <= return_data.size
    require return_data.size >= mem[mem[308] + 148] + mem[308] + 32 and mem[mem[308] + 148] <= 4294967296
    require mem[340] <= 4294967296
    require mem[340] + 32 <= return_data.size
    require return_data.size >= mem[mem[340] + 148] + mem[340] + 32 and mem[mem[340] + 148] <= 4294967296
    require stor14[address(arg1)].field_0 <= 4
    mem[32] = 14
    mem[64] = ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 180
    mem[ceil32(return_data.size) + 148] = stor14[address(arg1)][1].length
    mem[0] = sha3(address(arg1), 14) + 1
    mem[ceil32(return_data.size) + 180] = stor14[address(arg1)][1].field_0
    idx = ceil32(return_data.size) + 180
    s = 0
    while ceil32(return_data.size) + stor14[address(arg1)][1].length + 148 > idx:
        mem[idx + 32] = stor14[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 180] = 0
    mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 212] = stor14[address(arg1)].field_0
    mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 244] = stor14[address(arg1)].field_8
    mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 276] = 160
    mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 340] = mem[_138 + 148]
    _211 = mem[_138 + 148]
    mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 372 len ceil32(mem[_138 + 148])] = mem[_138 + 180 len ceil32(mem[_138 + 148])]
    if not _211 % 32:
        mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 308] = _211 + 192
        mem[_211 + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 372] = stor14[address(arg1)][1].length
        mem[_211 + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 404 len ceil32(stor14[address(arg1)][1].length)] = mem[ceil32(return_data.size) + 180 len ceil32(stor14[address(arg1)][1].length)]
        if not stor14[address(arg1)][1].length % 32:
            return 0, 
                   stor14[address(arg1)].field_0,
                   stor14[address(arg1)].field_0,
                   160,
                   _211 + 192,
                   mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 340 len _211 + 32],
                   stor14[address(arg1)][1].length,
                   mem[ceil32(return_data.size) + 180 len stor14[address(arg1)][1].length]
        mem[floor32(stor14[address(arg1)][1].length) + _211 + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 404] = mem[floor32(stor14[address(arg1)][1].length) + _211 + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + -stor14[address(arg1)][1].length % 32 + 436 len stor14[address(arg1)][1].length % 32]
        return 0, 
               stor14[address(arg1)].field_0,
               stor14[address(arg1)].field_0,
               160,
               _211 + 192,
               mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 340 len _211 + 32],
               stor14[address(arg1)][1].length,
               mem[ceil32(return_data.size) + 180 len ceil32(stor14[address(arg1)][1].length)],
               mem[ceil32(return_data.size) + (2 * ceil32(stor14[address(arg1)][1].length)) + _211 + 404 len floor32(stor14[address(arg1)][1].length) + -ceil32(stor14[address(arg1)][1].length) + 32]
    mem[floor32(_211) + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 372] = mem[floor32(_211) + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + -(_211 % 32) + 404 len _211 % 32]
    mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 308] = floor32(_211) + 224
    mem[floor32(_211) + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 404] = stor14[address(arg1)][1].length
    mem[floor32(_211) + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 436 len ceil32(stor14[address(arg1)][1].length)] = mem[ceil32(return_data.size) + 180 len ceil32(stor14[address(arg1)][1].length)]
    if not stor14[address(arg1)][1].length % 32:
        return 0, 
               stor14[address(arg1)].field_0,
               stor14[address(arg1)].field_0,
               160,
               floor32(_211) + 224,
               mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 340 len floor32(_211) + 64],
               stor14[address(arg1)][1].length,
               mem[ceil32(return_data.size) + 180 len stor14[address(arg1)][1].length]
    mem[floor32(stor14[address(arg1)][1].length) + floor32(_211) + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 436] = mem[floor32(stor14[address(arg1)][1].length) + floor32(_211) + ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + -stor14[address(arg1)][1].length % 32 + 468 len stor14[address(arg1)][1].length % 32]
    return 0, 
           stor14[address(arg1)].field_0,
           stor14[address(arg1)].field_0,
           160,
           floor32(_211) + 224,
           mem[ceil32(return_data.size) + ceil32(stor14[address(arg1)][1].length) + 340 len floor32(_211) + 64],
           stor14[address(arg1)][1].length,
           mem[ceil32(return_data.size) + 180 len ceil32(stor14[address(arg1)][1].length)],
           mem[ceil32(return_data.size) + (2 * ceil32(stor14[address(arg1)][1].length)) + floor32(_211) + 436 len floor32(stor14[address(arg1)][1].length) + -ceil32(stor14[address(arg1)][1].length) + 32]
}

function getDocuments() {
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.data(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = address(ext_call.return_data[0])
    mem[132] = msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not stor22.length:
            mem[(32 * stor22.length) + 128] = 32
            mem[(32 * stor22.length) + 160] = stor22.length
            mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
            return memory
              from (32 * stor22.length) + 128
               len (96 * stor22.length) + 64
        mem[128] = uint256(stor22.field_0)
        idx = 128
        s = 0
        while (32 * stor22.length) + 96 > idx:
            mem[idx + 32] = stor22[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
        return Array(len=stor22.length, data=mem[128 len floor32(stor22.length)], mem[(32 * stor22.length) + floor32(stor22.length) + 192 len (32 * stor22.length) - floor32(stor22.length)]), 
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = address(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    mem[100] = msg.sender
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        if not stor22.length:
            mem[(32 * stor22.length) + 128] = 32
            mem[(32 * stor22.length) + 160] = stor22.length
            mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
            return memory
              from (32 * stor22.length) + 128
               len (96 * stor22.length) + 64
        mem[128] = uint256(stor22.field_0)
        idx = 128
        s = 0
        while (32 * stor22.length) + 96 > idx:
            mem[idx + 32] = stor22[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
        return Array(len=stor22.length, data=mem[128 len floor32(stor22.length)], mem[(32 * stor22.length) + floor32(stor22.length) + 192 len (32 * stor22.length) - floor32(stor22.length)]), 
    mem[100] = msg.sender
    require ext_code.size(stor13)
    call stor13.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor14[ext_call.return_data[12 len 20]].field_0 <= 4
    if stor14[ext_call.return_data[12 len 20]].field_0 == 1:
        if not stor22.length:
            mem[(32 * stor22.length) + 128] = 32
            mem[(32 * stor22.length) + 160] = stor22.length
            mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
            return memory
              from (32 * stor22.length) + 128
               len (96 * stor22.length) + 64
        mem[128] = uint256(stor22.field_0)
        idx = 128
        s = 0
        while (32 * stor22.length) + 96 > idx:
            mem[idx + 32] = stor22[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
        return Array(len=stor22.length, data=mem[128 len floor32(stor22.length)], mem[(32 * stor22.length) + floor32(stor22.length) + 192 len (32 * stor22.length) - floor32(stor22.length)]), 
    mem[152] = 0
    mem[184] = sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96)
    mem[216] = 20001
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20001
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        if ext_call.return_data[0]:
            revert with 0, 'Access denied'
        if not msg.sender:
            revert with 0, 'Access denied'
    else:
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[152] = address(ext_call.return_data[0])
        mem[184] = address(ext_call.return_data[0])
        require ext_code.size(stor7)
        call stor7.hasVaultAccess(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                revert with 0, 'Access denied'
            if not msg.sender:
                revert with 0, 'Access denied'
    if stor22.length:
        mem[180] = uint256(stor22.field_0)
        idx = 180
        s = 0
        while (32 * stor22.length) + 148 > idx:
            mem[idx + 32] = stor22[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor22.length) + 244 len floor32(stor22.length)] = mem[180 len floor32(stor22.length)]
    return Array(len=stor22.length, data=mem[180 len floor32(stor22.length)], mem[(32 * stor22.length) + floor32(stor22.length) + 244 len (32 * stor22.length) - floor32(stor22.length)]), 
}

function sub_4dcc7396(?) {
    mem[96] = stor9.length
    mem[128] = uint256(stor9.field_0)
    idx = 128
    s = 0
    while stor9.length + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor9.length) + 128] = stor10.length
    mem[ceil32(stor9.length) + 160] = uint256(stor10.field_0)
    idx = ceil32(stor9.length) + 160
    s = 0
    while ceil32(stor9.length) + stor10.length + 128 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 192
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 160] = stor11.length
    mem[0] = 11
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 192] = uint256(stor11.field_0)
    idx = ceil32(stor9.length) + ceil32(stor10.length) + 192
    s = 0
    while ceil32(stor9.length) + ceil32(stor10.length) + stor11.length + 160 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 192] = address(stor8.field_0)
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 224] = uint16(stor8.field_160)
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 256] = uint16(stor8.field_176)
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 288] = uint16(stor8.field_192)
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 320] = 224
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 416] = stor9.length
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len ceil32(stor9.length)] = mem[128 len ceil32(stor9.length)]
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 352] = stor9.length + 256
    mem[stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 448] = stor10.length
    mem[stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 480 len ceil32(stor10.length)] = mem[ceil32(stor9.length) + 160 len ceil32(stor10.length)]
    if not stor10.length % 32:
        mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 384] = stor10.length + stor9.length + 288
        mem[stor10.length + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 480] = stor11.length
        if 0 >= stor11.length:
            if not stor11.length % 32:
                return address(stor8.field_0), 
                       uint16(stor8.field_0),
                       uint16(stor8.field_0),
                       uint16(stor8.field_0),
                       Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len stor10.length + stor9.length + -ceil32(stor9.length) + 32], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + stor10.length + stor9.length + 512 len stor11.length]),
                       stor9.length + 256,
                       stor10.length + stor9.length + 288
            mem[floor32(stor11.length) + stor10.length + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 512] = mem[floor32(stor11.length) + stor10.length + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + -stor11.length % 32 + 544 len stor11.length % 32]
            return address(stor8.field_0), 
                   uint16(stor8.field_0),
                   uint16(stor8.field_0),
                   uint16(stor8.field_0),
                   Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len stor10.length + stor9.length + -ceil32(stor9.length) + 32], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + stor10.length + stor9.length + 512 len floor32(stor11.length) + 32]),
                   stor9.length + 256,
                   stor10.length + stor9.length + 288
        mem[stor10.length + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 512] = mem[ceil32(stor9.length) + ceil32(stor10.length) + 192]
        mem[stor10.length + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 544 len floor32(stor11.length - 1)] = mem[ceil32(stor9.length) + ceil32(stor10.length) + 224 len floor32(stor11.length - 1)]
        if not stor11.length % 32:
            return address(stor8.field_0), 
                   uint16(stor8.field_0),
                   uint16(stor8.field_0),
                   uint16(stor8.field_0),
                   Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len stor10.length + stor9.length + -ceil32(stor9.length) + 32], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + stor10.length + stor9.length + 512 len stor11.length]),
                   stor9.length + 256,
                   stor10.length + stor9.length + 288
        mem[floor32(stor11.length) + stor10.length + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 512] = mem[floor32(stor11.length) + stor10.length + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + -stor11.length % 32 + 544 len stor11.length % 32]
        return address(stor8.field_0), 
               uint16(stor8.field_0),
               uint16(stor8.field_0),
               uint16(stor8.field_0),
               Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len stor10.length + stor9.length + -ceil32(stor9.length) + 32], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + 192], mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + stor10.length + stor9.length + 544 len floor32(stor11.length)]),
               stor9.length + 256,
               stor10.length + stor9.length + 288
    mem[floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 480] = mem[floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + -stor10.length % 32 + 512 len stor10.length % 32]
    mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 384] = floor32(stor10.length) + stor9.length + 320
    mem[floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 512] = stor11.length
    if 0 >= stor11.length:
        if not stor11.length % 32:
            return address(stor8.field_0), 
                   uint16(stor8.field_0),
                   uint16(stor8.field_0),
                   uint16(stor8.field_0),
                   Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len floor32(stor10.length) + stor9.length + -ceil32(stor9.length) + 64], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + floor32(stor10.length) + stor9.length + 544 len stor11.length]),
                   stor9.length + 256,
                   floor32(stor10.length) + stor9.length + 320
        mem[floor32(stor11.length) + floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 544] = mem[floor32(stor11.length) + floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + -stor11.length % 32 + 576 len stor11.length % 32]
        return address(stor8.field_0), 
               uint16(stor8.field_0),
               uint16(stor8.field_0),
               uint16(stor8.field_0),
               Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len floor32(stor10.length) + stor9.length + -ceil32(stor9.length) + 64], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + floor32(stor10.length) + stor9.length + 544 len floor32(stor11.length) + 32]),
               stor9.length + 256,
               floor32(stor10.length) + stor9.length + 320
    mem[floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 544] = mem[ceil32(stor9.length) + ceil32(stor10.length) + 192]
    mem[floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 576 len floor32(stor11.length - 1)] = mem[ceil32(stor9.length) + ceil32(stor10.length) + 224 len floor32(stor11.length - 1)]
    if not stor11.length % 32:
        return address(stor8.field_0), 
               uint16(stor8.field_0),
               uint16(stor8.field_0),
               uint16(stor8.field_0),
               Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len floor32(stor10.length) + stor9.length + -ceil32(stor9.length) + 64], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + floor32(stor10.length) + stor9.length + 544 len stor11.length]),
               stor9.length + 256,
               floor32(stor10.length) + stor9.length + 320
    mem[floor32(stor11.length) + floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + 544] = mem[floor32(stor11.length) + floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + -stor11.length % 32 + 576 len stor11.length % 32]
    return address(stor8.field_0), 
           uint16(stor8.field_0),
           uint16(stor8.field_0),
           uint16(stor8.field_0),
           Array(len=stor9.length, data=mem[128 len ceil32(stor9.length)], mem[(2 * ceil32(stor9.length)) + ceil32(stor10.length) + ceil32(stor11.length) + 448 len floor32(stor10.length) + stor9.length + -ceil32(stor9.length) + 64], stor11.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + 192], mem[ceil32(stor9.length) + ceil32(stor10.length) + ceil32(stor11.length) + floor32(stor10.length) + stor9.length + 576 len floor32(stor11.length)]),
           stor9.length + 256,
           floor32(stor10.length) + stor9.length + 320
}

function addClaim(uint256 arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5, string arg6) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg6.length
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len arg6.length] = arg6[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = 0xbd2d0c2800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = arg5.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            mem[arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = arg6.length
            mem[arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, arg5.length + arg4.length + 320, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + arg5.length + arg4.length + -ceil32(arg4.length) + 64]
            else:
                mem[floor32(arg6.length) + arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = mem[floor32(arg6.length) + arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 580 len arg6.length % 32]
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, arg5.length + arg4.length + 320, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + arg5.length + arg4.length + -ceil32(arg4.length) + 96]
        else:
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 548 len arg5.length % 32]
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = arg6.length
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, floor32(arg5.length) + arg4.length + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 96]
            else:
                mem[floor32(arg6.length) + floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580] = mem[floor32(arg6.length) + floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 612 len arg6.length % 32]
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, floor32(arg5.length) + arg4.length + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 128]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = arg5.length
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            mem[arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = arg6.length
            mem[arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, arg5.length + floor32(arg4.length) + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + arg5.length + floor32(arg4.length) + -ceil32(arg4.length) + 96]
            else:
                mem[floor32(arg6.length) + arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580] = mem[floor32(arg6.length) + arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 612 len arg6.length % 32]
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, arg5.length + floor32(arg4.length) + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + arg5.length + floor32(arg4.length) + -ceil32(arg4.length) + 128]
        else:
            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 580 len arg5.length % 32]
            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580] = arg6.length
            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 612 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, floor32(arg5.length) + floor32(arg4.length) + 384, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + floor32(arg5.length) + floor32(arg4.length) + -ceil32(arg4.length) + 128]
            else:
                mem[floor32(arg6.length) + floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 612] = mem[floor32(arg6.length) + floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 644 len arg6.length % 32]
                require ext_code.size(0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672)
                delegate 0x4cbfa8c91e8e5ed0ea9d86127806435a6d5c0672.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, floor32(arg5.length) + floor32(arg4.length) + 384, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + floor32(arg5.length) + floor32(arg4.length) + -ceil32(arg4.length) + 160]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_a8717a0d(?) {
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.data(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[96] = stor19.length
        mem[128] = uint256(stor19.field_0)
        idx = 128
        s = 0
        while stor19.length + 96 > idx:
            mem[idx + 32] = stor19[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor19.length) + ceil32(stor20.length) + 160
        mem[ceil32(stor19.length) + 128] = stor20.length
        mem[0] = 20
        mem[ceil32(stor19.length) + 160] = uint256(stor20.field_0)
        idx = ceil32(stor19.length) + 160
        s = 0
        while ceil32(stor19.length) + stor20.length + 128 > idx:
            mem[idx + 32] = stor20[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 160] = 64
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 224] = stor19.length
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 256 len ceil32(stor19.length)] = mem[128 len ceil32(stor19.length)]
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 192] = stor19.length + 96
        mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 256] = stor20.length
        mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 288 len ceil32(stor20.length)] = mem[ceil32(stor19.length) + 160 len ceil32(stor20.length)]
        if not stor20.length % 32:
            return Array(len=stor19.length, data=mem[128 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 256 len stor20.length + stor19.length + -ceil32(stor19.length) + 32]), 
                   stor19.length + 96
        mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 288] = mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + -stor20.length % 32 + 320 len stor20.length % 32]
        return Array(len=stor19.length, data=mem[128 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 256 len floor32(stor20.length) + stor19.length + -ceil32(stor19.length) + 64]), 
               stor19.length + 96
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x2ba06e67 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = address(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Access denied'
    require ext_code.size(stor17)
    call stor17.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        mem[96] = stor19.length
        mem[128] = uint256(stor19.field_0)
        idx = 128
        s = 0
        while stor19.length + 96 > idx:
            mem[idx + 32] = stor19[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor19.length) + ceil32(stor20.length) + 160
        mem[ceil32(stor19.length) + 128] = stor20.length
        mem[0] = 20
        mem[ceil32(stor19.length) + 160] = uint256(stor20.field_0)
        idx = ceil32(stor19.length) + 160
        s = 0
        while ceil32(stor19.length) + stor20.length + 128 > idx:
            mem[idx + 32] = stor20[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 160] = 64
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 224] = stor19.length
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 256 len ceil32(stor19.length)] = mem[128 len ceil32(stor19.length)]
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 192] = stor19.length + 96
        mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 256] = stor20.length
        mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 288 len ceil32(stor20.length)] = mem[ceil32(stor19.length) + 160 len ceil32(stor20.length)]
        if not stor20.length % 32:
            return Array(len=stor19.length, data=mem[128 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 256 len stor20.length + stor19.length + -ceil32(stor19.length) + 32]), 
                   stor19.length + 96
        mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 288] = mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + -stor20.length % 32 + 320 len stor20.length % 32]
        return Array(len=stor19.length, data=mem[128 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 256 len floor32(stor20.length) + stor19.length + -ceil32(stor19.length) + 64]), 
               stor19.length + 96
    require ext_code.size(stor13)
    call stor13.0xf3c67f48 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[32] = 14
    require stor14[ext_call.return_data[12 len 20]].field_0 <= 4
    if stor14[ext_call.return_data[12 len 20]].field_0 == 1:
        mem[96] = stor19.length
        mem[128] = uint256(stor19.field_0)
        idx = 128
        s = 0
        while stor19.length + 96 > idx:
            mem[idx + 32] = stor19[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor19.length) + ceil32(stor20.length) + 160
        mem[ceil32(stor19.length) + 128] = stor20.length
        mem[0] = 20
        mem[ceil32(stor19.length) + 160] = uint256(stor20.field_0)
        idx = ceil32(stor19.length) + 160
        s = 0
        while ceil32(stor19.length) + stor20.length + 128 > idx:
            mem[idx + 32] = stor20[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 160] = 64
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 224] = stor19.length
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 256 len ceil32(stor19.length)] = mem[128 len ceil32(stor19.length)]
        mem[ceil32(stor19.length) + ceil32(stor20.length) + 192] = stor19.length + 96
        mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 256] = stor20.length
        mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 288 len ceil32(stor20.length)] = mem[ceil32(stor19.length) + 160 len ceil32(stor20.length)]
        if not stor20.length % 32:
            return Array(len=stor19.length, data=mem[128 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 256 len stor20.length + stor19.length + -ceil32(stor19.length) + 32]), 
                   stor19.length + 96
        mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 288] = mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + -stor20.length % 32 + 320 len stor20.length % 32]
        return Array(len=stor19.length, data=mem[128 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 256 len floor32(stor20.length) + stor19.length + -ceil32(stor19.length) + 64]), 
               stor19.length + 96
    mem[128] = address(msg.sender)
    mem[96] = 20
    mem[148 len 0] = None
    mem[184] = sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96)
    mem[216] = 20001
    require ext_code.size(0x66d1a905667807f0b86734b4dee3c784e180bbe9)
    delegate 0x66d1a905667807f0b86734b4dee3c784e180bbe9.0xd8188a40 with:
         gas gas_remaining wei
        args 0, sha3(Mask(160, 96, uint64(msg.sender), 0, 0) >> 96), 20001
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        if ext_call.return_data[0]:
            revert with 0, 'Access denied'
        if not msg.sender:
            revert with 0, 'Access denied'
    else:
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor6)
        call stor6.0x2ba06e67 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[184] = address(ext_call.return_data[0])
        require ext_code.size(stor7)
        call stor7.hasVaultAccess(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                revert with 0, 'Access denied'
            if not msg.sender:
                revert with 0, 'Access denied'
    mem[148] = stor19.length
    mem[180] = uint256(stor19.field_0)
    idx = 180
    s = 0
    while stor19.length + 148 > idx:
        mem[idx + 32] = stor19[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor19.length) + ceil32(stor20.length) + 212
    mem[ceil32(stor19.length) + 180] = stor20.length
    mem[0] = 20
    mem[ceil32(stor19.length) + 212] = uint256(stor20.field_0)
    idx = ceil32(stor19.length) + 212
    s = 0
    while ceil32(stor19.length) + stor20.length + 180 > idx:
        mem[idx + 32] = stor20[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor19.length) + ceil32(stor20.length) + 212] = 64
    mem[ceil32(stor19.length) + ceil32(stor20.length) + 276] = stor19.length
    mem[ceil32(stor19.length) + ceil32(stor20.length) + 308 len ceil32(stor19.length)] = mem[180 len ceil32(stor19.length)]
    mem[ceil32(stor19.length) + ceil32(stor20.length) + 244] = stor19.length + 96
    mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 308] = stor20.length
    mem[stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 340 len ceil32(stor20.length)] = mem[ceil32(stor19.length) + 212 len ceil32(stor20.length)]
    if not stor20.length % 32:
        return Array(len=stor19.length, data=mem[180 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 308 len stor20.length + stor19.length + -ceil32(stor19.length) + 32]), 
               stor19.length + 96
    mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + 340] = mem[floor32(stor20.length) + stor19.length + ceil32(stor19.length) + ceil32(stor20.length) + -stor20.length % 32 + 372 len stor20.length % 32]
    return Array(len=stor19.length, data=mem[180 len ceil32(stor19.length)], mem[(2 * ceil32(stor19.length)) + ceil32(stor20.length) + 308 len floor32(stor20.length) + stor19.length + -ceil32(stor19.length) + 64]), 
           stor19.length + 96
}



}
