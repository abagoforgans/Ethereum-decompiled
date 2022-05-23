contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdrawEther(address arg1, uint256 arg2) {
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawEtherInBatch(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _16 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0x522f681500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_14)
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _16
        require ext_code.size(this.address)
        call this.address.0x522f6815 with:
             gas gas_remaining wei
            args address(_14), _16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function withdrawInBatch(address[] arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == stor0
    require arg1.length == arg2.length
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        if 0 == mem[(32 * idx) + 140 len 20]:
            require idx < arg2.length
            _32 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg3.length
            _36 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = 0x522f681500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 196] = address(_32)
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = _36
            require ext_code.size(this.address)
            call this.address.0x522f6815 with:
                 gas gas_remaining wei
                args address(_32), _36
        else:
            require idx < arg1.length
            _30 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _34 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg3.length
            _39 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = 0x1e3366700000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 196] = address(_30)
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = address(_34)
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 260] = _39
            require ext_code.size(this.address)
            call this.address.withdrawToken(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_30), address(_34), _39
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
