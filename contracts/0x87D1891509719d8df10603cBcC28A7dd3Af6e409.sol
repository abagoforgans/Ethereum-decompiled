contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function balanceOf(address arg1) {
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimTokens(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ClaimedTokens(address(arg1), owner, ext_call.return_data[0]);
}

function sub_0141db1e(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length <= arg3
    idx = 0
    s = eth.balance(this.address)
    while idx < arg1.length:
        require idx < arg2.length
        require s >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        _29 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= s
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        _37 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], this.address, address(_37));
        idx = idx + 1
        s = s - _29
        continue 
    emit Multisended(arg1.length, 0);
}

function sub_c4ecb7af(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    if not arg1:
        require msg.sender == owner
        require arg2.length <= arg4
        idx = 0
        s = eth.balance(this.address)
        while idx < arg2.length:
            require idx < arg3.length
            require s >= mem[(32 * idx) + (32 * arg2.length) + 160]
            require idx < arg3.length
            _54 = mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= s
            require idx < arg2.length
            require idx < arg3.length
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg2.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            _68 = mem[(32 * idx) + 128]
            require idx < arg3.length
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], this.address, address(_68));
            idx = idx + 1
            s = s - _54
            continue 
        emit Multisended(arg2.length, 0);
    else:
        require arg2.length <= arg4
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = this.address
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg3.length
            require s >= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            require uint8(idx) < arg3.length
            _53 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] <= s
            require uint8(idx) < arg2.length
            _57 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg3.length
            _61 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_57)
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _61
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_57), _61
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = s - _53
            continue 
        emit Multisended(None << 248, arg1);
}



}
