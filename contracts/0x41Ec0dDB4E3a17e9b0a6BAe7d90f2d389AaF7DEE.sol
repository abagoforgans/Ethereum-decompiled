contract main {




// =====================  Runtime code  =====================


address owner;
address sub_3177f530Address;
address stor4;
address stor5;
uint256 stor5;
uint256 sub_74e20d3b;
address stor7;
uint256 stor7;
address stor8;
uint256 stor8;

function sub_3177f530(?) {
    return sub_3177f530Address
}

function sub_74e20d3b(?) {
    return sub_74e20d3b
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

function sub_500c686c(?) {
    require ext_code.size(stor4)
    call stor4.0x500c686c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_b01def7b(?) {
    require msg.sender == owner
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x59a64fa with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
}

function sub_92c44373(?) {
    require msg.sender == owner
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x458c9a0c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}

function sub_f4877c14(?) {
    require msg.sender == owner
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.getStakingContract() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
}

function sub_be830823(?) {
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbe830823 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[16 len 16]
}

function sub_f02f1ff0(?) {
    require ext_code.size(arg1)
    call arg1.0xbbe233fa with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf02f1ff0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[16 len 16], 
           ext_call.return_data[32] << 128,
           ext_call.return_data[64] << 128,
           uint128(ext_call.return_data[96])
}

function sub_591ba56d(?) {
    require ext_code.size(stor4)
    call stor4.0x7489a982 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Msg.sender is not a lender'
    require ext_code.size(arg1)
    call arg1.0xbbe233fa with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaf609430 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7fdf8e8a(?) payable {
    require ext_code.size(stor4)
    call stor4.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Msg.sender is not the borrower'
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7fdf8e8a with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f8aaf62e(?) payable {
    mem[(32 * arg8.length) + 128 len 884] = code.data[22661 len 884]
    mem[(32 * arg8.length) + 1012] = address(stor7)
    mem[(32 * arg8.length) + 1044] = address(stor8)
    create contract with 0 wei
                    code: code.data[22661 len 884], address(stor7), address(stor8)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 0:
        require ext_code.size(address(stor5))
        call address(stor5).0xcdff5c42 with:
           value arg1 wei
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg8.length) + 452 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    require ext_code.size(stor4)
    call stor4.0x48c38251 with:
         gas gas_remaining wei
        args address(create.new_address), arg2 << 128, arg3 << 128, arg4 << 248, arg5 << 248, arg6 << 248, address(arg7), Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * arg8.length) + floor32(arg8.length) + 452 len (32 * arg8.length) - floor32(arg8.length)]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.changeState(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args address(create.new_address), 11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function cancel(address arg1) {
    require ext_code.size(stor4)
    call stor4.0x7489a982 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Msg.sender is not a lender'
    require ext_code.size(stor4)
    call stor4.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 13
    if ext_call.return_data[31 len 1] != 8:
        require ext_call.return_data[31 len 1] <= 13
        if ext_call.return_data[31 len 1] != 12:
            require ext_call.return_data[31 len 1] <= 13
            if ext_call.return_data[31 len 1] != 11:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The loan cannot be cancelled in the current state'
    require ext_code.size(stor4)
    call stor4.changeState(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args address(arg1), 6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint8(ext_call.return_data[0]) <= 13
    if uint8(ext_call.return_data[0]) == 12:
        require ext_code.size(arg1)
        call arg1.0xbbe233fa with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x55916d21 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_0bddd6f5(?) {
    require ext_code.size(stor4)
    call stor4.0x30617583 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender doesn't have any collateral to withdraw'
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e9b86dd with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.0x654c6295 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xcf611ba2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[16 len 16] < uint128(ext_call.return_data[0]):
        require ext_code.size(stor4)
        call stor4.getCurrentState(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] == 7:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x204ce338 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_28a8cce3(?) {
    require ext_code.size(stor4)
    call stor4.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Msg.sender is not the borrower'
    require ext_code.size(stor4)
    call stor4.0x500c686c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Invalid state'
    require ext_code.size(stor4)
    call stor4.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != 4:
        revert with 0, 'Invalid state'
    require ext_code.size(stor4)
    call stor4.0xb4f056dc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[16 len 16]:
        revert with 0, 'Invalid state'
    require ext_code.size(stor4)
    call stor4.0xda64eaa5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] <= 0:
        revert with 0, 'Invalid state'
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x28a8cce3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_df3bbbba(?) payable {
    require ext_code.size(stor4)
    call stor4.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 13
    if ext_call.return_data[31 len 1] != 11:
        revert with 0, 'Invalid state'
    require ext_code.size(stor4)
    call stor4.0x7489a982 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not the lender of the offer'
    require ext_code.size(arg1)
    call arg1.0xbbe233fa with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2ec1214b with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), arg2 << 128, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0x7b1029b7 with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0]:
        require ext_code.size(stor4)
        call stor4.changeState(address arg1, uint8 arg2) with:
             gas gas_remaining wei
            args address(arg1), 12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor4)
        call stor4.0x7e939052 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_a13c1211(?) payable {
    require ext_code.size(stor4)
    call stor4.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Msg.sender is not the borrower'
    require ext_code.size(stor4)
    call stor4.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 13
    if ext_call.return_data[31 len 1] != 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The loan cannot accept repayments in this state'
    require ext_code.size(arg1)
    call arg1.0xbbe233fa with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg3:
        call address(ext_call.return_data[0]).0x2386519a with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xae1ceab6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(ext_call.return_data[0]).0x3326fe09 with:
           value msg.value wei
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xae1ceab6 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_936a4b15(?) payable {
    require ext_code.size(stor4)
    call stor4.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 13
    if ext_call.return_data[31 len 1] != 12:
        revert with 0, 'Invalid state for the loan offer'
    require ext_code.size(stor4)
    call stor4.0x7489a982 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is the lender of the offer'
    require msg.value >= arg2 + arg3
    if 1 == arg4:
        require msg.value >= arg5 + arg3 + arg2
    if arg3 > 0:
        require ext_code.size(address(stor5))
        call address(stor5).0xcdff5c42 with:
           value arg3 wei
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.0xd37d07b4 with:
         gas gas_remaining wei
        args 0, 0, arg4 << 248, arg5 << 128, arg6, arg7 << 128, address(arg8), address(arg9), arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg4 != 1:
        call address(ext_call.return_data[0]).0xa2c450b5 with:
             gas gas_remaining wei
            args arg1
    else:
        call address(ext_call.return_data[0]).0xa2c450b5 with:
           value msg.value - arg3 - arg2 wei
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.changeState(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args address(arg1), 13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.0xee4b4187 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x2c07ceaf with:
       value arg2 wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c07ceaf(?) payable {
    require ext_code.size(stor4)
    call stor4.0x7e09264 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x705cf7b7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x4cb64580 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4e2ea1c5 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = 0xb11a19e800000000000000000000000000000000000000000000000000000000
    mem[132] = ext_call.return_data[0]
    require ext_code.size(0x940a7bb4a0b3ae398c9c547e160359afafcfc836)
    delegate 0x940a7bb4a0b3ae398c9c547e160359afafcfc836.toString(bytes32 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require return_data.size >= 32
    _22 = mem[128 len 4], ext_call.return_data[0 len 28]
    require mem[128 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require return_data.size >= mem[mem[128 len 4], ext_call.return_data[0 len 28] + 128] + mem[128 len 4], ext_call.return_data[0 len 28] + 32 and mem[mem[128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0xcc091881 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4e2ea1c5 with:
         gas gas_remaining wei
        args address(ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 128] = 0xb11a19e800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(0x940a7bb4a0b3ae398c9c547e160359afafcfc836)
    delegate 0x940a7bb4a0b3ae398c9c547e160359afafcfc836.toString(bytes32 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _35 = mem[ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] + mem[ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296
    mem[(2 * ceil32(return_data.size)) + 128] = 0x1ad61cac00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = address(ext_call.return_data[32])
    mem[(2 * ceil32(return_data.size)) + 228] = 160
    mem[(2 * ceil32(return_data.size)) + 292] = mem[_22 + 128]
    _39 = mem[_22 + 128]
    mem[(2 * ceil32(return_data.size)) + 324 len ceil32(mem[_22 + 128])] = mem[_22 + 160 len ceil32(mem[_22 + 128])]
    if not _39 % 32:
        mem[(2 * ceil32(return_data.size)) + 260] = _39 + 192
        mem[_39 + (2 * ceil32(return_data.size)) + 324] = mem[ceil32(return_data.size) + _35 + 128]
        _56 = mem[ceil32(return_data.size) + _35 + 128]
        mem[_39 + (2 * ceil32(return_data.size)) + 356 len ceil32(mem[ceil32(return_data.size) + _35 + 128])] = mem[ceil32(return_data.size) + _35 + 160 len ceil32(mem[ceil32(return_data.size) + _35 + 128])]
        if not _56 % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x1ad61cac with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 132 len _56 + _39 + ceil32(return_data.size) + 224]
        else:
            mem[floor32(_56) + _39 + (2 * ceil32(return_data.size)) + 356] = mem[floor32(_56) + _39 + (2 * ceil32(return_data.size)) + -(_56 % 32) + 388 len _56 % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x1ad61cac with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 132 len floor32(_56) + _39 + ceil32(return_data.size) + 256]
    else:
        mem[floor32(_39) + (2 * ceil32(return_data.size)) + 324] = mem[floor32(_39) + (2 * ceil32(return_data.size)) + -(_39 % 32) + 356 len _39 % 32]
        mem[(2 * ceil32(return_data.size)) + 260] = floor32(_39) + 224
        mem[floor32(_39) + (2 * ceil32(return_data.size)) + 356] = mem[ceil32(return_data.size) + _35 + 128]
        _59 = mem[ceil32(return_data.size) + _35 + 128]
        mem[floor32(_39) + (2 * ceil32(return_data.size)) + 388 len ceil32(mem[ceil32(return_data.size) + _35 + 128])] = mem[ceil32(return_data.size) + _35 + 160 len ceil32(mem[ceil32(return_data.size) + _35 + 128])]
        if not _59 % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x1ad61cac with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 132 len _59 + floor32(_39) + ceil32(return_data.size) + 256]
        else:
            mem[floor32(_59) + floor32(_39) + (2 * ceil32(return_data.size)) + 388] = mem[floor32(_59) + floor32(_39) + (2 * ceil32(return_data.size)) + -(_59 % 32) + 420 len _59 % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x1ad61cac with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 132 len floor32(_59) + floor32(_39) + ceil32(return_data.size) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_05404a5d(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x705cf7b7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Msg.sender is not the TokenPriceChecker smart contract or the owner'
    require ext_code.size(stor4)
    call stor4.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x4cb64580 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getCollateralToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenDecimals(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Invalid collateral type decimals'
    require uint8(ext_call.return_data[0]) <= 13
    if not uint8(ext_call.return_data[0]):
        require ext_code.size(stor4)
        call stor4.0x782be with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x47c9702a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0x3058ee3 with:
             gas gas_remaining wei
            args 0, 0, arg2, ext_call.return_data[0], uint16(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        if ext_call.return_data[0]:
            call stor4.changeState(address arg1, uint8 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call stor4.changeState(address arg1, uint8 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.0xbbe233fa with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xebcd018b with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor4)
            call stor4.0x8d5ee6f4 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.0x1bbd0df8 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[48 len 16] > uint128(ext_call.return_data[0]):
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xc510201c with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require uint8(ext_call.return_data[0]) <= 13
        if 13 == uint8(ext_call.return_data[0]):
            require ext_code.size(stor4)
            call stor4.0x782be with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3177f530Address)
            call sub_3177f530Address.0x47c9702a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.0x3058ee3 with:
                 gas gas_remaining wei
                args 0, 0, arg2, ext_call.return_data[0], uint16(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            if ext_call.return_data[0]:
                call stor4.changeState(address arg1, uint8 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call stor4.changeState(address arg1, uint8 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.0xbbe233fa with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xebcd018b with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                call stor4.0x8d5ee6f4 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x1bbd0df8 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[48 len 16] > uint128(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xc510201c with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require uint8(ext_call.return_data[0]) <= 13
            require ext_code.size(stor4)
            if uint8(ext_call.return_data[0]) != 8:
                call stor4.0xbaf99299 with:
                     gas gas_remaining wei
                    args 0, 0, arg2, ext_call.return_data[0], sub_74e20d3b + 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call stor4.0x782be with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_3177f530Address)
                call sub_3177f530Address.0x47c9702a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x3058ee3 with:
                     gas gas_remaining wei
                    args 0, 0, arg2, ext_call.return_data[0], uint16(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                if ext_call.return_data[0]:
                    call stor4.changeState(address arg1, uint8 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call stor4.changeState(address arg1, uint8 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.0xbbe233fa with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xebcd018b with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor4)
                    call stor4.0x8d5ee6f4 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    call stor4.0x1bbd0df8 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[48 len 16] > uint128(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xc510201c with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_68e52652(?) {
    require ext_code.size(stor4)
    call stor4.0x7489a982 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor4)
        call stor4.0x500c686c with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The price of the collateral doesn't allow the collateral call'
        require ext_code.size(stor4)
        call stor4.0x908e0b47 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The price of the collateral doesn't allow the collateral call'
        require ext_code.size(stor4)
        call stor4.0x654c6295 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0xcf611ba2 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = uint128(ext_call.return_data[0])
        require ext_code.size(0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0)
        delegate 0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0.sub(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x2f9d62400000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        call stor4.0x2f9d624 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _60 = mem[96 len 4], address(arg1) << 64
        require mem[96 len 4], address(arg1) << 64 <= 4294967296
        require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
        _155 = mem[mem[96 len 4], address(arg1) << 64 + 96]
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < _155:
            require idx < mem[_60 + 96]
            require ext_code.size(stor4)
            call stor4.0x8eb6ffe1 with:
                 gas gas_remaining wei
                args address(arg1), mem[_60 + (32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.0xc5662f85 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.0x11b8630c with:
                 gas gas_remaining wei
                args ext_call.return_data[0], uint128(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = delegate.return_data[0]
            mem[ceil32(return_data.size) + 132] = uint128(delegate.return_data[0])
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.'3 ,' with:
                 gas gas_remaining wei
                args delegate.return_data[0], uint128(delegate.return_data[0])
            mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[_60 + 96]
            _227 = mem[_60 + (32 * idx) + 128]
            mem[ceil32(return_data.size) + 96] = 0x4e3ab92800000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            mem[ceil32(return_data.size) + 132] = address(_227)
            mem[ceil32(return_data.size) + 164] = uint128(delegate.return_data[0])
            require ext_code.size(stor4)
            call stor4.0x4e3ab928 with:
                 gas gas_remaining wei
                args address(arg1), address(_227), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = delegate.return_data[0]
            s = delegate.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a lender or the owner'
        require ext_code.size(stor4)
        call stor4.0x500c686c with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The price of the collateral doesn't allow the collateral call'
        require ext_code.size(stor4)
        call stor4.0x908e0b47 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The price of the collateral doesn't allow the collateral call'
        require ext_code.size(stor4)
        call stor4.0x654c6295 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0xcf611ba2 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = uint128(ext_call.return_data[0])
        require ext_code.size(0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0)
        delegate 0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0.sub(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x2f9d62400000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        call stor4.0x2f9d624 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _62 = mem[96 len 4], address(arg1) << 64
        require mem[96 len 4], address(arg1) << 64 <= 4294967296
        require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
        _156 = mem[mem[96 len 4], address(arg1) << 64 + 96]
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < _156:
            require idx < mem[_62 + 96]
            require ext_code.size(stor4)
            call stor4.0x8eb6ffe1 with:
                 gas gas_remaining wei
                args address(arg1), mem[_62 + (32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.0xc5662f85 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.0x11b8630c with:
                 gas gas_remaining wei
                args ext_call.return_data[0], uint128(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = delegate.return_data[0]
            mem[ceil32(return_data.size) + 132] = uint128(delegate.return_data[0])
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.'3 ,' with:
                 gas gas_remaining wei
                args delegate.return_data[0], uint128(delegate.return_data[0])
            mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[_62 + 96]
            _230 = mem[_62 + (32 * idx) + 128]
            mem[ceil32(return_data.size) + 96] = 0x4e3ab92800000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            mem[ceil32(return_data.size) + 132] = address(_230)
            mem[ceil32(return_data.size) + 164] = uint128(delegate.return_data[0])
            require ext_code.size(stor4)
            call stor4.0x4e3ab928 with:
                 gas gas_remaining wei
                args address(arg1), address(_230), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = delegate.return_data[0]
            s = delegate.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
    require ext_code.size(stor4)
    call stor4.0x654c6295 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xcf611ba2 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0)
    delegate 0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0.sub(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0x77cc7185 with:
         gas gas_remaining wei
        args address(arg1), uint128(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.changeState(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args address(arg1), 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e9b86dd with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eb0a2ffb(?) {
    require ext_code.size(stor4)
    call stor4.0x7489a982 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor4)
        call stor4.0x500c686c with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The collateral price is not updated'
        require ext_code.size(stor4)
        call stor4.0xb4f056dc with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[16 len 16] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The lender can't partially call default'
        require ext_code.size(stor4)
        call stor4.0x4f1c7eff with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x705cf7b7 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0x7e09264 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTokenPrice(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x4cb64580 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTokenDecimals(address arg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[164] = uint128(ext_call.return_data[0])
        mem[196] = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.0x1f1f0005 with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0] << 128, ext_call.return_data[0] << 128, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0)
        delegate 0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0.div(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, 20
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0)
        delegate 0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0.add(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, uint128(delegate.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0x77cc7185 with:
             gas gas_remaining wei
            args address(arg1), uint128(delegate.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[132] = uint128(ext_call.return_data[0])
        require ext_code.size(stor4)
        call stor4.0xa74442bf with:
             gas gas_remaining wei
            args address(arg1), uint128(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x2f9d62400000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        call stor4.0x2f9d624 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _118 = mem[96 len 4], address(arg1) << 64
        require mem[96 len 4], address(arg1) << 64 <= 4294967296
        require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
        _261 = mem[mem[96 len 4], address(arg1) << 64 + 96]
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < _261:
            require idx < mem[_118 + 96]
            require ext_code.size(stor4)
            call stor4.0x8eb6ffe1 with:
                 gas gas_remaining wei
                args address(arg1), mem[_118 + (32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.0xc5662f85 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.0x11b8630c with:
                 gas gas_remaining wei
                args ext_call.return_data[0], uint128(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = delegate.return_data[0]
            mem[ceil32(return_data.size) + 132] = uint128(delegate.return_data[0])
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.'3 ,' with:
                 gas gas_remaining wei
                args delegate.return_data[0], uint128(delegate.return_data[0])
            mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[_118 + 96]
            _348 = mem[_118 + (32 * idx) + 128]
            mem[ceil32(return_data.size) + 96] = 0x4e3ab92800000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            mem[ceil32(return_data.size) + 132] = address(_348)
            mem[ceil32(return_data.size) + 164] = uint128(delegate.return_data[0])
            require ext_code.size(stor4)
            call stor4.0x4e3ab928 with:
                 gas gas_remaining wei
                args address(arg1), address(_348), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = delegate.return_data[0]
            s = delegate.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a lender or the owner'
        require ext_code.size(stor4)
        call stor4.0x500c686c with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The collateral price is not updated'
        require ext_code.size(stor4)
        call stor4.0xb4f056dc with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[16 len 16] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The lender can't partially call default'
        require ext_code.size(stor4)
        call stor4.0x4f1c7eff with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x705cf7b7 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0x7e09264 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTokenPrice(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x4cb64580 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTokenDecimals(address arg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[164] = uint128(ext_call.return_data[0])
        mem[196] = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.0x1f1f0005 with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0] << 128, ext_call.return_data[0] << 128, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0)
        delegate 0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0.div(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, 20
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0)
        delegate 0x650e91a5316b502f3923b3afcc0dde5aa86ebaf0.add(uint128 arg1, uint128 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 128, uint128(delegate.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0x77cc7185 with:
             gas gas_remaining wei
            args address(arg1), uint128(delegate.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[132] = uint128(ext_call.return_data[0])
        require ext_code.size(stor4)
        call stor4.0xa74442bf with:
             gas gas_remaining wei
            args address(arg1), uint128(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x2f9d62400000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        call stor4.0x2f9d624 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _120 = mem[96 len 4], address(arg1) << 64
        require mem[96 len 4], address(arg1) << 64 <= 4294967296
        require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
        _262 = mem[mem[96 len 4], address(arg1) << 64 + 96]
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < _262:
            require idx < mem[_120 + 96]
            require ext_code.size(stor4)
            call stor4.0x8eb6ffe1 with:
                 gas gas_remaining wei
                args address(arg1), mem[_120 + (32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.0xc5662f85 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.0x11b8630c with:
                 gas gas_remaining wei
                args ext_call.return_data[0], uint128(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = delegate.return_data[0]
            mem[ceil32(return_data.size) + 132] = uint128(delegate.return_data[0])
            require ext_code.size(0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c)
            delegate 0x3348d8f2586a9d7f2027e644b87483d4cfcd7f1c.'3 ,' with:
                 gas gas_remaining wei
                args delegate.return_data[0], uint128(delegate.return_data[0])
            mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[_120 + 96]
            _356 = mem[_120 + (32 * idx) + 128]
            mem[ceil32(return_data.size) + 96] = 0x4e3ab92800000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            mem[ceil32(return_data.size) + 132] = address(_356)
            mem[ceil32(return_data.size) + 164] = uint128(delegate.return_data[0])
            require ext_code.size(stor4)
            call stor4.0x4e3ab928 with:
                 gas gas_remaining wei
                args address(arg1), address(_356), uint128(delegate.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = delegate.return_data[0]
            s = delegate.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
    require ext_code.size(stor4)
    call stor4.0xf1d14809 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor4)
        call stor4.changeState(address arg1, uint8 arg2) with:
             gas gas_remaining wei
            args address(arg1), 7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x69076788 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e9b86dd with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.0x654c6295 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xcf611ba2 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint128(ext_call.return_data[0]) < uint128(ext_call.return_data[0]):
        require ext_code.size(stor4)
        call stor4.getCurrentState(address arg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(ext_call.return_data[0]) == 7:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x204ce338 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
