contract main {




// =====================  Runtime code  =====================


address sub_e5660c23Address;
address sub_143f743bAddress;
array of uint256 sub_f1fa0835;
address owner;
address otcAddress;

function sub_143f743b(?) {
    return sub_143f743bAddress
}

function otc() {
    return otcAddress
}

function owner() {
    return owner
}

function sub_9b6e7179(?) {
    return sub_f1fa0835.length
}

function sub_e5660c23(?) {
    return sub_e5660c23Address
}

function sub_f1fa0835(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_f1fa0835.length
    return sub_f1fa0835[arg1]
}

function _fallback() payable {
  stop
}

function set_owner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_83a2b6b7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(sub_143f743bAddress)
    call sub_143f743bAddress.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b8fdee96(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if -1 == arg2:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1fa9be70(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(sub_143f743bAddress)
    if arg1 != -1:
        call sub_143f743bAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        staticcall sub_143f743bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_143f743bAddress)
        call sub_143f743bAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_30b12189(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    if arg3 != -1:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_03cc4b14(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    idx = 0
    while idx < sub_f1fa0835.length:
        mem[0] = 2
        if sub_f1fa0835[idx] > 0:
            _15 = mem[64]
            mem[mem[64] + 36] = sub_f1fa0835[idx]
            _16 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_16 + 32] = mem[_16 + 36 len 28] or 0x40e58ee500000000000000000000000000000000000000000000000000000000
            _19 = mem[_16]
            t = _16 + 32
            u = _15 + 68
            s = mem[_16]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_15 + floor32(mem[_16]) + 68] = mem[_16 + -(mem[_16] % 32) + floor32(mem[_16]) + 64 len mem[_16] % 32] or Mask(8 * -(mem[_16] % 32) + 32, -(8 * -(mem[_16] % 32) + 32) + 256, mem[_15 + floor32(mem[_16]) + 68])
            call otcAddress.mem[_15 + 68 len 4] with:
                 gas gas_remaining wei
                args mem[_15 + 72 len _19 - 4]
            if return_data.size:
                mem[64] = _15 + ceil32(return_data.size) + 69
                mem[_15 + 68] = return_data.size
                mem[_15 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    sub_f1fa0835.length = 0
    idx = 0
    while sub_f1fa0835.length > idx:
        sub_f1fa0835[idx] = 0
        idx = idx + 1
        continue 
}

function sub_8f387b30(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == owner
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'Invalid input'
    idx = 0
    while idx < sub_f1fa0835.length:
        mem[0] = 2
        if sub_f1fa0835[idx] > 0:
            _280 = mem[64]
            mem[mem[64] + 36] = sub_f1fa0835[idx]
            _281 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_281 + 32] = mem[_281 + 36 len 28] or 0x40e58ee500000000000000000000000000000000000000000000000000000000
            _284 = mem[_281]
            t = _281 + 32
            u = _280 + 68
            s = mem[_281]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_280 + floor32(mem[_281]) + 68] = mem[_281 + -(mem[_281] % 32) + floor32(mem[_281]) + 64 len mem[_281] % 32] or Mask(8 * -(mem[_281] % 32) + 32, -(8 * -(mem[_281] % 32) + 32) + 256, mem[_280 + floor32(mem[_281]) + 68])
            call otcAddress.mem[_280 + 68 len 4] with:
                 gas gas_remaining wei
                args mem[_280 + 72 len _284 - 4]
            if return_data.size:
                mem[64] = _280 + ceil32(return_data.size) + 69
                mem[_280 + 68] = return_data.size
                mem[_280 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    s = ('cd', 4).length
    while s < sub_f1fa0835.length:
        mem[0] = 2
        sub_f1fa0835[s] = 0
        s = s + 1
        continue 
    sub_f1fa0835.length = ('cd', 4).length
    if sub_f1fa0835.length > ('cd', 4).length:
        s = ('cd', 4).length
        while sub_f1fa0835.length > s:
            sub_f1fa0835[s] = 0
            s = s + 1
            continue 
    require ext_code.size(sub_143f743bAddress)
    if eth.balance(this.address) > 0:
        call sub_143f743bAddress.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall sub_143f743bAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e5660c23Address)
    staticcall sub_e5660c23Address.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = ext_call.return_data[0]
    while idx < ('cd', 4).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        if not cd[((32 * idx) + cd[36] + 36)]:
            if cd[((32 * idx) + cd[68] + 36)]:
                if ext_call.return_data[0] >= 0:
                    if cd[((32 * idx) + cd[68] + 36)]:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = sub_e5660c23Address
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = sub_143f743bAddress
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 1
                        require ext_code.size(otcAddress)
                        call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                             gas gas_remaining wei
                            args 0, sub_e5660c23Address, cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, 0, 1
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 36] = sub_143f743bAddress
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = sub_e5660c23Address
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 1
                        require ext_code.size(otcAddress)
                        call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, 0, sub_e5660c23Address, 0, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < sub_f1fa0835.length
                    mem[0] = 2
                    sub_f1fa0835[idx] = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if s < cd[((32 * idx) + cd[4] + 36)]:
                idx = idx + 1
                s = s
                continue 
            if cd[((32 * idx) + cd[68] + 36)]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = sub_e5660c23Address
                mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 100] = sub_143f743bAddress
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 1
                require ext_code.size(otcAddress)
                call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args 0, sub_e5660c23Address, cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, 0, 1
            else:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = sub_143f743bAddress
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = sub_e5660c23Address
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 1
                require ext_code.size(otcAddress)
                call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, 0, sub_e5660c23Address, 0, 1
        else:
            require cd[((32 * idx) + cd[36] + 36)]
            if cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)] / cd[((32 * idx) + cd[36] + 36)] != cd[((32 * idx) + cd[4] + 36)]:
                revert with 0, 'ds-math-mul-overflow'
            if (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 < cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]:
                revert with 0, 'ds-math-add-overflow'
            if cd[((32 * idx) + cd[68] + 36)]:
                if ext_call.return_data[0] >= (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18:
                    if cd[((32 * idx) + cd[68] + 36)]:
                        mem[mem[64] + 4] = (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18
                        mem[mem[64] + 36] = sub_e5660c23Address
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = sub_143f743bAddress
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 1
                        require ext_code.size(otcAddress)
                        call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                             gas gas_remaining wei
                            args (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18, sub_e5660c23Address, cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, 0, 1
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 36] = sub_143f743bAddress
                        mem[mem[64] + 68] = (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18
                        mem[mem[64] + 100] = sub_e5660c23Address
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 1
                        require ext_code.size(otcAddress)
                        call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18, sub_e5660c23Address, 0, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < sub_f1fa0835.length
                    mem[0] = 2
                    sub_f1fa0835[idx] = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if s < cd[((32 * idx) + cd[4] + 36)]:
                idx = idx + 1
                s = s
                continue 
            if cd[((32 * idx) + cd[68] + 36)]:
                mem[mem[64] + 4] = (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18
                mem[mem[64] + 36] = sub_e5660c23Address
                mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 100] = sub_143f743bAddress
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 1
                require ext_code.size(otcAddress)
                call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18, sub_e5660c23Address, cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, 0, 1
            else:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = sub_143f743bAddress
                mem[mem[64] + 68] = (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18
                mem[mem[64] + 100] = sub_e5660c23Address
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 1
                require ext_code.size(otcAddress)
                call otcAddress.offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], sub_143f743bAddress, (cd[((32 * idx) + cd[4] + 36)] * cd[((32 * idx) + cd[36] + 36)]) + 5 * 10^17 / 10^18, sub_e5660c23Address, 0, 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_f1fa0835.length
        mem[0] = 2
        sub_f1fa0835[idx] = ext_call.return_data[0]
        idx = idx + 1
        s = s - cd[((32 * idx) + cd[4] + 36)]
        continue 
    if s > 0:
        require ext_code.size(sub_143f743bAddress)
        if s != -1:
            call sub_143f743bAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args s
        else:
            staticcall sub_143f743bAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_143f743bAddress)
            call sub_143f743bAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
