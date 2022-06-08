contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

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

function withdrawEther(uint256 arg1, address arg2) {
    require msg.sender == owner
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    if stor1 == arg1:
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

function sub_c2faacaa(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg4.length
        require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224] > 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        _35 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < arg1.length
        _37 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _39 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg4.length
        _41 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = address(_37)
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 260] = address(_39)
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 292] = _41
        require ext_code.size(address(_35))
        call address(_35).0x23b872dd with:
             gas gas_remaining wei
            args address(_37), address(_39), _41
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_79106baf(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg4.length
        require mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224] > 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        _33 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < arg4.length
        _35 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require idx < arg2.length
        _37 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if stor1 == mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 204 len 20]:
            call mem[(32 * idx) + (32 * arg1.length) + 172 len 20] with:
               value mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = address(_37)
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 260] = _35
            require ext_code.size(address(_33))
            call address(_33).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_37), _35
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
