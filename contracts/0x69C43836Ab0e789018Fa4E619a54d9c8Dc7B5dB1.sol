contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bbac2a10(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_3c61f907(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    require arg2 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    _38 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]))
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg2].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg2].length
    mem[0] = _38 + arg2
    mem[ceil32(arg1.length) + 160] = stor[sha3(_38 + arg2)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_38 + arg2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_38 + arg2) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _71 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _71 % 32:
        return 32, mem[mem[64] + 32 len _71 + 32]
    mem[floor32(_71) + mem[64] + 64] = mem[floor32(_71) + mem[64] + -(_71 % 32) + 96 len _71 % 32]
    return 32, mem[mem[64] + 32 len floor32(_71) + 64]
}

function sub_980a3d3e(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] > 0:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]++
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]][] = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x83d819b9: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 96
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
            emit 0x83d819b9: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 96
    else:
        mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 192
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ceil32(arg1.length) + 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 1
        stor[sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 1), 1)] = 1
        mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 1), 1)
        s = 0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + 160
        while ceil32(arg1.length) + ceil32(arg2.length) + 192 > idx:
            _391 = mem[idx]
            _392 = mem[mem[idx]]
            mem[0] = s + sha3(mem[0])
            stor[s + sha3(mem[0])] = (2 * _392) + 1
            u = sha3(s + sha3(mem[0]))
            t = _391 + 32
            while _391 + _392 + 32 > t:
                stor[u] = mem[t]
                u = u + 1
                t = t + 32
                continue 
            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _392 + 31) >> 5)
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > t:
                stor[t] = 0
                t = t + 1
                continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 1), 1)) + stor[sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 1), 1)] > idx:
            stor[idx] = 0
            if 31 < stor[idx].length:
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit 0x83d819b9: Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 224 len 64], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg1.length) - (arg1.length % 32)]
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                emit 0x83d819b9: Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 224 len 64], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + arg1.length + 320 len floor32(arg2.length) + -ceil32(arg2.length) + 32]), mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg1.length) - (arg1.length % 32)]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = floor32(arg1.length) + 128
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit 0x83d819b9: Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 224 len -(arg1.length % 32) + 96], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg1.length) - (arg1.length % 32)]
            else:
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                emit 0x83d819b9: Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 224 len -(arg1.length % 32) + 96], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + floor32(arg1.length) + 352 len floor32(arg2.length) + -ceil32(arg2.length) + 32]), mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg1.length) - (arg1.length % 32)]
    return 1
}



}
