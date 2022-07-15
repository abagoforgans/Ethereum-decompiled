contract main {




// =====================  Runtime code  =====================


#
#  - sub_c8bede3f(?)
#
address stor0;
uint256 sub_0ad991b0;
array of struct sub_11a512d8;
array of struct stor3;

function sub_0ad991b0(?) payable {
    return sub_0ad991b0
}

function sub_11a512d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_11a512d8.length
    return sub_11a512d8[arg1].field_0, 
           uint64(sub_11a512d8[arg1].field_256),
           sub_11a512d8[arg1].field_512,
           sub_11a512d8[arg1].field_768,
           uint8(sub_11a512d8[arg1].field_1024),
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
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    sub_11a512d8.length++
    sub_11a512d8[sub_11a512d8.length].field_0 = arg1
    uint64(sub_11a512d8[sub_11a512d8.length].field_256) = arg2
    sub_11a512d8[sub_11a512d8.length].field_512 = arg3
    sub_11a512d8[sub_11a512d8.length].field_768 = arg4
    uint8(sub_11a512d8[sub_11a512d8.length].field_1024) = arg5
    sub_11a512d8[sub_11a512d8.length].field_1280 = arg6
    sub_11a512d8[sub_11a512d8.length].field_1536 = arg7
    if stor3[arg2 << 192].field_0:
        require 1 < stor3[arg2 << 192].field_0
        stor3[arg2 << 192].field_256 = sub_11a512d8.length - 1
    else:
        mem[320] = sub_11a512d8.length - 1
        mem[352] = sub_11a512d8.length - 1
        stor3[arg2 << 192].field_0 = 2
        s = 0
        idx = 320
        while 384 > idx:
            stor3[arg2 << 192][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor3[arg2 << 192].field_0 > idx:
            stor3[arg2 << 192][idx].field_0 = 0
            idx = idx + 1
            continue 
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
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    require arg1.length == arg4.length
    require arg4.length == arg5.length
    require arg5.length == arg6.length
    require arg6.length == arg7.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _47 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _49 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg4.length) + 160]
        _51 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg4.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
        _53 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224]
        _55 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256]
        if stor0 != msg.sender:
            revert with 0, 'Sender not authorized.'
        _56 = mem[64]
        mem[64] = mem[64] + 224
        mem[_56] = mem[(32 * idx) + 128]
        mem[_56 + 32] = arg2
        mem[_56 + 64] = arg3
        mem[_56 + 96] = _49
        mem[_56 + 128] = uint8(_51)
        mem[_56 + 160] = _53
        mem[_56 + 192] = _55
        sub_11a512d8.length++
        sub_11a512d8[sub_11a512d8.length].field_0 = _47
        uint64(sub_11a512d8[sub_11a512d8.length].field_256) = arg2
        sub_11a512d8[sub_11a512d8.length].field_512 = arg3
        sub_11a512d8[sub_11a512d8.length].field_768 = _49
        uint8(sub_11a512d8[sub_11a512d8.length].field_1024) = uint8(_51)
        sub_11a512d8[sub_11a512d8.length].field_1280 = _53
        sub_11a512d8[sub_11a512d8.length].field_1536 = _55
        mem[0] = arg2
        mem[32] = 3
        if stor3[arg2 << 192].field_0:
            mem[32] = 3
            require 1 < stor3[arg2 << 192].field_0
            mem[0] = sha3(arg2 << 192, 3)
            stor3[arg2 << 192].field_256 = sub_11a512d8.length - 1
        else:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = sub_11a512d8.length - 1
            mem[_70 + 32] = sub_11a512d8.length - 1
            mem[32] = 3
            stor3[arg2 << 192].field_0 = 2
            mem[0] = sha3(arg2 << 192, 3)
            t = sha3(sha3(arg2 << 192, 3))
            s = _70
            while _70 + 64 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(arg2 << 192, 3)) + 2
            while sha3(sha3(arg2 << 192, 3)) + stor3[arg2 << 192].field_0 > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
}



}
