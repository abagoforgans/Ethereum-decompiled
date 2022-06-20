contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address kingContractAddress;
address minedTokenAddress;

function kingContract() {
    return kingContractAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function minedToken() {
    return minedTokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function getBalance() {
    require ext_code.size(minedTokenAddress)
    call minedTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function bytesToAddress(bytes arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    s = 0
    s = 0
    idx = arg1.length - 1
    s = 0
    while idx + 1 > 0:
        require idx < arg1.length
        s = mem[idx + 128 len 1] * 16^(2 * arg1.length + -idx - 1)
        s = mem[idx + 128 len 1]
        idx = idx - 1
        s = s + (mem[idx + 128 len 1] * 16^(2 * arg1.length + -idx - 1))
        continue 
    return address(s)
}

function uintToBytesForAddress(uint256 arg1) {
    mem[128 len 640] = code.data[5312 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 31)
        require idx < 20
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    return Array(len=20, data=mem[140 len 20])
}

function popFirstFromArray(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length - 1
    if arg1.length - 1:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length - 1] = code.data[5312 len 32 * arg1.length - 1]
    idx = 0
    while idx < arg1.length - 1:
        require idx + 1 < arg1.length
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[(32 * idx + 1) + 140 len 20]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg1.length - 1) + 160] = 32
    mem[(32 * arg1.length) + (32 * arg1.length - 1) + 192] = mem[(32 * arg1.length) + 128]
    return 32, mem[(32 * arg1.length) + (32 * arg1.length - 1) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function mintForwarder(uint256 arg1, bytes32 arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length > 0
    require ext_code.size(minedTokenAddress)
    call minedTokenAddress.epochCount() with:
         gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    _8 = mem[128]
    if arg3.length == 1:
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xb1bb4d35 with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
        require ext_code.size(minedTokenAddress)
        call minedTokenAddress.epochCount() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0] + 1
        require ext_code.size(kingContractAddress)
        call kingContractAddress.getKing() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = 20
        mem[(32 * arg3.length) + 160 len 640] = code.data[5312 len 640]
        idx = 0
        while idx < 20:
            require 2^(8 * -idx + 31)
            require idx < 20
            mem[(32 * arg3.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) - 256
            idx = idx + 1
            continue 
        s = 0
        s = 0
        idx = 19
        s = 0
        while idx + 1 > 0:
            require idx < 20
            s = mem[(32 * arg3.length) + idx + 160 len 1] * 16^(2 * -idx + 19)
            s = mem[(32 * arg3.length) + idx + 160 len 1]
            idx = idx - 1
            s = s + (mem[(32 * arg3.length) + idx + 160 len 1] * 16^(2 * -idx + 19))
            continue 
        if address(ext_call.return_data[0]) == address(0x1ba2bfd0d5ff5b22493de1d6e27e73d7d5530f6dcdfa5400000000000000000000000000000000000000 * s):
            require ext_code.size(minedTokenAddress)
            call minedTokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minedTokenAddress)
            call minedTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(0x1ba2bfd0d5ff5b22493de1d6e27e73d7d5530f6dcdfa5400000000000000000000000000000000000000 * s), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    else:
        mem[(32 * arg3.length) + 128] = arg3.length - 1
        if arg3.length - 1:
            mem[(32 * arg3.length) + 160 len 32 * arg3.length - 1] = code.data[5312 len 32 * arg3.length - 1]
        idx = 0
        while idx < arg3.length - 1:
            require idx + 1 < arg3.length
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = mem[(32 * idx + 1) + 140 len 20]
            idx = idx + 1
            continue 
        mem[(32 * arg3.length) + (32 * arg3.length - 1) + 160] = 0xa3c5dcce00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg3.length - 1) + 260] = mem[(32 * arg3.length) + 128]
        mem[(32 * arg3.length) + (32 * arg3.length - 1) + 292 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        require ext_code.size(address(_8))
        call address(_8).0xa3c5dcce with:
             gas gas_remaining wei
            args arg1, arg2, 96, mem[(32 * arg3.length) + (32 * arg3.length - 1) + 260 len (32 * mem[(32 * arg3.length) + 128]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
        require ext_code.size(minedTokenAddress)
        call minedTokenAddress.epochCount() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0] + 1
        require ext_code.size(kingContractAddress)
        call kingContractAddress.getKing() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + (32 * arg3.length - 1) + 160] = 20
        mem[(32 * arg3.length) + (32 * arg3.length - 1) + 192 len 640] = code.data[5312 len 640]
        idx = 0
        while idx < 20:
            require 2^(8 * -idx + 31)
            require idx < 20
            mem[(32 * arg3.length) + (32 * arg3.length - 1) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) - 256
            idx = idx + 1
            continue 
        s = 0
        s = 0
        idx = 19
        s = 0
        while idx + 1 > 0:
            require idx < 20
            s = mem[(32 * arg3.length) + (32 * arg3.length - 1) + idx + 192 len 1] * 16^(2 * -idx + 19)
            s = mem[(32 * arg3.length) + (32 * arg3.length - 1) + idx + 192 len 1]
            idx = idx - 1
            s = s + (mem[(32 * arg3.length) + (32 * arg3.length - 1) + idx + 192 len 1] * 16^(2 * -idx + 19))
            continue 
        if address(ext_call.return_data[0]) == address(0x11afd6ec0e14115d9f83c3bcb9ea87945f91518df47740000000000000000000000000000000000000 * s):
            require ext_code.size(minedTokenAddress)
            call minedTokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minedTokenAddress)
            call minedTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(0x11afd6ec0e14115d9f83c3bcb9ea87945f91518df47740000000000000000000000000000000000000 * s), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    return 1
}



}
