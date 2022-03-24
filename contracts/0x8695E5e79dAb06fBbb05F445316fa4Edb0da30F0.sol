contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1413]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_08f028d5(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    require 0 < arg1.length
    mem[(32 * arg1.length) + 192] = mem[128]
    require 0 < arg1.length
    mem[(32 * arg1.length) + 224] = mem[128]
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < arg1.length
        if mem[(32 * uint8(idx)) + 128] < mem[(32 * arg1.length) + 192]:
            mem[(32 * arg1.length) + 192] = mem[(32 * uint8(idx)) + 128]
        if mem[(32 * uint8(idx)) + 128] > mem[(32 * arg1.length) + 224]:
            require uint8(idx) < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * uint8(idx)) + 128]
        idx = idx + 1
        continue 
    return memory
      from (32 * arg1.length) + 192
       len 64
}

function sub_f47cd671(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x24d4e90a with:
         gas gas_remaining - 50 wei
        args (arg2.length << 64)
    require delegate.return_code
    mem[(32 * arg2.length) + 192] = 0
    mem[(32 * arg2.length) + 224] = 0
    require 0 < arg2.length
    mem[(32 * arg2.length) + 256] = mem[128]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 288] = mem[128]
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg2.length
        if mem[(32 * uint8(idx)) + 128] < mem[(32 * arg2.length) + 256]:
            mem[(32 * arg2.length) + 256] = mem[(32 * uint8(idx)) + 128]
        if mem[(32 * uint8(idx)) + 128] > mem[(32 * arg2.length) + 288]:
            require uint8(idx) < arg2.length
            mem[(32 * arg2.length) + 288] = mem[(32 * uint8(idx)) + 128]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 288] = arg4 + mem[(32 * arg2.length) + 288]
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _119 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg2.length) + 324] = mem[(32 * arg2.length) + 288] - mem[(32 * uint8(idx)) + 128] / arg1 / 10000 * delegate.return_data[0] / 10000
        delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x872fb2b5 with:
             gas gas_remaining - 50 wei
            args (mem[(32 * arg2.length) + 288] - _119 / arg1 / 10000 * delegate.return_data[0] / 10000)
        mem[(32 * arg2.length) + 320] = delegate.return_data[0]
        require delegate.return_code
        idx = idx + 1
        s = s + delegate.return_data[0]
        continue 
    mem[(32 * arg2.length) + 324] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x24d4e90a with:
         gas gas_remaining - 50 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    mem[(32 * arg2.length) + 320] = delegate.return_data[0]
    require delegate.return_code
    require arg3 < arg2.length
    mem[(32 * uint8(arg3)) + 128] = arg4 + mem[(32 * uint8(arg3)) + 128]
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _151 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg2.length) + 324] = mem[(32 * arg2.length) + 288] - mem[(32 * uint8(idx)) + 128] / arg1 / 10000 * delegate.return_data[0] / 10000
        delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x872fb2b5 with:
             gas gas_remaining - 50 wei
            args (mem[(32 * arg2.length) + 288] - _151 / arg1 / 10000 * delegate.return_data[0] / 10000)
        mem[(32 * arg2.length) + 320] = delegate.return_data[0]
        require delegate.return_code
        idx = idx + 1
        s = s + delegate.return_data[0]
        continue 
    delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x24d4e90a with:
         gas gas_remaining - 50 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require delegate.return_code
    return (Mask(192, 64, (99998 * delegate.return_data[0] << 64 / delegate.return_data[0] / 10000 * arg1 / 10000) - (99998 * delegate.return_data[0] << 64 / delegate.return_data[0] / 10000 * arg1 / 10000) / 100000) >> 64)
}

function sub_0439978d(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x24d4e90a with:
         gas gas_remaining - 50 wei
        args (arg2.length << 64)
    require delegate.return_code
    mem[(32 * arg2.length) + 192] = 0
    mem[(32 * arg2.length) + 224] = 0
    require 0 < arg2.length
    mem[(32 * arg2.length) + 256] = mem[128]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 288] = mem[128]
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg2.length
        if mem[(32 * uint8(idx)) + 128] < mem[(32 * arg2.length) + 256]:
            mem[(32 * arg2.length) + 256] = mem[(32 * uint8(idx)) + 128]
        if mem[(32 * uint8(idx)) + 128] > mem[(32 * arg2.length) + 288]:
            require uint8(idx) < arg2.length
            mem[(32 * arg2.length) + 288] = mem[(32 * uint8(idx)) + 128]
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _121 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg2.length) + 324] = mem[(32 * arg2.length) + 288] - mem[(32 * uint8(idx)) + 128] / arg1 / 10000 * delegate.return_data[0] / 10000
        delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x872fb2b5 with:
             gas gas_remaining - 50 wei
            args (mem[(32 * arg2.length) + 288] - _121 / arg1 / 10000 * delegate.return_data[0] / 10000)
        mem[(32 * arg2.length) + 320] = delegate.return_data[0]
        require delegate.return_code
        idx = idx + 1
        s = s + delegate.return_data[0]
        continue 
    mem[(32 * arg2.length) + 324] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x24d4e90a with:
         gas gas_remaining - 50 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    mem[(32 * arg2.length) + 320] = delegate.return_data[0]
    require delegate.return_code
    require arg3 < arg2.length
    mem[(32 * uint8(arg3)) + 128] = mem[(32 * uint8(arg3)) + 128] - arg4
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _155 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg2.length) + 324] = mem[(32 * arg2.length) + 288] - mem[(32 * uint8(idx)) + 128] / arg1 / 10000 * delegate.return_data[0] / 10000
        delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x872fb2b5 with:
             gas gas_remaining - 50 wei
            args (mem[(32 * arg2.length) + 288] - _155 / arg1 / 10000 * delegate.return_data[0] / 10000)
        mem[(32 * arg2.length) + 320] = delegate.return_data[0]
        require delegate.return_code
        idx = idx + 1
        s = s + delegate.return_data[0]
        continue 
    delegate 0xef3487d24a0702703e04a26cef479e313c8fc7ae.0x24d4e90a with:
         gas gas_remaining - 50 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require delegate.return_code
    if Mask(192, 64, (100002 * delegate.return_data[0] << 64 / delegate.return_data[0] / 10000 * arg1 / 10000) - (100002 * delegate.return_data[0] << 64 / delegate.return_data[0] / 10000 * arg1 / 10000) / 100000) >> 64 <= arg4:
        return (Mask(192, 64, (100002 * delegate.return_data[0] << 64 / delegate.return_data[0] / 10000 * arg1 / 10000) - (100002 * delegate.return_data[0] << 64 / delegate.return_data[0] / 10000 * arg1 / 10000) / 100000) >> 64)
    return arg4
}



}
