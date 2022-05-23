contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function airDrop(address[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        _10 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg1.length) + 132] = 0xce87a8b45e374278a2f4576dd41f21a052a6cfe9
        mem[(32 * arg1.length) + 164] = address(_10)
        mem[(32 * arg1.length) + 196] = 1
        require ext_code.size(0xd1c227e457b633b6d6eb71ebbb43f13a7fd9daa2)
        call 0xd1c227e457b633b6d6eb71ebbb43f13a7fd9daa2.0x23b872dd with:
             gas gas_remaining wei
            args 0xce87a8b45e374278a2f4576dd41f21a052a6cfe9, address(_10), 1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = _10
        idx = idx + 1
        continue 
}



}
