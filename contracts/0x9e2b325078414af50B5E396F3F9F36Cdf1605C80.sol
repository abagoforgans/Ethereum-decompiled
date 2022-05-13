contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address stor6;
uint8 stor7; offset 160
address stor7;
mapping of uint8 stor8;
uint8 stor9;
uint256 stor10;
uint256 stor11;
mapping of struct stor12;
address stor13;
address stor14;
address stor15;
uint256 stor16;
array of uint256 stor17;
bool stor18; offset 256
uint32 stor18;
uint8 stor19;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getIsSendingLocked(address arg1) {
    return bool(stor8[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getIsAllTransfersLocked() {
    return bool(stor9)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    require stor19
    emit LogTokenPayable(0, stor13, stor14, stor16);
}

function setIsAllTransfersLocked(bool arg1) {
    require msg.sender == stor6
    stor9 = uint8(arg1)
}

function setIsSendingLocked(address arg1, bool arg2) {
    require msg.sender == stor6
    stor8[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function supportsToken(address arg1) {
    if arg1 == address(stor7.field_0):
        if uint8(stor7.field_160):
            return 1
        else:
            return 0
    else:
        return 0
}

function getLast24hSendingValue(address arg1) {
    mem[0] = arg1
    mem[32] = 12
    if stor12[address(arg1)].field_256 <= 0:
        return 0
    idx = balanceOf[sha3(mem[0 len 64])] - 1
    s = 0
    while idx >= 0:
        if block.timestamp - stor12[address(arg1)][idx].field_256 >= 24 * 3600:
            return s
        mem[0] = idx
        mem[32] = sha3(address(arg1), 12)
        require s + stor12[address(arg1)][idx].field_0 >= s
        idx = idx - 1
        s = s + stor12[address(arg1)][idx].field_0
        continue 
    return s
}

function tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    if address(stor7.field_0) != msg.sender:
        return 0
    if not uint8(stor7.field_160):
        return 0
    mem[ceil32(arg4.length) + 128] = msg.sender
    if arg4.length < 4:
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < arg4.length
            idx = idx + 1
            s = (Mask(32, 224, s) >> 224) + (mem[idx + 128 len 1] * 2^(8 * arg4.length + -idx - 1)) << 224
            continue 
        stor13 = msg.sender
        stor14 = arg1
        stor15 = arg2
        stor16 = arg3
        stor17[] = Array(len=arg4.length, data=arg4[all])
        uint32(stor18.field_0) = Mask(32, 219, arg4.length) >> 219
    else:
        idx = 0
        s = 0
        while idx < 4:
            require idx < arg4.length
            idx = idx + 1
            s = (Mask(32, 224, s) >> 224) + (mem[idx + 128 len 1] * 2^(8 * -idx + 3)) << 224
            continue 
        stor13 = msg.sender
        stor14 = arg1
        stor15 = arg2
        stor16 = arg3
        stor17[] = Array(len=arg4.length, data=arg4[all])
        uint32(stor18.field_0) = 0
        stor18.field_256 % 1 = 0
    stor19 = 1
    mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        delegate this.address.mem[ceil32(arg4.length) + 320 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 324 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
        delegate this.address.mem[ceil32(arg4.length) + 320 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 28]
    if not delegate.return_code:
        return 0
    stor19 = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0
    mem[64] = 128
    require not stor8[address(msg.sender)]
    require arg2 <= stor10
    require balanceOf[address(msg.sender)] >= arg2
    if msg.sender == stor6:
        if arg2 <= balanceOf[address(msg.sender)]:
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] += arg2
                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                    stor12[address(msg.sender)].field_256++
                    emit Transfer(arg2, msg.sender, arg1);
                    if ext_code.size(arg1) <= 0:
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x4c123019 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return 1
    else:
        require not stor9
        mem[0] = msg.sender
        mem[32] = 12
        if stor12[address(msg.sender)].field_256 <= 0:
            if arg2 >= 0:
                require arg2 <= stor11
                if arg2 <= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] += arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                        if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                            stor12[address(msg.sender)].field_256++
                            emit Transfer(arg2, msg.sender, arg1);
                            if ext_code.size(arg1) <= 0:
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x4c123019 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, arg2, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 1
        else:
            idx = balanceOf[sha3(mem[0 len 64])] - 1
            s = 0
            while idx >= 0:
                if block.timestamp - stor12[address(msg.sender)][idx].field_256 < 24 * 3600:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 12)
                    if s + stor12[address(msg.sender)][idx].field_0 >= s:
                        idx = idx - 1
                        s = s + stor12[address(msg.sender)][idx].field_0
                        continue 
                else:
                    if s + arg2 >= s:
                        require s + arg2 <= stor11
                        if arg2 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)] += arg2
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                                if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                                    stor12[address(msg.sender)].field_256++
                                    emit Transfer(arg2, msg.sender, arg1);
                                    if ext_code.size(arg1) <= 0:
                                        return 1
                                    mem[128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                    mem[132] = msg.sender
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 292] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.sender, arg2, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        return 1
                revert
            if s + arg2 >= s:
                require s + arg2 <= stor11
                if arg2 <= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] += arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                        if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                            stor12[address(msg.sender)].field_256++
                            emit Transfer(arg2, msg.sender, arg1);
                            if ext_code.size(arg1) <= 0:
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x4c123019 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, arg2, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 1
    revert
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require not stor8[address(msg.sender)]
    require arg2 <= stor10
    require balanceOf[address(msg.sender)] >= arg2
    if msg.sender == stor6:
        if arg2 <= balanceOf[address(msg.sender)]:
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] += arg2
                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                    stor12[address(msg.sender)].field_256++
                    emit Transfer(arg2, msg.sender, arg1);
                    if ext_code.size(arg1) <= 0:
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x4c123019 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return 1
    else:
        require not stor9
        mem[0] = msg.sender
        mem[32] = 12
        if stor12[address(msg.sender)].field_256 <= 0:
            if arg2 >= 0:
                require arg2 <= stor11
                if arg2 <= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] += arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                        if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                            stor12[address(msg.sender)].field_256++
                            emit Transfer(arg2, msg.sender, arg1);
                            if ext_code.size(arg1) <= 0:
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x4c123019 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 1
        else:
            idx = balanceOf[sha3(mem[0 len 64])] - 1
            s = 0
            while idx >= 0:
                if block.timestamp - stor12[address(msg.sender)][idx].field_256 < 24 * 3600:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 12)
                    if s + stor12[address(msg.sender)][idx].field_0 >= s:
                        idx = idx - 1
                        s = s + stor12[address(msg.sender)][idx].field_0
                        continue 
                else:
                    if s + arg2 >= s:
                        require s + arg2 <= stor11
                        if arg2 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)] += arg2
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                                if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                                    stor12[address(msg.sender)].field_256++
                                    emit Transfer(arg2, msg.sender, arg1);
                                    if ext_code.size(arg1) <= 0:
                                        return 1
                                    mem[ceil32(arg3.length) + 128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 132] = msg.sender
                                    idx = 0
                                    while idx < arg3.length:
                                        mem[ceil32(arg3.length) + idx + 292] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.sender, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        return 1
                revert
            if s + arg2 >= s:
                require s + arg2 <= stor11
                if arg2 <= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] += arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = arg2
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                        if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                            stor12[address(msg.sender)].field_256++
                            emit Transfer(arg2, msg.sender, arg1);
                            if ext_code.size(arg1) <= 0:
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x4c123019 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 1
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    mem[96] = 0
    mem[64] = 128
    require not stor8[address(arg1)]
    require arg3 <= stor10
    require balanceOf[address(arg1)] >= arg3
    if stor6 != msg.sender:
        require not stor9
        mem[0] = arg1
        mem[32] = 12
        if stor12[address(arg1)].field_256 <= 0:
            if arg3 >= 0:
                require arg3 <= stor11
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    if arg3 <= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                            balanceOf[address(arg2)] += arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                            if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256++
                                emit Transfer(arg3, arg1, arg2);
                                if ext_code.size(arg2) <= 0:
                                    return 1
                                require ext_code.size(arg2)
                                call arg2.0x4c123019 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    return 1
        else:
            idx = balanceOf[sha3(mem[0 len 64])] - 1
            s = 0
            while idx >= 0:
                if block.timestamp - stor12[address(arg1)][idx].field_256 < 24 * 3600:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 12)
                    if s + stor12[address(arg1)][idx].field_0 >= s:
                        idx = idx - 1
                        s = s + stor12[address(arg1)][idx].field_0
                        continue 
                else:
                    if s + arg3 >= s:
                        require s + arg3 <= stor11
                        require allowance[address(arg1)][address(msg.sender)] >= arg3
                        if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            if arg3 <= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                    balanceOf[address(arg2)] += arg3
                                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                    if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                        stor12[address(arg1)].field_256++
                                        emit Transfer(arg3, arg1, arg2);
                                        if ext_code.size(arg2) <= 0:
                                            return 1
                                        mem[128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                        mem[132] = msg.sender
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + 292] = mem[idx + 128]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(arg2)
                                        call arg2.0x4c123019 with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3, 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            return 1
                revert
            if s + arg3 >= s:
                require s + arg3 <= stor11
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    if arg3 <= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                            balanceOf[address(arg2)] += arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                            if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256++
                                emit Transfer(arg3, arg1, arg2);
                                if ext_code.size(arg2) <= 0:
                                    return 1
                                require ext_code.size(arg2)
                                call arg2.0x4c123019 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    return 1
    else:
        if arg1 == address(stor7.field_0):
            if arg3 <= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                    balanceOf[address(arg2)] += arg3
                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                    if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                        stor12[address(arg1)].field_256++
                        emit Transfer(arg3, arg1, arg2);
                        if ext_code.size(arg2) <= 0:
                            return 1
                        require ext_code.size(arg2)
                        call arg2.0x4c123019 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            return 1
        else:
            require not stor9
            mem[0] = arg1
            mem[32] = 12
            if stor12[address(arg1)].field_256 <= 0:
                if arg3 >= 0:
                    require arg3 <= stor11
                    require allowance[address(arg1)][address(msg.sender)] >= arg3
                    if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        if arg3 <= balanceOf[address(arg1)]:
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                balanceOf[address(arg2)] += arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256++
                                    emit Transfer(arg3, arg1, arg2);
                                    if ext_code.size(arg2) <= 0:
                                        return 1
                                    require ext_code.size(arg2)
                                    call arg2.0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        return 1
            else:
                idx = balanceOf[sha3(mem[0 len 64])] - 1
                s = 0
                while idx >= 0:
                    if block.timestamp - stor12[address(arg1)][idx].field_256 < 24 * 3600:
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 12)
                        if s + stor12[address(arg1)][idx].field_0 >= s:
                            idx = idx - 1
                            s = s + stor12[address(arg1)][idx].field_0
                            continue 
                    else:
                        if s + arg3 >= s:
                            require s + arg3 <= stor11
                            require allowance[address(arg1)][address(msg.sender)] >= arg3
                            if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                if arg3 <= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                        balanceOf[address(arg2)] += arg3
                                        stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                        stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                        if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                            stor12[address(arg1)].field_256++
                                            emit Transfer(arg3, arg1, arg2);
                                            if ext_code.size(arg2) <= 0:
                                                return 1
                                            mem[128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                            mem[132] = msg.sender
                                            idx = 0
                                            while idx < 0:
                                                mem[idx + 292] = mem[idx + 128]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(arg2)
                                            call arg2.0x4c123019 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                return 1
                    revert
                if s + arg3 >= s:
                    require s + arg3 <= stor11
                    require allowance[address(arg1)][address(msg.sender)] >= arg3
                    if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        if arg3 <= balanceOf[address(arg1)]:
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                balanceOf[address(arg2)] += arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256++
                                    emit Transfer(arg3, arg1, arg2);
                                    if ext_code.size(arg2) <= 0:
                                        return 1
                                    require ext_code.size(arg2)
                                    call arg2.0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        return 1
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    require not stor8[address(arg1)]
    require arg3 <= stor10
    require balanceOf[address(arg1)] >= arg3
    if stor6 != msg.sender:
        require not stor9
        mem[0] = arg1
        mem[32] = 12
        if stor12[address(arg1)].field_256 <= 0:
            if arg3 >= 0:
                require arg3 <= stor11
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    if arg3 <= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                            balanceOf[address(arg2)] += arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                            if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256++
                                emit Transfer(arg3, arg1, arg2);
                                if ext_code.size(arg2) <= 0:
                                    return 1
                                require ext_code.size(arg2)
                                call arg2.0x4c123019 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    return 1
        else:
            idx = balanceOf[sha3(mem[0 len 64])] - 1
            s = 0
            while idx >= 0:
                if block.timestamp - stor12[address(arg1)][idx].field_256 < 24 * 3600:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 12)
                    if s + stor12[address(arg1)][idx].field_0 >= s:
                        idx = idx - 1
                        s = s + stor12[address(arg1)][idx].field_0
                        continue 
                else:
                    if s + arg3 >= s:
                        require s + arg3 <= stor11
                        require allowance[address(arg1)][address(msg.sender)] >= arg3
                        if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            if arg3 <= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                    balanceOf[address(arg2)] += arg3
                                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                    if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                        stor12[address(arg1)].field_256++
                                        emit Transfer(arg3, arg1, arg2);
                                        if ext_code.size(arg2) <= 0:
                                            return 1
                                        mem[ceil32(arg4.length) + 128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(arg4.length) + 132] = msg.sender
                                        idx = 0
                                        while idx < arg4.length:
                                            mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(arg2)
                                        call arg2.0x4c123019 with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 292 len arg4.length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            return 1
                revert
            if s + arg3 >= s:
                require s + arg3 <= stor11
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    if arg3 <= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                            balanceOf[address(arg2)] += arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                            stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                            if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256++
                                emit Transfer(arg3, arg1, arg2);
                                if ext_code.size(arg2) <= 0:
                                    return 1
                                require ext_code.size(arg2)
                                call arg2.0x4c123019 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    return 1
    else:
        if arg1 == address(stor7.field_0):
            if arg3 <= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                    balanceOf[address(arg2)] += arg3
                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                    stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                    if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                        stor12[address(arg1)].field_256++
                        emit Transfer(arg3, arg1, arg2);
                        if ext_code.size(arg2) <= 0:
                            return 1
                        require ext_code.size(arg2)
                        call arg2.0x4c123019 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            return 1
        else:
            require not stor9
            mem[0] = arg1
            mem[32] = 12
            if stor12[address(arg1)].field_256 <= 0:
                if arg3 >= 0:
                    require arg3 <= stor11
                    require allowance[address(arg1)][address(msg.sender)] >= arg3
                    if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        if arg3 <= balanceOf[address(arg1)]:
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                balanceOf[address(arg2)] += arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256++
                                    emit Transfer(arg3, arg1, arg2);
                                    if ext_code.size(arg2) <= 0:
                                        return 1
                                    require ext_code.size(arg2)
                                    call arg2.0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        return 1
            else:
                idx = balanceOf[sha3(mem[0 len 64])] - 1
                s = 0
                while idx >= 0:
                    if block.timestamp - stor12[address(arg1)][idx].field_256 < 24 * 3600:
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 12)
                        if s + stor12[address(arg1)][idx].field_0 >= s:
                            idx = idx - 1
                            s = s + stor12[address(arg1)][idx].field_0
                            continue 
                    else:
                        if s + arg3 >= s:
                            require s + arg3 <= stor11
                            require allowance[address(arg1)][address(msg.sender)] >= arg3
                            if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                if arg3 <= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                        balanceOf[address(arg2)] += arg3
                                        stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                        stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                        if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                            stor12[address(arg1)].field_256++
                                            emit Transfer(arg3, arg1, arg2);
                                            if ext_code.size(arg2) <= 0:
                                                return 1
                                            mem[ceil32(arg4.length) + 128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(arg4.length) + 132] = msg.sender
                                            idx = 0
                                            while idx < arg4.length:
                                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(arg2)
                                            call arg2.0x4c123019 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 292 len arg4.length])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                return 1
                    revert
                if s + arg3 >= s:
                    require s + arg3 <= stor11
                    require allowance[address(arg1)][address(msg.sender)] >= arg3
                    if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        if arg3 <= balanceOf[address(arg1)]:
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]:
                                balanceOf[address(arg2)] += arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_0 = arg3
                                stor12[address(arg1)][stor12[address(arg1)].field_256].field_256 = block.timestamp
                                if stor12[address(arg1)].field_256 + 1 >= stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256++
                                    emit Transfer(arg3, arg1, arg2);
                                    if ext_code.size(arg2) <= 0:
                                        return 1
                                    require ext_code.size(arg2)
                                    call arg2.0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        return 1
    revert
}

function airdropIndividual(address[] arg1, uint256[] arg2, uint256 arg3, uint256 arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg3
    require arg2.length == arg3
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length == arg4
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _237 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _239 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _240 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        require not stor8[address(msg.sender)]
        require _239 <= stor10
        require balanceOf[address(msg.sender)] >= _239
        if msg.sender == stor6:
            if _239 <= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] -= _239
                if balanceOf[address(_237)] + _239 >= balanceOf[address(_237)]:
                    balanceOf[address(_237)] += _239
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = _239
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                    if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                        mem[0] = msg.sender
                        mem[32] = 12
                        stor12[address(msg.sender)].field_256++
                        mem[_240 + 32] = _239
                        emit Transfer(_239, msg.sender, address(_237));
                        if ext_code.size(_237) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_240 + 32] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                        mem[_240 + 36] = msg.sender
                        mem[_240 + 68] = msg.sender
                        mem[_240 + 100] = _239
                        mem[_240 + 132] = 128
                        mem[_240 + 164] = mem[_240]
                        s = 0
                        while s < mem[_240]:
                            mem[_240 + s + 196] = mem[_240 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_240] % 32:
                            require ext_code.size(address(_237))
                            call address(_237).0x4c123019 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, _239, 128, mem[_240 + 164 len mem[_240] + 32]
                        else:
                            mem[floor32(mem[_240]) + _240 + 196] = mem[floor32(mem[_240]) + _240 + -(mem[_240] % 32) + 228 len mem[_240] % 32]
                            require ext_code.size(address(_237))
                            call address(_237).0x4c123019 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, _239, Array(len=mem[_240], data=mem[_240 + 196 len floor32(mem[_240]) + 32])
                        mem[_240 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            idx = idx + 1
                            continue 
        else:
            require not stor9
            mem[0] = msg.sender
            mem[32] = 12
            if stor12[address(msg.sender)].field_256 <= 0:
                if _239 >= 0:
                    require _239 <= stor11
                    if _239 <= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= _239
                        if balanceOf[address(_237)] + _239 >= balanceOf[address(_237)]:
                            balanceOf[address(_237)] += _239
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = _239
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                            if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                                mem[0] = msg.sender
                                mem[32] = 12
                                stor12[address(msg.sender)].field_256++
                                mem[_240 + 32] = _239
                                emit Transfer(_239, msg.sender, address(_237));
                                if ext_code.size(_237) <= 0:
                                    idx = idx + 1
                                    continue 
                                mem[_240 + 32] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                mem[_240 + 36] = msg.sender
                                mem[_240 + 68] = msg.sender
                                mem[_240 + 100] = _239
                                mem[_240 + 132] = 128
                                mem[_240 + 164] = mem[_240]
                                s = 0
                                while s < mem[_240]:
                                    mem[_240 + s + 196] = mem[_240 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_240] % 32:
                                    require ext_code.size(address(_237))
                                    call address(_237).0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.sender, _239, 128, mem[_240 + 164 len mem[_240] + 32]
                                else:
                                    mem[floor32(mem[_240]) + _240 + 196] = mem[floor32(mem[_240]) + _240 + -(mem[_240] % 32) + 228 len mem[_240] % 32]
                                    require ext_code.size(address(_237))
                                    call address(_237).0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.sender, _239, Array(len=mem[_240], data=mem[_240 + 196 len floor32(mem[_240]) + 32])
                                mem[_240 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    idx = idx + 1
                                    continue 
            else:
                s = balanceOf[sha3(mem[0 len 64])] - 1
                t = 0
                while s >= 0:
                    if block.timestamp - stor12[address(msg.sender)][s].field_256 < 24 * 3600:
                        mem[0] = s
                        mem[32] = sha3(address(msg.sender), 12)
                        if t + stor12[address(msg.sender)][s].field_0 >= t:
                            s = s - 1
                            t = t + stor12[address(msg.sender)][s].field_0
                            continue 
                    else:
                        if t + _239 >= t:
                            require t + _239 <= stor11
                            if _239 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= _239
                                if balanceOf[address(_237)] + _239 >= balanceOf[address(_237)]:
                                    balanceOf[address(_237)] += _239
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = _239
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                                    if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        stor12[address(msg.sender)].field_256++
                                        mem[mem[64]] = _239
                                        emit Transfer(_239, msg.sender, address(_237));
                                        if ext_code.size(_237) <= 0:
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _239
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[_240]
                                        _396 = mem[_240]
                                        s = 0
                                        while s < _396:
                                            mem[mem[64] + s + 164] = mem[_240 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not _396 % 32:
                                            require ext_code.size(address(_237))
                                            call address(_237).0x4c123019 with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.sender, _239, 128, mem[mem[64] + 132 len _396 + 32]
                                        else:
                                            mem[floor32(_396) + mem[64] + 164] = mem[floor32(_396) + mem[64] + -(_396 % 32) + 196 len _396 % 32]
                                            require ext_code.size(address(_237))
                                            call address(_237).0x4c123019 with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.sender, _239, 128, mem[mem[64] + 132 len floor32(_396) + 64]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            idx = idx + 1
                                            continue 
                    revert
                if t + _239 >= t:
                    require t + _239 <= stor11
                    if _239 <= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= _239
                        if balanceOf[address(_237)] + _239 >= balanceOf[address(_237)]:
                            balanceOf[address(_237)] += _239
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_0 = _239
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_256].field_256 = block.timestamp
                            if stor12[address(msg.sender)].field_256 + 1 >= stor12[address(msg.sender)].field_256:
                                mem[0] = msg.sender
                                mem[32] = 12
                                stor12[address(msg.sender)].field_256++
                                mem[mem[64]] = _239
                                emit Transfer(_239, msg.sender, address(_237));
                                if ext_code.size(_237) <= 0:
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _239
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[_240]
                                _392 = mem[_240]
                                s = 0
                                while s < _392:
                                    mem[mem[64] + s + 164] = mem[_240 + s + 32]
                                    s = s + 32
                                    continue 
                                if not _392 % 32:
                                    require ext_code.size(address(_237))
                                    call address(_237).0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.sender, _239, 128, mem[mem[64] + 132 len _392 + 32]
                                else:
                                    mem[floor32(_392) + mem[64] + 164] = mem[floor32(_392) + mem[64] + -(_392 % 32) + 196 len _392 % 32]
                                    require ext_code.size(address(_237))
                                    call address(_237).0x4c123019 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.sender, _239, 128, mem[mem[64] + 132 len floor32(_392) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    idx = idx + 1
                                    continue 
        revert
    return 1
}



}
