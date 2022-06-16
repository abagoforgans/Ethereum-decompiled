contract main {




// =====================  Runtime code  =====================


array of address created;
mapping of uint8 stor1;
array of struct sub_8eead1a9;
address stor3;
uint256 sub_d42db98b;
mapping of uint256 sub_679936eb;
array of address tokenList;

function getTokenListLength() payable {
    return tokenList.length
}

function created(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(created[arg1])
    return address(created[arg1][arg2])
}

function sub_679936eb(?) payable {
    require calldata.size - 4 >= 32
    return sub_679936eb[arg1]
}

function isEIP20(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_8eead1a9(?) payable {
    return sub_8eead1a9[0 len sub_8eead1a9.length].field_0
}

function tokenList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenList.length
    return tokenList[arg1]
}

function sub_d42db98b(?) payable {
    return sub_d42db98b
}

function _fallback() payable {
    revert
}

function sub_54d699c1(?) payable {
    require calldata.size - 4 >= 64
    require sub_d42db98b
    return (arg1 * 10^arg2 / sub_d42db98b)
}

function redeemTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require sub_679936eb[address(arg1)]
    require ext_code.size(arg1)
    call arg1.destroy(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_679936eb[address(arg1)]
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_d42db98b * arg2 / sub_679936eb[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require sub_679936eb[address(arg1)]
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_d42db98b
    require ext_code.size(arg1)
    call arg1.create(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_679936eb[address(arg1)] * arg2 / sub_d42db98b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function verifyEIP20(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[64] = ceil32(ext_code.size(arg1)) + 97
    mem[96] = ext_code.size(arg1)
    mem[128 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    if ext_code.size(arg1) != sub_8eead1a9.length:
        return 0
    idx = 0
    while idx < ext_code.size(arg1):
        require idx < sub_8eead1a9.length
        if not bool(sub_8eead1a9.length):
            require idx < ext_code.size(arg1)
            if Mask(8, 248, mem[idx + 128]) == Mask(8, -(('field', 3, ('stor', ('length', ('name', 'sub_8eead1a9', 2)))), 0) + 256, idx) << (('field', 3, ('stor', ('length', ('name', 'sub_8eead1a9', 2)))), 0) - 8:
                idx = idx + 1
                continue 
        else:
            mem[0] = 2
            require idx < ext_code.size(arg1)
            if Mask(8, 248, mem[idx + 128]) == Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'sub_8eead1a9', 2)))), 0) + 256, idx % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'sub_8eead1a9', 2)))), 0) - 8:
                idx = idx + 1
                continue 
        return 0
    return 1
}

function sub_b4a47de2(?) payable {
    require calldata.size - 4 >= 96
    require sub_679936eb[address(arg1)]
    if arg1 == stor3:
        require sub_679936eb[address(arg2)]
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_d42db98b
        require ext_code.size(arg2)
        call arg2.create(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_679936eb[address(arg2)] * arg3 / sub_d42db98b
    else:
        if arg2 != stor3:
            require sub_679936eb[address(arg1)]
            require ext_code.size(arg1)
            call arg1.destroy(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.create(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_679936eb[address(arg2)] * arg3 / sub_679936eb[address(arg1)]
        else:
            require sub_679936eb[address(arg1)]
            require ext_code.size(arg1)
            call arg1.destroy(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sub_679936eb[address(arg1)]
            require ext_code.size(stor3)
            call stor3.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_d42db98b * arg3 / sub_679936eb[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_27644272(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + arg4.length + 160] = 0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len 4872] = code.data[6152 len 4872]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 5032] = arg1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 5096] = arg3
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 5160] = arg5
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 5064] = 160
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 5192] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 5224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 5128] = arg2.length + 192
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 5224] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 5256 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 5096]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 5256] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 5288 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 5128]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 5224] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 5256 len arg2.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 5128] = floor32(arg2.length) + 224
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 5256] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 5288 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 5128]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 5288] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 5320 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 5160]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(created[address(msg.sender)])++
    address(created[address(msg.sender)][uint256(created[address(msg.sender)])]) = address(create.new_address)
    stor1[address(create.new_address)] = 1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = address(create.new_address)
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
           mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
}

function sub_4abcbe15(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg2 <= 18
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4872] = code.data[6152 len 4872]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 5032] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 5096] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 5160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 5064] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 5192] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 5224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 5128] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 5224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 5256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 5096]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 5256] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 5288 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 5128]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 5224] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 5256 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 5128] = floor32(arg3.length) + 224
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 5256] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 5288 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 5128]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 5288] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 5320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 5160]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(created[address(msg.sender)])++
    address(created[address(msg.sender)][uint256(created[address(msg.sender)])]) = address(create.new_address)
    stor1[address(create.new_address)] = 1
    require sub_d42db98b
    require arg1 * sub_d42db98b <= 189175490 * arg5
    sub_679936eb[address(create.new_address)] = arg5 * 10^arg2 / sub_d42db98b
    tokenList.length++
    tokenList[tokenList.length] = address(create.new_address)
}



}
