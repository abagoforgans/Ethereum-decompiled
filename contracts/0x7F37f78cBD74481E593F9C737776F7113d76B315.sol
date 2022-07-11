contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function tokenBalance(address arg1, address arg2) {
    if ext_code.size(arg2) <= 0:
        return 0
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        return 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balances(address arg1, address[] arg2) {
    if arg2.length:
        mem[128 len 32 * arg2.length] = code.data[1066 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])) <= 0:
            require idx < arg2.length
            mem[(32 * idx) + 128] = 0
        else:
            mem[(32 * arg2.length) + 128] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = arg1
            call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                require idx < arg2.length
                mem[(32 * idx) + 128] = 0
            else:
                mem[(32 * arg2.length) + 132] = arg1
                require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                     gas gas_remaining wei
                    args arg1
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg2.length
                mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
    return Array(len=arg2.length, data=mem[128 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), 
}



}
