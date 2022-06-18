contract main {




// =====================  Runtime code  =====================


#
#  - setData(string arg1, string arg2)
#
address stor0;
address stor1;
address stor2;
address sub_882f6718Address;
uint32 stor4;
address stor4;
uint32 stor5;
address stor5;
uint256 stor6;

function sub_882f6718(?) {
    return sub_882f6718Address
}

function _fallback() payable {
    revert
}

function sub_db1c9b25(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x20a38760 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function checkMyBalance() {
    require ext_code.size(stor1)
    staticcall stor1.0x767ea128 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f2b23b32(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3('currentOwner')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not owner'
    require arg1
    require ext_code.size(stor1)
    call stor1.0xf2b23b32 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        sub_882f6718Address = arg1
        stor2 = 0
}

function sub_b5ef70e9(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = 'currentOwner'
    mem[ceil32(arg1.length) + 128] = 12
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not owner'
    return stor2
}

function sub_6bd449aa(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_c95e058f(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0xc8691b2a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor1)
    call stor1.0xc8691b2a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _5 = uint32(arg1), mem[132 len 28]
    _6 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 32 <= return_data.size
    require mem[mem[160] + 96] <= 4294967296 and mem[160] + mem[mem[160] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[96 len 4], Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 128] = address(_5)
    mem[ceil32(return_data.size) + 160] = 96
    mem[ceil32(return_data.size) + 192] = mem[_6 + 96]
    _10 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 224 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _10 % 32:
        return mem[ceil32(return_data.size) + 96], address(_5), 96, mem[ceil32(return_data.size) + 192 len _10 + 32]
    mem[floor32(_10) + ceil32(return_data.size) + 224] = mem[floor32(_10) + ceil32(return_data.size) + -(_10 % 32) + 256 len _10 % 32]
    return mem[ceil32(return_data.size) + 96], address(_5), 96, mem[ceil32(return_data.size) + 192 len floor32(_10) + 64]
}

function sub_26e5363d(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 180] = 'updateLatestManagerContract()'
    mem[ceil32(arg1.length) + 128] = 49
    mem[ceil32(arg1.length) + 209] = 12
    mem[ceil32(arg1.length) + 241] = 'currentOwner'
    mem[ceil32(arg1.length) + 305 len 0] = None
    mem[ceil32(arg1.length) + 273] = 12
    mem[64] = ceil32(arg1.length) + 317
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[ceil32(arg1.length) + 305 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x565971c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 317] = 0xfe48e9800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 321] = stor2
    mem[ceil32(arg1.length) + 385] = address(ext_call.return_data[0])
    mem[ceil32(arg1.length) + 449] = msg.sender
    mem[ceil32(arg1.length) + 353] = 160
    mem[ceil32(arg1.length) + 481] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 513 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + 417] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 513] = arg1.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 545 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 321 len arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 224]
        else:
            mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 545] = mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + -(arg1.length % 32) + 577 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 321 len floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 256]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 513] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 545 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + 417] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 545] = arg1.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 577 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 321 len arg1.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 256]
        else:
            mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 577] = mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(arg1.length % 32) + 609 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 321 len floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = arg2
}

function sub_bb2277aa(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 180] = address(arg3)
    mem[ceil32(arg1.length) + 200] = 'startTransfer()'
    mem[ceil32(arg1.length) + 215] = arg4
    mem[ceil32(arg1.length) + 128] = 87
    mem[ceil32(arg1.length) + 247] = 12
    mem[ceil32(arg1.length) + 279] = 'currentOwner'
    mem[ceil32(arg1.length) + 343 len 0] = None
    mem[ceil32(arg1.length) + 311] = 12
    mem[64] = ceil32(arg1.length) + 355
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[ceil32(arg1.length) + 343 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x565971c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 355] = 0xfe48e9800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 359] = stor2
    mem[ceil32(arg1.length) + 423] = address(ext_call.return_data[0])
    mem[ceil32(arg1.length) + 487] = msg.sender
    mem[ceil32(arg1.length) + 391] = 160
    mem[ceil32(arg1.length) + 519] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 551 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + 455] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 551] = arg1.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 583 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 359 len arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 224]
        else:
            mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 583] = mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + -(arg1.length % 32) + 615 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 359 len floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 256]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 551] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 583 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + 455] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 583] = arg1.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 615 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 359 len arg1.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 256]
        else:
            mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 615] = mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(arg1.length % 32) + 647 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 359 len floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 <= 0:
        revert with 0, 'You can't set the price as 0'
    address(stor4) = arg2
    address(stor5) = arg3
    stor6 = arg4
    emit 0x8d3a7577: address(stor4), address(stor5), stor6
}

function claim(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(stor0)
    staticcall stor0.0x565971c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1.length != 65:
        require ext_code.size(stor1)
        staticcall stor1.0x767ea128 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x7cef795b: 0, ext_call.return_data[4 len 28]
        emit LogSender(address arg1):
                       0,
                       Mask(224, 0, msg.sender),
        if not ext_call.return_data[0]:
            revert with 0, 'Ether amount a payee receives needs to be greater than zero'
        if eth.balance(this.address) < ext_call.return_data[0]:
            revert with 0, 'Ether balance needs to be greater than request amount'
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0x3ed35855 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 0, 1
    mem[ceil32(arg1.length) + 160] = 'claim()'
    mem[ceil32(arg1.length) + 128] = 7
    mem[64] = ceil32(arg1.length) + 167
    mem[ceil32(arg1.length) + 167] = 0xda1fd46b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 171] = 64
    mem[ceil32(arg1.length) + 235] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 267 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + 203] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 267] = arg1.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 299 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xda1fd46b with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 171 len arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 128]
        else:
            mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 299] = mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + -(arg1.length % 32) + 331 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xda1fd46b with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 171 len floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 267] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 299 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + 203] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 299] = arg1.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 331 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xda1fd46b with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 171 len arg1.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160]
        else:
            mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 331] = mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(arg1.length % 32) + 363 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xda1fd46b with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 171 len floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x767ea128 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7cef795b: ext_call.return_data[0]
    emit LogSender(msg.sender);
    if not ext_call.return_data[0]:
        revert with 0, 'Ether amount a payee receives needs to be greater than zero'
    if eth.balance(this.address) < ext_call.return_data[0]:
        revert with 0, 'Ether balance needs to be greater than request amount'
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x3ed35855 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_3c390b34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 'moneyDistribution()'
    mem[ceil32(arg1.length) + 128] = 19
    mem[64] = ceil32(arg1.length) + 179
    require ext_code.size(stor0)
    staticcall stor0.0x565971c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 179] = 0xfe48e9800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 183] = stor2
    mem[ceil32(arg1.length) + 247] = address(stor4)
    mem[ceil32(arg1.length) + 311] = msg.sender
    mem[ceil32(arg1.length) + 215] = 160
    mem[ceil32(arg1.length) + 343] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 375 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + 279] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 375] = arg1.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 407 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 183 len arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 224]
        else:
            mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 407] = mem[floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + -(arg1.length % 32) + 439 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 183 len floor32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 256]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 375] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 407 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + 279] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 407] = arg1.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 439 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 183 len arg1.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 256]
        else:
            mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 439] = mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(arg1.length % 32) + 471 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 183 len floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value <= stor6:
        revert with 0, 'Please meet the minimum price, Not enough ether has been sent, please sent more'
    require ext_code.size(stor0)
    staticcall stor0.0x565971c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xc0c90bb8: msg.value
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(uint32(stor4), mem[ceil32(arg1.length) + 279 len 8])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 383 len 0] = None
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[ceil32(arg1.length) + 383 len 14])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3('royaltyFlag')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5fedc1a with:
         gas gas_remaining wei
        args stor2, msg.value, address(stor5), address(ext_call.return_data[0]), address(ext_call.return_data[0]), bool(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor1)
        call stor1.0x21f8a721 with:
             gas gas_remaining wei
            args sha3(uint32(stor5), Mask(64, 96, ext_call.return_data[0]) >> 96)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg1.length) + 644 len 0] = None
        require ext_code.size(stor1)
        call stor1.0x21f8a721 with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 644 len 12])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.0x767ea128 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg1.length) + 752 len 0] = None
        require ext_code.size(stor1)
        call stor1.0x21f8a721 with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 752 len 14])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg1.length) + 862 len 0] = None
        require ext_code.size(stor1)
        call stor1.0x21f8a721 with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 862 len 14])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.0x767ea128 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor5))
        staticcall address(stor5).getMarketOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor5))
        staticcall address(stor5).getMarketOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.0x767ea128 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3('royaltyFlag')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x34278817: address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), ext_call.return_data[0], msg.value, bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.0xca446dd9 with:
             gas gas_remaining wei
            args sha3('currentOwner'), address(stor4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0x280cf618 with:
             gas gas_remaining wei
            args msg.sender, 'History MetaData'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x3377d5c6: 1
        address(stor5) = 0
        address(stor4) = 0
        stor6 = 0
}

function sub_a58464b6(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 212] = 'transferOwnership()'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 231 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 231] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 231])
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg3.length + 39
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 231] = 12
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 263] = 'currentOwner'
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 327 len 0] = None
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 295] = 12
    mem[64] = arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 339
    require ext_code.size(stor1)
    call stor1.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 327 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x565971c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 339] = 0xfe48e9800000000000000000000000000000000000000000000000000000000
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 343] = stor2
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 407] = address(ext_call.return_data[0])
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 471] = msg.sender
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 375] = 160
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 503] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 535 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 439] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 192
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 535] = arg1.length
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 567 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args stor2, Array(len=mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 503 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 32], data=arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), address(ext_call.return_data[0]), Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 192, msg.sender
        else:
            mem[floor32(arg1.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 567] = mem[floor32(arg1.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg1.length % 32) + 599 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args stor2, Array(len=mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 503 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 32], data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[arg3.length + (2 * ceil32(arg1.length)) + ceil32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 567 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), address(ext_call.return_data[0]), Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 192, msg.sender
    else:
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 535] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 567 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
        mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 439] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + 224
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 567] = arg1.length
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 599 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args stor2, Array(len=mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 503 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + 64], data=arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), address(ext_call.return_data[0]), floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + 224, msg.sender
        else:
            mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 599] = mem[floor32(arg1.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg1.length % 32) + 631 len arg1.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xfe48e98 with:
                 gas gas_remaining wei
                args stor2, Array(len=mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 503 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + 64], data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[arg3.length + (2 * ceil32(arg1.length)) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + 599 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), address(ext_call.return_data[0]), floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
        revert with 0, 'New Owner address can't be zero or null'
    require ext_code.size(stor1)
    call stor1.0xca446dd9 with:
         gas gas_remaining wei
        args sha3('currentOwner'), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 339] = 0x280cf61800000000000000000000000000000000000000000000000000000000
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 343] = msg.sender
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 375] = 64
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 407] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 439 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        require ext_code.size(stor1)
        call stor1.0x280cf618 with:
             gas gas_remaining wei
            args mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 343 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 439] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 471 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        require ext_code.size(stor1)
        call stor1.0x280cf618 with:
             gas gas_remaining wei
            args mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + 343 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x3377d5c6: 1
}

function getData(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(stor0)
    staticcall stor0.0x565971c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 128] = 0xeaaf7a9400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    mem[ceil32(arg1.length) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]) with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 32 <= return_data.size
    require bool(32 <= return_data.size)
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 160 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 192 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 0
    if sha3(None) == sha3('Address'):
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        require ext_code.size(stor1)
        call stor1.0x21f8a721 with:
             gas gas_remaining wei
            args sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 192 len arg1.length % 32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 384] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                return 160, 
                       ext_call.return_data[12 len 20],
                       0,
                       arg1.length + 192,
                       0,
                       arg1.length,
                       mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 384 len (2 * arg1.length) + 32]
            mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 416] = mem[(2 * floor32(arg1.length)) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 448 len arg1.length % 32]
            return 160, 
                   ext_call.return_data[12 len 20],
                   0,
                   arg1.length + 192,
                   0,
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 384 len arg1.length + -ceil32(arg1.length) + 32],
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 416 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 384] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 416 len arg1.length % 32]
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 416] = arg1.length
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            return 160, 
                   ext_call.return_data[12 len 20],
                   0,
                   floor32(arg1.length) + 224,
                   0,
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 384 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                   arg1.length,
                   Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        mem[(2 * floor32(arg1.length)) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 448] = mem[(4 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 480 len arg1.length % 32]
        return 160, 
               ext_call.return_data[12 len 20],
               0,
               floor32(arg1.length) + 224,
               0,
               arg1.length,
               mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 384 len (2 * floor32(arg1.length)) + 96]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 192 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 224 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 160] = 0
    if sha3(None) == sha3('Uint'):
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        require ext_code.size(stor1)
        call stor1.0xbd02d0f5 with:
             gas gas_remaining wei
            args sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 224 len arg1.length % 32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 416] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                return 160, 
                       0,
                       ext_call.return_data[0],
                       arg1.length + 192,
                       0,
                       arg1.length,
                       mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 416 len (2 * arg1.length) + 32]
            mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 448] = mem[(2 * floor32(arg1.length)) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 480 len arg1.length % 32]
            return 160, 
                   0,
                   ext_call.return_data[0],
                   arg1.length + 192,
                   0,
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 416 len arg1.length + -ceil32(arg1.length) + 32],
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 448 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 416] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 448 len arg1.length % 32]
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 448] = arg1.length
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            return 160, 
                   0,
                   ext_call.return_data[0],
                   floor32(arg1.length) + 224,
                   0,
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 416 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                   arg1.length,
                   Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        mem[(2 * floor32(arg1.length)) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 480] = mem[(4 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 512 len arg1.length % 32]
        return 160, 
               0,
               ext_call.return_data[0],
               floor32(arg1.length) + 224,
               0,
               arg1.length,
               mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 416 len (2 * floor32(arg1.length)) + 96]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 224 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 256 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 192] = 0
    if sha3(None) == sha3('Bytes'):
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 224] = arg1.length
        _2095 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 256 len arg1.length % 32])
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256] = 0xc031a18000000000000000000000000000000000000000000000000000000000
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 260] = _2095
        require ext_code.size(stor1)
        call stor1.0xc031a180 with:
             gas gas_remaining wei
            args _2095
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _2171 = mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2095) >> 32
        require mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2095) >> 32 <= 4294967296
        require mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2095) >> 32 + 32 <= return_data.size
        require mem[mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2095) >> 32 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2095) >> 32 + mem[mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2095) >> 32 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256] + 32 <= return_data.size
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 384] = 0
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 256] = 160
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 416] = arg1.length
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 352] = arg1.length + 192
            mem[(2 * arg1.length) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 448] = mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256]
            _2408 = mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256]
            mem[(2 * arg1.length) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256])] = mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 288 len ceil32(mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256])]
            if not _2408 % 32:
                return memory
                  from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 256
                   len _2408 + arg1.length + ceil32(return_data.size) + 224
            mem[floor32(_2408) + (2 * arg1.length) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_2408) + (2 * arg1.length) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + -(_2408 % 32) + 512 len _2408 % 32]
            return memory
              from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 256
               len floor32(_2408) + arg1.length + ceil32(return_data.size) + 256
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 448] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 480 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 352] = floor32(arg1.length) + 224
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 480] = mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256]
        _2425 = mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256]
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256])] = mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 288 len ceil32(mem[_2171 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 256])]
        if not _2425 % 32:
            return memory
              from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 256
               len _2425 + floor32(arg1.length) + ceil32(return_data.size) + 256
        mem[floor32(_2425) + floor32(arg1.length) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(_2425) + floor32(arg1.length) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + -(_2425 % 32) + 544 len _2425 % 32]
        return memory
          from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 256
           len floor32(_2425) + floor32(arg1.length) + ceil32(return_data.size) + 288
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 256 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 288 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 224] = 0
    if sha3(None) == sha3('Bool'):
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        require ext_code.size(stor1)
        call stor1.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 288 len arg1.length % 32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320] = 0
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 352] = 0
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 416] = bool(ext_call.return_data[0])
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 288] = 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 448] = arg1.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 384] = arg1.length + 192
            mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 480] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                return memory
                  from arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 288
                   len (2 * arg1.length) + 224
            mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 512] = mem[(2 * floor32(arg1.length)) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 544 len arg1.length % 32]
            return 160, 
                   0,
                   0,
                   arg1.length + 192,
                   bool(ext_call.return_data[0]),
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 480 len arg1.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 480] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 512 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 384] = floor32(arg1.length) + 224
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 512] = arg1.length
        mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 544 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            return 160, 
                   0,
                   0,
                   floor32(arg1.length) + 224,
                   bool(ext_call.return_data[0]),
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(return_data.size) + 480 len floor32(arg1.length) + -ceil32(arg1.length) + 64],
                   Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        mem[(2 * floor32(arg1.length)) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 544] = mem[(4 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 576 len arg1.length % 32]
        return memory
          from arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 288
           len (2 * floor32(arg1.length)) + 288
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 288 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 320 len 0] = None
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 256] = 0
    if sha3(None) != sha3('String'):
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 480] = arg1.length
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                return 160, 
                       0,
                       0,
                       arg1.length + 192,
                       0,
                       arg1.length,
                       Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                       mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 480 len (2 * arg1.length) + -ceil32(arg1.length) + 32]
            mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 512] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 544 len arg1.length % 32]
            return 160, 
                   0,
                   0,
                   arg1.length + 192,
                   0,
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 480 len arg1.length + -ceil32(arg1.length) + 32],
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 512 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 480] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + -(arg1.length % 32) + 512 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 512] = arg1.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 544 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            return 160, 
                   0,
                   0,
                   floor32(arg1.length) + 224,
                   0,
                   arg1.length,
                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                   mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 480 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                   arg1.length,
                   Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 544] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + -(arg1.length % 32) + 576 len arg1.length % 32]
        return 160, 
               0,
               0,
               floor32(arg1.length) + 224,
               0,
               arg1.length,
               Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
               mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 480 len (2 * floor32(arg1.length)) + -ceil32(arg1.length) + 96]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 288] = arg1.length
    _2580 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 320 len arg1.length % 32])
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 324] = _2580
    require ext_code.size(stor1)
    call stor1.0x986e791a with:
         gas gas_remaining wei
        args _2580
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _2634 = mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _2580) >> 32
    require mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _2580) >> 32 <= 4294967296
    require mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _2580) >> 32 + 32 <= return_data.size
    require mem[mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _2580) >> 32 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320] <= 4294967296 and mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _2580) >> 32 + mem[mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _2580) >> 32 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320] + 32 <= return_data.size
    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 352] = 0
    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 384] = 0
    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0
    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 320] = 160
    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 480] = mem[_2634 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320]
    _2671 = mem[_2634 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320]
    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[_2634 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320])] = mem[_2634 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 352 len ceil32(mem[_2634 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 320])]
    if not _2671 % 32:
        mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 416] = _2671 + 192
        mem[_2671 + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 512] = arg1.length
        mem[_2671 + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 544 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            return memory
              from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 320
               len arg1.length + _2671 + ceil32(return_data.size) + 224
        mem[floor32(arg1.length) + _2671 + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 544] = mem[(2 * floor32(arg1.length)) + _2671 + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 576 len arg1.length % 32]
        return memory
          from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 320
           len floor32(arg1.length) + _2671 + ceil32(return_data.size) + 256
    mem[floor32(_2671) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(_2671) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + -(_2671 % 32) + 544 len _2671 % 32]
    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 416] = floor32(_2671) + 224
    mem[floor32(_2671) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 544] = arg1.length
    mem[floor32(_2671) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        return memory
          from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 320
           len arg1.length + floor32(_2671) + ceil32(return_data.size) + 256
    mem[floor32(arg1.length) + floor32(_2671) + arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 576] = mem[(2 * floor32(arg1.length)) + floor32(_2671) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 608 len arg1.length % 32]
    return memory
      from arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 320
       len floor32(arg1.length) + floor32(_2671) + ceil32(return_data.size) + 288
}



}
