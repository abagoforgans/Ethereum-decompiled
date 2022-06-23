contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
mapping of uint8 stor2;
uint8 stor3;
address sub_bbcf588dAddress; offset 8
mapping of uint256 sub_88f707a5;
uint256 sub_d98c4a46;

function beneficiary() {
    return beneficiaryAddress
}

function sub_88f707a5(?) {
    return sub_88f707a5[arg1]
}

function owner() {
    return owner
}

function sub_bbcf588d(?) {
    return sub_bbcf588dAddress
}

function sub_d98c4a46(?) {
    return sub_d98c4a46
}

function managers(address arg1) {
    return bool(stor2[arg1])
}

function setManager(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor2[address(arg1)] = 1
}

function deleteManager(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor2[address(arg1)] = 0
}

function setBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function sub_19dad680(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    stor3 = 1
}

function sub_2e06bb6b(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    sub_d98c4a46 = arg1
}

function _fallback() {
    staticcall sub_bbcf588dAddress with:
         funct call.data[0 len 4]
            gas gas_remaining wei
           args call.data[4 len calldata.size - 4]
    require ext_call.success
    return ext_call.return_data[0 len return_data.size]
}

function withdrawalAll() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to null address is not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawal(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_127a5652(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.0x127a5652 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e3533422(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.0xe3533422 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_56fce427(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.0x56fce427 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_057617c4(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.0x57617c4 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 248, arg4, arg5 << 248, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3916d3b0(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.0x3916d3b0 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 248, arg4, arg5 << 248, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_532e7c33(?) {
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.'S.|3' with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_73e8de8d(?) {
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.getCurrentPeriod() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_88f707a5[address(arg1)]:
        s = 0
        s = 0
        s = 0
        idx = sub_88f707a5[address(arg1)] + 1
        s = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(sub_bbcf588dAddress)
            call sub_bbcf588dAddress.0x4c8f462e with:
                 gas gas_remaining wei
                args 0, idx, arg1
            mem[96 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[96] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[0] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[160] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            require ext_call.return_data[0]
            s = ext_call.return_data[160]
            s = ext_call.return_data[96]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
            continue 
    else:
        require ext_code.size(sub_bbcf588dAddress)
        call sub_bbcf588dAddress.0x6ce4248b with:
             gas gas_remaining wei
            args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            s = 0
            s = 0
            s = 0
            idx = mem[96] + 1
            s = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(sub_bbcf588dAddress)
                call sub_bbcf588dAddress.0x4c8f462e with:
                     gas gas_remaining wei
                    args 0, idx, arg1
                mem[96 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[96] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[160] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                require ext_call.return_data[0]
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                continue 
        else:
            require ext_code.size(sub_bbcf588dAddress)
            call sub_bbcf588dAddress.0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - 1 <= sub_d98c4a46:
                s = 0
                s = 0
                s = 0
                idx = sub_d98c4a46 + 1
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(sub_bbcf588dAddress)
                    call sub_bbcf588dAddress.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[96 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
            else:
                s = 0
                s = 0
                s = 0
                idx = mem[96]
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(sub_bbcf588dAddress)
                    call sub_bbcf588dAddress.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[96 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
    return s
}

function sub_877ebcdc(?) {
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.getCurrentPeriod() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_88f707a5[address(arg1)]:
        s = 0
        s = 0
        s = 0
        idx = sub_88f707a5[address(arg1)] + 1
        s = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(sub_bbcf588dAddress)
            call sub_bbcf588dAddress.0x4c8f462e with:
                 gas gas_remaining wei
                args 0, idx, arg1
            mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[96] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[0] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[160] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            require ext_call.return_data[0]
            s = ext_call.return_data[160]
            s = ext_call.return_data[96]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
            continue 
    else:
        require ext_code.size(sub_bbcf588dAddress)
        call sub_bbcf588dAddress.0x6ce4248b with:
             gas gas_remaining wei
            args arg1
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            s = 0
            s = 0
            s = 0
            idx = mem[(32 * arg2.length) + 128] + 1
            s = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(sub_bbcf588dAddress)
                call sub_bbcf588dAddress.0x4c8f462e with:
                     gas gas_remaining wei
                    args 0, idx, arg1
                mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[96] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[160] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                require ext_call.return_data[0]
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                continue 
        else:
            require ext_code.size(sub_bbcf588dAddress)
            call sub_bbcf588dAddress.0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - 1 <= sub_d98c4a46:
                s = 0
                s = 0
                s = 0
                idx = sub_d98c4a46 + 1
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(sub_bbcf588dAddress)
                    call sub_bbcf588dAddress.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
            else:
                s = 0
                s = 0
                s = 0
                idx = mem[(32 * arg2.length) + 128]
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(sub_bbcf588dAddress)
                    call sub_bbcf588dAddress.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
    return s
}

function sub_9fa24740(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.0x48324b9c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.getCurrentPeriod() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_88f707a5[address(arg1)]:
        s = 0
        s = 0
        s = 0
        idx = sub_88f707a5[address(arg1)] + 1
        s = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(sub_bbcf588dAddress)
            call sub_bbcf588dAddress.0x4c8f462e with:
                 gas gas_remaining wei
                args 0, idx, arg1
            mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[96] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[0] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[160] <= 0:
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                continue 
            require ext_call.return_data[0]
            s = ext_call.return_data[160]
            s = ext_call.return_data[96]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
            continue 
    else:
        require ext_code.size(sub_bbcf588dAddress)
        call sub_bbcf588dAddress.0x6ce4248b with:
             gas gas_remaining wei
            args arg1
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            s = 0
            s = 0
            s = 0
            idx = mem[(32 * arg2.length) + 128] + 1
            s = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(sub_bbcf588dAddress)
                call sub_bbcf588dAddress.0x4c8f462e with:
                     gas gas_remaining wei
                    args 0, idx, arg1
                mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[96] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[160] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                require ext_call.return_data[0]
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                continue 
        else:
            require ext_code.size(sub_bbcf588dAddress)
            call sub_bbcf588dAddress.0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - 1 <= sub_d98c4a46:
                s = 0
                s = 0
                s = 0
                idx = sub_d98c4a46 + 1
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(sub_bbcf588dAddress)
                    call sub_bbcf588dAddress.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
            else:
                s = 0
                s = 0
                s = 0
                idx = mem[(32 * arg2.length) + 128]
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(sub_bbcf588dAddress)
                    call sub_bbcf588dAddress.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[(32 * arg2.length) + 128 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
    require ext_code.size(sub_bbcf588dAddress)
    call sub_bbcf588dAddress.getCurrentPeriod() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_88f707a5[address(arg1)] = ext_call.return_data[0] - 1
    return s
}



}
