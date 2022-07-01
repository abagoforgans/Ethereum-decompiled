contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function shuffle(uint256 arg1) {
    mem[96] = 52
    mem[64] = 1792
    mem[128 len 1664] = code.data[1184 len 1664]
    idx = 0
    while idx < 52:
        require idx < 52
        mem[(32 * idx) + 128] = idx
        idx = idx + 1
        continue 
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < 100:
        _22 = mem[64]
        mem[mem[64] + 32] = arg1 + idx
        _23 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _25 = mem[_23]
        t = _23 + 32
        u = _22 + 64
        s = mem[_23]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_22 + floor32(mem[_23]) + 64] = mem[_23 + -(mem[_23] % 32) + floor32(mem[_23]) + 64 len mem[_23] % 32] or Mask(8 * -(mem[_23] % 32) + 32, -(8 * -(mem[_23] % 32) + 32) + 256, mem[_22 + floor32(mem[_23]) + 64])
        _44 = sha3(mem[_22 + 64 len _25])
        require sha3(mem[_22 + 64 len _25]) % 52 < mem[96]
        _47 = mem[(32 * sha3(mem[_22 + 64 len _25]) % 52) + 128]
        require idx % 52 < mem[96]
        require sha3(mem[_22 + 64 len _25]) % 52 < mem[96]
        mem[(32 * sha3(mem[_22 + 64 len _25]) % 52) + 128] = mem[(32 * idx % 52) + 128]
        require idx % 52 < mem[96]
        mem[(32 * idx % 52) + 128] = _47
        s = _47
        s = _44 % 52
        s = _44
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    var15001 = floor32(mem[96])
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_2af6a3eb(?) {
    mem[96] = 3
    mem[128 len 96] = code.data[1184 len 96]
    mem[224] = 3
    mem[256 len 96] = code.data[1184 len 96]
    mem[352] = 52
    mem[64] = 2048
    mem[384 len 1664] = code.data[1184 len 1664]
    idx = 0
    while idx < 52:
        require idx < 52
        mem[(32 * idx) + 384] = idx
        idx = idx + 1
        continue 
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < 100:
        _21 = mem[64]
        mem[mem[64] + 32] = arg1 + idx
        _22 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _24 = mem[_22]
        t = _22 + 32
        u = mem[64]
        s = mem[_22]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_22])] = mem[_22 + floor32(mem[_22]) + -(mem[_22] % 32) + 64 len mem[_22] % 32] or Mask(8 * -(mem[_22] % 32) + 32, -(8 * -(mem[_22] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_22])])
        _56 = sha3(mem[mem[64] len _24 + _21 + -mem[64] + 64])
        require sha3(mem[mem[64] len _24 + _21 + -mem[64] + 64]) % 52 < mem[352]
        _65 = mem[(32 * sha3(mem[mem[64] len _24 + _21 + -mem[64] + 64]) % 52) + 384]
        require idx % 52 < mem[352]
        require sha3(mem[mem[64] len _24 + _21 + -mem[64] + 64]) % 52 < mem[352]
        mem[(32 * sha3(mem[mem[64] len _24 + _21 + -mem[64] + 64]) % 52) + 384] = mem[(32 * idx % 52) + 384]
        require idx % 52 < mem[352]
        mem[(32 * idx % 52) + 384] = _65
        s = _65
        t = _56 % 52
        u = _56
        idx = idx + 1
        continue 
    _51 = mem[96]
    idx = 0
    s = 0
    while idx < mem[96]:
        require s < mem[352]
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[(32 * s) + 384]
        require s + 1 < mem[352]
        require idx < mem[224]
        mem[(32 * idx) + 256] = mem[(32 * s + 1) + 384]
        _51 = mem[96]
        idx = idx + 1
        s = s + 2
        continue 
    _58 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _60 = mem[96]
    s = 0
    while _51 < 32 * _60:
        mem[mem[64] + _51 + 96] = mem[_51 + 128]
        s = _51 + 32
        continue 
    mem[_58 + 32] = (32 * _60) + 96
    mem[(32 * _60) + _58 + 96] = mem[224]
    _78 = mem[224]
    mem[(32 * _60) + _58 + 128 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
    return memory
      from mem[64]
       len (32 * _78) + (32 * _60) + _58 + -mem[64] + 128
}



}
