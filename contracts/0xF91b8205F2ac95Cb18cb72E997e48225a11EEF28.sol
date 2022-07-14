contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
  stop
}

function sub_60b25bb7(?) {
    idx = 0
    while idx < 53:
        create contract with 0 wei
                        code: 0, 115, Mask(104, 0, this.address), 0
        idx = idx + 1
        continue 
    stor0 += 53
}

function withdraw(uint256 arg1) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function withdrawTokens(address arg1) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
}

function sub_78758d7d(?) payable {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    if msg.value > 0:
        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.deposit() with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
}

function sub_c704f989(?) payable {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    if msg.value > 0:
        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.deposit() with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
}

function sub_3bca665e(?) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_d1d6dce3(?) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_d26bd274(?) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    hash = sha256hash(2082825034140337647, address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164]) 
    require sha256hash.result
    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[196]), hash
    require ext_call.success
    if call.data[36] - ext_call.return_data[0] < call.data[324]:
        idx = 0
        s = 0
        s = arg1
        while idx < 1:
            if Mask(24, 232, s) >> 232 > 65535:
                mem[90] = Mask(24, 232, s) >> 232
                mem[87] = 131
                mem[86] = this.address
                mem[66] = 55700
                call address(sha3(55700, this.address, 0, 0)) with:
                     gas gas_remaining - 25710 wei
            else:
                if Mask(24, 232, s) >> 232 > 255:
                    mem[89] = Mask(24, 232, s) >> 232
                    mem[87] = 130
                    mem[86] = this.address
                    mem[66] = 55444
                    call address(sha3(55444, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 <= 127:
                        mem[87] = Mask(24, 232, s) >> 232
                        mem[86] = this.address
                        mem[66] = 54932
                        call address(sha3(54932, this.address, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        mem[88] = Mask(24, 232, s) >> 232
                        mem[87] = 129
                        mem[86] = this.address
                        mem[66] = 55188
                        call address(sha3(55188, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
            idx = idx + 1
            s = s
            s = 16777216 * s
            continue 
    else:
        if call.data[324] <= 0:
            idx = 0
            s = 0
            s = arg1
            while idx < 1:
                if Mask(24, 232, s) >> 232 > 65535:
                    mem[90] = Mask(24, 232, s) >> 232
                    mem[87] = 131
                    mem[86] = this.address
                    mem[66] = 55700
                    call address(sha3(55700, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 > 255:
                        mem[89] = Mask(24, 232, s) >> 232
                        mem[87] = 130
                        mem[86] = this.address
                        mem[66] = 55444
                        call address(sha3(55444, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 <= 127:
                            mem[87] = Mask(24, 232, s) >> 232
                            mem[86] = this.address
                            mem[66] = 54932
                            call address(sha3(54932, this.address, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            mem[88] = Mask(24, 232, s) >> 232
                            mem[87] = 129
                            mem[86] = this.address
                            mem[66] = 55188
                            call address(sha3(55188, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                idx = idx + 1
                s = s
                s = 16777216 * s
                continue 
        else:
            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164], address(call.data[196]), call.data[228] << 248, call.data[260], call.data[292], call.data[324]
            require ext_call.success
            idx = 0
            s = 0
            s = arg1
            while idx < 3:
                if Mask(24, 232, s) >> 232 > 65535:
                    mem[90] = Mask(24, 232, s) >> 232
                    mem[87] = 131
                    mem[86] = this.address
                    mem[66] = 55700
                    call address(sha3(55700, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 > 255:
                        mem[89] = Mask(24, 232, s) >> 232
                        mem[87] = 130
                        mem[86] = this.address
                        mem[66] = 55444
                        call address(sha3(55444, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 <= 127:
                            mem[87] = Mask(24, 232, s) >> 232
                            mem[86] = this.address
                            mem[66] = 54932
                            call address(sha3(54932, this.address, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            mem[88] = Mask(24, 232, s) >> 232
                            mem[87] = 129
                            mem[86] = this.address
                            mem[66] = 55188
                            call address(sha3(55188, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                idx = idx + 1
                s = s
                s = 16777216 * s
                continue 
}

function sub_80759701(?) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    hash = sha256hash(11109560297177712838, address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164]) 
    require sha256hash.result
    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[196]), hash
    require ext_call.success
    if call.data[36] - ext_call.return_data[0] < call.data[324]:
        idx = 0
        s = 0
        s = arg1
        while idx < 1:
            if Mask(24, 232, s) >> 232 > 65535:
                mem[90] = Mask(24, 232, s) >> 232
                mem[87] = 131
                mem[86] = this.address
                mem[66] = 55700
                call address(sha3(55700, this.address, 0, 0)) with:
                     gas gas_remaining - 25710 wei
            else:
                if Mask(24, 232, s) >> 232 > 255:
                    mem[89] = Mask(24, 232, s) >> 232
                    mem[87] = 130
                    mem[86] = this.address
                    mem[66] = 55444
                    call address(sha3(55444, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 <= 127:
                        mem[87] = Mask(24, 232, s) >> 232
                        mem[86] = this.address
                        mem[66] = 54932
                        call address(sha3(54932, this.address, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        mem[88] = Mask(24, 232, s) >> 232
                        mem[87] = 129
                        mem[86] = this.address
                        mem[66] = 55188
                        call address(sha3(55188, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
            idx = idx + 1
            s = s
            s = 16777216 * s
            continue 
    else:
        if call.data[324] <= 0:
            idx = 0
            s = 0
            s = arg1
            while idx < 1:
                if Mask(24, 232, s) >> 232 > 65535:
                    mem[90] = Mask(24, 232, s) >> 232
                    mem[87] = 131
                    mem[86] = this.address
                    mem[66] = 55700
                    call address(sha3(55700, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 > 255:
                        mem[89] = Mask(24, 232, s) >> 232
                        mem[87] = 130
                        mem[86] = this.address
                        mem[66] = 55444
                        call address(sha3(55444, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 <= 127:
                            mem[87] = Mask(24, 232, s) >> 232
                            mem[86] = this.address
                            mem[66] = 54932
                            call address(sha3(54932, this.address, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            mem[88] = Mask(24, 232, s) >> 232
                            mem[87] = 129
                            mem[86] = this.address
                            mem[66] = 55188
                            call address(sha3(55188, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                idx = idx + 1
                s = s
                s = 16777216 * s
                continue 
        else:
            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164], address(call.data[196]), call.data[228] << 248, call.data[260], call.data[292], call.data[324]
            require ext_call.success
            idx = 0
            s = 0
            s = arg1
            while idx < 3:
                if Mask(24, 232, s) >> 232 > 65535:
                    mem[90] = Mask(24, 232, s) >> 232
                    mem[87] = 131
                    mem[86] = this.address
                    mem[66] = 55700
                    call address(sha3(55700, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 > 255:
                        mem[89] = Mask(24, 232, s) >> 232
                        mem[87] = 130
                        mem[86] = this.address
                        mem[66] = 55444
                        call address(sha3(55444, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 <= 127:
                            mem[87] = Mask(24, 232, s) >> 232
                            mem[86] = this.address
                            mem[66] = 54932
                            call address(sha3(54932, this.address, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            mem[88] = Mask(24, 232, s) >> 232
                            mem[87] = 129
                            mem[86] = this.address
                            mem[66] = 55188
                            call address(sha3(55188, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                idx = idx + 1
                s = s
                s = 16777216 * s
                continue 
}

function sub_adbb43cf(?) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    hash = sha256hash(2082825034140337647, address(call.data[356]), call.data[388], address(call.data[420]), call.data[452], call.data[484], call.data[516]) 
    require sha256hash.result
    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[548]), hash
    require ext_call.success
    if call.data[388] - ext_call.return_data[0] < call.data[676]:
        idx = 0
        s = 0
        s = arg1
        while idx < 1:
            if Mask(24, 232, s) >> 232 > 65535:
                mem[90] = Mask(24, 232, s) >> 232
                mem[87] = 131
                mem[86] = this.address
                mem[66] = 55700
                call address(sha3(55700, this.address, 0, 0)) with:
                     gas gas_remaining - 25710 wei
            else:
                if Mask(24, 232, s) >> 232 > 255:
                    mem[89] = Mask(24, 232, s) >> 232
                    mem[87] = 130
                    mem[86] = this.address
                    mem[66] = 55444
                    call address(sha3(55444, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 <= 127:
                        mem[87] = Mask(24, 232, s) >> 232
                        mem[86] = this.address
                        mem[66] = 54932
                        call address(sha3(54932, this.address, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        mem[88] = Mask(24, 232, s) >> 232
                        mem[87] = 129
                        mem[86] = this.address
                        mem[66] = 55188
                        call address(sha3(55188, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
            idx = idx + 1
            s = s
            s = 16777216 * s
            continue 
    else:
        if call.data[676] <= 0:
            idx = 0
            s = 0
            s = arg1
            while idx < 1:
                if Mask(24, 232, s) >> 232 > 65535:
                    mem[90] = Mask(24, 232, s) >> 232
                    mem[87] = 131
                    mem[86] = this.address
                    mem[66] = 55700
                    call address(sha3(55700, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 > 255:
                        mem[89] = Mask(24, 232, s) >> 232
                        mem[87] = 130
                        mem[86] = this.address
                        mem[66] = 55444
                        call address(sha3(55444, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 <= 127:
                            mem[87] = Mask(24, 232, s) >> 232
                            mem[86] = this.address
                            mem[66] = 54932
                            call address(sha3(54932, this.address, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            mem[88] = Mask(24, 232, s) >> 232
                            mem[87] = 129
                            mem[86] = this.address
                            mem[66] = 55188
                            call address(sha3(55188, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                idx = idx + 1
                s = s
                s = 16777216 * s
                continue 
        else:
            hash = sha256hash(2082825034140337647, address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164]) 
            require sha256hash.result
            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[196]), hash
            require ext_call.success
            if call.data[36] - ext_call.return_data[0] < call.data[324]:
                idx = 0
                s = 0
                s = arg1
                while idx < 1:
                    if Mask(24, 232, s) >> 232 > 65535:
                        mem[90] = Mask(24, 232, s) >> 232
                        mem[87] = 131
                        mem[86] = this.address
                        mem[66] = 55700
                        call address(sha3(55700, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 > 255:
                            mem[89] = Mask(24, 232, s) >> 232
                            mem[87] = 130
                            mem[86] = this.address
                            mem[66] = 55444
                            call address(sha3(55444, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if Mask(24, 232, s) >> 232 <= 127:
                                mem[87] = Mask(24, 232, s) >> 232
                                mem[86] = this.address
                                mem[66] = 54932
                                call address(sha3(54932, this.address, 0)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                mem[88] = Mask(24, 232, s) >> 232
                                mem[87] = 129
                                mem[86] = this.address
                                mem[66] = 55188
                                call address(sha3(55188, this.address, 0, 0)) with:
                                     gas gas_remaining - 25710 wei
                    idx = idx + 1
                    s = s
                    s = 16777216 * s
                    continue 
            else:
                if call.data[324] <= 0:
                    idx = 0
                    s = 0
                    s = arg1
                    while idx < 1:
                        if Mask(24, 232, s) >> 232 > 65535:
                            mem[90] = Mask(24, 232, s) >> 232
                            mem[87] = 131
                            mem[86] = this.address
                            mem[66] = 55700
                            call address(sha3(55700, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if Mask(24, 232, s) >> 232 > 255:
                                mem[89] = Mask(24, 232, s) >> 232
                                mem[87] = 130
                                mem[86] = this.address
                                mem[66] = 55444
                                call address(sha3(55444, this.address, 0, 0)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                if Mask(24, 232, s) >> 232 <= 127:
                                    mem[87] = Mask(24, 232, s) >> 232
                                    mem[86] = this.address
                                    mem[66] = 54932
                                    call address(sha3(54932, this.address, 0)) with:
                                         gas gas_remaining - 25710 wei
                                else:
                                    mem[88] = Mask(24, 232, s) >> 232
                                    mem[87] = 129
                                    mem[86] = this.address
                                    mem[66] = 55188
                                    call address(sha3(55188, this.address, 0, 0)) with:
                                         gas gas_remaining - 25710 wei
                        idx = idx + 1
                        s = s
                        s = 16777216 * s
                        continue 
                else:
                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164], address(call.data[196]), call.data[228] << 248, call.data[260], call.data[292], call.data[324]
                    require ext_call.success
                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[356]), call.data[388], address(call.data[420]), call.data[452], call.data[484], call.data[516], address(call.data[548]), call.data[580] << 248, call.data[612], call.data[644], call.data[676]
                    require ext_call.success
                    idx = 0
                    s = 0
                    s = arg1
                    while idx < 5:
                        if Mask(24, 232, s) >> 232 > 65535:
                            mem[90] = Mask(24, 232, s) >> 232
                            mem[87] = 131
                            mem[86] = this.address
                            mem[66] = 55700
                            call address(sha3(55700, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if Mask(24, 232, s) >> 232 > 255:
                                mem[89] = Mask(24, 232, s) >> 232
                                mem[87] = 130
                                mem[86] = this.address
                                mem[66] = 55444
                                call address(sha3(55444, this.address, 0, 0)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                if Mask(24, 232, s) >> 232 <= 127:
                                    mem[87] = Mask(24, 232, s) >> 232
                                    mem[86] = this.address
                                    mem[66] = 54932
                                    call address(sha3(54932, this.address, 0)) with:
                                         gas gas_remaining - 25710 wei
                                else:
                                    mem[88] = Mask(24, 232, s) >> 232
                                    mem[87] = 129
                                    mem[86] = this.address
                                    mem[66] = 55188
                                    call address(sha3(55188, this.address, 0, 0)) with:
                                         gas gas_remaining - 25710 wei
                        idx = idx + 1
                        s = s
                        s = 16777216 * s
                        continue 
}

function sub_dfd67b27(?) {
    require tx.origin == 0xd602f918fbb51de896660bff92082e57c172eff
    require block.gas_limit < 20 * 10^6
    hash = sha256hash(11109560297177712838, address(call.data[356]), call.data[388], address(call.data[420]), call.data[452], call.data[484], call.data[516]) 
    require sha256hash.result
    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[548]), hash
    require ext_call.success
    if call.data[388] - ext_call.return_data[0] < call.data[676]:
        idx = 0
        s = 0
        s = arg1
        while idx < 1:
            if Mask(24, 232, s) >> 232 > 65535:
                mem[90] = Mask(24, 232, s) >> 232
                mem[87] = 131
                mem[86] = this.address
                mem[66] = 55700
                call address(sha3(55700, this.address, 0, 0)) with:
                     gas gas_remaining - 25710 wei
            else:
                if Mask(24, 232, s) >> 232 > 255:
                    mem[89] = Mask(24, 232, s) >> 232
                    mem[87] = 130
                    mem[86] = this.address
                    mem[66] = 55444
                    call address(sha3(55444, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 <= 127:
                        mem[87] = Mask(24, 232, s) >> 232
                        mem[86] = this.address
                        mem[66] = 54932
                        call address(sha3(54932, this.address, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        mem[88] = Mask(24, 232, s) >> 232
                        mem[87] = 129
                        mem[86] = this.address
                        mem[66] = 55188
                        call address(sha3(55188, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
            idx = idx + 1
            s = s
            s = 16777216 * s
            continue 
    else:
        if call.data[676] <= 0:
            idx = 0
            s = 0
            s = arg1
            while idx < 1:
                if Mask(24, 232, s) >> 232 > 65535:
                    mem[90] = Mask(24, 232, s) >> 232
                    mem[87] = 131
                    mem[86] = this.address
                    mem[66] = 55700
                    call address(sha3(55700, this.address, 0, 0)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if Mask(24, 232, s) >> 232 > 255:
                        mem[89] = Mask(24, 232, s) >> 232
                        mem[87] = 130
                        mem[86] = this.address
                        mem[66] = 55444
                        call address(sha3(55444, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 <= 127:
                            mem[87] = Mask(24, 232, s) >> 232
                            mem[86] = this.address
                            mem[66] = 54932
                            call address(sha3(54932, this.address, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            mem[88] = Mask(24, 232, s) >> 232
                            mem[87] = 129
                            mem[86] = this.address
                            mem[66] = 55188
                            call address(sha3(55188, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                idx = idx + 1
                s = s
                s = 16777216 * s
                continue 
        else:
            hash = sha256hash(11109560297177712838, address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164]) 
            require sha256hash.result
            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[196]), hash
            require ext_call.success
            if call.data[36] - ext_call.return_data[0] < call.data[324]:
                idx = 0
                s = 0
                s = arg1
                while idx < 1:
                    if Mask(24, 232, s) >> 232 > 65535:
                        mem[90] = Mask(24, 232, s) >> 232
                        mem[87] = 131
                        mem[86] = this.address
                        mem[66] = 55700
                        call address(sha3(55700, this.address, 0, 0)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if Mask(24, 232, s) >> 232 > 255:
                            mem[89] = Mask(24, 232, s) >> 232
                            mem[87] = 130
                            mem[86] = this.address
                            mem[66] = 55444
                            call address(sha3(55444, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if Mask(24, 232, s) >> 232 <= 127:
                                mem[87] = Mask(24, 232, s) >> 232
                                mem[86] = this.address
                                mem[66] = 54932
                                call address(sha3(54932, this.address, 0)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                mem[88] = Mask(24, 232, s) >> 232
                                mem[87] = 129
                                mem[86] = this.address
                                mem[66] = 55188
                                call address(sha3(55188, this.address, 0, 0)) with:
                                     gas gas_remaining - 25710 wei
                    idx = idx + 1
                    s = s
                    s = 16777216 * s
                    continue 
            else:
                if call.data[324] <= 0:
                    idx = 0
                    s = 0
                    s = arg1
                    while idx < 1:
                        if Mask(24, 232, s) >> 232 > 65535:
                            mem[90] = Mask(24, 232, s) >> 232
                            mem[87] = 131
                            mem[86] = this.address
                            mem[66] = 55700
                            call address(sha3(55700, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if Mask(24, 232, s) >> 232 > 255:
                                mem[89] = Mask(24, 232, s) >> 232
                                mem[87] = 130
                                mem[86] = this.address
                                mem[66] = 55444
                                call address(sha3(55444, this.address, 0, 0)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                if Mask(24, 232, s) >> 232 <= 127:
                                    mem[87] = Mask(24, 232, s) >> 232
                                    mem[86] = this.address
                                    mem[66] = 54932
                                    call address(sha3(54932, this.address, 0)) with:
                                         gas gas_remaining - 25710 wei
                                else:
                                    mem[88] = Mask(24, 232, s) >> 232
                                    mem[87] = 129
                                    mem[86] = this.address
                                    mem[66] = 55188
                                    call address(sha3(55188, this.address, 0, 0)) with:
                                         gas gas_remaining - 25710 wei
                        idx = idx + 1
                        s = s
                        s = 16777216 * s
                        continue 
                else:
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164], address(call.data[196]), call.data[228] << 248, call.data[260], call.data[292], call.data[324]
                    require ext_call.success
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[356]), call.data[388], address(call.data[420]), call.data[452], call.data[484], call.data[516], address(call.data[548]), call.data[580] << 248, call.data[612], call.data[644], call.data[676]
                    require ext_call.success
                    idx = 0
                    s = 0
                    s = arg1
                    while idx < 5:
                        if Mask(24, 232, s) >> 232 > 65535:
                            mem[90] = Mask(24, 232, s) >> 232
                            mem[87] = 131
                            mem[86] = this.address
                            mem[66] = 55700
                            call address(sha3(55700, this.address, 0, 0)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if Mask(24, 232, s) >> 232 > 255:
                                mem[89] = Mask(24, 232, s) >> 232
                                mem[87] = 130
                                mem[86] = this.address
                                mem[66] = 55444
                                call address(sha3(55444, this.address, 0, 0)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                if Mask(24, 232, s) >> 232 <= 127:
                                    mem[87] = Mask(24, 232, s) >> 232
                                    mem[86] = this.address
                                    mem[66] = 54932
                                    call address(sha3(54932, this.address, 0)) with:
                                         gas gas_remaining - 25710 wei
                                else:
                                    mem[88] = Mask(24, 232, s) >> 232
                                    mem[87] = 129
                                    mem[86] = this.address
                                    mem[66] = 55188
                                    call address(sha3(55188, this.address, 0, 0)) with:
                                         gas gas_remaining - 25710 wei
                        idx = idx + 1
                        s = s
                        s = 16777216 * s
                        continue 
}



// =====================  Runtime code  =====================




}
