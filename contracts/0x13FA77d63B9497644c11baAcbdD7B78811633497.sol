contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 647]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c0c17554(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    idx = 0
    s = 0
    while uint8(idx) < arg3.length:
        require uint8(idx) < arg3.length
        _20 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg4.length
        _22 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = address(_20)
        mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _22
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(_20), _22
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require uint8(idx) < arg4.length
        idx = idx + 1
        s = s + mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
        continue 
    emit Multisended(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, arg1);
}



}
