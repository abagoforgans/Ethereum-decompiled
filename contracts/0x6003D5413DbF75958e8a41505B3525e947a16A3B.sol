contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 2126]
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

function setMarket(address arg1) {
    require stor0 == msg.sender
    marketAddress = arg1
}

function sub_dcd78126(?) payable {
    require arg1 <= 5
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

function batchWithdraw(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x51cff8d900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = msg.sender
        require ext_code.size(address(_9))
        call address(_9).withdraw(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        s = _9
        idx = idx + 1
        continue 
}

function sub_031f9c80(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = arg1.length
    s = 0
    idx = 0
    s = msg.value
    while idx < arg1.length:
        require idx < arg1.length
        _71 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _94 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (64 * arg1.length) + 256] = 0
        mem[(32 * arg2.length) + (64 * arg1.length) + 228] = msg.sender
        require ext_code.size(address(_71))
        call address(_71).0xd9214ed5 with:
           value _94 wei
             gas gas_remaining - 9710 wei
            args msg.sender
        mem[(32 * arg2.length) + (64 * arg1.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 192]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 192]
        if not ext_call.return_data[0]:
            s = _71
            idx = idx + 1
            s = s
            continue 
        require idx < mem[(32 * arg1.length) + 128]
        s = _71
        idx = idx + 1
        s = s - mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if s > 0:
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    mem[(32 * arg2.length) + (64 * arg1.length) + 224] = 0x1974884f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (64 * arg1.length) + 228] = msg.sender
    mem[(32 * arg2.length) + (64 * arg1.length) + 260] = 1
    mem[(32 * arg2.length) + (64 * arg1.length) + 292] = 128
    mem[(32 * arg2.length) + (64 * arg1.length) + 356] = arg1.length
    if Mask(251, 0, arg1.length):
        mem[(32 * arg2.length) + (64 * arg1.length) + 388] = mem[128]
        mem[(32 * arg2.length) + (64 * arg1.length) + 420 len floor32((32 * arg1.length) - 1)] = mem[160 len (32 * arg2.length) + (64 * arg1.length) + 64], 0, msg.sender, 1, 128, mem[(32 * arg2.length) + (64 * arg1.length) + 324], arg1.length, mem[128], mem[(32 * arg2.length) + (64 * arg1.length) + 420 len floor32((32 * arg1.length) - 1) + -(32 * arg2.length) + -(64 * arg1.length) - 260]
    mem[(32 * arg2.length) + (64 * arg1.length) + 324] = (32 * arg1.length) + 160
    mem[(98 * arg1.length) + (32 * arg2.length) + 388] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
    if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + 192]):
        mem[(98 * arg1.length) + (32 * arg2.length) + 420] = mem[(32 * arg2.length) + (32 * arg1.length) + 224]
        mem[(98 * arg1.length) + (32 * arg2.length) + 452 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 192]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 256 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 192]) - 1)]
    if ext_code.size(marketAddress):
        call marketAddress.0x1974884f with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg2.length) + (64 * arg1.length) + 228 len (32 * mem[(32 * arg2.length) + (32 * arg1.length) + 192]) + (32 * arg1.length) + 192]
        if ext_call.success:
    revert
}

function sub_5dcc68de(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = arg1.length
    s = 0
    idx = 0
    s = msg.value
    while idx < arg1.length:
        require idx < arg1.length
        _71 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _94 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (64 * arg1.length) + 256] = 0
        mem[(32 * arg2.length) + (64 * arg1.length) + 228] = msg.sender
        require ext_code.size(address(_71))
        call address(_71).0x5a0cf9f3 with:
           value _94 wei
             gas gas_remaining - 9710 wei
            args msg.sender
        mem[(32 * arg2.length) + (64 * arg1.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 192]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 192]
        if not ext_call.return_data[0]:
            s = _71
            idx = idx + 1
            s = s
            continue 
        require idx < mem[(32 * arg1.length) + 128]
        s = _71
        idx = idx + 1
        s = s - mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if s > 0:
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    mem[(32 * arg2.length) + (64 * arg1.length) + 224] = 0x1974884f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (64 * arg1.length) + 228] = msg.sender
    mem[(32 * arg2.length) + (64 * arg1.length) + 260] = 0
    mem[(32 * arg2.length) + (64 * arg1.length) + 292] = 128
    mem[(32 * arg2.length) + (64 * arg1.length) + 356] = arg1.length
    if Mask(251, 0, arg1.length):
        mem[(32 * arg2.length) + (64 * arg1.length) + 388] = mem[128]
        mem[(32 * arg2.length) + (64 * arg1.length) + 420 len floor32((32 * arg1.length) - 1)] = mem[160 len (32 * arg2.length) + (64 * arg1.length) + 64], 0, msg.sender, 0, 128, mem[(32 * arg2.length) + (64 * arg1.length) + 324], arg1.length, mem[128], mem[(32 * arg2.length) + (64 * arg1.length) + 420 len floor32((32 * arg1.length) - 1) + -(32 * arg2.length) + -(64 * arg1.length) - 260]
    mem[(32 * arg2.length) + (64 * arg1.length) + 324] = (32 * arg1.length) + 160
    mem[(98 * arg1.length) + (32 * arg2.length) + 388] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
    if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + 192]):
        mem[(98 * arg1.length) + (32 * arg2.length) + 420] = mem[(32 * arg2.length) + (32 * arg1.length) + 224]
        mem[(98 * arg1.length) + (32 * arg2.length) + 452 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 192]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 256 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 192]) - 1)]
    if ext_code.size(marketAddress):
        call marketAddress.0x1974884f with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg2.length) + (64 * arg1.length) + 228 len (32 * mem[(32 * arg2.length) + (32 * arg1.length) + 192]) + (32 * arg1.length) + 192]
        if ext_call.success:
    revert
}

function sub_69a82efc(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 192] = arg2.length
    s = 0
    idx = 0
    s = msg.value
    while idx < arg2.length:
        require idx < arg2.length
        _95 = mem[(32 * idx) + 128]
        if not arg1:
            if idx < mem[(32 * arg2.length) + 128]:
                _124 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg3.length) + (64 * arg2.length) + 256] = 0
                mem[(32 * arg3.length) + (64 * arg2.length) + 228] = msg.sender
                if ext_code.size(address(_95)):
                    call address(_95).0x5a0cf9f3 with:
                       value _124 wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    mem[(32 * arg3.length) + (64 * arg2.length) + 224] = ext_call.return_data[0]
                    if ext_call.success:
                        if idx < mem[(32 * arg3.length) + (32 * arg2.length) + 192]:
                            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
                            if idx < mem[(32 * arg3.length) + (32 * arg2.length) + 192]:
                                if not ext_call.return_data[0]:
                                    s = _95
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if idx < mem[(32 * arg2.length) + 128]:
                                    s = _95
                                    idx = idx + 1
                                    s = s - mem[(32 * idx) + (32 * arg2.length) + 160]
                                    continue 
        else:
            if idx < mem[(32 * arg2.length) + 128]:
                _128 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg3.length) + (64 * arg2.length) + 256] = 0
                mem[(32 * arg3.length) + (64 * arg2.length) + 228] = msg.sender
                if ext_code.size(address(_95)):
                    call address(_95).0xd9214ed5 with:
                       value _128 wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    mem[(32 * arg3.length) + (64 * arg2.length) + 224] = ext_call.return_data[0]
                    if ext_call.success:
                        if idx < mem[(32 * arg3.length) + (32 * arg2.length) + 192]:
                            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * idx) + 224] = bool(ext_call.return_data[0])
                            if idx < mem[(32 * arg3.length) + (32 * arg2.length) + 192]:
                                if not ext_call.return_data[0]:
                                    s = _95
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if idx < mem[(32 * arg2.length) + 128]:
                                    s = _95
                                    idx = idx + 1
                                    s = s - mem[(32 * idx) + (32 * arg2.length) + 160]
                                    continue 
        revert
    if s > 0:
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    mem[(32 * arg3.length) + (64 * arg2.length) + 224] = 0x1974884f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (64 * arg2.length) + 228] = msg.sender
    mem[(32 * arg3.length) + (64 * arg2.length) + 260] = arg1
    mem[(32 * arg3.length) + (64 * arg2.length) + 292] = 128
    mem[(32 * arg3.length) + (64 * arg2.length) + 356] = arg2.length
    if Mask(251, 0, arg2.length):
        mem[(32 * arg3.length) + (64 * arg2.length) + 388] = mem[128]
        mem[(32 * arg3.length) + (64 * arg2.length) + 420 len floor32((32 * arg2.length) - 1)] = mem[160 len (32 * arg3.length) + (64 * arg2.length) + 64], 0, msg.sender, arg1, 128, mem[(32 * arg3.length) + (64 * arg2.length) + 324], arg2.length, mem[128], mem[(32 * arg3.length) + (64 * arg2.length) + 420 len floor32((32 * arg2.length) - 1) + -(32 * arg3.length) + -(64 * arg2.length) - 260]
    mem[(32 * arg3.length) + (64 * arg2.length) + 324] = (32 * arg2.length) + 160
    mem[(98 * arg2.length) + (32 * arg3.length) + 388] = mem[(32 * arg3.length) + (32 * arg2.length) + 192]
    if Mask(251, 0, mem[(32 * arg3.length) + (32 * arg2.length) + 192]):
        mem[(98 * arg2.length) + (32 * arg3.length) + 420] = mem[(32 * arg3.length) + (32 * arg2.length) + 224]
        mem[(98 * arg2.length) + (32 * arg3.length) + 452 len floor32((32 * mem[(32 * arg3.length) + (32 * arg2.length) + 192]) - 1)] = mem[(32 * arg3.length) + (32 * arg2.length) + 256 len floor32((32 * mem[(32 * arg3.length) + (32 * arg2.length) + 192]) - 1)]
    if ext_code.size(marketAddress):
        call marketAddress.0x1974884f with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg3.length) + (64 * arg2.length) + 228 len (32 * mem[(32 * arg3.length) + (32 * arg2.length) + 192]) + (32 * arg2.length) + 192]
        if ext_call.success:
    revert
}



}
