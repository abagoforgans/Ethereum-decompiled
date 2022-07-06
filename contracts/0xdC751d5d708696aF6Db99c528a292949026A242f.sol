contract main {




// =====================  Runtime code  =====================


array of address created;
mapping of uint8 stor1;
array of struct eIP20ByteCode;
address sub_e176946bAddress;
uint256 sub_d42db98b;
mapping of uint256 sub_679936eb;
array of address tokenList;
array of struct sub_81eabec9;

function getTokenListLength() {
    return tokenList.length
}

function created(address arg1, uint256 arg2) {
    require arg2 < uint256(created[arg1])
    return address(created[arg1][arg2])
}

function sub_679936eb(?) {
    return sub_679936eb[arg1]
}

function isEIP20(address arg1) {
    return bool(stor1[arg1])
}

function EIP20ByteCode() {
    return eIP20ByteCode[0 len eIP20ByteCode.length].field_0
}

function sub_81eabec9(?) {
    require arg1 < sub_81eabec9.length
    return sub_81eabec9[arg1].field_0
}

function tokenList(uint256 arg1) {
    require arg1 < tokenList.length
    return tokenList[arg1]
}

function sub_d42db98b(?) {
    return sub_d42db98b
}

function sub_e176946b(?) {
    return sub_e176946bAddress
}

function _fallback() payable {
    revert
}

function buyTokens(address arg1, uint256 arg2) {
    require sub_679936eb[address(arg1)]
    require ext_code.size(sub_e176946bAddress)
    call sub_e176946bAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_d42db98b
    require arg2 * sub_679936eb[address(arg1)] / sub_d42db98b > 0
    require ext_code.size(arg1)
    call arg1.create(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2 * sub_679936eb[address(arg1)] / sub_d42db98b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function redeemTokens(address arg1, uint256 arg2) {
    require sub_679936eb[address(arg1)]
    require ext_code.size(arg1)
    call arg1.destroy(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_679936eb[address(arg1)]
    require arg2 * sub_d42db98b / sub_679936eb[address(arg1)] > 0
    require ext_code.size(address(arg2 * sub_d42db98b / sub_679936eb[address(arg1)]))
    call address(arg2 * sub_d42db98b / sub_679936eb[address(arg1)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2 * sub_d42db98b / sub_679936eb[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_78af41ed(?) {
    if not sub_81eabec9.length:
        mem[(32 * sub_81eabec9.length) + 128] = 32
        mem[(32 * sub_81eabec9.length) + 160] = sub_81eabec9.length
        mem[(32 * sub_81eabec9.length) + 192 len floor32(sub_81eabec9.length)] = mem[128 len floor32(sub_81eabec9.length)]
        return memory
          from (32 * sub_81eabec9.length) + 128
           len (96 * sub_81eabec9.length) + 64
    mem[128] = address(sub_81eabec9.field_0)
    idx = 128
    s = 0
    while (32 * sub_81eabec9.length) + 96 > idx:
        mem[idx + 32] = sub_81eabec9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_81eabec9.length) + 192 len floor32(sub_81eabec9.length)] = mem[128 len floor32(sub_81eabec9.length)]
    return Array(len=sub_81eabec9.length, data=mem[128 len floor32(sub_81eabec9.length)], mem[(32 * sub_81eabec9.length) + floor32(sub_81eabec9.length) + 192 len (32 * sub_81eabec9.length) - floor32(sub_81eabec9.length)]), 
}

function verifyEIP20(address arg1) {
    mem[64] = ceil32(ext_code.size(arg1)) + 97
    mem[96] = ext_code.size(arg1)
    mem[128 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    if eIP20ByteCode.length != ext_code.size(arg1):
        return 0
    idx = 0
    while idx < ext_code.size(arg1):
        require idx < eIP20ByteCode.length
        if not bool(eIP20ByteCode.length):
            require idx < ext_code.size(arg1)
            if Mask(8, 248, mem[idx + 128]) == Mask(8, -(('field', 3, ('stor', ('length', ('name', 'eIP20ByteCode', 2)))), 0) + 256, idx) << (('field', 3, ('stor', ('length', ('name', 'eIP20ByteCode', 2)))), 0) - 8:
                idx = idx + 1
                continue 
        else:
            mem[0] = 2
            require idx < ext_code.size(arg1)
            if Mask(8, 248, mem[idx + 128]) == Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'eIP20ByteCode', 2)))), 0) + 256, idx % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'eIP20ByteCode', 2)))), 0) - 8:
                idx = idx + 1
                continue 
        return 0
    return 1
}

function sub_b4a47de2(?) {
    require sub_679936eb[address(arg1)]
    if sub_e176946bAddress == arg1:
        require sub_679936eb[address(arg2)]
        require ext_code.size(sub_e176946bAddress)
        call sub_e176946bAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_d42db98b
        require arg3 * sub_679936eb[address(arg2)] / sub_d42db98b > 0
        require ext_code.size(arg2)
        call arg2.create(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg3 * sub_679936eb[address(arg2)] / sub_d42db98b
    else:
        if sub_e176946bAddress != arg2:
            require sub_679936eb[address(arg1)]
            require arg3 * sub_679936eb[arg2] / sub_679936eb[address(arg1)] > 0
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
                args msg.sender, arg3 * sub_679936eb[arg2] / sub_679936eb[address(arg1)]
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
            require arg3 * sub_d42db98b / sub_679936eb[address(arg1)] > 0
            require ext_code.size(address(arg3 * sub_d42db98b / sub_679936eb[address(arg1)]))
            call address(arg3 * sub_d42db98b / sub_679936eb[address(arg1)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 * sub_d42db98b / sub_679936eb[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_4abcbe15(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require arg2 <= 18
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 3204] = code.data[3847 len 3204]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 3556 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 3556] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 3588 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[3847 len 3204], 0, 160, arg2 << 248, arg3.length + 192, arg1, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 3556 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 3588] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 3620 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[3847 len 3204], 0, 160, arg2 << 248, arg3.length + 192, arg1, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 3556 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 3556] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 3588 len arg3.length % 32]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 3588] = arg4.length
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 3620 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[3847 len 3204], 0, 160, arg2 << 248, floor32(arg3.length) + 224, arg1, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 3556 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 3620] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 3652 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[3847 len 3204], 0, 160, arg2 << 248, floor32(arg3.length) + 224, arg1, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 3556 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(created[msg.sender])++
    address(created[msg.sender][uint256(created[msg.sender])]) = address(create.new_address)
    stor1[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_679936eb[address(create.new_address)] = arg5 * 10^arg2
    require arg1 <= 21 * 10^9 * arg5 * 10^arg2 / 100 * 10^6
    tokenList.length++
    tokenList[tokenList.length] = address(create.new_address)
    sub_81eabec9.length++
    sub_81eabec9[sub_81eabec9.length].field_0 = address(create.new_address)
    return address(create.new_address)
}



}
