contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 705]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function reward(uint32[] arg1, address[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length != 0
    require arg1.length <= 64
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require mem[(32 * uint8(idx)) + 156 len 4] != 0
        require uint8(idx) < arg1.length
        if uint32(s):
            require mem[(32 * uint8(idx)) + 156 len 4] <= uint32(s)
        idx = idx + 1
        s = mem[(32 * uint8(idx)) + 128]
        continue 
    if uint8(arg1.length) <= uint8(arg2.length):
        idx = 0
        s = 0
        while uint8(idx) < uint8(arg1.length):
            require uint8(idx) < arg1.length
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + 156 len 4]
            continue 
        t = 0
        idx = 0
        t = msg.value
        while uint8(idx) < uint8(arg1.length):
            require uint8(idx) < arg1.length
            require uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
            require uint8(idx) < arg2.length
            call mem[(32 * arg1.length) + (32 * uint8(idx)) + 172 len 20] with:
               value msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                t = msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
                idx = idx + 1
                t = t
                continue 
            t = msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
            idx = idx + 1
            t = t - (msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None))
            continue 
    else:
        idx = 0
        s = 0
        while uint8(idx) < uint8(arg2.length):
            require uint8(idx) < arg1.length
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + 156 len 4]
            continue 
        t = 0
        idx = 0
        t = msg.value
        while uint8(idx) < uint8(arg2.length):
            require uint8(idx) < arg1.length
            require uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
            require uint8(idx) < arg2.length
            call mem[(32 * arg1.length) + (32 * uint8(idx)) + 172 len 20] with:
               value msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                t = msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
                idx = idx + 1
                t = t
                continue 
            t = msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
            idx = idx + 1
            t = t - (msg.value * mem[(32 * uint8(idx)) + 156 len 4] / uint64(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None))
            continue 
    if t <= 0:
    call msg.sender with:
       value t wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
}



}
