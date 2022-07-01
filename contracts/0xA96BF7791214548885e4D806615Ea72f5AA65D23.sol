contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multiSend(address arg1, address[] arg2, uint256[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require arg2.length <= 150
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _21 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        _23 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_21)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _23
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_21), _23
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require bool(ext_call.return_data[0]) == 1
        idx = idx + 1
        continue 
    return 1
}



}
