contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 718]




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
        _22 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        _24 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_22)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _24
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_22), _24
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require bool(ext_call.return_data[0]) == 1
        idx = idx + 1
        continue 
    return 1
}



}
