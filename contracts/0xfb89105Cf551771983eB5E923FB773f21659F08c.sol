contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint8 stor2; offset 160
address owner;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint256 sub_aceaf92d;
uint256 stor8;
uint256 stor9;
uint256 sub_c8ecaddb;
uint8 stor11;
uint8 stor11; offset 8
address stor11; offset 16
uint256 stor12;
uint256 sub_83d02803;
uint256 stor14;
uint256 stor15;
uint256 sub_70332d85;
uint8 stor17;
uint8 stor17; offset 8

function isTransferable() {
    return bool(stor2)
}

function submittedWhitelistAddition() {
    return bool(uint8(stor6.field_0))
}

function isWhitelisted(address arg1) {
    return bool(stor3[arg1])
}

function sub_5658eff0(?) {
    return bool(uint8(stor11.field_8))
}

function sub_70332d85(?) {
    return sub_70332d85
}

function sub_83d02803(?) {
    return sub_83d02803
}

function sub_85cd9919(?) {
    return bool(uint8(stor17.field_0))
}

function owner() {
    return owner
}

function sub_aceaf92d(?) {
    return sub_aceaf92d
}

function sub_afa0fd9b(?) {
    return bool(uint8(stor6.field_16))
}

function sub_c8ecaddb(?) {
    return sub_c8ecaddb
}

function sub_d5666590(?) {
    return bool(uint8(stor11.field_0))
}

function submittedWhitelistRemoval() {
    return bool(uint8(stor6.field_8))
}

function sub_f9c470a5(?) {
    return bool(uint8(stor17.field_8))
}

function _fallback() payable {
    require not calldata.size
    emit Received(msg.sender, msg.value);
}

function spendAvailable() {
    if block.timestamp <= stor8 + (24 * 3600):
        return stor9
    return sub_aceaf92d
}

function topUpAvailable() {
    if block.timestamp <= stor14 + (24 * 3600):
        return stor15
    return sub_83d02803
}

function supportsInterface(bytes4 arg1) {
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if not stor2:
        revert with 0, 'ownership is not transferable'
    emit TransferredOwnership(owner, 0);
    owner = 0
}

function balance(address arg1) {
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if not stor2:
        revert with 0, 'ownership is not transferable'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'owner cannot be set to zero address'
    stor2 = 0
    emit TransferredOwnership(owner, arg1);
    owner = arg1
}

function submitSpendLimit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if not uint8(stor11.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'spend limit has not been initialized'
    if uint8(stor11.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'spend limit has already been submitted'
    sub_c8ecaddb = arg1
    uint8(stor11.field_0) = 1
    emit SubmittedSpendLimitChange(arg1);
}

function pendingWhitelistHash(address[] arg1) {
    mem[(32 * arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + 160 len floor32(96 * arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 160 len floor32(96 * arg1.length) - floor32(arg1.length)]
    mem[(64 * arg1.length) + 160] = sha3(mem[(64 * arg1.length) + 160 len 96 * arg1.length])
    return memory
      from (64 * arg1.length) + 160
       len 32
}

function pendingWhitelistAddition() {
    if stor4.length:
        mem[128] = address(stor4.field_0)
        if (32 * stor4.length) + 32 > 64:
            mem[160] = address(stor4.field_256)
            idx = 160
            s = 1
            while (32 * stor4.length) + 96 > idx:
                mem[idx + 32] = stor4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return memory
      from (32 * stor4.length) + 128
       len (96 * stor4.length) + 64
}

function submitTopUpLimit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if not uint8(stor17.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up limit has not been initialized'
    if uint8(stor17.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up limit has already been submitted'
    if 10^15 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up amount is outside of the min/max range'
    if arg1 > 5 * 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up amount is outside of the min/max range'
    sub_70332d85 = arg1
    uint8(stor17.field_0) = 1
    emit SubmittedTopUpLimitChange(arg1);
}

function pendingWhitelistRemoval() {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function initializeSpendLimit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if uint8(stor11.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'spend limit has already been initialized'
    require stor8 + (24 * 3600) >= stor8
    if block.timestamp > stor8 + (24 * 3600):
        require stor8 <= block.timestamp
        if not block.timestamp - stor8 / 24 * 3600:
            require stor8 >= stor8
        else:
            require 24 * 3600 * block.timestamp - stor8 / 24 * 3600 / block.timestamp - stor8 / 24 * 3600 == 24 * 3600
            require (24 * 3600 * block.timestamp - stor8 / 24 * 3600) + stor8 >= stor8
            stor8 += 24 * 3600 * block.timestamp - stor8 / 24 * 3600
        stor9 = sub_aceaf92d
    sub_aceaf92d = arg1
    if arg1 < stor9:
        stor9 = sub_aceaf92d
    uint8(stor11.field_8) = 1
    emit SetSpendLimit(msg.sender, arg1);
}

function initializeWhitelist(address[] arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20] == owner:
            revert with 0, 'provided whitelist contains theowner address'
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'provided whitelist contains thezero address'
        idx = idx + 1
        continue 
    if uint8(stor6.field_16):
        revert with 0, 'whitelist has already been initialized'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
    uint8(stor6.field_16) = 1
    emit AddedToWhitelist(msg.sender, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]));
}

function cancelSpendLimit(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if arg1 != sub_c8ecaddb:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'pending and cancelled spend limits dont match'
    sub_c8ecaddb = 0
    uint8(stor11.field_0) = 0
    emit 0x83e15565: msg.sender, arg1
}

function cancelTopUpLimit(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if arg1 != sub_70332d85:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'pending and cancelled top up limits dont match'
    sub_70332d85 = 0
    uint8(stor17.field_0) = 0
    emit CancelledTopUpLimitChange(msg.sender, arg1);
}

function initializeTopUpLimit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if uint8(stor17.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up limit has already been initialized'
    if 10^15 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up amount is outside of the min/max range'
    if arg1 > 5 * 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up amount is outside of the min/max range'
    require stor14 + (24 * 3600) >= stor14
    if block.timestamp > stor14 + (24 * 3600):
        require stor14 <= block.timestamp
        if not block.timestamp - stor14 / 24 * 3600:
            require stor14 >= stor14
        else:
            require 24 * 3600 * block.timestamp - stor14 / 24 * 3600 / block.timestamp - stor14 / 24 * 3600 == 24 * 3600
            require (24 * 3600 * block.timestamp - stor14 / 24 * 3600) + stor14 >= stor14
            stor14 += 24 * 3600 * block.timestamp - stor14 / 24 * 3600
        stor15 = sub_83d02803
    sub_83d02803 = arg1
    if arg1 < stor15:
        stor15 = sub_83d02803
    uint8(stor17.field_8) = 1
    emit SetTopUpLimit(msg.sender, arg1);
}

function confirmSpendLimit(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if not uint8(stor11.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'spend limit has not been submitted'
    if arg1 != sub_c8ecaddb:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'confirmed and submitted spend limits dont match'
    require stor8 + (24 * 3600) >= stor8
    if block.timestamp > stor8 + (24 * 3600):
        require stor8 <= block.timestamp
        if not block.timestamp - stor8 / 24 * 3600:
            require stor8 >= stor8
        else:
            require 24 * 3600 * block.timestamp - stor8 / 24 * 3600 / block.timestamp - stor8 / 24 * 3600 == 24 * 3600
            require (24 * 3600 * block.timestamp - stor8 / 24 * 3600) + stor8 >= stor8
            stor8 += 24 * 3600 * block.timestamp - stor8 / 24 * 3600
        stor9 = sub_aceaf92d
    sub_aceaf92d = sub_c8ecaddb
    if sub_c8ecaddb < stor9:
        stor9 = sub_aceaf92d
    emit SetSpendLimit(msg.sender, sub_c8ecaddb);
    uint8(stor11.field_0) = 0
    sub_c8ecaddb = 0
}

function topUpGas(uint256 arg1) {
    if not arg1:
        revert with 0, 'provided value cannot be zero'
    if owner != msg.sender:
        require ext_code.size(stor0)
        call stor0.resolver(bytes32 arg1) with:
             gas gas_remaining wei
            args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
             gas gas_remaining wei
            args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).isController(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is neither an owner nor a controller'
    require stor14 + (24 * 3600) >= stor14
    if block.timestamp > stor14 + (24 * 3600):
        require stor14 <= block.timestamp
        if not block.timestamp - stor14 / 24 * 3600:
            require stor14 >= stor14
        else:
            require 24 * 3600 * block.timestamp - stor14 / 24 * 3600 / block.timestamp - stor14 / 24 * 3600 == 24 * 3600
            require (24 * 3600 * block.timestamp - stor14 / 24 * 3600) + stor14 >= stor14
            stor14 += 24 * 3600 * block.timestamp - stor14 / 24 * 3600
        stor15 = sub_83d02803
    if not stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'available top up limit cannot be zero'
    if arg1 > stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'available top up limit less than amount passed in'
    stor15 -= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ToppedUpGas(tx.origin, owner, arg1);
}

function confirmTopUpLimit(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if not uint8(stor17.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up limit has not been submitted'
    if 10^15 > sub_70332d85:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up amount is outside the min/max range'
    if sub_70332d85 > 5 * 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'top up amount is outside the min/max range'
    if arg1 != sub_70332d85:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'confirmed and pending topup limit are not same'
    require stor14 + (24 * 3600) >= stor14
    if block.timestamp > stor14 + (24 * 3600):
        require stor14 <= block.timestamp
        if not block.timestamp - stor14 / 24 * 3600:
            require stor14 >= stor14
        else:
            require 24 * 3600 * block.timestamp - stor14 / 24 * 3600 / block.timestamp - stor14 / 24 * 3600 == 24 * 3600
            require (24 * 3600 * block.timestamp - stor14 / 24 * 3600) + stor14 >= stor14
            stor14 += 24 * 3600 * block.timestamp - stor14 / 24 * 3600
        stor15 = sub_83d02803
    sub_83d02803 = sub_70332d85
    if sub_70332d85 < stor15:
        stor15 = sub_83d02803
    emit SetTopUpLimit(msg.sender, sub_70332d85);
    sub_70332d85 = 0
    uint8(stor17.field_0) = 0
}

function submitWhitelistRemoval(address[] arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if uint8(stor6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'whitelist operation has already been submitted'
    if uint8(stor6.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'whitelist operation has already been submitted'
    stor5.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor5[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint8(stor6.field_8) = 1
    if stor5.length:
        mem[128] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = address(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 160 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    mem[(64 * stor5.length) + 160 len floor32(96 * stor5.length)] = mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 160 len floor32(96 * stor5.length) - floor32(stor5.length)]
    mem[(64 * stor5.length) + floor32(96 * stor5.length) + 160] = mem[(64 * stor5.length) + floor32(96 * stor5.length) + 160] and 256^(-(96 * stor5.length % 32) + 32) - 1 or mem[(32 * stor5.length) + floor32(96 * stor5.length) + 160] and !(256^(-(96 * stor5.length % 32) + 32) - 1)
    mem[(64 * stor5.length) + 192] = sha3(mem[(64 * stor5.length) + 160 len 223 * stor5.length])
    mem[(64 * stor5.length) + 160] = 64
    mem[(64 * stor5.length) + 224] = arg1.length
    mem[(64 * stor5.length) + 256 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    emit SubmittedWhitelistRemoval(address[] arg1, bytes32 arg2):
                                   mem[(64 * stor5.length) + 160 len (127 * stor5.length) + (32 * arg1.length) + 96],
}

function cancelWhitelistRemoval(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if stor5.length:
        mem[128] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = address(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 160 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    mem[(64 * stor5.length) + 160 len floor32(96 * stor5.length)] = mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 160 len floor32(96 * stor5.length) - floor32(stor5.length)]
    mem[(64 * stor5.length) + floor32(96 * stor5.length) + 160] = mem[(64 * stor5.length) + floor32(96 * stor5.length) + 160] and 256^(-(96 * stor5.length % 32) + 32) - 1 or mem[(32 * stor5.length) + floor32(96 * stor5.length) + 160] and !(256^(-(96 * stor5.length % 32) + 32) - 1)
    if arg1 != sha3(mem[(64 * stor5.length) + 160 len 223 * stor5.length]):
        mem[(64 * stor5.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * stor5.length) + 164] = 32
        mem[(64 * stor5.length) + 196] = 52
        mem[(64 * stor5.length) + 228] = 'hash of the pending whitelist re'
        mem[(64 * stor5.length) + 260] = 'moval does not match'
        revert with memory
          from (64 * stor5.length) + 160
           len (127 * stor5.length) + 132
    stor5.length = 0
    idx = 0
    while stor5.length > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_8) = 0
    mem[(64 * stor5.length) + 160] = msg.sender
    mem[(64 * stor5.length) + 192] = arg1
    emit 0x13c935eb: mem[(64 * stor5.length) + 160 len (127 * stor5.length) + 64]
}

function cancelWhitelistAddition(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if stor4.length:
        mem[128] = address(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor4.length) + 160 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        mem[(64 * stor4.length) + 160 len 32 * stor4.length] = mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 160 len (32 * stor4.length) - floor32(stor4.length)]
        if arg1 != sha3(mem[(64 * stor4.length) + 160 len 32 * stor4.length]):
            revert with 0, 'hash of the pending whitelist addition does not match'
        stor4.length = 0
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        uint8(stor6.field_0) = 0
        emit 0x7794eff8: msg.sender, arg1
    else:
        mem[(32 * stor4.length) + 160 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        mem[(64 * stor4.length) + 160 len floor32(96 * stor4.length)] = mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 160 len floor32(96 * stor4.length) - floor32(stor4.length)]
        mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] = mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * stor4.length) + floor32(96 * stor4.length) + 160] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
        if arg1 != sha3(mem[(64 * stor4.length) + 160 len 223 * stor4.length]):
            mem[(64 * stor4.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * stor4.length) + 164] = 32
            mem[(64 * stor4.length) + 196] = 53
            mem[(64 * stor4.length) + 228] = 'hash of the pending whitelist ad'
            mem[(64 * stor4.length) + 260] = 'dition does not match'
            revert with memory
              from (64 * stor4.length) + 160
               len (127 * stor4.length) + 132
        stor4.length = 0
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        uint8(stor6.field_0) = 0
        mem[(64 * stor4.length) + 160] = msg.sender
        mem[(64 * stor4.length) + 192] = arg1
        emit 0x7794eff8: mem[(64 * stor4.length) + 160 len (127 * stor4.length) + 64]
}

function confirmWhitelistRemoval(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if not uint8(stor6.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'whitelist removal has not been submitted'
    if 0 >= stor5.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'pending whitelist removal is empty'
    if stor5.length:
        mem[128] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = address(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 160 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    mem[(64 * stor5.length) + 160 len floor32(96 * stor5.length)] = mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 160 len floor32(96 * stor5.length) - floor32(stor5.length)]
    mem[(64 * stor5.length) + floor32(96 * stor5.length) + 160] = mem[(64 * stor5.length) + floor32(96 * stor5.length) + 160] and 256^(-(96 * stor5.length % 32) + 32) - 1 or mem[(32 * stor5.length) + floor32(96 * stor5.length) + 160] and !(256^(-(96 * stor5.length % 32) + 32) - 1)
    if arg1 != sha3(mem[(64 * stor5.length) + 160 len 223 * stor5.length]):
        mem[(64 * stor5.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * stor5.length) + 164] = 32
        mem[(64 * stor5.length) + 196] = 71
        mem[(64 * stor5.length) + 228] = 'hash of the pending whitelist re'
        mem[(64 * stor5.length) + 260] = 'moval does not match the confirm'
        mem[(64 * stor5.length) + 292] = 'ed hash'
        revert with memory
          from (64 * stor5.length) + 160
           len (127 * stor5.length) + 164
    idx = 0
    while idx < stor5.length:
        mem[0] = stor5[idx].field_0
        mem[32] = 3
        stor3[stor5[idx].field_0] = 0
        idx = idx + 1
        continue 
    mem[(64 * stor5.length) + 160] = msg.sender
    mem[(64 * stor5.length) + 192] = 64
    mem[(64 * stor5.length) + 224] = stor5.length
    if not stor5.length:
        emit RemovedFromWhitelist(address arg1, address[] arg2):
                                  mem[(64 * stor5.length) + 160 len (127 * stor5.length) + 96],
    else:
        mem[(64 * stor5.length) + 256] = address(stor5.field_0)
        idx = (64 * stor5.length) + 256
        s = 0
        while (98 * stor5.length) + 256 > idx + 32:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit RemovedFromWhitelist(address arg1, address[] arg2):
                                  mem[(64 * stor5.length) + 160 len (160 * stor5.length) + 96],
    stor5.length = 0
    idx = 0
    while stor5.length > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_8) = 0
}

function confirmWhitelistAddition(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sender is not a controller'
    if not uint8(stor6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'whitelist addition has not been submitted'
    if not stor4.length:
        mem[(32 * stor4.length) + 160 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        mem[(64 * stor4.length) + 160 len floor32(96 * stor4.length)] = mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 160 len floor32(96 * stor4.length) - floor32(stor4.length)]
        mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] = mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * stor4.length) + floor32(96 * stor4.length) + 160] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
        if arg1 != sha3(mem[(64 * stor4.length) + 160 len 96 * stor4.length]):
            revert with 0, 'hash of the pending whitelist addition do not match'
        idx = 0
        while idx < stor4.length:
            mem[0] = stor4[idx].field_0
            mem[32] = 3
            stor3[stor4[idx].field_0] = 1
            idx = idx + 1
            continue 
        mem[(64 * stor4.length) + 160] = msg.sender
        mem[(64 * stor4.length) + 192] = 64
        mem[(64 * stor4.length) + 224] = stor4.length
        if not stor4.length:
            emit AddedToWhitelist(address arg1, address[] arg2):
                                  msg.sender,
                                  64,
                                  stor4.length,
        else:
            mem[(64 * stor4.length) + 256] = address(stor4.field_0)
            idx = (64 * stor4.length) + 256
            s = 0
            while (98 * stor4.length) + 256 > idx + 32:
                mem[idx + 32] = stor4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit AddedToWhitelist(address arg1, address[] arg2):
                                  mem[(64 * stor4.length) + 160 len (161 * stor4.length) + 96],
    else:
        mem[128] = address(stor4.field_0)
        if (32 * stor4.length) + 32 <= 64:
            mem[(32 * stor4.length) + 160 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
            mem[(64 * stor4.length) + 160 len floor32(96 * stor4.length)] = mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 160 len floor32(96 * stor4.length) - floor32(stor4.length)]
            mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] = mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * stor4.length) + floor32(96 * stor4.length) + 160] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
            if arg1 != sha3(mem[(64 * stor4.length) + 160 len 223 * stor4.length]):
                mem[(64 * stor4.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * stor4.length) + 164] = 32
                mem[(64 * stor4.length) + 196] = 51
                mem[(64 * stor4.length) + 228] = 'hash of the pending whitelist ad'
                mem[(64 * stor4.length) + 260] = 'dition do not match'
                revert with memory
                  from (64 * stor4.length) + 160
                   len (127 * stor4.length) + 132
            idx = 0
            while idx < stor4.length:
                mem[0] = stor4[idx].field_0
                mem[32] = 3
                stor3[stor4[idx].field_0] = 1
                idx = idx + 1
                continue 
            mem[(64 * stor4.length) + 160] = msg.sender
            mem[(64 * stor4.length) + 192] = 64
            mem[(64 * stor4.length) + 224] = stor4.length
            if not stor4.length:
                emit AddedToWhitelist(address arg1, address[] arg2):
                                      mem[(64 * stor4.length) + 160 len (127 * stor4.length) + 96],
            else:
                mem[(64 * stor4.length) + 256] = address(stor4.field_0)
                idx = (64 * stor4.length) + 256
                s = 0
                while (98 * stor4.length) + 256 > idx + 32:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit AddedToWhitelist(address arg1, address[] arg2):
                                      mem[(64 * stor4.length) + 160 len (160 * stor4.length) + 96],
        else:
            mem[160] = address(stor4.field_256)
            idx = 160
            s = 1
            while (32 * stor4.length) + 96 > idx:
                mem[idx + 32] = stor4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor4.length) + 160 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
            mem[(64 * stor4.length) + 160 len floor32(96 * stor4.length)] = mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 160 len floor32(96 * stor4.length) - floor32(stor4.length)]
            mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] = mem[(64 * stor4.length) + floor32(96 * stor4.length) + 160] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * stor4.length) + floor32(96 * stor4.length) + 160] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
            if arg1 != sha3(mem[(64 * stor4.length) + 160 len 96 * stor4.length]):
                revert with 0, 'hash of the pending whitelist addition do not match'
            idx = 0
            while idx < stor4.length:
                mem[0] = stor4[idx].field_0
                mem[32] = 3
                stor3[stor4[idx].field_0] = 1
                idx = idx + 1
                continue 
            mem[(64 * stor4.length) + 160] = msg.sender
            mem[(64 * stor4.length) + 192] = 64
            mem[(64 * stor4.length) + 224] = stor4.length
            if not stor4.length:
                emit AddedToWhitelist(address arg1, address[] arg2):
                                      msg.sender,
                                      64,
                                      stor4.length,
            else:
                mem[(64 * stor4.length) + 256] = address(stor4.field_0)
                idx = (64 * stor4.length) + 256
                s = 0
                while (98 * stor4.length) + 256 > idx + 32:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit AddedToWhitelist(address arg1, address[] arg2):
                                      mem[(64 * stor4.length) + 160 len (161 * stor4.length) + 96],
    stor4.length = 0
    idx = 0
    while stor4.length > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_0) = 0
}

function submitWhitelistAddition(address[] arg1) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if uint8(stor6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'whitelist operation has already been submitted'
    if uint8(stor6.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'whitelist operation has already been submitted'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20] == owner:
            revert with 0, 'provided whitelist contains theowner address'
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'provided whitelist contains thezero address'
        idx = idx + 1
        continue 
    if not uint8(stor6.field_16):
        revert with 0, 'whitelist has not been initialized'
    stor4.length = arg1.length
    if arg1.length:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor4[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        uint8(stor6.field_0) = 1
        if not stor4.length:
            mem[(32 * arg1.length) + (32 * stor4.length) + 192 len floor32(stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)]
            mem[(64 * stor4.length) + (32 * arg1.length) + 192 len floor32(96 * stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)], mem[(32 * arg1.length) + (32 * stor4.length) + floor32(stor4.length) + 192 len floor32(96 * stor4.length) - floor32(stor4.length)]
            mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] = mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * arg1.length) + (32 * stor4.length) + floor32(96 * stor4.length) + 192] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
            mem[(64 * stor4.length) + (32 * arg1.length) + 224] = sha3(mem[(64 * stor4.length) + (32 * arg1.length) + 192 len 96 * stor4.length])
            emit SubmittedWhitelistAddition(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), mem[(64 * stor4.length) + (32 * arg1.length) + 224]);
        else:
            mem[(32 * arg1.length) + 160] = address(stor4.field_0)
            if (32 * stor4.length) + 32 > 64:
                mem[(32 * arg1.length) + 192] = address(stor4.field_256)
                idx = (32 * arg1.length) + 192
                s = 1
                while (32 * arg1.length) + (32 * stor4.length) + 128 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * arg1.length) + (32 * stor4.length) + 192 len floor32(stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)]
                mem[(64 * stor4.length) + (32 * arg1.length) + 192 len floor32(96 * stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)], mem[(32 * arg1.length) + (32 * stor4.length) + floor32(stor4.length) + 192 len floor32(96 * stor4.length) - floor32(stor4.length)]
                mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] = mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * arg1.length) + (32 * stor4.length) + floor32(96 * stor4.length) + 192] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
                mem[(64 * stor4.length) + (32 * arg1.length) + 224] = sha3(mem[(64 * stor4.length) + (32 * arg1.length) + 192 len 96 * stor4.length])
                emit SubmittedWhitelistAddition(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), mem[(64 * stor4.length) + (32 * arg1.length) + 224]);
            else:
                mem[(32 * arg1.length) + (32 * stor4.length) + 192 len floor32(stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)]
                mem[(64 * stor4.length) + (32 * arg1.length) + 192 len floor32(96 * stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)], mem[(32 * arg1.length) + (32 * stor4.length) + floor32(stor4.length) + 192 len floor32(96 * stor4.length) - floor32(stor4.length)]
                mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] = mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * arg1.length) + (32 * stor4.length) + floor32(96 * stor4.length) + 192] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
                mem[(64 * stor4.length) + (32 * arg1.length) + 224] = sha3(mem[(64 * stor4.length) + (32 * arg1.length) + 192 len 223 * stor4.length])
                mem[(64 * stor4.length) + (32 * arg1.length) + 192] = 64
                mem[(64 * stor4.length) + (32 * arg1.length) + 256] = arg1.length
                mem[(64 * stor4.length) + (32 * arg1.length) + 288 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
                emit SubmittedWhitelistAddition(address[] arg1, bytes32 arg2):
                                                mem[(64 * stor4.length) + (32 * arg1.length) + 192 len (127 * stor4.length) + (32 * arg1.length) + 96],
    else:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        uint8(stor6.field_0) = 1
        if not stor4.length:
            mem[(32 * arg1.length) + (32 * stor4.length) + 192 len floor32(stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)]
        else:
            mem[(32 * arg1.length) + 160] = address(stor4.field_0)
            if (32 * stor4.length) + 32 <= 64:
                mem[(32 * arg1.length) + (32 * stor4.length) + 192 len floor32(stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)]
                var28001 = floor32(stor4.length)
            else:
                mem[(32 * arg1.length) + 192] = address(stor4.field_256)
                idx = (32 * arg1.length) + 192
                s = 1
                while (32 * arg1.length) + (32 * stor4.length) + 128 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * arg1.length) + (32 * stor4.length) + 192 len floor32(stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)]
        mem[(64 * stor4.length) + (32 * arg1.length) + 192 len floor32(96 * stor4.length)] = mem[(32 * arg1.length) + 160 len floor32(stor4.length)], mem[(32 * arg1.length) + (32 * stor4.length) + floor32(stor4.length) + 192 len floor32(96 * stor4.length) - floor32(stor4.length)]
        mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] = mem[(64 * stor4.length) + (32 * arg1.length) + floor32(96 * stor4.length) + 192] and 256^(-(96 * stor4.length % 32) + 32) - 1 or mem[(32 * arg1.length) + (32 * stor4.length) + floor32(96 * stor4.length) + 192] and !(256^(-(96 * stor4.length % 32) + 32) - 1)
        mem[(64 * stor4.length) + (32 * arg1.length) + 224] = sha3(mem[(64 * stor4.length) + (32 * arg1.length) + 192 len 223 * stor4.length])
        mem[(64 * stor4.length) + (32 * arg1.length) + 192] = 64
        mem[(64 * stor4.length) + (32 * arg1.length) + 256] = arg1.length
        mem[(64 * stor4.length) + (32 * arg1.length) + 288 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        emit SubmittedWhitelistAddition(address[] arg1, bytes32 arg2):
                                        mem[(64 * stor4.length) + (32 * arg1.length) + 192 len (127 * stor4.length) + (32 * arg1.length) + 96],
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'sender is not an owner'
    if not arg3:
        revert with 0, 'provided value cannot be zero'
    if not arg1:
        revert with 0, '_to address cannot be set to 0x0'
    if stor3[address(arg1)]:
        if not arg2:
            call arg1 with:
               value arg3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20 token transfer was unsuccessful'
    else:
        require stor8 + (24 * 3600) >= stor8
        if block.timestamp > stor8 + (24 * 3600):
            require stor8 <= block.timestamp
            if not block.timestamp - stor8 / 24 * 3600:
                require stor8 >= stor8
            else:
                require 24 * 3600 * block.timestamp - stor8 / 24 * 3600 / block.timestamp - stor8 / 24 * 3600 == 24 * 3600
                require (24 * 3600 * block.timestamp - stor8 / 24 * 3600) + stor8 >= stor8
                stor8 += 24 * 3600 * block.timestamp - stor8 / 24 * 3600
            stor9 = sub_aceaf92d
        if not arg2:
            if arg2:
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20 token transfer was unsuccessful'
            else:
                if block.timestamp <= stor8 + (24 * 3600):
                    if arg3 > stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfer amount exceeds available spend limit'
                else:
                    if arg3 > sub_aceaf92d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfer amount exceeds available spend limit'
                if block.timestamp <= stor8 + (24 * 3600):
                    require arg3 <= stor9
                    stor9 -= arg3
                else:
                    require arg3 <= sub_aceaf92d
                    stor9 = sub_aceaf92d - arg3
                if not arg2:
                    call arg1 with:
                       value arg3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20 token transfer was unsuccessful'
        else:
            require ext_code.size(address(stor11.field_16))
            call address(stor11.field_16).resolver(bytes32 arg1) with:
                 gas gas_remaining wei
                args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
                 gas gas_remaining wei
                args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).convert(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                if block.timestamp <= stor8 + (24 * 3600):
                    if ext_call.return_data[32] > stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfer amount exceeds available spend limit'
                else:
                    if ext_call.return_data[32] > sub_aceaf92d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfer amount exceeds available spend limit'
                if block.timestamp <= stor8 + (24 * 3600):
                    require ext_call.return_data[32] <= stor9
                    stor9 -= ext_call.return_data[32]
                else:
                    require ext_call.return_data[32] <= sub_aceaf92d
                    stor9 = sub_aceaf92d - ext_call.return_data[32]
                if not arg2:
                    call arg1 with:
                       value arg3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20 token transfer was unsuccessful'
            else:
                if arg2:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20 token transfer was unsuccessful'
                else:
                    if block.timestamp <= stor8 + (24 * 3600):
                        if ext_call.return_data[32] > stor9:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfer amount exceeds available spend limit'
                    else:
                        if ext_call.return_data[32] > sub_aceaf92d:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfer amount exceeds available spend limit'
                    if block.timestamp <= stor8 + (24 * 3600):
                        require ext_call.return_data[32] <= stor9
                        stor9 -= ext_call.return_data[32]
                    else:
                        require ext_call.return_data[32] <= sub_aceaf92d
                        stor9 = sub_aceaf92d - ext_call.return_data[32]
                    if not arg2:
                        call arg1 with:
                           value arg3 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20 token transfer was unsuccessful'
    emit Transferred(address(arg1), address(arg2), arg3);
}



}
