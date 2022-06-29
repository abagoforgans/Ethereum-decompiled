contract main {




// =====================  Runtime code  =====================


uint8 version;
address _storageAddress; offset 16

function version() {
    return version
}

function _storage() {
    return _storageAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require ext_code.size(_storageAddress)
    call _storageAddress.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(Mask(136, 0, Mask(16, 224, 'Role') >> 224, 0) or Mask(120, 104, 'Role') >> 88)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'Only the latest version contract.'
    mem[305 len 0] = None
    mem[316 len 0] = None
    mem[316 len 27] = mem[316 len 10], Mask(88, 0, 'access.role'), mem[337 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[305 len 11], 0, mem[316 len 5], Mask(128, 32, msg.sender) >> 32, mem[373 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Invalid role'
    if not arg1:
        revert with 0, 'Address != 0x0.'
    mem[501 len 0] = None
    mem[512 len 0] = None
    mem[512 len 27] = mem[512 len 10], Mask(88, 0, 'access.role'), mem[533 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[501 len 11], 0, mem[512 len 5], Mask(128, 32, msg.sender) >> 32, mem[569 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Invalid role'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x2c62ff2d with:
         gas gas_remaining wei
        args sha3('access.role', 'owner', Mask(128, 32, msg.sender) >> 32, mem[637 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[677] = sha3('access.role', 'owner', uint128(arg1), mem[705 len 4])
    require ext_code.size(_storageAddress)
    call _storageAddress.0xabfdcced with:
         gas gas_remaining wei
        args mem[677], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OwnershipTransferred(msg.sender, arg1);
}

function sub_e558d392(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 'contract.name'
    mem[ceil32(arg1.length) + 128] = 17
    require ext_code.size(_storageAddress)
    call _storageAddress.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(Mask(136, 0, Mask(16, 224, 'Role') >> 224, 0) or Mask(120, 104, 'Role') >> 88)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'Only the latest version contract.'
    mem[ceil32(arg1.length) + 337 len 0] = None
    mem[ceil32(arg1.length) + 348 len 0] = None
    mem[ceil32(arg1.length) + 348 len 27] = mem[ceil32(arg1.length) + 348 len 10], Mask(88, 0, 'access.role'), mem[ceil32(arg1.length) + 369 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[ceil32(arg1.length) + 337 len 11], 0, mem[ceil32(arg1.length) + 348 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(arg1.length) + 405 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 533 len 0] = None
    mem[ceil32(arg1.length) + 544 len 0] = None
    mem[ceil32(arg1.length) + 544 len 27] = mem[ceil32(arg1.length) + 544 len 10], Mask(88, 0, 'access.role'), mem[ceil32(arg1.length) + 565 len 6]
    require ext_code.size(_storageAddress)
    if bool(ext_call.return_data[0]) == 1:
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 533 len 11], 0, mem[ceil32(arg1.length) + 544 len 5], arg2, mem[ceil32(arg1.length) + 601 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Only owner can transfer their access.'
        mem[ceil32(arg1.length) + 601] = 'access.role'
        mem[ceil32(arg1.length) + 612 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 644 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 612] = address(arg2)
        mem[arg1.length + ceil32(arg1.length) + 632 len ceil32(arg1.length)] = mem[ceil32(arg1.length) + 601 len ceil32(arg1.length)]
        mem[arg1.length + (2 * ceil32(arg1.length)) + -(arg1.length + 31 % 32) + 664 len arg1.length + 31 % 32] = mem[(2 * ceil32(arg1.length)) + -(arg1.length + 31 % 32) + 633 len arg1.length + 31 % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x2c62ff2d with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 601 len ceil32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + 632 len arg1.length + -ceil32(arg1.length) + 31])
    else:
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 533 len 11], 0, mem[ceil32(arg1.length) + 544 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(arg1.length) + 601 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
        mem[ceil32(arg1.length) + 729 len 0] = None
        mem[ceil32(arg1.length) + 740 len 0] = None
        mem[ceil32(arg1.length) + 740 len 27] = mem[ceil32(arg1.length) + 740 len 10], Mask(88, 0, 'access.role'), mem[ceil32(arg1.length) + 761 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 729 len 11], 0, mem[ceil32(arg1.length) + 740 len 5], arg2, mem[ceil32(arg1.length) + 797 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Only owner can transfer their access.'
        mem[ceil32(arg1.length) + 797] = 'access.role'
        mem[ceil32(arg1.length) + 808 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 840 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 808] = address(arg2)
        mem[arg1.length + ceil32(arg1.length) + 828 len ceil32(arg1.length)] = mem[ceil32(arg1.length) + 797 len ceil32(arg1.length)]
        mem[arg1.length + (2 * ceil32(arg1.length)) + -(arg1.length + 31 % 32) + 860 len arg1.length + 31 % 32] = mem[(2 * ceil32(arg1.length)) + -(arg1.length + 31 % 32) + 829 len arg1.length + 31 % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x2c62ff2d with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 797 len ceil32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + 828 len arg1.length + -ceil32(arg1.length) + 31])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RoleRemoved(Array(len=arg1.length, data=arg1[all]), address(arg2));
}

function sub_28bc4631(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 'contract.name'
    mem[ceil32(arg1.length) + 128] = 17
    require ext_code.size(_storageAddress)
    call _storageAddress.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(Mask(136, 0, Mask(16, 224, 'Role') >> 224, 0) or Mask(120, 104, 'Role') >> 88)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'Only the latest version contract.'
    mem[ceil32(arg1.length) + 337 len 0] = None
    mem[ceil32(arg1.length) + 348 len 0] = None
    mem[ceil32(arg1.length) + 348 len 27] = mem[ceil32(arg1.length) + 348 len 10], Mask(88, 0, 'access.role'), mem[ceil32(arg1.length) + 369 len 6]
    mem[ceil32(arg1.length) + 433 len 4] = Mask(32, 64, msg.sender) >> 64
    _691 = sha3(mem[ceil32(arg1.length) + 337 len 11], 0, mem[ceil32(arg1.length) + 348 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(arg1.length) + 405 len 4])
    mem[ceil32(arg1.length) + 377] = sha3(mem[ceil32(arg1.length) + 337 len 11], 0, mem[ceil32(arg1.length) + 348 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(arg1.length) + 405 len 4])
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args _691
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        if not arg2:
            revert with 0, 'Address != 0x0.'
        mem[ceil32(arg1.length) + 405 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 437 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 405 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 437 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 405 len arg1.length % 32]) == sha3(None):
            revert with 0, 'Role must not be empty.'
        mem[arg1.length + ceil32(arg1.length) + 437 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 469 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 437 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 469 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 437 len arg1.length]) == sha3('owner'):
            revert with 0, 'Only one owner.'
        mem[(2 * arg1.length) + ceil32(arg1.length) + 469] = 'access.role'
        mem[(2 * arg1.length) + ceil32(arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 512 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(4 * arg1.length) + ceil32(arg1.length) + 480] = address(arg2)
        mem[(2 * arg1.length) + ceil32(arg1.length) + 437] = (2 * arg1.length) + 31
        mem[(4 * arg1.length) + ceil32(arg1.length) + 500 len ceil32(2 * arg1.length)] = mem[(2 * arg1.length) + ceil32(arg1.length) + 469 len ceil32(2 * arg1.length)]
        mem[(4 * arg1.length) + ceil32(arg1.length) + ceil32(2 * arg1.length) + -((2 * arg1.length) + 31 % 32) + 532 len (2 * arg1.length) + 31 % 32] = mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(2 * arg1.length) + -((2 * arg1.length) + 31 % 32) + 501 len (2 * arg1.length) + 31 % 32]
        mem[(4 * arg1.length) + ceil32(arg1.length) + 504] = sha3(mem[(4 * arg1.length) + ceil32(arg1.length) + 500 len (2 * arg1.length) + 31])
        mem[(4 * arg1.length) + ceil32(arg1.length) + 536] = 1
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args mem[(4 * arg1.length) + ceil32(arg1.length) + 504], 1, mem[(4 * arg1.length) + ceil32(arg1.length) + 568 len 4 * arg1.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * arg1.length) + ceil32(arg1.length) + 500] = 32
        mem[(4 * arg1.length) + ceil32(arg1.length) + 532] = arg1.length
        mem[(4 * arg1.length) + ceil32(arg1.length) + 564 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit RoleAdded(mem[(4 * arg1.length) + ceil32(arg1.length) + 500 len (6 * arg1.length) + 64], arg2);
        else:
            mem[floor32(arg1.length) + (4 * arg1.length) + ceil32(arg1.length) + 564] = mem[floor32(arg1.length) + (4 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 596 len arg1.length % 32]
            emit RoleAdded(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(4 * arg1.length) + (2 * ceil32(arg1.length)) + 564 len (4 * arg1.length) + floor32(arg1.length) + -ceil32(arg1.length) + 32]), arg2);
    else:
        mem[ceil32(arg1.length) + 533 len 0] = None
        mem[ceil32(arg1.length) + 544 len 0] = None
        mem[ceil32(arg1.length) + 544 len 27] = mem[ceil32(arg1.length) + 544 len 10], Mask(88, 0, 'access.role'), mem[ceil32(arg1.length) + 565 len 6]
        mem[ceil32(arg1.length) + 629 len 4] = Mask(32, 64, msg.sender) >> 64
        _1109 = sha3(mem[ceil32(arg1.length) + 533 len 11], 0, mem[ceil32(arg1.length) + 544 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(arg1.length) + 601 len 4])
        mem[ceil32(arg1.length) + 573] = sha3(mem[ceil32(arg1.length) + 533 len 11], 0, mem[ceil32(arg1.length) + 544 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(arg1.length) + 601 len 4])
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args _1109
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
        if not arg2:
            revert with 0, 'Address != 0x0.'
        mem[ceil32(arg1.length) + 601 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 633 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 601 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 633 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 601 len arg1.length % 32]) == sha3(None):
            revert with 0, 'Role must not be empty.'
        mem[arg1.length + ceil32(arg1.length) + 633 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 665 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 633 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 665 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 633 len arg1.length]) == sha3('owner'):
            revert with 0, 'Only one owner.'
        mem[(2 * arg1.length) + ceil32(arg1.length) + 665] = 'access.role'
        mem[(2 * arg1.length) + ceil32(arg1.length) + 676 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 708 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(3 * arg1.length) + ceil32(arg1.length) + 676] = address(arg2)
        mem[(3 * arg1.length) + ceil32(arg1.length) + 696 len ceil32(arg1.length)] = mem[(2 * arg1.length) + ceil32(arg1.length) + 665 len ceil32(arg1.length)]
        mem[(3 * arg1.length) + (2 * ceil32(arg1.length)) + -(arg1.length + 31 % 32) + 728 len arg1.length + 31 % 32] = mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + -(arg1.length + 31 % 32) + 697 len arg1.length + 31 % 32]
        mem[(3 * arg1.length) + ceil32(arg1.length) + 700] = sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 665 len ceil32(arg1.length)], mem[(3 * arg1.length) + (2 * ceil32(arg1.length)) + 696 len arg1.length + -ceil32(arg1.length) + 31])
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args mem[(3 * arg1.length) + ceil32(arg1.length) + 700], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RoleAdded(Array(len=arg1.length, data=arg1[all]), arg2);
}



}
