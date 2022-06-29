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

function sub_82c87e77(?) {
    mem[204 len 0] = None
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[204 len 8], Mask(32, 64, 'state.paused') >> 64)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getPlatformFee() {
    require ext_code.size(_storageAddress)
    call _storageAddress.0x65f4f498 with:
         gas gas_remaining wei
        args sha3(Mask(104, 0, 'config.platform.fee'), Mask(48, 104, Mask(48, 104, 'config.platform.fee') >> 104, 0) >> 104)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint16(ext_call.return_data[0])
}

function sub_6fb1d79e(?) {
    mem[192 len 0] = None
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[192 len 15], Mask(136, 24, arg1) >> 24, mem[259 len 3])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[323 len 0] = None
    require ext_code.size(_storageAddress)
    call _storageAddress.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3(mem[323 len 15], Mask(136, 24, arg1) >> 24, mem[390 len 3])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[454 len 0] = None
    require ext_code.size(_storageAddress)
    call _storageAddress.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3(mem[454 len 15], Mask(136, 24, arg1) >> 24, mem[521 len 3])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0]
}

function sub_2cdd3421(?) {
    mem[256 len 0] = None
    mem[267 len 0] = None
    mem[267 len 27] = mem[267 len 10], Mask(88, 0, 'access.role'), mem[288 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[256 len 11], 0, mem[267 len 5], Mask(128, 32, msg.sender) >> 32, mem[324 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        mem[400 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args sha3(mem[400 len 8], Mask(32, 64, 'state.paused') >> 64), 0
    else:
        mem[452 len 0] = None
        mem[463 len 0] = None
        mem[463 len 27] = mem[463 len 10], Mask(88, 0, 'access.role'), mem[484 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[452 len 11], 0, mem[463 len 5], Mask(128, 32, msg.sender) >> 32, mem[520 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
        mem[596 len 0] = None
        mem[600] = sha3(mem[596 len 8], Mask(32, 64, 'state.paused') >> 64)
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args mem[600], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2ac1745f: Array(len=arg1.length, data=arg1[all]), this.address
    return 0
}

function sub_5cb7df54(?) {
    mem[256 len 0] = None
    mem[267 len 0] = None
    mem[267 len 27] = mem[267 len 10], Mask(88, 0, 'access.role'), mem[288 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[256 len 11], 0, mem[267 len 5], Mask(128, 32, msg.sender) >> 32, mem[324 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        mem[400 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args sha3(mem[400 len 8], Mask(32, 64, 'state.paused') >> 64), 1
    else:
        mem[452 len 0] = None
        mem[463 len 0] = None
        mem[463 len 27] = mem[463 len 10], Mask(88, 0, 'access.role'), mem[484 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[452 len 11], 0, mem[463 len 5], Mask(128, 32, msg.sender) >> 32, mem[520 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
        mem[596 len 0] = None
        mem[600] = sha3(mem[596 len 8], Mask(32, 64, 'state.paused') >> 64)
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args mem[600], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x633b518f: Array(len=arg1.length, data=arg1[all]), this.address
    return 0
}

function sub_5cbc742c(?) {
    mem[256 len 0] = None
    mem[267 len 0] = None
    mem[267 len 27] = mem[267 len 10], Mask(88, 0, 'access.role'), mem[288 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[256 len 11], 0, mem[267 len 5], Mask(128, 32, msg.sender) >> 32, mem[324 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        require ext_code.size(_storageAddress)
        call _storageAddress.0x65f4f498 with:
             gas gas_remaining wei
            args sha3(Mask(104, 0, 'config.platform.fee'), Mask(48, 104, Mask(48, 104, 'config.platform.fee') >> 104, 0) >> 104)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_storageAddress)
        call _storageAddress.0x1d77667b with:
             gas gas_remaining wei
            args sha3(Mask(104, 0, 'config.platform.fee'), Mask(48, 104, Mask(48, 104, 'config.platform.fee') >> 104, 0) >> 104), arg1 << 240
    else:
        mem[452 len 0] = None
        mem[463 len 0] = None
        mem[463 len 27] = mem[463 len 10], Mask(88, 0, 'access.role'), mem[484 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[452 len 11], 0, mem[463 len 5], Mask(128, 32, msg.sender) >> 32, mem[520 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
        require ext_code.size(_storageAddress)
        call _storageAddress.0x65f4f498 with:
             gas gas_remaining wei
            args sha3(Mask(104, 0, 'config.platform.fee'), Mask(48, 104, Mask(48, 104, 'config.platform.fee') >> 104, 0) >> 104)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_storageAddress)
        call _storageAddress.0x1d77667b with:
             gas gas_remaining wei
            args sha3(Mask(104, 0, 'config.platform.fee'), Mask(48, 104, Mask(48, 104, 'config.platform.fee') >> 104, 0) >> 104), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98a455b6: ext_call.return_data[0] << 240, arg1, this.address
    return 1
}

function sub_6c36649c(?) {
    mem[256 len 0] = None
    mem[267 len 0] = None
    mem[267 len 27] = mem[267 len 10], Mask(88, 0, 'access.role'), mem[288 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[256 len 11], 0, mem[267 len 5], Mask(128, 32, msg.sender) >> 32, mem[324 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        mem[388 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args sha3(mem[388 len 15], Mask(136, 24, arg1) >> 24, mem[455 len 3]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[519 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xbd02d0f5 with:
             gas gas_remaining wei
            args sha3(mem[519 len 15], Mask(136, 24, arg1) >> 24, mem[586 len 3])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[650 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xbd02d0f5 with:
             gas gas_remaining wei
            args sha3(mem[650 len 15], Mask(136, 24, arg1) >> 24, mem[717 len 3])
    else:
        mem[452 len 0] = None
        mem[463 len 0] = None
        mem[463 len 27] = mem[463 len 10], Mask(88, 0, 'access.role'), mem[484 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[452 len 11], 0, mem[463 len 5], Mask(128, 32, msg.sender) >> 32, mem[520 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
        mem[584 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args sha3(mem[584 len 15], Mask(136, 24, arg1) >> 24, mem[651 len 3]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[715 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xbd02d0f5 with:
             gas gas_remaining wei
            args sha3(mem[715 len 15], Mask(136, 24, arg1) >> 24, mem[782 len 3])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[846 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xbd02d0f5 with:
             gas gas_remaining wei
            args sha3(mem[846 len 15], Mask(136, 24, arg1) >> 24, mem[913 len 3])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x140ce489: address(arg1), ext_call.return_data[0], ext_call.return_data[0], 0, this.address
    return 1
}

function sub_1626bff4(?) {
    mem[256 len 0] = None
    mem[267 len 0] = None
    mem[267 len 27] = mem[267 len 10], Mask(88, 0, 'access.role'), mem[288 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[256 len 11], 0, mem[267 len 5], Mask(128, 32, msg.sender) >> 32, mem[324 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        if arg2 >= arg3:
            revert with 0, 'Min amount < max amount.'
        mem[388 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args sha3(mem[388 len 15], Mask(136, 24, arg1) >> 24, mem[455 len 3]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[519 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xe2a4853a with:
             gas gas_remaining wei
            args sha3(mem[519 len 15], Mask(136, 24, arg1) >> 24, mem[586 len 3]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[650 len 0] = None
        mem[689] = sha3(mem[650 len 15], Mask(136, 24, arg1) >> 24, mem[717 len 3])
        require ext_code.size(_storageAddress)
        call _storageAddress.0xe2a4853a with:
             gas gas_remaining wei
            args mem[689], arg3
    else:
        mem[452 len 0] = None
        mem[463 len 0] = None
        mem[463 len 27] = mem[463 len 10], Mask(88, 0, 'access.role'), mem[484 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[452 len 11], 0, mem[463 len 5], Mask(128, 32, msg.sender) >> 32, mem[520 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
        if arg2 >= arg3:
            revert with 0, 'Min amount < max amount.'
        mem[584 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xabfdcced with:
             gas gas_remaining wei
            args sha3(mem[584 len 15], Mask(136, 24, arg1) >> 24, mem[651 len 3]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[715 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xe2a4853a with:
             gas gas_remaining wei
            args sha3(mem[715 len 15], Mask(136, 24, arg1) >> 24, mem[782 len 3]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[846 len 0] = None
        mem[885] = sha3(mem[846 len 15], Mask(136, 24, arg1) >> 24, mem[913 len 3])
        require ext_code.size(_storageAddress)
        call _storageAddress.0xe2a4853a with:
             gas gas_remaining wei
            args mem[885], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x140ce489: address(arg1), arg2, arg3, 1, this.address
    return 1
}



}
