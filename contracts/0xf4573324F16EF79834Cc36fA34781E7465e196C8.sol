contract main {




// =====================  Runtime code  =====================


#
#  - sub_206f0caa(?)
#
address owner;
array of struct stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_383fb0ba(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192] = 0
    require msg.sender == owner
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 256] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288] = ceil32(arg3.length) + 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    stor1.length++
    stor1[stor1.length].field_0 = arg1
    stor1[stor1.length].field_256 = arg2
    stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) + 3)][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) + 4)][].field_0 = Array(len=Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)], data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    return 1
}

function sub_07b5b7e8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require msg.sender == owner
    idx = 0
    s = 96
    t = 96
    u = 96
    v = 0
    w = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            t = t
            u = u
            v = v
            w = w
            continue 
        _208 = mem[64]
        mem[64] = mem[64] + 160
        mem[_208] = 0
        mem[_208 + 32] = 0
        mem[_208 + 64] = 96
        mem[_208 + 96] = 96
        mem[_208 + 128] = 96
        require idx < stor1.length
        mem[0] = 1
        _215 = mem[64]
        mem[64] = mem[64] + 160
        mem[_215] = stor1[idx].field_0
        mem[_215 + 32] = stor1[idx].field_256
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'stor1', 1) + 2].length) + 32
        mem[_216] = stor[(5 * idx) + ('name', 'stor1', 1) + 2].length
        mem[0] = (5 * idx) + sha3(1) + 2
        mem[_216 + 32] = stor[sha3((5 * idx) + ('name', 'stor1', 1) + 2)].field_0
        t = _216 + 32
        u = sha3(mem[0])
        while _216 + stor[(5 * idx) + ('name', 'stor1', 1) + 2].length > t:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[_215 + 64] = _216
        _420 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'stor1', 1) + 3].length) + 32
        mem[_420] = stor[(5 * idx) + ('name', 'stor1', 1) + 3].length
        mem[0] = (5 * idx) + sha3(1) + 3
        mem[_420 + 32] = stor[sha3((5 * idx) + ('name', 'stor1', 1) + 3)].field_0
        t = _420 + 32
        u = sha3(mem[0])
        while _420 + stor[(5 * t) + ('name', 'stor1', 1) + 3].length > t:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[_215 + 96] = _420
        _564 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * t) + ('name', 'stor1', 1) + 4].length) + 32
        mem[_564] = stor[(5 * t) + ('name', 'stor1', 1) + 4].length
        mem[0] = (5 * t) + sha3(1) + 4
        mem[_564 + 32] = stor[sha3((5 * t) + ('name', 'stor1', 1) + 4)].field_0
        s = _564 + 32
        u = sha3(mem[0])
        while _564 + stor[(5 * t) + ('name', 'stor1', 1) + 4].length > s:
            mem[s + 32] = stor1[u].field_0
            s = s + 32
            u = u + 1
            continue 
        mem[_215 + 128] = _564
        t = t + 1
        u = _564
        t = mem[_215 + 96]
        u = mem[_215 + 64]
        v = mem[_215 + 32]
        w = mem[_215]
        continue 
    mem[mem[64]] = w
    mem[mem[64] + 32] = v
    mem[mem[64] + 64] = 160
    mem[mem[64] + 160] = mem[u]
    _205 = mem[u]
    mem[mem[64] + 192 len ceil32(mem[u])] = mem[u + 32 len ceil32(mem[u])]
    if not _205 % 32:
        mem[mem[64] + 96] = _205 + 192
        mem[_205 + mem[64] + 192] = mem[t]
        _407 = mem[t]
        mem[_205 + mem[64] + 224 len ceil32(mem[t])] = mem[t + 32 len ceil32(mem[t])]
        if not _407 % 32:
            mem[mem[64] + 128] = _407 + _205 + 224
            mem[_407 + _205 + mem[64] + 224] = mem[s]
            _549 = mem[s]
            mem[_407 + _205 + mem[64] + 256 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
            if not _549 % 32:
                return w, v, 160, _205 + 192, _407 + _205 + 224, mem[mem[64] + 160 len _549 + _407 + _205 + 96]
            mem[floor32(_549) + _407 + _205 + mem[64] + 256] = mem[floor32(_549) + _407 + _205 + mem[64] + -(_549 % 32) + 288 len _549 % 32]
            return w, v, 160, _205 + 192, _407 + _205 + 224, mem[mem[64] + 160 len floor32(_549) + _407 + _205 + 128]
        mem[floor32(_407) + _205 + mem[64] + 224] = mem[floor32(_407) + _205 + mem[64] + -(_407 % 32) + 256 len _407 % 32]
        mem[mem[64] + 128] = floor32(_407) + _205 + 256
        mem[floor32(_407) + _205 + mem[64] + 256] = mem[s]
        _576 = mem[s]
        mem[floor32(_407) + _205 + mem[64] + 288 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
        if not _576 % 32:
            return w, v, 160, _205 + 192, floor32(_407) + _205 + 256, mem[mem[64] + 160 len _576 + floor32(_407) + _205 + 128]
        mem[floor32(_576) + floor32(_407) + _205 + mem[64] + 288] = mem[floor32(_576) + floor32(_407) + _205 + mem[64] + -(_576 % 32) + 320 len _576 % 32]
        return w, v, 160, _205 + 192, floor32(_407) + _205 + 256, mem[mem[64] + 160 len floor32(_576) + floor32(_407) + _205 + 160]
    mem[floor32(_205) + mem[64] + 192] = mem[floor32(_205) + mem[64] + -(_205 % 32) + 224 len _205 % 32]
    mem[mem[64] + 96] = floor32(_205) + 224
    mem[floor32(_205) + mem[64] + 224] = mem[t]
    _433 = mem[t]
    mem[floor32(_205) + mem[64] + 256 len ceil32(mem[t])] = mem[t + 32 len ceil32(mem[t])]
    if not _433 % 32:
        mem[mem[64] + 128] = _433 + floor32(_205) + 256
        mem[_433 + floor32(_205) + mem[64] + 256] = mem[s]
        _552 = mem[s]
        mem[_433 + floor32(_205) + mem[64] + 288 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
        if not _552 % 32:
            return w, v, 160, floor32(_205) + 224, _433 + floor32(_205) + 256, mem[mem[64] + 160 len _552 + _433 + floor32(_205) + 128]
        mem[floor32(_552) + _433 + floor32(_205) + mem[64] + 288] = mem[floor32(_552) + _433 + floor32(_205) + mem[64] + -(_552 % 32) + 320 len _552 % 32]
        return w, 
               v,
               160,
               floor32(_205) + 224,
               _433 + floor32(_205) + 256,
               mem[mem[64] + 160 len floor32(_552) + _433 + floor32(_205) + 160]
    mem[floor32(_433) + floor32(_205) + mem[64] + 256] = mem[floor32(_433) + floor32(_205) + mem[64] + -(_433 % 32) + 288 len _433 % 32]
    mem[mem[64] + 128] = floor32(_433) + floor32(_205) + 288
    mem[floor32(_433) + floor32(_205) + mem[64] + 288] = mem[s]
    _578 = mem[s]
    mem[floor32(_433) + floor32(_205) + mem[64] + 320 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
    if not _578 % 32:
        return w, 
               v,
               160,
               floor32(_205) + 224,
               floor32(_433) + floor32(_205) + 288,
               mem[mem[64] + 160 len _578 + floor32(_433) + floor32(_205) + 160]
    mem[floor32(_578) + floor32(_433) + floor32(_205) + mem[64] + 320] = mem[floor32(_578) + floor32(_433) + floor32(_205) + mem[64] + -(_578 % 32) + 352 len _578 % 32]
    return w, 
           v,
           160,
           floor32(_205) + 224,
           floor32(_433) + floor32(_205) + 288,
           mem[mem[64] + 160 len floor32(_578) + floor32(_433) + floor32(_205) + 192]
}



}
