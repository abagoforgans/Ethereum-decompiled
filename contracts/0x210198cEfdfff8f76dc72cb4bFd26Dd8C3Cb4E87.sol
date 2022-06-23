contract main {




// =====================  Runtime code  =====================


mapping of struct sub_07fb6a8c;
array of uint256 sub_5ab181b9;
uint256 sub_a2c90489;
address sub_54879918Address;

function sub_07fb6a8c(?) {
    return sub_07fb6a8c[arg1][5][arg2].field_0
}

function sub_12d7582b(?) {
    return sub_07fb6a8c[arg1][6][arg2].field_0
}

function getWinner(uint256 arg1, uint256 arg2) {
    return sub_07fb6a8c[arg1][7][arg2].field_0
}

function sub_54879918(?) {
    return sub_54879918Address
}

function sub_5ab181b9(?) {
    return sub_5ab181b9[arg1]
}

function sub_a2c90489(?) {
    return sub_a2c90489
}

function sub_aaca3d7d(?) {
    return sub_07fb6a8c[arg1].field_0, 
           sub_07fb6a8c[arg1].field_256,
           sub_07fb6a8c[arg1].field_512,
           sub_07fb6a8c[arg1].field_768,
           sub_07fb6a8c[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_2d00a151(?) {
    require msg.sender == sub_54879918Address
    sub_54879918Address = arg1
}

function sub_09be741d(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x15059fba with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_5ab181b9[address(arg1)] -= arg2
}

function sub_a0e9cd26(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_07fb6a8c[arg1 + 1].field_0 = sub_07fb6a8c[arg1].field_0
}

function sub_09f8a0bd(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xabaf8208 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_07fb6a8c[arg1].field_512 = arg2
    sub_07fb6a8c[arg1].field_768 = arg3
}

function sub_7decc295(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xabaf8208 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xebff1b68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return (ext_call.return_data[0] > 0)
    return (ext_call.return_data[0] == sub_07fb6a8c[arg1].field_768)
}

function sub_515fdd1f(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    s = sub_5ab181b9[sha3(mem[0 len 64])]
    while idx < arg3:
        mem[0] = s
        mem[32] = sha3(arg1, 0) + 5
        sub_07fb6a8c[arg1][5][s].field_0 = arg2
        idx = idx + 1
        s = s + 1
        continue 
    sub_07fb6a8c[arg1].field_256 = sub_5ab181b9[sha3(mem[0 len 64])] + arg3
    require arg4 + sub_07fb6a8c[arg1].field_1024 >= sub_07fb6a8c[arg1].field_1024
    require arg4 + sub_07fb6a8c[arg1].field_1024 >= arg4
    sub_07fb6a8c[arg1].field_1024 += arg4
}

function sub_931bf8d8(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xabaf8208 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x82fbf195 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xebff1b68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] < sub_07fb6a8c[ext_call.return_data[0]].field_768)
}

function changeTicketPrice(uint256 arg1) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5e829a02 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not arg1:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc5196426 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_07fb6a8c[ext_call.return_data[0]].field_0 = arg1
    emit 0x4e6d458a: arg1, ext_call.return_data[0]
    return 1
}

function sub_4f6a624e(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xabaf8208 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xfc5ab87c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).JACKPOT() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2c3036c8 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + sub_a2c90489 >= sub_a2c90489
    require ext_call.return_data[0] + sub_a2c90489 >= ext_call.return_data[0]
    sub_a2c90489 += ext_call.return_data[0]
}

function sub_8c0fb113(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xabaf8208 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xfc5ab87c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2c3036c8 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).JACKPOT() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != ext_call.return_data[0]:
        require ext_call.return_data[0] + sub_5ab181b9[stor0[arg1][5][arg3].field_0] >= sub_5ab181b9[stor0[arg1][5][arg3].field_0]
        require ext_call.return_data[0] + sub_5ab181b9[stor0[arg1][5][arg3].field_0] >= ext_call.return_data[0]
        sub_5ab181b9[stor0[arg1][5][arg3].field_0] += ext_call.return_data[0]
    else:
        require sub_a2c90489 + ext_call.return_data[0] >= ext_call.return_data[0]
        require sub_a2c90489 + ext_call.return_data[0] >= sub_a2c90489
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x472c1aee with:
             gas gas_remaining wei
            args (sub_a2c90489 + ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] + sub_5ab181b9[stor0[arg1][5][arg3].field_0] >= sub_5ab181b9[stor0[arg1][5][arg3].field_0]
        require ext_call.return_data[0] + sub_5ab181b9[stor0[arg1][5][arg3].field_0] >= ext_call.return_data[0]
        sub_5ab181b9[stor0[arg1][5][arg3].field_0] += ext_call.return_data[0]
        sub_a2c90489 = ext_call.return_data[32]
    emit 0xc7e05395: arg2, ext_call.return_data[0], arg1, sub_07fb6a8c[arg1][5][arg3].field_0, arg3
    sub_07fb6a8c[arg1][6][arg2].field_0 = arg3
    sub_07fb6a8c[arg1][7][arg3].field_0 = sub_07fb6a8c[arg1][5][arg3].field_0
}



}
