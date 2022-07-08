contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    require arg1 != msg.sender
    tokenAddress = arg1
    emit SetToken(arg1);
}

function balanceOf() {
    require msg.sender == owner
    require tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ae2a95ce(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require tokenAddress
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = this.address
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
        require ext_call.return_data[0] >= 10^18 * arg3
        idx = 0
        while uint16(idx) < uint16(arg1.length):
            require uint16(idx) < arg1.length
            require uint16(idx) < arg2.length
            _35 = mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * uint16(idx)) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _35
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], 10^18 * _35
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        require ext_call.return_data[0] >= arg3
        idx = 0
        while uint16(idx) < uint16(arg1.length):
            require uint16(idx) < arg1.length
            require uint16(idx) < arg2.length
            _38 = mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * uint16(idx)) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _38
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _38
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}



}
