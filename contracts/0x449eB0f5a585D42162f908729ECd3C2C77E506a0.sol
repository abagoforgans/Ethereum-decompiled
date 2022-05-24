contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddr;

function tokenAddr() {
    return tokenAddr
}

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

function tokenBalance() {
    require ext_code.size(tokenAddr)
    call tokenAddr.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_35e38472(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    require tokenAddr == arg3
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _24 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_22)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _24
        require ext_code.size(tokenAddr)
        call tokenAddr.0xa9059cbb with:
             gas gas_remaining wei
            args address(_22), _24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}



}
