contract main {




// =====================  Runtime code  =====================


uint256 sub_0ad991b0;
array of struct sub_11a512d8;

function sub_0ad991b0(?) payable {
    return sub_0ad991b0
}

function sub_11a512d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_11a512d8.length
    return sub_11a512d8[arg1].field_0, 
           sub_11a512d8[arg1].field_256,
           sub_11a512d8[arg1].field_512,
           sub_11a512d8[arg1].field_768,
           sub_11a512d8[arg1].field_1024,
           sub_11a512d8[arg1].field_1280,
           sub_11a512d8[arg1].field_1536
}

function getReportCount() payable {
    return sub_11a512d8.length
}

function _fallback() payable {
    revert
}

function sub_31f11a28(?) payable {
    require calldata.size - 4 >= 224
    sub_11a512d8.length++
    sub_11a512d8[sub_11a512d8.length].field_0 = arg1
    sub_11a512d8[sub_11a512d8.length].field_256 = arg2
    sub_11a512d8[sub_11a512d8.length].field_512 = arg3
    sub_11a512d8[sub_11a512d8.length].field_768 = arg4
    sub_11a512d8[sub_11a512d8.length].field_1024 = arg5
    sub_11a512d8[sub_11a512d8.length].field_1280 = arg6
    sub_11a512d8[sub_11a512d8.length].field_1536 = arg7
}

function sub_5b210e81(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg4.length
    mem[(32 * arg1.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg1.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = arg6.length
    mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 256
    mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = arg7.length
    mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 256] = 0
    require arg1.length == arg4.length
    require arg4.length == arg5.length
    require arg5.length == arg6.length
    require arg6.length == arg7.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _36 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _38 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg4.length) + 160]
        _40 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg4.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
        _42 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224]
        _44 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256]
        _45 = mem[64]
        mem[64] = mem[64] + 224
        mem[_45] = mem[(32 * idx) + 128]
        mem[_45 + 32] = arg2
        mem[_45 + 64] = arg3
        mem[_45 + 96] = _38
        mem[_45 + 128] = uint8(_40)
        mem[_45 + 160] = _42
        mem[_45 + 192] = _44
        sub_11a512d8.length++
        mem[0] = 1
        sub_11a512d8[sub_11a512d8.length].field_0 = _36
        sub_11a512d8[sub_11a512d8.length].field_256 = arg2
        sub_11a512d8[sub_11a512d8.length].field_512 = arg3
        sub_11a512d8[sub_11a512d8.length].field_768 = _38
        sub_11a512d8[sub_11a512d8.length].field_1024 = uint8(_40)
        sub_11a512d8[sub_11a512d8.length].field_1280 = _42
        sub_11a512d8[sub_11a512d8.length].field_1536 = _44
        idx = idx + 1
        continue 
}



}
