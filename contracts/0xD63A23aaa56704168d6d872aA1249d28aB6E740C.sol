contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
mapping of uint8 stor2;
uint8 stor3;
address stor3; offset 8
mapping of uint256 sub_88f707a5;

function beneficiary() {
    return beneficiaryAddress
}

function sub_88f707a5(?) {
    return sub_88f707a5[arg1]
}

function owner() {
    return owner
}

function managers(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
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
    uint8(stor3.field_0) = 1
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
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x127a5652 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e3533422(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0xe3533422 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_56fce427(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x56fce427 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_057617c4(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x57617c4 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 248, arg4, arg5 << 248, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3916d3b0(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x3916d3b0 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 248, arg4, arg5 << 248, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_532e7c33(?) {
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).'S.|3' with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_73e8de8d(?) payable {
    mem[64] = 96
    require not msg.value
    mem[0] = arg1
    mem[32] = 4
    if sub_88f707a5[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        require ext_code.size(address(stor3.field_8))
        call address(stor3.field_8).getCurrentPeriod() with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_88f707a5[address(arg1)]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                _79 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_79 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                mem[_79 + 36] = arg1
                mem[_79 + 68] = idx
                mem[_79 + 100] = 96
                mem[_79 + 132] = mem[_79]
                t = 0
                while t < 32 * mem[_79]:
                    mem[t + _79 + 164] = mem[t + _79 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3.field_8))
                call address(stor3.field_8).0xf45c0946 with:
                     gas gas_remaining wei
                    args address(arg1), idx, 96, mem[_79 + 132 len (32 * mem[_79]) + 32]
                mem[_79 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
        else:
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0xd98c4a46 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = arg1
            mem[132] = 0
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _81 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_81 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_81 + 36] = arg1
                    mem[_81 + 68] = idx
                    mem[_81 + 100] = 96
                    mem[_81 + 132] = mem[_81]
                    t = 0
                    while t < 32 * mem[_81]:
                        mem[t + _81 + 164] = mem[t + _81 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[_81]) + _81 + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
            else:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _83 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_83 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_83 + 36] = arg1
                    mem[_83 + 68] = idx
                    mem[_83 + 100] = 96
                    mem[_83 + 132] = mem[_83]
                    t = 0
                    while t < 32 * mem[_83]:
                        mem[t + _83 + 164] = mem[t + _83 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[_83]) + _83 + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
    else:
        mem[100] = arg1
        require ext_code.size(address(stor3.field_8))
        call address(stor3.field_8).0x6ce4248b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor3.field_8))
        call address(stor3.field_8).getCurrentPeriod() with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                _85 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_85 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                mem[_85 + 36] = arg1
                mem[_85 + 68] = idx
                mem[_85 + 100] = 96
                mem[_85 + 132] = mem[_85]
                t = 0
                while t < 32 * mem[_85]:
                    mem[t + _85 + 164] = mem[t + _85 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3.field_8))
                call address(stor3.field_8).0xf45c0946 with:
                     gas gas_remaining wei
                    args address(arg1), idx, 96, mem[_85 + 132 len (32 * mem[_85]) + 32]
                mem[_85 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
        else:
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0xd98c4a46 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = arg1
            mem[132] = 0
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _87 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_87 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_87 + 36] = arg1
                    mem[_87 + 68] = idx
                    mem[_87 + 100] = 96
                    mem[_87 + 132] = mem[_87]
                    t = 0
                    while t < 32 * mem[_87]:
                        mem[t + _87 + 164] = mem[t + _87 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).0xf45c0946 with:
                         gas gas_remaining wei
                        args address(arg1), idx, 96, mem[_87 + 132 len (32 * mem[_87]) + 32]
                    mem[_87 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
            else:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _89 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_89 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_89 + 36] = arg1
                    mem[_89 + 68] = idx
                    mem[_89 + 100] = 96
                    mem[_89 + 132] = mem[_89]
                    t = 0
                    while t < 32 * mem[_89]:
                        mem[t + _89 + 164] = mem[t + _89 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[_89]) + _89 + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
    return s
}

function sub_9fa24740(?) {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x48324b9c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = arg1
    mem[32] = 4
    if sub_88f707a5[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        require ext_code.size(address(stor3.field_8))
        call address(stor3.field_8).getCurrentPeriod() with:
             gas gas_remaining wei
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_88f707a5[address(arg1)]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                _112 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_112 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                mem[_112 + 36] = arg1
                mem[_112 + 68] = idx
                mem[_112 + 100] = 96
                mem[_112 + 132] = mem[_112]
                t = 0
                while t < 32 * mem[_112]:
                    mem[t + _112 + 164] = mem[t + _112 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3.field_8))
                call address(stor3.field_8).0xf45c0946 with:
                     gas gas_remaining wei
                    args address(arg1), idx, 96, mem[_112 + 132 len (32 * mem[_112]) + 32]
                mem[_112 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
        else:
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0xd98c4a46 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = 0
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _114 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_114 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_114 + 36] = arg1
                    mem[_114 + 68] = idx
                    mem[_114 + 100] = 96
                    mem[_114 + 132] = mem[_114]
                    t = 0
                    while t < 32 * mem[_114]:
                        mem[t + _114 + 164] = mem[t + _114 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).0xf45c0946 with:
                         gas gas_remaining wei
                        args address(arg1), idx, 96, mem[_114 + 132 len (32 * mem[_114]) + 32]
                    mem[_114 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
            else:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _116 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_116 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_116 + 36] = arg1
                    mem[_116 + 68] = idx
                    mem[_116 + 100] = 96
                    mem[_116 + 132] = mem[_116]
                    t = 0
                    while t < 32 * mem[_116]:
                        mem[t + _116 + 164] = mem[t + _116 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).0xf45c0946 with:
                         gas gas_remaining wei
                        args address(arg1), idx, 96, mem[_116 + 132 len (32 * mem[_116]) + 32]
                    mem[_116 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
    else:
        mem[(32 * arg2.length) + 132] = arg1
        require ext_code.size(address(stor3.field_8))
        call address(stor3.field_8).0x6ce4248b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor3.field_8))
        call address(stor3.field_8).getCurrentPeriod() with:
             gas gas_remaining wei
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                _118 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_118 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                mem[_118 + 36] = arg1
                mem[_118 + 68] = idx
                mem[_118 + 100] = 96
                mem[_118 + 132] = mem[_118]
                t = 0
                while t < 32 * mem[_118]:
                    mem[t + _118 + 164] = mem[t + _118 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(stor3.field_8))
                call address(stor3.field_8).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[_118]) + _118 + -mem[64] + 160]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
        else:
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0xd98c4a46 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = 0
            require ext_code.size(address(stor3.field_8))
            call address(stor3.field_8).0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _120 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_120 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_120 + 36] = arg1
                    mem[_120 + 68] = idx
                    mem[_120 + 100] = 96
                    mem[_120 + 132] = mem[_120]
                    t = 0
                    while t < 32 * mem[_120]:
                        mem[t + _120 + 164] = mem[t + _120 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[_120]) + _120 + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
            else:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    _122 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_122 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_122 + 36] = arg1
                    mem[_122 + 68] = idx
                    mem[_122 + 100] = 96
                    mem[_122 + 132] = mem[_122]
                    t = 0
                    while t < 32 * mem[_122]:
                        mem[t + _122 + 164] = mem[t + _122 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).0xf45c0946 with:
                         gas gas_remaining wei
                        args address(arg1), idx, 96, mem[_122 + 132 len (32 * mem[_122]) + 32]
                    mem[_122 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).getCurrentPeriod() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_88f707a5[address(arg1)] = ext_call.return_data[0]
    return s
}



}
