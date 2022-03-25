contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0['hillary'] = 0
    stor0['donald'] = 0
    return code.data[116 len 1000]
}



// =====================  Runtime code  =====================


mapping of uint256 sub_ebe9f22b;

function sub_ebe9f22b(?) payable {
    return sub_ebe9f22b[arg1[all]]
}

function _fallback() payable {
  stop
}

function sub_8088860e(?) payable {
    mem[128] = 'hillary' << 200
    mem[160] = 7
    mem[192] = 'hillary' << 200
    mem[224] = 0
    idx = 0
    while idx < 7:
        require idx < 7
        require idx < 7
        if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[idx + 192]):
            idx = idx + 1
            continue 
    sub_ebe9f22b['hillary' % 72057594037927936]++
    mem[384] = mem[409 len 7]
    emit 0xaa28d0f4: msg.sender, Array(len=7, data=mem[384])
}

function sub_ff82540a(?) payable {
    mem[128] = 0x646f6e616c640000000000000000000000000000000000000000000000000000
    mem[160] = 7
    mem[320] = 0x646f6e616c640000000000000000000000000000000000000000000000000000
    mem[352] = 0
    idx = 0
    while idx < 6:
        require idx < 6
        require idx < 6
        if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[idx + 320]):
            idx = idx + 1
            continue 
    sub_ebe9f22b++
    mem[512] = mem[538 len 6]
    emit 0xaa28d0f4: msg.sender, Array(len=6, data=mem[512])
}

function vote(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 7
    mem[ceil32(arg1.length) + 160] = 'hillary' << 200
    mem[ceil32(arg1.length) + 192] = 0
    mem[64] = ceil32(arg1.length) + 256
    mem[ceil32(arg1.length) + 224] = 0
    if 7 == arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < 7
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + 288] = 0x646f6e616c640000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + 320] = 0
            mem[ceil32(arg1.length) + 352] = 0
            if arg1.length != 6:
                return 0
            idx = 0
            while idx < arg1.length:
                require idx < 6
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + idx + 288]):
                    idx = idx + 1
                    continue 
                else:
                    return 0
            sub_ebe9f22b[arg1[all]]++
            emit 0xaa28d0f4: msg.sender, Array(len=arg1.length, data=arg1[all])
            return 1
    else:
        mem[ceil32(arg1.length) + 288] = 0x646f6e616c640000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 320] = 0
        mem[ceil32(arg1.length) + 352] = 0
        if arg1.length != 6:
            return 0
        idx = 0
        while idx < arg1.length:
            require idx < 6
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + idx + 288]):
                idx = idx + 1
                continue 
            else:
                return 0
    sub_ebe9f22b[arg1[all]]++
    emit 0xaa28d0f4: msg.sender, Array(len=arg1.length, data=arg1[all])
    return 1
}



}
