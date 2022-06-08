contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function create(address arg1, address arg2) {
    create contract with 0 wei
                    code: code.data[920 len 3092], address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xea11858b: arg2, arg1, address(create.new_address)
    return address(create.new_address)
}

function sub_ef4a1c61(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 'Mismatch of token and spender counts'
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _46 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _53 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (64 * arg1.length) + 192 len 3092] = code.data[920 len 3092]
            mem[(32 * arg2.length) + (64 * arg1.length) + 3284] = address(_46)
            mem[(32 * arg2.length) + (64 * arg1.length) + 3316] = address(_53)
            create contract with 0 wei
                            code: code.data[920 len 3092], address(_46), address(_53)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg2.length) + (64 * arg1.length) + 192] = address(_53)
            emit 0xea11858b: address(_53), address(_46), address(create.new_address)
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = address(create.new_address)
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg1.length] = code.data[920 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _51 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _54 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (64 * arg1.length) + 192 len 3092] = code.data[920 len 3092]
            mem[(32 * arg2.length) + (64 * arg1.length) + 3284] = address(_51)
            mem[(32 * arg2.length) + (64 * arg1.length) + 3316] = address(_54)
            create contract with 0 wei
                            code: code.data[920 len 3092], address(_51), address(_54)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg2.length) + (64 * arg1.length) + 192] = address(_54)
            emit 0xea11858b: address(_54), address(_51), address(create.new_address)
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = address(create.new_address)
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + (64 * arg1.length) + 192] = 32
    mem[(32 * arg2.length) + (64 * arg1.length) + 224] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
    mem[(32 * arg2.length) + (64 * arg1.length) + 256 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])] = mem[(32 * arg2.length) + (32 * arg1.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])]
    return 32, mem[(32 * arg2.length) + (64 * arg1.length) + 224 len (32 * mem[(32 * arg2.length) + (32 * arg1.length) + 160]) + 32], 
}



}
