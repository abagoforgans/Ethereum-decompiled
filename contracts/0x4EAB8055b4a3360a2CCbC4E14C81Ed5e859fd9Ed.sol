contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 613]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_85b30d64(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _17 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_15)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _17
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_15), _17
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
