contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ec31528c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _20 = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = address(_18)
        mem[(32 * arg2.length) + (32 * arg1.length) + 228] = _20
        require ext_code.size(0x61d0407edb149dc453c47fe31139fae9c1472da6)
        call 0x61d0407edb149dc453c47fe31139fae9c1472da6.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_18), _20
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}



}
