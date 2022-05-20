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
        _19 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _21 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_19)
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _21
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(_19), _21
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}



}
