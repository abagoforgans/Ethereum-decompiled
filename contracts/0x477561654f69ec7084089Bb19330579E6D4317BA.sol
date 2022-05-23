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
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3760917a(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 132] = arg2
        mem[(32 * arg3.length) + 164] = address(_15)
        mem[(32 * arg3.length) + 196] = 10^18 * arg4
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(_15), 10^18 * arg4
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return arg3.length
}

function sub_3e5e82ee(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _20 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = address(_18)
        mem[(32 * arg3.length) + (32 * arg4.length) + 228] = 10^18 * _20
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(_18), 10^18 * _20
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return arg3.length
}



}
