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
            idx = sub_88f707a5[address(arg1)]
            while idx < ext_call.return_data[0]:
                if sub_88f707a5[address(arg1)]:
                    _175 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_175 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_175 + 36] = arg1
                    mem[_175 + 68] = idx
                    mem[_175 + 100] = 96
                    mem[_175 + 132] = mem[_175]
                    s = 0
                    while s < 32 * mem[_175]:
                        mem[s + _175 + 164] = mem[s + _175 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).0xf45c0946 with:
                         gas gas_remaining wei
                        args address(arg1), idx, 96, mem[_175 + 132 len (32 * mem[_175]) + 32]
                    mem[_175 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if idx != sub_88f707a5[address(arg1)]:
                        _187 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_187 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                        mem[_187 + 36] = arg1
                        mem[_187 + 68] = idx
                        mem[_187 + 100] = 96
                        mem[_187 + 132] = mem[_187]
                        s = 0
                        while s < 32 * mem[_187]:
                            mem[s + _187 + 164] = mem[s + _187 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[_187]) + _187 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = idx
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).0x7ee9f5bf with:
                             gas gas_remaining wei
                            args address(arg1), idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            _255 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_255 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                            mem[_255 + 36] = arg1
                            mem[_255 + 68] = idx
                            mem[_255 + 100] = 96
                            mem[_255 + 132] = mem[_255]
                            s = 0
                            while s < 32 * mem[_255]:
                                mem[s + _255 + 164] = mem[s + _255 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[_255]) + _255 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                idx = idx + 1
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
                idx = ext_call.return_data[0]
                while idx < ext_call.return_data[0]:
                    if ext_call.return_data[0] != ext_call.return_data[0]:
                        _177 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_177 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                        mem[_177 + 36] = arg1
                        mem[_177 + 68] = idx
                        mem[_177 + 100] = 96
                        mem[_177 + 132] = mem[_177]
                        s = 0
                        while s < 32 * mem[_177]:
                            mem[s + _177 + 164] = mem[s + _177 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[_177]) + _177 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if idx != ext_call.return_data[0]:
                            _191 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_191 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                            mem[_191 + 36] = arg1
                            mem[_191 + 68] = idx
                            mem[_191 + 100] = 96
                            mem[_191 + 132] = mem[_191]
                            s = 0
                            while s < 32 * mem[_191]:
                                mem[s + _191 + 164] = mem[s + _191 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[_191]) + _191 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).0x7ee9f5bf with:
                                 gas gas_remaining wei
                                args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                _259 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_259 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                                mem[_259 + 36] = arg1
                                mem[_259 + 68] = idx
                                mem[_259 + 100] = 96
                                mem[_259 + 132] = mem[_259]
                                s = 0
                                while s < 32 * mem[_259]:
                                    mem[s + _259 + 164] = mem[s + _259 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(stor3.field_8))
                                call address(stor3.field_8).0xf45c0946 with:
                                     gas gas_remaining wei
                                    args address(arg1), idx, 96, mem[_259 + 132 len (32 * mem[_259]) + 32]
                                mem[_259 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    idx = idx + 1
                    continue 
            else:
                idx = mem[mem[64]]
                while idx < ext_call.return_data[0]:
                    if ext_call.return_data[0] != ext_call.return_data[0]:
                        _179 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_179 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                        mem[_179 + 36] = arg1
                        mem[_179 + 68] = idx
                        mem[_179 + 100] = 96
                        mem[_179 + 132] = mem[_179]
                        s = 0
                        while s < 32 * mem[_179]:
                            mem[s + _179 + 164] = mem[s + _179 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[_179]) + _179 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if idx != ext_call.return_data[0]:
                            _195 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_195 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                            mem[_195 + 36] = arg1
                            mem[_195 + 68] = idx
                            mem[_195 + 100] = 96
                            mem[_195 + 132] = mem[_195]
                            s = 0
                            while s < 32 * mem[_195]:
                                mem[s + _195 + 164] = mem[s + _195 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[_195]) + _195 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).0x7ee9f5bf with:
                                 gas gas_remaining wei
                                args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                _263 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_263 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                                mem[_263 + 36] = arg1
                                mem[_263 + 68] = idx
                                mem[_263 + 100] = 96
                                mem[_263 + 132] = mem[_263]
                                s = 0
                                while s < 32 * mem[_263]:
                                    mem[s + _263 + 164] = mem[s + _263 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(stor3.field_8))
                                call address(stor3.field_8).0xf45c0946 with:
                                     gas gas_remaining wei
                                    args address(arg1), idx, 96, mem[_263 + 132 len (32 * mem[_263]) + 32]
                                mem[_263 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    idx = idx + 1
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
            idx = ext_call.return_data[0]
            while idx < ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    _181 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_181 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                    mem[_181 + 36] = arg1
                    mem[_181 + 68] = idx
                    mem[_181 + 100] = 96
                    mem[_181 + 132] = mem[_181]
                    s = 0
                    while s < 32 * mem[_181]:
                        mem[s + _181 + 164] = mem[s + _181 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(stor3.field_8))
                    call address(stor3.field_8).0xf45c0946 with:
                         gas gas_remaining wei
                        args address(arg1), idx, 96, mem[_181 + 132 len (32 * mem[_181]) + 32]
                    mem[_181 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if idx != ext_call.return_data[0]:
                        _199 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_199 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                        mem[_199 + 36] = arg1
                        mem[_199 + 68] = idx
                        mem[_199 + 100] = 96
                        mem[_199 + 132] = mem[_199]
                        s = 0
                        while s < 32 * mem[_199]:
                            mem[s + _199 + 164] = mem[s + _199 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[_199]) + _199 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = idx
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).0x7ee9f5bf with:
                             gas gas_remaining wei
                            args address(arg1), idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            _267 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_267 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                            mem[_267 + 36] = arg1
                            mem[_267 + 68] = idx
                            mem[_267 + 100] = 96
                            mem[_267 + 132] = mem[_267]
                            s = 0
                            while s < 32 * mem[_267]:
                                mem[s + _267 + 164] = mem[s + _267 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).0xf45c0946 with:
                                 gas gas_remaining wei
                                args address(arg1), idx, 96, mem[_267 + 132 len (32 * mem[_267]) + 32]
                            mem[_267 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                idx = idx + 1
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
                idx = ext_call.return_data[0]
                while idx < ext_call.return_data[0]:
                    if ext_call.return_data[0] != ext_call.return_data[0]:
                        _183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_183 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                        mem[_183 + 36] = arg1
                        mem[_183 + 68] = idx
                        mem[_183 + 100] = 96
                        mem[_183 + 132] = mem[_183]
                        s = 0
                        while s < 32 * mem[_183]:
                            mem[s + _183 + 164] = mem[s + _183 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).0xf45c0946 with:
                             gas gas_remaining wei
                            args address(arg1), idx, 96, mem[_183 + 132 len (32 * mem[_183]) + 32]
                        mem[_183 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if idx != ext_call.return_data[0]:
                            _203 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_203 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                            mem[_203 + 36] = arg1
                            mem[_203 + 68] = idx
                            mem[_203 + 100] = 96
                            mem[_203 + 132] = mem[_203]
                            s = 0
                            while s < 32 * mem[_203]:
                                mem[s + _203 + 164] = mem[s + _203 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[_203]) + _203 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).0x7ee9f5bf with:
                                 gas gas_remaining wei
                                args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                _271 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_271 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                                mem[_271 + 36] = arg1
                                mem[_271 + 68] = idx
                                mem[_271 + 100] = 96
                                mem[_271 + 132] = mem[_271]
                                s = 0
                                while s < 32 * mem[_271]:
                                    mem[s + _271 + 164] = mem[s + _271 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(stor3.field_8))
                                call address(stor3.field_8).0xf45c0946 with:
                                     gas gas_remaining wei
                                    args address(arg1), idx, 96, mem[_271 + 132 len (32 * mem[_271]) + 32]
                                mem[_271 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    idx = idx + 1
                    continue 
            else:
                idx = mem[mem[64]]
                while idx < ext_call.return_data[0]:
                    if ext_call.return_data[0] != ext_call.return_data[0]:
                        _185 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_185 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                        mem[_185 + 36] = arg1
                        mem[_185 + 68] = idx
                        mem[_185 + 100] = 96
                        mem[_185 + 132] = mem[_185]
                        s = 0
                        while s < 32 * mem[_185]:
                            mem[s + _185 + 164] = mem[s + _185 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(stor3.field_8))
                        call address(stor3.field_8).0xf45c0946 with:
                             gas gas_remaining wei
                            args address(arg1), idx, 96, mem[_185 + 132 len (32 * mem[_185]) + 32]
                        mem[_185 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if idx != ext_call.return_data[0]:
                            _207 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_207 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                            mem[_207 + 36] = arg1
                            mem[_207 + 68] = idx
                            mem[_207 + 100] = 96
                            mem[_207 + 132] = mem[_207]
                            s = 0
                            while s < 32 * mem[_207]:
                                mem[s + _207 + 164] = mem[s + _207 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[_207]) + _207 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(stor3.field_8))
                            call address(stor3.field_8).0x7ee9f5bf with:
                                 gas gas_remaining wei
                                args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                _275 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_275 + 32] = 0xf45c094600000000000000000000000000000000000000000000000000000000
                                mem[_275 + 36] = arg1
                                mem[_275 + 68] = idx
                                mem[_275 + 100] = 96
                                mem[_275 + 132] = mem[_275]
                                s = 0
                                while s < 32 * mem[_275]:
                                    mem[s + _275 + 164] = mem[s + _275 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(stor3.field_8))
                                call address(stor3.field_8).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (32 * mem[_275]) + _275 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    idx = idx + 1
                    continue 
    return 0
}



}
