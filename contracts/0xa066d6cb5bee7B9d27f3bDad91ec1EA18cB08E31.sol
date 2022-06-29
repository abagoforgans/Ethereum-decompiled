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

function upgradeContract(string arg1, address arg2) {
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
        mem[324] = 'contract.name'
        mem[337 len arg1.length] = arg1[all]
        mem[arg1.length + 337 len floor32(arg1.length + 13)] = mem[324 len floor32(arg1.length + 13)]
        mem[arg1.length + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 369 len arg1.length + 13 % 32] = mem[floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 356 len arg1.length + 13 % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x21f8a721 with:
             gas gas_remaining wei
            args sha3(mem[324 len floor32(arg1.length + 13)], mem[arg1.length + floor32(arg1.length + 13) + 337 len arg1.length + -floor32(arg1.length + 13) + 13])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'Old contract address must not be 0x0.'
        if address(ext_call.return_data[0]) == arg2:
            revert with 0, 'Old and new contract addresses must not be equals.'
        if eth.balance(ext_call.return_data[0]) <= 0:
            mem[arg1.length + 433 len 0] = None
            mem[arg1.length + 452 len 13] = Mask(104, 0, 'contract.name')
            mem[arg1.length + 446 len arg1.length] = arg1[all]
            mem[(2 * arg1.length) + 446 len floor32(arg1.length + 13)] = mem[arg1.length + 433 len floor32(arg1.length + 13)]
            mem[(2 * arg1.length) + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 478 len arg1.length + 13 % 32] = mem[arg1.length + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 465 len arg1.length + 13 % 32]
            require ext_code.size(_storageAddress)
            call _storageAddress.0xca446dd9 with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 446 len arg1.length + 13]), arg2
        else:
            mem[arg1.length + 433 len arg1.length] = arg1[all]
            emit 0x9c232296: Array(len=arg1.length, data=arg1[all]), eth.balance(ext_call.return_data[0]), this.address, address(ext_call.return_data[0]), arg2
            mem[arg1.length + 433 len 0] = None
            mem[arg1.length + 452 len 13] = Mask(104, 0, 'contract.name')
            mem[arg1.length + 446 len arg1.length] = arg1[all]
            mem[(2 * arg1.length) + 446 len floor32(arg1.length + 13)] = arg1[all], mem[(2 * arg1.length) + 433 len floor32(arg1.length + 13) - arg1.length]
            mem[(2 * arg1.length) + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 478 len arg1.length + 13 % 32] = mem[arg1.length + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 465 len arg1.length + 13 % 32]
            require ext_code.size(_storageAddress)
            call _storageAddress.0xca446dd9 with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 446 len (6 * arg1.length) + 13]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * arg1.length) + 542 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.0xca446dd9 with:
             gas gas_remaining wei
            args sha3(mem[(2 * arg1.length) + 542 len 16], uint128(arg2), mem[(2 * arg1.length) + 610 len 4]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * arg1.length) + 674 len 0] = None
        require ext_code.size(_storageAddress)
        call _storageAddress.deleteAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3(mem[(2 * arg1.length) + 674 len 16], Mask(128, 32, ext_call.return_data[0]) >> 32, mem[(2 * arg1.length) + 742 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xc8136952: Array(len=arg1.length, data=arg1[all]), this.address, address(ext_call.return_data[0]), arg2
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
        mem[520] = 'contract.name'
        mem[533 len arg1.length] = arg1[all]
        mem[arg1.length + 533 len floor32(arg1.length + 13)] = mem[520 len floor32(arg1.length + 13)]
        mem[arg1.length + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 565 len arg1.length + 13 % 32] = mem[floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 552 len arg1.length + 13 % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x21f8a721 with:
             gas gas_remaining wei
            args sha3(mem[520 len floor32(arg1.length + 13)], mem[arg1.length + floor32(arg1.length + 13) + 533 len arg1.length + -floor32(arg1.length + 13) + 13])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'Old contract address must not be 0x0.'
        if address(ext_call.return_data[0]) == arg2:
            revert with 0, 'Old and new contract addresses must not be equals.'
        if eth.balance(ext_call.return_data[0]) <= 0:
            mem[arg1.length + 629 len 0] = None
            mem[arg1.length + 648 len 13] = Mask(104, 0, 'contract.name')
            mem[arg1.length + 642 len arg1.length] = arg1[all]
            mem[(2 * arg1.length) + 642 len floor32(arg1.length + 13)] = mem[arg1.length + 629 len floor32(arg1.length + 13)]
            mem[(2 * arg1.length) + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 674 len arg1.length + 13 % 32] = mem[arg1.length + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 661 len arg1.length + 13 % 32]
            require ext_code.size(_storageAddress)
            call _storageAddress.0xca446dd9 with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 642 len arg1.length + 13]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * arg1.length) + 738 len 0] = None
            require ext_code.size(_storageAddress)
            call _storageAddress.0xca446dd9 with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 738 len 16], uint128(arg2), mem[(2 * arg1.length) + 806 len 4]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * arg1.length) + 870 len 0] = None
            require ext_code.size(_storageAddress)
            call _storageAddress.deleteAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 870 len 16], Mask(128, 32, ext_call.return_data[0]) >> 32, mem[(2 * arg1.length) + 938 len 4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xc8136952: Array(len=arg1.length, data=arg1[all]), this.address, address(ext_call.return_data[0]), arg2
        else:
            mem[arg1.length + 629 len arg1.length] = arg1[all]
            emit 0x9c232296: Array(len=arg1.length, data=arg1[all]), eth.balance(ext_call.return_data[0]), this.address, address(ext_call.return_data[0]), arg2
            mem[arg1.length + 629 len 0] = None
            mem[arg1.length + 648 len 13] = Mask(104, 0, 'contract.name')
            mem[arg1.length + 642 len arg1.length] = arg1[all]
            mem[(2 * arg1.length) + 642 len floor32(arg1.length + 13)] = arg1[all], mem[(2 * arg1.length) + 629 len floor32(arg1.length + 13) - arg1.length]
            mem[(2 * arg1.length) + floor32(arg1.length + 13) + -(arg1.length + 13 % 32) + 674 len arg1.length + 13 % 32] = mem[arg1.length + -(arg1.length + 13 % 32) + floor32(arg1.length + 13) + 661 len arg1.length + 13 % 32]
            require ext_code.size(_storageAddress)
            call _storageAddress.0xca446dd9 with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 642 len arg1.length + 13]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * arg1.length) + 738 len 0] = None
            require ext_code.size(_storageAddress)
            call _storageAddress.0xca446dd9 with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 738 len 16], uint128(arg2), mem[(2 * arg1.length) + 806 len 4]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * arg1.length) + 870 len 0] = None
            require ext_code.size(_storageAddress)
            call _storageAddress.deleteAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3(mem[(2 * arg1.length) + 870 len 16], Mask(128, 32, ext_call.return_data[0]) >> 32, mem[(2 * arg1.length) + 938 len 4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * arg1.length) + 906] = 32
            mem[(2 * arg1.length) + 938] = arg1.length
            mem[(2 * arg1.length) + 970 len arg1.length] = arg1[all]
            emit 0xc8136952: mem[(2 * arg1.length) + 906 len (5 * arg1.length) + 64], this.address, address(ext_call.return_data[0]), arg2
}



}
