contract main {




// =====================  Runtime code  =====================


const PERCENT_RATE = 100000


uint256 sub_ba91ba97;
mapping of address sellers;
mapping of struct sub_96e8150a;
address sub_54879918Address;

function sub_54879918(?) {
    return sub_54879918Address
}

function sub_96e8150a(?) {
    require sub_96e8150a[arg1].field_0 <= 2
    return sub_96e8150a[arg1].field_0, 
           sub_96e8150a[arg1].field_256,
           sub_96e8150a[arg1].field_512,
           sub_96e8150a[arg1].field_768,
           sub_96e8150a[arg1].field_1024
}

function sub_ba91ba97(?) {
    return sub_ba91ba97
}

function sellers(uint256 arg1) {
    return sellers[arg1]
}

function _fallback() payable {
    revert
}

function sub_2d00a151(?) {
    require msg.sender == sub_54879918Address
    sub_54879918Address = arg1
}

function isSeller(address arg1) {
    require sub_96e8150a[address(arg1)].field_0 <= 2
    return (sub_96e8150a[address(arg1)].field_0 == 1)
}

function sub_54dfcf43(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x15059fba with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_96e8150a[address(arg1)].field_768 = 0
}

function sub_39ddcebd(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_96e8150a[address(arg1)].field_0 <= 2
    if sub_96e8150a[address(arg1)].field_0 != 2:
        return 0
    sub_96e8150a[address(arg1)].field_0 = 1
    emit 0x6744f098: arg1
    return 1
}

function sub_d51c0429(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_96e8150a[address(arg1)].field_0 <= 2
    if sub_96e8150a[address(arg1)].field_0 != 1:
        return 0
    sub_96e8150a[address(arg1)].field_0 = 2
    emit 0xc9c93a1a: arg1
    return 1
}

function sub_887dfa3a(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x514904b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require sub_96e8150a[address(arg1)].field_0 <= 2
    if not sub_96e8150a[address(arg1)].field_0:
        return 0
    sub_96e8150a[address(arg1)].field_1024 = arg2
    emit 0x388ad814: arg2, arg1
    return 1
}

function sub_2b83e6ca(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_96e8150a[address(arg1)].field_0 <= 2
    if not sub_96e8150a[address(arg1)].field_0:
        return 0
    sub_96e8150a[address(arg1)].field_256 = arg2
    emit 0xfa0e0785: arg2, arg1
    return 1
}

function removeSeller(uint256 arg1) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x514904b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if arg1 >= sub_ba91ba97:
        return 0
    sub_96e8150a[stor1[arg1]].field_0 = 0
    sub_ba91ba97--
    if arg1 != sub_ba91ba97 - 1:
        sellers[arg1] = sellers[stor0]
    emit 0xdcecf449: sellers[arg1], arg1
    return 1
}

function sub_bcce8a1e(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x514904b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require sub_96e8150a[address(arg1)].field_0 <= 2
    if sub_96e8150a[address(arg1)].field_0:
        return 0
    if arg3 > 100000:
        return 0
    sub_ba91ba97++
    sellers[stor0] = arg1
    sub_96e8150a[address(arg1)].field_0 = 1
    sub_96e8150a[address(arg1)].field_256 = arg2
    sub_96e8150a[address(arg1)].field_512 = arg3
    sub_96e8150a[address(arg1)].field_768 = 0
    sub_96e8150a[address(arg1)].field_1024 = arg4
    emit 0xb60bbc84: arg2, arg1, arg4, arg3
    return 1
}

function sub_9b8f36db(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require (arg2 * sub_96e8150a[address(arg1)].field_512 / 100000) + sub_96e8150a[address(arg1)].field_768 >= sub_96e8150a[address(arg1)].field_768
    require (arg2 * sub_96e8150a[address(arg1)].field_512 / 100000) + sub_96e8150a[address(arg1)].field_768 >= arg2 * sub_96e8150a[address(arg1)].field_512 / 100000
    sub_96e8150a[address(arg1)].field_768 += arg2 * sub_96e8150a[address(arg1)].field_512 / 100000
    return sub_96e8150a[address(arg1)].field_512, arg2 * sub_96e8150a[address(arg1)].field_512 / 100000
}

function sub_a66f7624(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x514904b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if arg2 > 100000:
        return 0
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create contract with 0 wei
                    code: code.data[5306 len 1583], address(ext_call.return_data[0]), address(arg4), arg5
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ba91ba97++
    sellers[stor0] = address(create.new_address)
    sub_96e8150a[address(create.new_address)].field_0 = 1
    sub_96e8150a[address(create.new_address)].field_256 = arg1
    sub_96e8150a[address(create.new_address)].field_512 = arg2
    sub_96e8150a[address(create.new_address)].field_768 = 0
    sub_96e8150a[address(create.new_address)].field_1024 = arg3
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xbcbcddab: arg1, address(ext_call.return_data[0]), address(arg4), arg5, address(create.new_address), arg3, arg2
    return 1
}

function sub_521876f5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x514904b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5e829a02 with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if arg2 > 100000:
        return 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _28 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        require sub_96e8150a[mem[(32 * idx) + 140 len 20]].field_0 <= 2
        if not sub_96e8150a[mem[(32 * idx) + 140 len 20]].field_0:
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        sub_96e8150a[address(mem[(32 * idx) + 128])].field_512 = arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit 0x606088a3: arg2, address(_28)
        idx = idx + 1
        s = _28
        continue 
    return 1
}



}
