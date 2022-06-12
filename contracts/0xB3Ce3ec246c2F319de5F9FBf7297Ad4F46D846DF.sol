contract main {


// =======================  Init code  ======================


uint8 stor0; offset 152
address stor0;

function _fallback() {
    Mask(152, 0, stor0.field_0) = 0xcde0b7cfc51041fe62b08e6c45c59ae5109650
    uint8(stor0.field_152) = 0
    return code.data[113 len 7579]
}



// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function destruct() {
    require msg.sender == adminAddress
    selfdestruct(adminAddress)
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == adminAddress
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function tokenBalance(address arg1, address arg2) {
    if ext_code.size(arg2) <= 0:
        return 0
    call arg2 with:
       funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    if not ext_call.success:
        return 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allWETHbalances(address arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 192] = arg2.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _50 = mem[(32 * idx) + 128]
        mem[(64 * arg2.length) + 256] = 0
        mem[(64 * arg2.length) + 228] = address(_50)
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(_50)
        mem[(64 * arg2.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg2.length) + 192]
        mem[(32 * idx) + (32 * arg2.length) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 224] = 32
    mem[(64 * arg2.length) + 256] = mem[(32 * arg2.length) + 192]
    s = 0
    while arg2.length < 32 * mem[(32 * arg2.length) + 192]:
        mem[(66 * arg2.length) + 288] = mem[(34 * arg2.length) + 224]
        s = arg2.length + 32
        continue 
    return 32, mem[(64 * arg2.length) + 256 len (32 * mem[(32 * arg2.length) + 192]) + 32]
}

function sub_6e4790df(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    mem[(32 * arg4.length) + 192] = arg4.length
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        _50 = mem[(32 * idx) + 128]
        mem[(64 * arg4.length) + 228] = arg2
        mem[(64 * arg4.length) + 260] = arg3
        mem[(64 * arg4.length) + 292] = _50
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args address(arg2), address(arg3), _50
        mem[(64 * arg4.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg4.length) + 192]
        mem[(32 * idx) + (32 * arg4.length) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * arg4.length) + 224] = 32
    mem[(64 * arg4.length) + 256] = mem[(32 * arg4.length) + 192]
    s = 0
    while arg4.length < 32 * mem[(32 * arg4.length) + 192]:
        mem[(66 * arg4.length) + 288] = mem[(34 * arg4.length) + 224]
        s = arg4.length + 32
        continue 
    return 32, mem[(64 * arg4.length) + 256 len (32 * mem[(32 * arg4.length) + 192]) + 32]
}

function deltaBalances(address arg1, address arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    mem[(32 * arg3.length) + 160] = 0
    mem[(32 * arg3.length) + 192] = arg3.length
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[(64 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
        mem[(64 * arg3.length) + 260] = arg2
        require ext_code.size(arg1)
        call arg1.balanceOf(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args mem[(64 * arg3.length) + 228], address(arg2)
        mem[(64 * arg3.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg3.length) + 192]
        mem[(32 * idx) + (32 * arg3.length) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * arg3.length) + 224] = 32
    mem[(64 * arg3.length) + 256] = mem[(32 * arg3.length) + 192]
    s = 0
    while arg3.length < 32 * mem[(32 * arg3.length) + 192]:
        mem[(66 * arg3.length) + 288] = mem[(34 * arg3.length) + 224]
        s = arg3.length + 32
        continue 
    return 32, mem[(64 * arg3.length) + 256 len (32 * mem[(32 * arg3.length) + 192]) + 32]
}

function multiDeltaBalances(address[] arg1, address arg2, address[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg3.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg3.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg3.length) + 224] = arg3.length * arg1.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _57 = mem[(32 * idx) + 128]
        s = 0
        while s < arg3.length:
            require s < arg3.length
            mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 260] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
            mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 292] = arg2
            require ext_code.size(address(_57))
            call address(_57).balanceOf(address arg1, address arg2) with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 260], address(arg2)
            mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 256] = ext_call.return_data[0]
            require ext_call.success
            require (s * arg1.length) + idx < arg3.length * arg1.length
            mem[(32 * (s * arg1.length) + idx) + (32 * arg1.length) + (32 * arg3.length) + 256] = ext_call.return_data[0]
            s = s + 1
            continue 
        s = _57
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 256] = 32
    mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 288] = arg3.length * arg1.length
    mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 320 len floor32(arg3.length * arg1.length)] = mem[(32 * arg1.length) + (32 * arg3.length) + 256 len floor32(arg3.length * arg1.length)]
    return Array(len=arg3.length * arg1.length, data=mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 320 len 32 * arg3.length * arg1.length]), 
}

function walletBalances(address arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    require arg2.length > 0
    mem[(32 * arg2.length) + 192] = arg2.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            require idx < mem[(32 * arg2.length) + 192]
            mem[(32 * idx) + (32 * arg2.length) + 224] = eth.balance(arg1)
        else:
            require idx < arg2.length
            _78 = mem[(32 * idx) + 128]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                require idx < mem[(32 * arg2.length) + 192]
                mem[(32 * idx) + (32 * arg2.length) + 224] = 0
            else:
                mem[(64 * arg2.length) + 224] = Mask(32, 224, sha3('balanceOf(address)'))
                mem[(64 * arg2.length) + 228] = arg1
                call address(_78) with:
                   funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                     gas gas_remaining - 25710 wei
                    args arg1
                if not ext_call.success:
                    require idx < mem[(32 * arg2.length) + 192]
                    mem[(32 * idx) + (32 * arg2.length) + 224] = 0
                else:
                    mem[(64 * arg2.length) + 256] = 0
                    mem[(64 * arg2.length) + 228] = arg1
                    require ext_code.size(address(_78))
                    call address(_78).0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args arg1
                    mem[(64 * arg2.length) + 224] = ext_call.return_data[0]
                    require ext_call.success
                    require idx < mem[(32 * arg2.length) + 192]
                    mem[(32 * idx) + (32 * arg2.length) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 224] = 32
    mem[(64 * arg2.length) + 256] = mem[(32 * arg2.length) + 192]
    mem[(64 * arg2.length) + 288 len floor32(mem[(32 * arg2.length) + 192])] = mem[(32 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 192])]
    return 32, mem[(64 * arg2.length) + 256 len (32 * mem[(32 * arg2.length) + 192]) + 32]
}

function allBalances(address arg1, address arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    mem[(32 * arg3.length) + 160] = 0
    mem[(32 * arg3.length) + 192] = 2 * arg3.length
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[(98 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
        mem[(98 * arg3.length) + 260] = arg2
        require ext_code.size(arg1)
        call arg1.balanceOf(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args mem[(98 * arg3.length) + 228], address(arg2)
        mem[(98 * arg3.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require 2 * idx < 2 * arg3.length
        mem[(64 * idx) + (32 * arg3.length) + 224] = ext_call.return_data[0]
        require idx < arg3.length
        if not mem[(32 * idx) + 140 len 20]:
            require (2 * idx) + 1 < 2 * arg3.length
            mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 224] = eth.balance(arg2)
        else:
            require idx < arg3.length
            _109 = mem[(32 * idx) + 128]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                require (2 * idx) + 1 < 2 * arg3.length
                mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 224] = 0
            else:
                mem[(98 * arg3.length) + 224] = Mask(32, 224, sha3('balanceOf(address)'))
                mem[(98 * arg3.length) + 228] = arg2
                call address(_109) with:
                   funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                     gas gas_remaining - 25710 wei
                    args arg2
                if not ext_call.success:
                    require (2 * idx) + 1 < 2 * arg3.length
                    mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 224] = 0
                else:
                    mem[(98 * arg3.length) + 256] = 0
                    mem[(98 * arg3.length) + 228] = arg2
                    require ext_code.size(address(_109))
                    call address(_109).0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args arg2
                    mem[(98 * arg3.length) + 224] = ext_call.return_data[0]
                    require ext_call.success
                    require (2 * idx) + 1 < 2 * arg3.length
                    mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(98 * arg3.length) + 224] = 32
    mem[(98 * arg3.length) + 256] = 2 * arg3.length
    mem[(98 * arg3.length) + 288 len 2 * Mask(251, 4, arg3.length)] = mem[(32 * arg3.length) + 224 len 2 * Mask(251, 4, arg3.length)]
    return memory
      from (98 * arg3.length) + 224
       len (64 * arg3.length) + 64
}

function sub_90d2bb81(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 0
    require arg4.length == arg3.length
    require arg3.length == arg2.length
    require arg2.length == arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288] = arg4.length
    s = 0
    idx = 0
    while idx < arg4.length:
        require idx < arg1.length
        _69 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require idx < arg3.length
        _81 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg4.length
        _87 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 324] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 356] = address(_81)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 388] = _87
        require ext_code.size(address(_69))
        call address(_69).getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 324], address(_81), _87
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 320] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288]
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 320] = ext_call.return_data[0]
        s = _69
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 320] = 32
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 352] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 384 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 320 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288])]
    return Array(len=mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288], data=mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (64 * arg4.length) + 384 len 32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288]]), 
}

function sub_0c109635(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 2 * arg3.length * arg2.length
    idx = 0
    while idx < arg2.length:
        s = 0
        while s < arg3.length:
            require s < arg3.length
            require idx < arg2.length
            _182 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 260] = mem[(32 * s) + (32 * arg2.length) + 172 len 20]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 292] = address(_182)
            require ext_code.size(arg1)
            call arg1.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 260], address(_182)
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 256] = ext_call.return_data[0]
            require ext_call.success
            require (idx * 2 * arg3.length) + (2 * s) < 2 * arg3.length * arg2.length
            mem[(32 * (idx * 2 * arg3.length) + (2 * s)) + (32 * arg2.length) + (32 * arg3.length) + 256] = ext_call.return_data[0]
            require s < arg3.length
            require idx < arg2.length
            if not mem[(32 * s) + (32 * arg2.length) + 172 len 20]:
                require (idx * 2 * arg3.length) + (2 * s) + 1 < 2 * arg3.length * arg2.length
                mem[(32 * (idx * 2 * arg3.length) + (2 * s) + 1) + (32 * arg2.length) + (32 * arg3.length) + 256] = eth.balance(mem[(32 * idx) + 128])
            else:
                _206 = mem[(32 * idx) + 128]
                require s < arg3.length
                _209 = mem[(32 * s) + (32 * arg2.length) + 160]
                if ext_code.size(mem[(32 * s) + (32 * arg2.length) + 160]) <= 0:
                    require (idx * 2 * arg3.length) + (2 * s) + 1 < 2 * arg3.length * arg2.length
                    mem[(32 * (idx * 2 * arg3.length) + (2 * s) + 1) + (32 * arg2.length) + (32 * arg3.length) + 256] = 0
                else:
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 256] = Mask(32, 224, sha3('balanceOf(address)'))
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 260] = address(_206)
                    call address(_209) with:
                       funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                         gas gas_remaining - 25710 wei
                        args address(_206)
                    if not ext_call.success:
                        require (idx * 2 * arg3.length) + (2 * s) + 1 < 2 * arg3.length * arg2.length
                        mem[(32 * (idx * 2 * arg3.length) + (2 * s) + 1) + (32 * arg2.length) + (32 * arg3.length) + 256] = 0
                    else:
                        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 288] = 0
                        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 260] = address(_206)
                        require ext_code.size(address(_209))
                        call address(_209).0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args address(_206)
                        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 256] = ext_call.return_data[0]
                        require ext_call.success
                        require (idx * 2 * arg3.length) + (2 * s) + 1 < 2 * arg3.length * arg2.length
                        mem[(32 * (idx * 2 * arg3.length) + (2 * s) + 1) + (32 * arg2.length) + (32 * arg3.length) + 256] = ext_call.return_data[0]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 256] = 32
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 288] = 2 * arg3.length * arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 320 len floor32(2 * arg3.length * arg2.length)] = mem[(32 * arg2.length) + (32 * arg3.length) + 256 len floor32(2 * arg3.length * arg2.length)]
    return Array(len=2 * arg3.length * arg2.length, data=mem[(32 * arg2.length) + (32 * arg3.length) + (32 * 2 * arg3.length * arg2.length) + 320 len 32 * 2 * arg3.length * arg2.length]), 
}



}
