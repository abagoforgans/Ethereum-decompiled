contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function send(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function multisend(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _16 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _18 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = address(_16)
        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _18
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(_16), _18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return arg2.length
}

function multisend2(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _24 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + 164] = address(_22)
        mem[(32 * arg4.length) + (32 * arg3.length) + 196] = _24
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(_22), _24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg3.length
        _28 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _30 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + 164] = address(_28)
        mem[(32 * arg4.length) + (32 * arg3.length) + 196] = 4 * _30
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(_28), 4 * _30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return arg3.length
}



}
