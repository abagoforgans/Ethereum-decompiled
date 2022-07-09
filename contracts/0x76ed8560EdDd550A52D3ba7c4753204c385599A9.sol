contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2c54b9fe(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg2.length
            _18 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_18)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_18), arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_609da529(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg2.length) + 160] > 0:
                require idx < arg2.length
                _25 = mem[(32 * idx) + 128]
                require idx < arg3.length
                _27 = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_25)
                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _27
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_25), _27
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}
