contract main {




// =====================  Runtime code  =====================


address owner;
address sub_3177f530Address;
address sub_6b664fc8Address;

function sub_3177f530(?) {
    return sub_3177f530Address
}

function sub_6b664fc8(?) {
    return sub_6b664fc8Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_61cb4e77(?) {
    require msg.sender == owner
    sub_3177f530Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_af609430(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getWithdrawAmount(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[16 len 16] <= 0:
        revert with 0, 'There are no funds to withdraw'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x9617dfd8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if not ext_call.return_data[31 len 1]:
        if uint128(ext_call.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(arg2), uint128(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(ext_call.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(arg2), uint128(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x67c0bdbd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(arg2, uint128(ext_call.return_data[0]));
}

function sub_ebcd018b(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xc5662f85 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x6b2c0139 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    if ext_call.return_data[0]:
        call sub_6b664fc8Address.getBorrower(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(ext_call.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0]), uint128(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getBorrower(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(ext_call.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), uint128(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_55916d21(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1bbd0df8 with:
         gas gas_remaining wei
        args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[48 len 16] > 0
    mem[96] = 0x2f9d62400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x2f9d624 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _21 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    require 1 == mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x6b2c0139 with:
         gas gas_remaining wei
        args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require 0 < mem[_21 + 96]
        if uint128(ext_call.return_data[32]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(mem[_21 + 128]), uint128(ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < mem[_21 + 96]
        if uint128(ext_call.return_data[32]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(mem[_21 + 128]), uint128(ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_c510201c(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1bbd0df8 with:
         gas gas_remaining wei
        args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[48 len 16] > 0
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x8d5ee6f4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[16 len 16] < uint128(ext_call.return_data[32])
    mem[96] = 0x2f9d62400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x2f9d624 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _25 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    require 1 == mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x6b2c0139 with:
         gas gas_remaining wei
        args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require 0 < mem[_25 + 96]
        if uint128(ext_call.return_data[32] - ext_call.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(mem[_25 + 128]), uint128(ext_call.return_data[32] - ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < mem[_25 + 96]
        if uint128(ext_call.return_data[32] - ext_call.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(mem[_25 + 128]), uint128(ext_call.return_data[32] - ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_f02f1ff0(?) {
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x56b9c6ce with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x8d5ee6f4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1915f1e4 with:
         gas gas_remaining wei
        args address(arg1), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.div(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint8(ext_call.return_data[32])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xa2b6ccea with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]) << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0xe09b48e7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x5865abf6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x707e1f43 with:
         gas gas_remaining wei
        args bool(ext_call.return_data[0]), delegate.return_data[0] << 128, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xda64eaa5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1]:
        return delegate.return_data[0] << 128, 
               0,
               ext_call.return_data[0] << 128,
               uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0xe09b48e7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x5865abf6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x8d5ee6f4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1915f1e4 with:
         gas gas_remaining wei
        args address(arg1), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xde112b9a with:
         gas gas_remaining wei
        args bool(ext_call.return_data[0]), ext_call.return_data[0] << 128, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    return delegate.return_data[0] << 128, 
           ext_call.return_data[0] << 128,
           ext_call.return_data[0] << 128,
           uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
}

function sub_3326fe09(?) payable {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x9e8e198d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xa2b6ccea with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0xe09b48e7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x5865abf6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x707e1f43 with:
         gas gas_remaining wei
        args bool(ext_call.return_data[0]), ext_call.return_data[0] << 128, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x9617dfd8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if not ext_call.return_data[31 len 1]:
        if msg.value < uint128(ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The payment amount is below the needed'
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0xf271e9d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value uint128(ext_call.return_data[0]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg1 with:
           value uint128(delegate.return_data[0]) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
        delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.value, uint128(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.getBorrower(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg2 < uint128(ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The payment amount is below the needed'
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x9f2cad38 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getBorrower(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(ext_call.return_data[0]) > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(ext_call.return_data[0]), address(arg1), uint128(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0xf271e9d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(ext_call.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), uint128(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xdedc9cd8 with:
         gas gas_remaining wei
        args address(arg1), 1, uint128(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa65104ff: uint128(ext_call.return_data[0])
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x3499e6c8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.changeState(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args address(arg1), 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_2ec1214b(?) payable {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xdcfc8a83 with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Lender is not allowed to fund'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x6b2c0139 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x8d5ee6f4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1915f1e4 with:
         gas gas_remaining wei
        args address(arg1), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xc5662f85 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    if ext_call.return_data[0]:
        call sub_6b664fc8Address.0x8d5ee6f4 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0x1915f1e4 with:
             gas gas_remaining wei
            args address(arg1), uint128(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.value == uint128(msg.value)
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xec7ef801 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if uint128(msg.value) < uint128(delegate.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThe amount to fund is below theneeded funds'
        else:
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.0x42462ec0 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), uint128(msg.value)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThe amount to fund is below theminimum'
        if uint128(msg.value) <= uint128(delegate.return_data[0]):
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.0xecb527d8 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), uint128(msg.value)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg1 with:
               value uint128(msg.value) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
            delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
                 gas gas_remaining wei
                args msg.value << 128, uint128(delegate.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call arg3 with:
               value delegate.return_data[16 len 16] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.0xecb527d8 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg1 with:
               value uint128(delegate.return_data[0]) wei
                 gas 2300 * is_zero(value) wei
        emit Funded(arg3, uint128(msg.value));
    else:
        call sub_6b664fc8Address.0xec7ef801 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if arg2 < uint128(delegate.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThe amount to fund is below theneeded funds'
        else:
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.0x42462ec0 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThe amount to fund is below theminimum'
        require ext_code.size(sub_6b664fc8Address)
        if arg2 <= uint128(delegate.return_data[0]):
            call sub_6b664fc8Address.0xecb527d8 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_3177f530Address)
            call sub_3177f530Address.0x9f2cad38 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.0xb54de5c9 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > 0:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg3), address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            call sub_6b664fc8Address.0xecb527d8 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_3177f530Address)
            call sub_3177f530Address.0x9f2cad38 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.0xb54de5c9 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint128(delegate.return_data[0]) > 0:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg3), address(arg1), uint128(delegate.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        emit Funded(arg3, arg2);
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0x8d5ee6f4 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xc5662f85 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[16 len 16] != uint128(ext_call.return_data[0]):
        return 0
    return 1
}

function sub_2386519a(?) payable {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x56b9c6ce with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x8d5ee6f4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1915f1e4 with:
         gas gas_remaining wei
        args address(arg1), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.div(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint8(ext_call.return_data[32])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xa2b6ccea with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]) << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0xe09b48e7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x5865abf6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x707e1f43 with:
         gas gas_remaining wei
        args bool(ext_call.return_data[0]), delegate.return_data[0] << 128, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xda64eaa5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1]:
        require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
        delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
        delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0] << 128, uint128(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
        delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0] << 128, 0
    else:
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0xe09b48e7 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0x5865abf6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0x8d5ee6f4 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0x1915f1e4 with:
             gas gas_remaining wei
            args address(arg1), uint128(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xde112b9a with:
             gas gas_remaining wei
            args bool(ext_call.return_data[0]), ext_call.return_data[0] << 128, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
        require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
        delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
        delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0] << 128, uint128(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
        delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0] << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x9617dfd8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if not ext_call.return_data[31 len 1]:
        if msg.value < uint128(delegate.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The payment amount is below the needed'
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0xf271e9d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value uint128(delegate.return_data[0]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg1 with:
           value uint128(delegate.return_data[0]) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
        delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.value, uint128(delegate.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(sub_6b664fc8Address)
            call sub_6b664fc8Address.getBorrower(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x9f2cad38 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getBorrower(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(delegate.return_data[0]) > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(ext_call.return_data[0]), address(arg1), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xb54de5c9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0xf271e9d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(delegate.return_data[0]) > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xdedc9cd8 with:
         gas gas_remaining wei
        args address(arg1), uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]) << 128, uint128(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x3499e6c8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid instalments paid count'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.changeState(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args address(arg1), 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa65104ff: uint128(delegate.return_data[0])
}



}
