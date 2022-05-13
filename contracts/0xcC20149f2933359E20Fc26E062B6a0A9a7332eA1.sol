contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() {
    stor2 = msg.sender
    return code.data[57 len 3962]
}



// =====================  Runtime code  =====================


address cardsAddress;
address schemaAddress;
address stor2;

function cards() {
    return cardsAddress
}

function schema() {
    return schemaAddress
}

function _fallback() payable {
    revert
}

function setCardsAddress(address arg1) {
    require stor2 == msg.sender
    cardsAddress = arg1
}

function setConfigAddress(address arg1) {
    require stor2 == msg.sender
    schemaAddress = arg1
}

function getBattleCardList(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[64] = 224
    mem[192] = 0
    require ext_code.size(schemaAddress)
    call schemaAddress.0xcf0f864e with:
         gas gas_remaining wei
    mem[224 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    s = 0
    idx = mem[224]
    while idx <= ext_call.return_data[32]:
        _115 = 224
        mem[228] = arg1
        mem[260] = idx
        require ext_code.size(cardsAddress)
        call cardsAddress.0x196ecd25 with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[224] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] < 1:
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    mem[_115 + 68] = s
    if 0 < 32 * s:
        mem[_115 + (32 * s) + 100] = s
        mem[_115 + (64 * s) + 132] = 0xcf0f864e00000000000000000000000000000000000000000000000000000000
        require ext_code.size(schemaAddress)
        call schemaAddress.0xcf0f864e with:
             gas gas_remaining wei
            args mem[_115 + (64 * s) + 136 len 127 * s]
        mem[_115 + (64 * s) + 132 len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        t = 0
        idx = mem[_115 + (64 * s) + 132]
        while idx <= ext_call.return_data[32]:
            mem[_115 + (64 * s) + 136] = arg1
            mem[_115 + (64 * s) + 168] = idx
            require ext_code.size(cardsAddress)
            call cardsAddress.0x196ecd25 with:
                 gas gas_remaining wei
                args address(arg1), idx
            mem[_115 + (64 * s) + 132] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] < 1:
                t = t
                idx = idx + 1
                continue 
            require t < s
            mem[_115 + (32 * t) + 100] = idx
            mem[_115 + (64 * s) + 136] = arg1
            mem[_115 + (64 * s) + 168] = idx
            require ext_code.size(cardsAddress)
            call cardsAddress.0x196ecd25 with:
                 gas gas_remaining wei
                args address(arg1), idx
            mem[_115 + (64 * s) + 132] = ext_call.return_data[0]
            require ext_call.success
            require t < mem[_115 + (32 * s) + 100]
            mem[_115 + (32 * s) + (32 * t) + 132] = ext_call.return_data[0]
            t = t + 1
            idx = idx + 1
            continue 
        mem[_115 + (64 * s) + 132] = 64
        mem[_115 + (64 * s) + 196] = s
        mem[_115 + (64 * s) + 228 len floor32(s)] = mem[_115 + 100 len floor32(s)]
        mem[_115 + (64 * s) + 164] = (32 * s) + 96
        mem[(98 * s) + _115 + 228] = mem[_115 + (32 * s) + 100]
        mem[(98 * s) + _115 + 260 len floor32(mem[_115 + (32 * s) + 100])] = mem[_115 + (32 * s) + 132 len floor32(mem[_115 + (32 * s) + 100])]
        return memory
          from _115 + (64 * s) + 132
           len (32 * mem[_115 + (32 * s) + 100]) + (32 * s) + 128
    mem[_115 + 100] = s
    mem[64] = _115 + (32 * s) + 132
    require ext_code.size(schemaAddress)
    call schemaAddress.0xcf0f864e with:
         gas gas_remaining wei
    mem[_115 + (32 * s) + 132 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    t = 0
    idx = mem[_115 + (32 * s) + 132]
    while idx <= ext_call.return_data[32]:
        mem[_115 + (32 * s) + 136] = arg1
        mem[_115 + (32 * s) + 168] = idx
        require ext_code.size(cardsAddress)
        call cardsAddress.0x196ecd25 with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[_115 + (32 * s) + 132] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] < 1:
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[_115 + (32 * t) + 100] = idx
        mem[_115 + (32 * s) + 136] = arg1
        mem[_115 + (32 * s) + 168] = idx
        require ext_code.size(cardsAddress)
        call cardsAddress.0x196ecd25 with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[_115 + (32 * s) + 132] = ext_call.return_data[0]
        require ext_call.success
        require t < mem[_115 + 100]
        mem[_115 + (32 * t) + 132] = ext_call.return_data[0]
        t = t + 1
        idx = idx + 1
        continue 
    mem[_115 + (32 * s) + 132] = 64
    mem[_115 + (32 * s) + 196] = s
    mem[_115 + (32 * s) + 228 len floor32(s)] = mem[_115 + 100 len floor32(s)]
    mem[_115 + (32 * s) + 164] = (32 * s) + 96
    mem[(64 * s) + _115 + 228] = mem[_115 + 100]
    mem[(64 * s) + _115 + 260 len floor32(mem[_115 + 100])] = mem[_115 + 132 len floor32(mem[_115 + 100])]
    return Array(len=s, data=mem[_115 + 100 len floor32(s)], mem[_115 + (32 * s) + floor32(s) + 228 len (32 * s) + (32 * mem[_115 + 100]) + -floor32(s) + 32]), 
           (32 * s) + 96
}

function getNormalCardList(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[64] = 224
    mem[192] = 0
    require ext_code.size(schemaAddress)
    call schemaAddress.0x625785bb with:
         gas gas_remaining wei
    mem[224 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    s = 0
    idx = mem[224]
    while idx <= ext_call.return_data[32]:
        _115 = 224
        mem[228] = arg1
        mem[260] = idx
        require ext_code.size(cardsAddress)
        call cardsAddress.0x196ecd25 with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[224] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] < 1:
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    mem[_115 + 68] = s
    if 0 < 32 * s:
        mem[_115 + (32 * s) + 100] = s
        mem[_115 + (64 * s) + 132] = 0x625785bb00000000000000000000000000000000000000000000000000000000
        require ext_code.size(schemaAddress)
        call schemaAddress.0x625785bb with:
             gas gas_remaining wei
            args mem[_115 + (64 * s) + 136 len 127 * s]
        mem[_115 + (64 * s) + 132 len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        t = 0
        idx = mem[_115 + (64 * s) + 132]
        while idx <= ext_call.return_data[32]:
            mem[_115 + (64 * s) + 136] = arg1
            mem[_115 + (64 * s) + 168] = idx
            require ext_code.size(cardsAddress)
            call cardsAddress.0x196ecd25 with:
                 gas gas_remaining wei
                args address(arg1), idx
            mem[_115 + (64 * s) + 132] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] < 1:
                t = t
                idx = idx + 1
                continue 
            require t < s
            mem[_115 + (32 * t) + 100] = idx
            mem[_115 + (64 * s) + 136] = arg1
            mem[_115 + (64 * s) + 168] = idx
            require ext_code.size(cardsAddress)
            call cardsAddress.0x196ecd25 with:
                 gas gas_remaining wei
                args address(arg1), idx
            mem[_115 + (64 * s) + 132] = ext_call.return_data[0]
            require ext_call.success
            require t < mem[_115 + (32 * s) + 100]
            mem[_115 + (32 * s) + (32 * t) + 132] = ext_call.return_data[0]
            t = t + 1
            idx = idx + 1
            continue 
        mem[_115 + (64 * s) + 132] = 64
        mem[_115 + (64 * s) + 196] = s
        mem[_115 + (64 * s) + 228 len floor32(s)] = mem[_115 + 100 len floor32(s)]
        mem[_115 + (64 * s) + 164] = (32 * s) + 96
        mem[(98 * s) + _115 + 228] = mem[_115 + (32 * s) + 100]
        mem[(98 * s) + _115 + 260 len floor32(mem[_115 + (32 * s) + 100])] = mem[_115 + (32 * s) + 132 len floor32(mem[_115 + (32 * s) + 100])]
        return memory
          from _115 + (64 * s) + 132
           len (32 * mem[_115 + (32 * s) + 100]) + (32 * s) + 128
    mem[_115 + 100] = s
    mem[64] = _115 + (32 * s) + 132
    require ext_code.size(schemaAddress)
    call schemaAddress.0x625785bb with:
         gas gas_remaining wei
    mem[_115 + (32 * s) + 132 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    t = 0
    idx = mem[_115 + (32 * s) + 132]
    while idx <= ext_call.return_data[32]:
        mem[_115 + (32 * s) + 136] = arg1
        mem[_115 + (32 * s) + 168] = idx
        require ext_code.size(cardsAddress)
        call cardsAddress.0x196ecd25 with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[_115 + (32 * s) + 132] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] < 1:
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[_115 + (32 * t) + 100] = idx
        mem[_115 + (32 * s) + 136] = arg1
        mem[_115 + (32 * s) + 168] = idx
        require ext_code.size(cardsAddress)
        call cardsAddress.0x196ecd25 with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[_115 + (32 * s) + 132] = ext_call.return_data[0]
        require ext_call.success
        require t < mem[_115 + 100]
        mem[_115 + (32 * t) + 132] = ext_call.return_data[0]
        t = t + 1
        idx = idx + 1
        continue 
    mem[_115 + (32 * s) + 132] = 64
    mem[_115 + (32 * s) + 196] = s
    mem[_115 + (32 * s) + 228 len floor32(s)] = mem[_115 + 100 len floor32(s)]
    mem[_115 + (32 * s) + 164] = (32 * s) + 96
    mem[(64 * s) + _115 + 228] = mem[_115 + 100]
    mem[(64 * s) + _115 + 260 len floor32(mem[_115 + 100])] = mem[_115 + 132 len floor32(mem[_115 + 100])]
    return Array(len=s, data=mem[_115 + 100 len floor32(s)], mem[_115 + (32 * s) + floor32(s) + 228 len (32 * s) + (32 * mem[_115 + 100]) + -floor32(s) + 32]), 
           (32 * s) + 96
}

function getUpgradeValue(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(cardsAddress)
    call cardsAddress.0x196ecd25 with:
         gas gas_remaining wei
        args address(arg1), arg3
    require ext_call.success
    require ext_code.size(cardsAddress)
    call cardsAddress.0xe3ca940c with:
         gas gas_remaining wei
        args address(arg1), arg3
    require ext_call.success
    if not arg2:
        if not ext_call.return_data[0]:
            require ext_code.size(schemaAddress)
            call schemaAddress.0x702123ae with:
                 gas gas_remaining wei
                args arg3
            require ext_call.success
            if ext_call.return_data[0]:
                return (10000 * arg4 / ext_call.return_data[0])
        else:
            require ext_code.size(cardsAddress)
            call cardsAddress.0xb25d4571 with:
                 gas gas_remaining wei
                args address(arg1), arg3
            require ext_call.success
            if ext_call.return_data[0]:
                return ((100000 * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) / ext_call.return_data[0])
        ('iszero', ('ext_call.return_data', 0, 32))
    else:
        if 1 == arg2:
            if not ext_call.return_data[0]:
                require ext_code.size(schemaAddress)
                call schemaAddress.0x702123ae with:
                     gas gas_remaining wei
                    args arg3
                require ext_call.success
                if ext_call.return_data[0]:
                    return (10000 * arg4 / ext_call.return_data[0])
            else:
                require ext_code.size(cardsAddress)
                call cardsAddress.0xd4778321 with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_call.success
                require ext_code.size(schemaAddress)
                call schemaAddress.0x702123ae with:
                     gas gas_remaining wei
                    args arg3
                require ext_call.success
                if ext_call.return_data[0]:
                    return ((10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * arg4) / ext_call.return_data[0])
            ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if 2 == arg2:
                require ext_code.size(cardsAddress)
                call cardsAddress.0x37e34f2f with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_call.success
                require ext_code.size(schemaAddress)
                call schemaAddress.0x69632f56 with:
                     gas gas_remaining wei
                    args arg3
                require ext_call.success
                if 2 * ext_call.return_data[0]:
                    return (10000 * arg4 / 2 * ext_call.return_data[0])
            else:
                if 3 == arg2:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0xae01efb8 with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_call.success
                    if ext_call.return_data[0] + 10:
                        return (10000 * arg4 / ext_call.return_data[0] + 10)
                else:
                    if 4 == arg2:
                        require ext_code.size(cardsAddress)
                        call cardsAddress.0x50b89817 with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_call.success
                        require ext_code.size(schemaAddress)
                        call schemaAddress.0x21446cfe with:
                             gas gas_remaining wei
                            args arg3
                        require ext_call.success
                        if 2 * ext_call.return_data[0]:
                            return (10000 * arg4 / 2 * ext_call.return_data[0])
                    else:
                        if 5 == arg2:
                            require ext_code.size(cardsAddress)
                            call cardsAddress.0x71796136 with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            require ext_call.success
                            if ext_call.return_data[0] + 10:
                                return (10000 * arg4 / ext_call.return_data[0] + 10)
                        else:
                            if arg2 != 6:
                                if arg2 != 7:
                                    return 0
                                require ext_code.size(cardsAddress)
                                call cardsAddress.0x26a60175 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg3
                                require ext_call.success
                                if ext_call.return_data[0] + 10:
                                    return (10000 * arg4 / ext_call.return_data[0] + 10)
                            else:
                                require ext_code.size(cardsAddress)
                                call cardsAddress.0x8b88c941 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg3
                                require ext_call.success
                                require ext_code.size(schemaAddress)
                                call schemaAddress.0x6101a1f7 with:
                                     gas gas_remaining wei
                                    args arg3
                                require ext_call.success
                                if 2 * ext_call.return_data[0]:
                                    return (10000 * arg4 / 2 * ext_call.return_data[0])
    revert
}



}
