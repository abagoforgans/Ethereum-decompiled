contract main {




// =====================  Runtime code  =====================


const deposit = 0


uint8 version;
uint8 stor0; offset 8
address _storageAddress; offset 16
uint256 stor0; offset 8

function version() {
    return version
}

function _storage() {
    return _storageAddress
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'Msg value > 0.'
    emit DepositReceived(msg.sender, msg.value, this.address);
}

function transferEthers(address arg1, uint256 arg2) {
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
    if bool(ext_call.return_data[0]) != 1:
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
    if uint8(stor0.field_8):
        revert with 0, 'rentrancy_lock'
    Mask(248, 0, stor0.field_8) = 1
    if eth.balance(this.address) <= arg2:
        revert with 0, 'Contract has not enough balance.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfd26c2a9: msg.sender, address(arg1), arg2, this.address
    Mask(248, 0, stor0.field_8) = 0
    return 1
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
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
    if bool(ext_call.return_data[0]) != 1:
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
    if uint8(stor0.field_8):
        revert with 0, 'rentrancy_lock'
    Mask(248, 0, stor0.field_8) = 1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Contract has not enough tokens balance.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer tokens was invalid.'
    emit 0x6a6baebb: address(arg1), msg.sender, address(arg2), arg3, this.address
    Mask(248, 0, stor0.field_8) = 0
    return 1
}



}
