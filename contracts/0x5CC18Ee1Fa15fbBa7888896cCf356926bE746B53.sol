contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 3505]
}



// =====================  Runtime code  =====================


address stor0;
address marketAddress;

function market() {
    return marketAddress
}

function _fallback() payable {
  stop
}

function sub_acbbf3ac(?) {
    require arg1 + 1
    return (10 * 10^18 / arg1 + 1)
}

function sub_d87789e0(?) {
    require arg1 - 1
    return (10 * 10^18 / arg1 - 1)
}

function setMarket(address arg1) {
    require stor0 == msg.sender
    marketAddress = arg1
}

function withdraw() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_47cf775d(?) {
    idx = 0
    while uint8(idx) < arg3:
        require arg3
        mem[96] = 0xf401e49a00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg4
        mem[164] = arg5
        mem[196] = arg6
        require ext_code.size(marketAddress)
        call marketAddress.0xf401e49a with:
           value arg2 / arg3 wei
             gas gas_remaining - 9710 wei
            args address(arg1), arg4 << 224, arg5 << 248, arg6
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_dcd78126(?) payable {
    idx = 0
    while uint8(idx) < arg1:
        require arg1
        mem[96] = 0xf401e49a00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        require ext_code.size(marketAddress)
        call marketAddress.0xf401e49a with:
           value msg.value / arg1 wei
             gas gas_remaining - 9710 wei
            args msg.sender, arg2 << 224, arg3 << 248, arg4
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_25a0b2e1(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x3b7416ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = address(_9)
        require ext_code.size(marketAddress)
        call marketAddress.0x3b7416ad with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_9)
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_3a256949(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _23 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        _25 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0xb82a097800000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = _25
            require ext_code.size(address(_21))
            call address(_21).0xb82a0978 with:
                 gas gas_remaining - 710 wei
                args msg.sender, _25
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0xdf9b8fff00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = _25
            require ext_code.size(address(_21))
            call address(_21).0xdf9b8fff with:
                 gas gas_remaining - 710 wei
                args msg.sender, _25
        require ext_call.success
        s = _25
        s = _23
        s = _21
        idx = idx + 1
        continue 
}

function sub_031f9c80(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        s = 0
        idx = 0
        s = msg.value
        while idx < arg1.length:
            require idx < arg1.length
            _84 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _103 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 256] = 0
            mem[(64 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
            require ext_code.size(address(_84))
            call address(_84).0xd9214ed5 with:
               value _103 wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            mem[(64 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
            require ext_call.success
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 192]
            if not ext_call.return_data[0]:
                s = _84
                idx = idx + 1
                s = s
                continue 
            require idx < mem[(32 * arg1.length) + 128]
            s = _84
            idx = idx + 1
            s = s - mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        if s > 0:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[(64 * arg1.length) + (32 * arg2.length) + 224] = 0x1974884f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = 1
        mem[(64 * arg1.length) + (32 * arg2.length) + 292] = 128
        mem[(64 * arg1.length) + (32 * arg2.length) + 356] = arg1.length
        mem[(64 * arg1.length) + (32 * arg2.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + 324] = (32 * arg1.length) + 160
        mem[(98 * arg1.length) + (32 * arg2.length) + 388] = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
        mem[(98 * arg1.length) + (32 * arg2.length) + 420 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 192])]
        require ext_code.size(marketAddress)
        call marketAddress.0x1974884f with:
             gas gas_remaining - 710 wei
            args mem[(64 * arg1.length) + (32 * arg2.length) + 228 len (32 * mem[(32 * arg1.length) + (32 * arg2.length) + 192]) + (32 * arg1.length) + 192]
        require ext_call.success
}

function sub_5dcc68de(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        s = 0
        idx = 0
        s = msg.value
        while idx < arg1.length:
            require idx < arg1.length
            _84 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _103 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 256] = 0
            mem[(64 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
            require ext_code.size(address(_84))
            call address(_84).0x5a0cf9f3 with:
               value _103 wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            mem[(64 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
            require ext_call.success
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 192]
            if not ext_call.return_data[0]:
                s = _84
                idx = idx + 1
                s = s
                continue 
            require idx < mem[(32 * arg1.length) + 128]
            s = _84
            idx = idx + 1
            s = s - mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        if s > 0:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[(64 * arg1.length) + (32 * arg2.length) + 224] = 0x1974884f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = 0
        mem[(64 * arg1.length) + (32 * arg2.length) + 292] = 128
        mem[(64 * arg1.length) + (32 * arg2.length) + 356] = arg1.length
        mem[(64 * arg1.length) + (32 * arg2.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + 324] = (32 * arg1.length) + 160
        mem[(98 * arg1.length) + (32 * arg2.length) + 388] = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
        mem[(98 * arg1.length) + (32 * arg2.length) + 420 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 192])]
        require ext_code.size(marketAddress)
        call marketAddress.0x1974884f with:
             gas gas_remaining - 710 wei
            args mem[(64 * arg1.length) + (32 * arg2.length) + 228 len (32 * mem[(32 * arg1.length) + (32 * arg2.length) + 192]) + (32 * arg1.length) + 192]
        require ext_call.success
}

function sub_fd29e664(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
    if arg4.length:
        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = arg4.length
        s = 0
        idx = 0
        s = arg2
        while idx < arg4.length:
            require idx < arg4.length
            _108 = mem[(32 * idx) + 128]
            if not arg3:
                if idx < mem[(32 * arg4.length) + 128]:
                    _133 = mem[(32 * idx) + (32 * arg4.length) + 160]
                    mem[(64 * arg4.length) + (32 * arg5.length) + 256] = 0
                    mem[(64 * arg4.length) + (32 * arg5.length) + 228] = arg1
                    require ext_code.size(address(_108))
                    call address(_108).0x5a0cf9f3 with:
                       value _133 wei
                         gas gas_remaining - 9710 wei
                        args arg1
                    mem[(64 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    require ext_call.success
                    if idx < mem[(32 * arg4.length) + (32 * arg5.length) + 192]:
                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
                        if idx < mem[(32 * arg4.length) + (32 * arg5.length) + 192]:
                            if not ext_call.return_data[0]:
                                s = _108
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < mem[(32 * arg4.length) + 128]:
                                s = _108
                                idx = idx + 1
                                s = s - mem[(32 * idx) + (32 * arg4.length) + 160]
                                continue 
            else:
                if idx < mem[(32 * arg4.length) + 128]:
                    _137 = mem[(32 * idx) + (32 * arg4.length) + 160]
                    mem[(64 * arg4.length) + (32 * arg5.length) + 256] = 0
                    mem[(64 * arg4.length) + (32 * arg5.length) + 228] = arg1
                    require ext_code.size(address(_108))
                    call address(_108).0xd9214ed5 with:
                       value _137 wei
                         gas gas_remaining - 9710 wei
                        args arg1
                    mem[(64 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    require ext_call.success
                    if idx < mem[(32 * arg4.length) + (32 * arg5.length) + 192]:
                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
                        if idx < mem[(32 * arg4.length) + (32 * arg5.length) + 192]:
                            if not ext_call.return_data[0]:
                                s = _108
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < mem[(32 * arg4.length) + 128]:
                                s = _108
                                idx = idx + 1
                                s = s - mem[(32 * idx) + (32 * arg4.length) + 160]
                                continue 
            revert
        if s > 0:
            call arg1 with:
               value s wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[(64 * arg4.length) + (32 * arg5.length) + 224] = 0x1974884f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg4.length) + (32 * arg5.length) + 228] = arg1
        mem[(64 * arg4.length) + (32 * arg5.length) + 260] = arg3
        mem[(64 * arg4.length) + (32 * arg5.length) + 292] = 128
        mem[(64 * arg4.length) + (32 * arg5.length) + 356] = arg4.length
        mem[(64 * arg4.length) + (32 * arg5.length) + 388 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (32 * arg5.length) + 324] = (32 * arg4.length) + 160
        mem[(98 * arg4.length) + (32 * arg5.length) + 388] = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
        mem[(98 * arg4.length) + (32 * arg5.length) + 420 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 192])] = mem[(32 * arg4.length) + (32 * arg5.length) + 224 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 192])]
        require ext_code.size(marketAddress)
        call marketAddress.0x1974884f with:
             gas gas_remaining - 710 wei
            args mem[(64 * arg4.length) + (32 * arg5.length) + 228 len (32 * mem[(32 * arg4.length) + (32 * arg5.length) + 192]) + (32 * arg4.length) + 192]
        require ext_call.success
}

function sub_69a82efc(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if arg2.length:
        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = arg2.length
        s = 0
        idx = 0
        s = msg.value
        while idx < arg2.length:
            require idx < arg2.length
            _108 = mem[(32 * idx) + 128]
            if not arg1:
                if idx < mem[(32 * arg2.length) + 128]:
                    _133 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(64 * arg2.length) + (32 * arg3.length) + 256] = 0
                    mem[(64 * arg2.length) + (32 * arg3.length) + 228] = msg.sender
                    require ext_code.size(address(_108))
                    call address(_108).0x5a0cf9f3 with:
                       value _133 wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    mem[(64 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
                    require ext_call.success
                    if idx < mem[(32 * arg2.length) + (32 * arg3.length) + 192]:
                        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
                        if idx < mem[(32 * arg2.length) + (32 * arg3.length) + 192]:
                            if not ext_call.return_data[0]:
                                s = _108
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < mem[(32 * arg2.length) + 128]:
                                s = _108
                                idx = idx + 1
                                s = s - mem[(32 * idx) + (32 * arg2.length) + 160]
                                continue 
            else:
                if idx < mem[(32 * arg2.length) + 128]:
                    _137 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(64 * arg2.length) + (32 * arg3.length) + 256] = 0
                    mem[(64 * arg2.length) + (32 * arg3.length) + 228] = msg.sender
                    require ext_code.size(address(_108))
                    call address(_108).0xd9214ed5 with:
                       value _137 wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    mem[(64 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
                    require ext_call.success
                    if idx < mem[(32 * arg2.length) + (32 * arg3.length) + 192]:
                        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
                        if idx < mem[(32 * arg2.length) + (32 * arg3.length) + 192]:
                            if not ext_call.return_data[0]:
                                s = _108
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < mem[(32 * arg2.length) + 128]:
                                s = _108
                                idx = idx + 1
                                s = s - mem[(32 * idx) + (32 * arg2.length) + 160]
                                continue 
            revert
        if s > 0:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[(64 * arg2.length) + (32 * arg3.length) + 224] = 0x1974884f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + (32 * arg3.length) + 228] = msg.sender
        mem[(64 * arg2.length) + (32 * arg3.length) + 260] = arg1
        mem[(64 * arg2.length) + (32 * arg3.length) + 292] = 128
        mem[(64 * arg2.length) + (32 * arg3.length) + 356] = arg2.length
        mem[(64 * arg2.length) + (32 * arg3.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(64 * arg2.length) + (32 * arg3.length) + 324] = (32 * arg2.length) + 160
        mem[(98 * arg2.length) + (32 * arg3.length) + 388] = mem[(32 * arg2.length) + (32 * arg3.length) + 192]
        mem[(98 * arg2.length) + (32 * arg3.length) + 420 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 192])]
        require ext_code.size(marketAddress)
        call marketAddress.0x1974884f with:
             gas gas_remaining - 710 wei
            args mem[(64 * arg2.length) + (32 * arg3.length) + 228 len (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 192]) + (32 * arg2.length) + 192]
        require ext_call.success
}

function sub_7141f423(?) payable {
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if not arg6:
        require arg3 - 1
        idx = 0
        while uint8(idx) < arg1:
            require arg1
            _199 = (32 * arg4.length) + (32 * arg5.length) + 160
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0xf401e49a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = arg2
            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg3
            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = arg6
            require ext_code.size(marketAddress)
            call marketAddress.0xf401e49a with:
               value arg1 * 10 * 10^18 / arg3 - 1 / arg1 wei
                 gas gas_remaining - 9710 wei
                args msg.sender, arg2 << 224, arg3 << 248, arg6
            require ext_call.success
            idx = idx + 1
            continue 
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
        if arg4.length:
            _msize = max((32 * arg4.length) + (32 * arg5.length) + 60, (32 * arg4.length) + (32 * arg5.length) + 96, _199)
            mem[_msize + 132] = arg4.length
            mem[64] = (_msize + 132) + (32 * arg4.length) + 32
            s = 0
            idx = 0
            s = msg.value - (arg1 * 10 * 10^18 / arg3 - 1)
            while idx < arg4.length:
                require idx < arg4.length
                _408 = mem[(32 * idx) + 128]
                if not arg6:
                    if idx < arg5.length:
                        _449 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[(_msize + 132) + (32 * arg4.length) + 64] = 0
                        mem[(_msize + 132) + (32 * arg4.length) + 36] = msg.sender
                        require ext_code.size(address(_408))
                        call address(_408).0x5a0cf9f3 with:
                           value _449 wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        mem[(_msize + 132) + (32 * arg4.length) + 32] = ext_call.return_data[0]
                        require ext_call.success
                        if idx < mem[_msize + 132]:
                            mem[(_msize + 132) + (32 * idx) + 32] = bool(ext_call.return_data[0])
                            if idx < mem[_msize + 132]:
                                if not ext_call.return_data[0]:
                                    s = _408
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if idx < arg5.length:
                                    s = _408
                                    idx = idx + 1
                                    s = s - mem[(32 * idx) + (32 * arg4.length) + 160]
                                    continue 
                else:
                    if idx < arg5.length:
                        _453 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[(_msize + 132) + (32 * arg4.length) + 64] = 0
                        mem[(_msize + 132) + (32 * arg4.length) + 36] = msg.sender
                        require ext_code.size(address(_408))
                        call address(_408).0xd9214ed5 with:
                           value _453 wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        mem[(_msize + 132) + (32 * arg4.length) + 32] = ext_call.return_data[0]
                        require ext_call.success
                        if idx < mem[_msize + 132]:
                            mem[(_msize + 132) + (32 * idx) + 32] = bool(ext_call.return_data[0])
                            if idx < mem[_msize + 132]:
                                if not ext_call.return_data[0]:
                                    s = _408
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if idx < arg5.length:
                                    s = _408
                                    idx = idx + 1
                                    s = s - mem[(32 * idx) + (32 * arg4.length) + 160]
                                    continue 
                revert
            if s > 0:
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            mem[(_msize + 132) + (32 * arg4.length) + 32] = 0x1974884f00000000000000000000000000000000000000000000000000000000
            mem[(_msize + 132) + (32 * arg4.length) + 36] = msg.sender
            mem[(_msize + 132) + (32 * arg4.length) + 68] = arg6
            mem[(_msize + 132) + (32 * arg4.length) + 100] = 128
            mem[(_msize + 132) + (32 * arg4.length) + 164] = arg4.length
            mem[(_msize + 132) + (32 * arg4.length) + 196 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(_msize + 132) + (32 * arg4.length) + 132] = (32 * arg4.length) + 160
            mem[(64 * arg4.length) + (_msize + 132) + 196] = mem[_msize + 132]
            mem[(64 * arg4.length) + (_msize + 132) + 228 len floor32(mem[_msize + 132])] = mem[(_msize + 132) + 32 len floor32(mem[_msize + 132])]
            require ext_code.size(marketAddress)
            call marketAddress.0x1974884f with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg6, Array(len=arg4.length, data=mem[(_msize + 132) + (32 * arg4.length) + 196 len (32 * mem[_msize + 132]) + (32 * arg4.length) + 32]), (32 * arg4.length) + 160
            require ext_call.success
    else:
        require arg3 + 1
        idx = 0
        while uint8(idx) < arg1:
            require arg1
            _201 = (32 * arg4.length) + (32 * arg5.length) + 160
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0xf401e49a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = arg2
            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg3
            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = arg6
            require ext_code.size(marketAddress)
            call marketAddress.0xf401e49a with:
               value arg1 * 10 * 10^18 / arg3 + 1 / arg1 wei
                 gas gas_remaining - 9710 wei
                args msg.sender, arg2 << 224, arg3 << 248, arg6
            require ext_call.success
            idx = idx + 1
            continue 
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
        if arg4.length:
            _msize = max((32 * arg4.length) + (32 * arg5.length) + 60, (32 * arg4.length) + (32 * arg5.length) + 96, _201)
            mem[_msize + 132] = arg4.length
            mem[64] = (_msize + 132) + (32 * arg4.length) + 32
            s = 0
            idx = 0
            s = msg.value - (arg1 * 10 * 10^18 / arg3 + 1)
            while idx < arg4.length:
                require idx < arg4.length
                _414 = mem[(32 * idx) + 128]
                if not arg6:
                    if idx < arg5.length:
                        _471 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[(_msize + 132) + (32 * arg4.length) + 64] = 0
                        mem[(_msize + 132) + (32 * arg4.length) + 36] = msg.sender
                        require ext_code.size(address(_414))
                        call address(_414).0x5a0cf9f3 with:
                           value _471 wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        mem[(_msize + 132) + (32 * arg4.length) + 32] = ext_call.return_data[0]
                        require ext_call.success
                        if idx < mem[_msize + 132]:
                            mem[(_msize + 132) + (32 * idx) + 32] = bool(ext_call.return_data[0])
                            if idx < mem[_msize + 132]:
                                if not ext_call.return_data[0]:
                                    s = _414
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if idx < arg5.length:
                                    s = _414
                                    idx = idx + 1
                                    s = s - mem[(32 * idx) + (32 * arg4.length) + 160]
                                    continue 
                else:
                    if idx < arg5.length:
                        _475 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[(_msize + 132) + (32 * arg4.length) + 64] = 0
                        mem[(_msize + 132) + (32 * arg4.length) + 36] = msg.sender
                        require ext_code.size(address(_414))
                        call address(_414).0xd9214ed5 with:
                           value _475 wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        mem[(_msize + 132) + (32 * arg4.length) + 32] = ext_call.return_data[0]
                        require ext_call.success
                        if idx < mem[_msize + 132]:
                            mem[(_msize + 132) + (32 * idx) + 32] = bool(ext_call.return_data[0])
                            if idx < mem[_msize + 132]:
                                if not ext_call.return_data[0]:
                                    s = _414
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if idx < arg5.length:
                                    s = _414
                                    idx = idx + 1
                                    s = s - mem[(32 * idx) + (32 * arg4.length) + 160]
                                    continue 
                revert
            if s > 0:
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            mem[(_msize + 132) + (32 * arg4.length) + 32] = 0x1974884f00000000000000000000000000000000000000000000000000000000
            mem[(_msize + 132) + (32 * arg4.length) + 36] = msg.sender
            mem[(_msize + 132) + (32 * arg4.length) + 68] = arg6
            mem[(_msize + 132) + (32 * arg4.length) + 100] = 128
            mem[(_msize + 132) + (32 * arg4.length) + 164] = arg4.length
            mem[(_msize + 132) + (32 * arg4.length) + 196 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(_msize + 132) + (32 * arg4.length) + 132] = (32 * arg4.length) + 160
            mem[(64 * arg4.length) + (_msize + 132) + 196] = mem[_msize + 132]
            mem[(64 * arg4.length) + (_msize + 132) + 228 len floor32(mem[_msize + 132])] = mem[(_msize + 132) + 32 len floor32(mem[_msize + 132])]
            require ext_code.size(marketAddress)
            call marketAddress.0x1974884f with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg6, Array(len=arg4.length, data=mem[(_msize + 132) + (32 * arg4.length) + 196 len (32 * mem[_msize + 132]) + (32 * arg4.length) + 32]), (32 * arg4.length) + 160
            require ext_call.success
}



}
