contract main {




// =====================  Runtime code  =====================


address sub_5680bab7Address;
array of address stor1;
array of address stor2;
array of uint256 stor3;
array of struct sub_a3e2b495;
array of struct sub_600bd62c;

function sub_39f724db(?) {
    return stor1.length
}

function sub_5680bab7(?) {
    return sub_5680bab7Address
}

function sub_600bd62c(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_600bd62c[arg1].field_0
    return sub_600bd62c[arg1][arg2].field_0
}

function owner() {
    return stor2.length
}

function sub_a3e2b495(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_a3e2b495.length
    return sub_a3e2b495[arg1].field_0, 
           address(sub_a3e2b495[arg1].field_256),
           address(sub_a3e2b495[arg1].field_512),
           sub_a3e2b495[arg1].field_768,
           sub_a3e2b495[arg1].field_1024,
           sub_a3e2b495[arg1].field_1280
}

function sub_ce45dd89(?) {
    return sub_a3e2b495.length
}

function creationTime() {
    return stor3.length
}

function _fallback() payable {
    revert
}

function sub_1793a5d1(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2.length
    require ext_code.size(stor1.length)
    call stor1.length.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_4f328532(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2.length
    require ext_code.size(stor1.length)
    call stor1.length.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1.length)
    call stor1.length.lockBalance(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_934329e1(?) {
    require calldata.size - 4 >= 64
    if sub_600bd62c[arg1][arg2].field_0:
        mem[200] = sub_600bd62c[arg1][arg2].field_0
        idx = 200
        s = 0
        while (32 * sub_600bd62c[arg1][arg2].field_0) + 168 > idx:
            mem[idx + 32] = sub_600bd62c[arg1][arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_600bd62c[arg1][arg2].field_0) + 264 len floor32(sub_600bd62c[arg1][arg2].field_0)] = mem[200 len floor32(sub_600bd62c[arg1][arg2].field_0)]
    return Array(len=sub_600bd62c[arg1][arg2].field_0, data=mem[200 len floor32(sub_600bd62c[arg1][arg2].field_0)], mem[(32 * sub_600bd62c[arg1][arg2].field_0) + floor32(sub_600bd62c[arg1][arg2].field_0) + 264 len (32 * sub_600bd62c[arg1][arg2].field_0) - floor32(sub_600bd62c[arg1][arg2].field_0)]), 
}

function getQuote(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if arg3:
        if arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Either returnAmount or depositAmount should be set'
    require 0 < sub_600bd62c[arg2][arg1].field_0
    require sub_600bd62c[arg2][arg1].field_0 < sub_a3e2b495.length
    if not sub_a3e2b495[stor5[arg2][arg1].field_0].field_1280:
        return address(this.address), address(arg2), 0, address(arg1), 0
    if arg3:
        if arg3:
            require arg3 * sub_a3e2b495[stor5[arg2][arg1].field_0].field_768 / arg3 == sub_a3e2b495[stor5[arg2][arg1].field_0].field_768
            require 10^sub_a3e2b495[stor5[arg2][arg1].field_0].field_1024 > 0
            if 10^sub_a3e2b495[stor5[arg2][arg1].field_0].field_1024:
                return address(this.address), 
                       address(arg2),
                       arg3 * sub_a3e2b495[stor5[arg2][arg1].field_0].field_768 / 10^sub_a3e2b495[stor5[arg2][arg1].field_0].field_1024,
                       address(arg1),
                       arg3
    else:
        if not arg4:
            return 0
        if arg4:
            require arg4 * 10^sub_a3e2b495[stor5[arg2][arg1].field_0].field_1024 / arg4 == 10^sub_a3e2b495[stor5[arg2][arg1].field_0].field_1024
            require sub_a3e2b495[stor5[arg2][arg1].field_0].field_768 > 0
            if sub_a3e2b495[stor5[arg2][arg1].field_0].field_768:
                return address(this.address), 
                       address(arg2),
                       arg4,
                       address(arg1),
                       arg4 * 10^sub_a3e2b495[stor5[arg2][arg1].field_0].field_1024 / sub_a3e2b495[stor5[arg2][arg1].field_0].field_768
    revert
}

function sub_ceb231c0(?) payable {
    require calldata.size - 4 >= 160
    require msg.sender == stor2.length
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deposit token and return token cannot be the same.'
    if not arg2:
        revert with 0, 'Return token should not be ETH.'
    if not arg1:
        if arg5 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Specified deposit amount does not match value.'
    else:
        if msg.value:
            revert with 0, 'Ether amount needs to be zero'
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg5
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_5680bab7Address, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Swap Contract approval failed'
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_a3e2b495.length++
    sub_a3e2b495[sub_a3e2b495.length].field_0 = sub_a3e2b495.length
    address(sub_a3e2b495[sub_a3e2b495.length].field_256) = arg1
    address(sub_a3e2b495[sub_a3e2b495.length].field_512) = arg2
    sub_a3e2b495[sub_a3e2b495.length].field_768 = arg3
    sub_a3e2b495[sub_a3e2b495.length].field_1024 = arg4
    sub_a3e2b495[sub_a3e2b495.length].field_1280 = arg5
    if not sub_600bd62c[arg1][arg2].field_0:
        sub_600bd62c[arg1][arg2].field_0 = 0
        idx = 0
        while sub_600bd62c[arg1][arg2].field_0 > idx:
            sub_600bd62c[arg1][arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_600bd62c[arg1][arg2].field_0++
    sub_600bd62c[arg1][arg2][sub_600bd62c[arg1][arg2].field_0].field_0 = sub_a3e2b495.length
    emit 0x6b46d374: address(arg1), address(arg2), arg3, arg4, arg5
}

function cancel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2.length
    require arg1 < sub_a3e2b495.length
    if not address(sub_a3e2b495[arg1].field_256):
        call msg.sender with:
           value sub_a3e2b495[arg1].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(sub_a3e2b495[arg1].field_256))
        call address(sub_a3e2b495[arg1].field_256).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_a3e2b495[arg1].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
    idx = 0
    while idx < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0:
        require idx < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0
        if sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)][idx].field_0 != sub_a3e2b495[arg1].field_0:
            mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
            mem[32] = 5
            idx = idx + 1
            continue 
        require sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 - 1 < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0
        require idx < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0
        sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)][idx].field_0 = sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)][sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0].field_0
        sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0--
        if sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 > sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 - 1:
            mem[0] = sha3(sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512)), 5)
            idx = sha3(mem[0]) + sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 - 1
            while sha3(sha3(sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512)), 5)) + sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 > idx:
                stor[idx] = 0
                mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
                mem[32] = 5
                idx = idx + 1
                continue 
        require sub_a3e2b495.length - 1 < sub_a3e2b495.length
        require sub_a3e2b495[arg1].field_0 < sub_a3e2b495.length
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_0 = sub_a3e2b495[sub_a3e2b495.length].field_0
        address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_256) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
        address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_512) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_768 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1024 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1280 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495.length--
        if sub_a3e2b495.length > sub_a3e2b495.length - 1:
            mem[0] = 4
            idx = sha3(mem[0]) + (6 * sub_a3e2b495.length) - 6
            while sha3(4) + (6 * sub_a3e2b495.length) > idx:
                stor[idx] = 0
                stor1[idx] = 0
                stor2[idx] = 0
                stor3[idx] = 0
                sub_a3e2b495[idx].field_0 = 0
                sub_600bd62c[idx].field_0 = 0
                mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
                mem[32] = 5
                idx = idx + 6
                continue 
        emit 0x48f5e0e6: address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512), sub_a3e2b495[arg1].field_768, sub_a3e2b495[arg1].field_1024, sub_a3e2b495[arg1].field_1280
    require sub_a3e2b495.length - 1 < sub_a3e2b495.length
    require sub_a3e2b495[arg1].field_0 < sub_a3e2b495.length
    sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_0 = sub_a3e2b495[sub_a3e2b495.length].field_0
    address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_256) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
    address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_512) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
    sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_768 = sub_a3e2b495[sub_a3e2b495.length].field_0
    sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1024 = sub_a3e2b495[sub_a3e2b495.length].field_0
    sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1280 = sub_a3e2b495[sub_a3e2b495.length].field_0
    sub_a3e2b495.length--
    if sub_a3e2b495.length > sub_a3e2b495.length - 1:
        idx = (6 * sub_a3e2b495.length) - 6
        while 6 * sub_a3e2b495.length > idx:
            sub_a3e2b495[idx].field_0 = 0
            address(sub_a3e2b495[idx].field_256) = 0
            address(sub_a3e2b495[idx].field_512) = 0
            sub_a3e2b495[idx].field_768 = 0
            sub_a3e2b495[idx].field_1024 = 0
            sub_a3e2b495[idx].field_1280 = 0
            idx = idx + 6
            continue 
    emit 0x48f5e0e6: address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512), sub_a3e2b495[arg1].field_768, sub_a3e2b495[arg1].field_1024, sub_a3e2b495[arg1].field_1280
}

function sub_89e5e13a(?) {
    require calldata.size - 4 >= 256
    if msg.sender != msg.sender:
        revert with 0, 'Sender must be returnAddress.'
    require this.address == this.address
    require arg1 < sub_a3e2b495.length
    if sub_a3e2b495[arg1].field_1280 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reserve contract insufficient funds.'
    if not arg2:
        require sub_a3e2b495[arg1].field_768 > 0
        require sub_a3e2b495[arg1].field_768
        if 0 / sub_a3e2b495[arg1].field_768 != arg3:
            revert with 0, 'Calculated price discrepancy'
    else:
        require arg2
        require arg2 * 10^sub_a3e2b495[arg1].field_1024 / arg2 == 10^sub_a3e2b495[arg1].field_1024
        require sub_a3e2b495[arg1].field_768 > 0
        require sub_a3e2b495[arg1].field_768
        if arg2 * 10^sub_a3e2b495[arg1].field_1024 / sub_a3e2b495[arg1].field_768 != arg3:
            revert with 0, 'Calculated price discrepancy'
    require ext_code.size(sub_5680bab7Address)
    if address(sub_a3e2b495[arg1].field_256):
        call sub_5680bab7Address.0x1d4d691d with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg3, address(sub_a3e2b495[arg1].field_512), this.address, arg2, address(sub_a3e2b495[arg1].field_256), arg4, arg5, arg6 << 248, arg7, arg8
    else:
        call sub_5680bab7Address.0x1d4d691d with:
           value arg2 wei
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg3, address(sub_a3e2b495[arg1].field_512), this.address, arg2, address(sub_a3e2b495[arg1].field_256), arg4, arg5, arg6 << 248, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_a3e2b495[arg1].field_512))
    call address(sub_a3e2b495[arg1].field_512).0xa9059cbb with:
         gas gas_remaining wei
        args stor2.length, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer back to owner'
    require arg2 <= sub_a3e2b495[arg1].field_1280
    if sub_a3e2b495[arg1].field_1280 - arg2:
        require arg2 <= sub_a3e2b495[arg1].field_1280
        sub_a3e2b495[arg1].field_1280 -= arg2
    else:
        mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
        idx = 0
        while idx < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0:
            require idx < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0
            if sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)][idx].field_0 != sub_a3e2b495[arg1].field_0:
                mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
                mem[32] = 5
                idx = idx + 1
                continue 
            require sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 - 1 < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0
            require idx < sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0
            sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)][idx].field_0 = sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)][sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0].field_0
            sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0--
            if sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 > sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 - 1:
                mem[0] = sha3(sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512)), 5)
                idx = sha3(mem[0]) + sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 - 1
                while sha3(sha3(sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512)), 5)) + sub_600bd62c[address(stor4[arg1].field_256)][address(stor4[arg1].field_512)].field_0 > idx:
                    stor[idx] = 0
                    mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
                    mem[32] = 5
                    idx = idx + 1
                    continue 
            require sub_a3e2b495.length - 1 < sub_a3e2b495.length
            require sub_a3e2b495[arg1].field_0 < sub_a3e2b495.length
            sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_0 = sub_a3e2b495[sub_a3e2b495.length].field_0
            address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_256) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
            address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_512) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
            sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_768 = sub_a3e2b495[sub_a3e2b495.length].field_0
            sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1024 = sub_a3e2b495[sub_a3e2b495.length].field_0
            sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1280 = sub_a3e2b495[sub_a3e2b495.length].field_0
            sub_a3e2b495.length--
            if sub_a3e2b495.length > sub_a3e2b495.length - 1:
                mem[0] = 4
                idx = sha3(mem[0]) + (6 * sub_a3e2b495.length) - 6
                while sha3(4) + (6 * sub_a3e2b495.length) > idx:
                    stor[idx] = 0
                    stor1[idx] = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    sub_a3e2b495[idx].field_0 = 0
                    sub_600bd62c[idx].field_0 = 0
                    mem[0] = sha3(address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512))
                    mem[32] = 5
                    idx = idx + 6
                    continue 
            emit 0x1f335acb: address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512), arg2, arg3
        require sub_a3e2b495.length - 1 < sub_a3e2b495.length
        require sub_a3e2b495[arg1].field_0 < sub_a3e2b495.length
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_0 = sub_a3e2b495[sub_a3e2b495.length].field_0
        address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_256) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
        address(sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_512) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_768 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1024 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495[sub_a3e2b495[arg1].field_0].field_1280 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495.length--
        if sub_a3e2b495.length > sub_a3e2b495.length - 1:
            idx = (6 * sub_a3e2b495.length) - 6
            while 6 * sub_a3e2b495.length > idx:
                sub_a3e2b495[idx].field_0 = 0
                address(sub_a3e2b495[idx].field_256) = 0
                address(sub_a3e2b495[idx].field_512) = 0
                sub_a3e2b495[idx].field_768 = 0
                sub_a3e2b495[idx].field_1024 = 0
                sub_a3e2b495[idx].field_1280 = 0
                idx = idx + 6
                continue 
    emit 0x1f335acb: address(sub_a3e2b495[arg1].field_256), address(sub_a3e2b495[arg1].field_512), arg2, arg3
}

function fill(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, uint8 arg9, bytes32 arg10, bytes32 arg11) {
    require calldata.size - 4 >= 352
    require 0 < sub_600bd62c[arg6][arg3].field_0
    if arg1 != msg.sender:
        revert with 0, 'Sender must be returnAddress.'
    require arg4 == this.address
    require sub_600bd62c[arg6][arg3].field_0 < sub_a3e2b495.length
    if sub_a3e2b495[stor5[arg6][arg3].field_0].field_1280 < arg5:
        revert with 0, 'Reserve contract insufficient funds.'
    if not arg5:
        require sub_a3e2b495[stor5[arg6][arg3].field_0].field_768 > 0
        require sub_a3e2b495[stor5[arg6][arg3].field_0].field_768
        if 0 / sub_a3e2b495[stor5[arg6][arg3].field_0].field_768 != arg2:
            revert with 0, 'Calculated price discrepancy'
    else:
        require arg5
        require arg5 * 10^sub_a3e2b495[stor5[arg6][arg3].field_0].field_1024 / arg5 == 10^sub_a3e2b495[stor5[arg6][arg3].field_0].field_1024
        require sub_a3e2b495[stor5[arg6][arg3].field_0].field_768 > 0
        require sub_a3e2b495[stor5[arg6][arg3].field_0].field_768
        if arg5 * 10^sub_a3e2b495[stor5[arg6][arg3].field_0].field_1024 / sub_a3e2b495[stor5[arg6][arg3].field_0].field_768 != arg2:
            revert with 0, 'Calculated price discrepancy'
    require ext_code.size(sub_5680bab7Address)
    if address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256):
        call sub_5680bab7Address.0x1d4d691d with:
             gas gas_remaining wei
            args address(arg1), arg2, address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512), address(arg4), arg5, address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), arg7, arg8, arg9 << 248, arg10, arg11
    else:
        call sub_5680bab7Address.0x1d4d691d with:
           value arg5 wei
             gas gas_remaining wei
            args address(arg1), arg2, address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512), address(arg4), arg5, address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), arg7, arg8, arg9 << 248, arg10, arg11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512))
    call address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512).0xa9059cbb with:
         gas gas_remaining wei
        args stor2.length, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer back to owner'
    require arg5 <= sub_a3e2b495[stor5[arg6][arg3].field_0].field_1280
    if sub_a3e2b495[stor5[arg6][arg3].field_0].field_1280 - arg5:
        require arg5 <= sub_a3e2b495[stor5[arg6][arg3].field_0].field_1280
        sub_a3e2b495[stor5[arg6][arg3].field_0].field_1280 -= arg5
    else:
        mem[0] = sha3(address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512))
        idx = 0
        while idx < sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0:
            require idx < sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0
            if sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)][idx].field_0 != sub_a3e2b495[stor5[arg6][arg3].field_0].field_0:
                mem[0] = sha3(address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512))
                mem[32] = 5
                idx = idx + 1
                continue 
            require sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0 - 1 < sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0
            require idx < sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0
            sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)][idx].field_0 = sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)][sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0].field_0
            sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0--
            if sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0 > sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0 - 1:
                mem[0] = sha3(sha3(address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512)), 5)
                idx = sha3(mem[0]) + sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0 - 1
                while sha3(sha3(sha3(address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512)), 5)) + sub_600bd62c[address(stor4[sub_600bd62c[arg6][arg3].field_0].field_256)][address(stor4[sub_600bd62c[arg6][arg3].field_0].field_512)].field_0 > idx:
                    stor[idx] = 0
                    mem[0] = sha3(address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512))
                    mem[32] = 5
                    idx = idx + 1
                    continue 
            require sub_a3e2b495.length - 1 < sub_a3e2b495.length
            require sub_a3e2b495[stor5[arg6][arg3].field_0].field_0 < sub_a3e2b495.length
            sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_0 = sub_a3e2b495[sub_a3e2b495.length].field_0
            address(sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_256) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
            address(sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_512) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
            sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_768 = sub_a3e2b495[sub_a3e2b495.length].field_0
            sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_1024 = sub_a3e2b495[sub_a3e2b495.length].field_0
            sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_1280 = sub_a3e2b495[sub_a3e2b495.length].field_0
            sub_a3e2b495.length--
            if sub_a3e2b495.length > sub_a3e2b495.length - 1:
                mem[0] = 4
                idx = sha3(mem[0]) + (6 * sub_a3e2b495.length) - 6
                while sha3(4) + (6 * sub_a3e2b495.length) > idx:
                    stor[idx] = 0
                    stor1[idx] = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    sub_a3e2b495[idx].field_0 = 0
                    sub_600bd62c[idx].field_0 = 0
                    mem[0] = sha3(address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512))
                    mem[32] = 5
                    idx = idx + 6
                    continue 
            emit 0x1f335acb: address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512), arg5, arg2
        require sub_a3e2b495.length - 1 < sub_a3e2b495.length
        require sub_a3e2b495[stor5[arg6][arg3].field_0].field_0 < sub_a3e2b495.length
        sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_0 = sub_a3e2b495[sub_a3e2b495.length].field_0
        address(sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_256) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
        address(sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_512) = address(sub_a3e2b495[sub_a3e2b495.length].field_0)
        sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_768 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_1024 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495[sub_a3e2b495[stor5[arg6][arg3].field_0].field_0].field_1280 = sub_a3e2b495[sub_a3e2b495.length].field_0
        sub_a3e2b495.length--
        if sub_a3e2b495.length > sub_a3e2b495.length - 1:
            idx = (6 * sub_a3e2b495.length) - 6
            while 6 * sub_a3e2b495.length > idx:
                sub_a3e2b495[idx].field_0 = 0
                address(sub_a3e2b495[idx].field_256) = 0
                address(sub_a3e2b495[idx].field_512) = 0
                sub_a3e2b495[idx].field_768 = 0
                sub_a3e2b495[idx].field_1024 = 0
                sub_a3e2b495[idx].field_1280 = 0
                idx = idx + 6
                continue 
    emit 0x1f335acb: address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_256), address(sub_a3e2b495[stor5[arg6][arg3].field_0].field_512), arg5, arg2
}



}
