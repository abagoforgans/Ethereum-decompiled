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
    owner = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    emit 0x557af914: arg2, Array(len=arg3.length, data=arg3[all]), arg1
    return 1
}

function withdrawalToken(address arg1) {
    require msg.sender == owner
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
    require return_data.size >= 32
}

function batchTransfer(address[] arg1, uint256[] arg2, address arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            _32 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit 0xf4acba4d: mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_32)
        else:
            require idx < arg2.length
            _39 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _39
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _39
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}
