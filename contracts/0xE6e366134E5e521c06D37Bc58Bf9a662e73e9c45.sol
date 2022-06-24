contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_141826c9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _37 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = arg1
            require ext_code.size(address(_37))
            staticcall address(_37).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[722 len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _43 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = arg1
            require ext_code.size(address(_43))
            staticcall address(_43).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}



}
