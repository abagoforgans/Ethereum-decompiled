contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2376]




// =====================  Runtime code  =====================


uint8 sub_ab552a27;
mapping of uint256 stor1;
uint256 stor2;

function sub_ab552a27(?) payable {
    return sub_ab552a27
}

function depositCollateral() payable {
    require msg.value != 0
    stor1[address(msg.sender)] += msg.value
    return 0
}

function _fallback() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}

function withdrawCollateral(uint256 arg1) payable {
    require arg1 <= stor1[address(msg.sender)]
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    stor1[address(msg.sender)] -= arg1
}

function sub_d57bb6a9(?) payable {
    mem[64] = 1120
    mem[96] = 0
    mem[128 len 992] = 0
    idx = 0
    while idx < 32:
        require -idx + 31 < 32
        mem[(32 * -idx + 31) + 96] = arg1 / 2^(8 * idx) << 248
        idx = idx + 1
        continue 
    mem[mem[64] len 1024] = mem[96 len 1024]
    return memory
      from mem[64]
       len 1024
}

function sub_51f20ce8(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len 992] = 0
    mem[ceil32(arg1.length) + 1152] = 0
    mem[ceil32(arg1.length) + 1184 len 992] = 0
    mem[64] = ceil32(arg1.length) + 2240
    mem[ceil32(arg1.length) + 2176] = 0
    mem[ceil32(arg1.length) + 2208] = 0
    require 0 < arg1.length
    _7 = mem[128]
    idx = 0
    while idx < 32:
        require idx + 1 < arg1.length
        require idx < 32
        mem[(32 * idx) + ceil32(arg1.length) + 128] = Mask(8, 248, mem[idx + 129])
        require idx + 1 < arg1.length
        require idx < 32
        mem[(32 * idx) + ceil32(arg1.length) + 1152] = Mask(8, 248, mem[idx + 129])
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 2240] = 2
    idx = 0
    s = 32
    s = ceil32(arg1.length) + 1152
    while idx < Mask(8, 248, _7) >> 248:
        mem[mem[64]] = idx + 200
        require (33 * idx) + 33 < mem[96]
        if Mask(8, 248, mem[(33 * idx) + 161]) != 0x100000000000000000000000000000000000000000000000000000000000000:
            mem[mem[64]] = 51
            t = 0
            while t < 32:
                mem[ceil32(arg1.length) + 2176] = (2^(8 * -t + 31) * mem[(32 * t) + s len 1]) + mem[ceil32(arg1.length) + 2176]
                t = t + 1
                continue 
            t = 0
            while t < 32:
                mem[ceil32(arg1.length) + 2208] = (mem[(32 * t) + ceil32(arg1.length) + 128 len 1] * 2^(8 * -t + 31)) + mem[ceil32(arg1.length) + 2208]
                t = t + 1
                continue 
            mem[mem[64]] = 60
            mem[mem[64] len 64] = mem[ceil32(arg1.length) + 2176 len 64]
            mem[mem[64] len 64] = mem[ceil32(arg1.length) + 2176 len 64]
            hash = sha256hash(mem[mem[64] len 64]) 
            require sha256hash.result
            hash = sha256hash(hash) 
            mem[mem[64]] = hash
            mem[mem[64] len 64] = mem[ceil32(arg1.length) + 2176 len 64]
            hash = sha256hash(mem[mem[64] len 64]) 
            hash = sha256hash(hash) 
            _159 = mem[64]
            mem[64] = mem[64] + 1024
            mem[_159] = 0
            u = _159
            t = 32
            while t - 1:
                mem[u + 32] = 0
                u = u + 32
                t = t - 1
                continue 
            t = 0
            while t < 32:
                require -t + 31 < 32
                mem[(32 * -t + 31) + _159] = hash / 2^(8 * t) << 248
                t = t + 1
                continue 
            mem[mem[64]] = 70
            t = 0
            while t < 32:
                require (33 * idx) + t + 33 < mem[96]
                require t < 32
                mem[(32 * t) + s] = Mask(8, 248, mem[(33 * idx) + t + 161])
                t = t + 1
                continue 
            idx = idx + 1
            s = 32
            s = s
            continue 
        mem[mem[64]] = 50
        t = 0
        while t < 32:
            mem[ceil32(arg1.length) + 2176] = (2^(8 * -t + 31) * mem[(32 * t) + ceil32(arg1.length) + 128 len 1]) + mem[ceil32(arg1.length) + 2176]
            t = t + 1
            continue 
        t = 0
        while t < 32:
            mem[ceil32(arg1.length) + 2208] = (mem[(32 * t) + s len 1] * 2^(8 * -t + 31)) + mem[ceil32(arg1.length) + 2208]
            t = t + 1
            continue 
        mem[mem[64]] = 60
        mem[mem[64] len 64] = mem[ceil32(arg1.length) + 2176 len 64]
        mem[mem[64] len 64] = mem[ceil32(arg1.length) + 2176 len 64]
        hash = sha256hash(mem[mem[64] len 64]) 
        require sha256hash.result
        hash = sha256hash(hash) 
        mem[mem[64]] = hash
        mem[mem[64] len 64] = mem[ceil32(arg1.length) + 2176 len 64]
        hash = sha256hash(mem[mem[64] len 64]) 
        hash = sha256hash(hash) 
        _160 = mem[64]
        mem[64] = mem[64] + 1024
        mem[_160] = 0
        t = _160
        s = 32
        while s - 1:
            mem[t + 32] = 0
            t = t + 32
            s = s - 1
            continue 
        s = 0
        while s < 32:
            require -s + 31 < 32
            mem[(32 * -s + 31) + _160] = hash / 2^(8 * s) << 248
            s = s + 1
            continue 
        mem[mem[64]] = 70
        s = 0
        while s < 32:
            require (33 * idx) + s + 33 < mem[96]
            require s < 32
            mem[(32 * s) + ceil32(arg1.length) + 128] = Mask(8, 248, mem[(33 * idx) + s + 161])
            s = s + 1
            continue 
        idx = idx + 1
        s = 32
        s = _160
        continue 
    mem[mem[64] len 1024] = mem[ceil32(arg1.length) + 128 len 1024]
    emit 0xd2a0b742: mem[mem[64] len 1024]
    idx = 0
    while idx < 32:
        require (33 * Mask(8, 248, _7) >> 248) + idx < mem[96]
        require idx < 32
        if mem[(32 * idx) + ceil32(arg1.length) + 128] == Mask(8, 248, mem[(33 * Mask(8, 248, _7) >> 248) + idx + 128]):
            idx = idx + 1
            continue 
        sub_ab552a27 = 0
        return 0
    sub_ab552a27 = 1
    return 1
}

function sub_9372473a(?) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160 len 992] = 0
    mem[ceil32(arg2.length) + 1152] = 0
    mem[ceil32(arg2.length) + 1184 len 992] = 0
    mem[64] = ceil32(arg2.length) + 2240
    mem[ceil32(arg2.length) + 2176] = 0
    mem[ceil32(arg2.length) + 2208] = 0
    require 0 < arg2.length
    _7 = mem[128]
    idx = 0
    while idx < 32:
        require idx + 1 < arg2.length
        require idx < 32
        mem[(32 * idx) + ceil32(arg2.length) + 128] = Mask(8, 248, mem[idx + 129])
        require idx + 1 < arg2.length
        require idx < 32
        mem[(32 * idx) + ceil32(arg2.length) + 1152] = Mask(8, 248, mem[idx + 129])
        idx = idx + 1
        continue 
    mem[ceil32(arg2.length) + 2240] = 2
    idx = 0
    s = 32
    s = ceil32(arg2.length) + 1152
    while idx < Mask(8, 248, _7) >> 248:
        mem[mem[64]] = idx + 200
        require (33 * idx) + 33 < mem[96]
        if Mask(8, 248, mem[(33 * idx) + 161]) != 0x100000000000000000000000000000000000000000000000000000000000000:
            mem[mem[64]] = 51
            t = 0
            while t < 32:
                mem[ceil32(arg2.length) + 2176] = (2^(8 * -t + 31) * mem[(32 * t) + s len 1]) + mem[ceil32(arg2.length) + 2176]
                t = t + 1
                continue 
            t = 0
            while t < 32:
                mem[ceil32(arg2.length) + 2208] = (mem[(32 * t) + ceil32(arg2.length) + 128 len 1] * 2^(8 * -t + 31)) + mem[ceil32(arg2.length) + 2208]
                t = t + 1
                continue 
            mem[mem[64]] = 60
            mem[mem[64] len 64] = mem[ceil32(arg2.length) + 2176 len 64]
            mem[mem[64] len 64] = mem[ceil32(arg2.length) + 2176 len 64]
            hash = sha256hash(mem[mem[64] len 64]) 
            require sha256hash.result
            hash = sha256hash(hash) 
            mem[mem[64]] = hash
            mem[mem[64] len 64] = mem[ceil32(arg2.length) + 2176 len 64]
            hash = sha256hash(mem[mem[64] len 64]) 
            hash = sha256hash(hash) 
            _157 = mem[64]
            mem[64] = mem[64] + 1024
            mem[_157] = 0
            u = _157
            t = 32
            while t - 1:
                mem[u + 32] = 0
                u = u + 32
                t = t - 1
                continue 
            t = 0
            while t < 32:
                require -t + 31 < 32
                mem[(32 * -t + 31) + _157] = hash / 2^(8 * t) << 248
                t = t + 1
                continue 
            mem[mem[64]] = 70
            t = 0
            while t < 32:
                require (33 * idx) + t + 33 < mem[96]
                require t < 32
                mem[(32 * t) + s] = Mask(8, 248, mem[(33 * idx) + t + 161])
                t = t + 1
                continue 
            idx = idx + 1
            s = 32
            s = s
            continue 
        mem[mem[64]] = 50
        t = 0
        while t < 32:
            mem[ceil32(arg2.length) + 2176] = (2^(8 * -t + 31) * mem[(32 * t) + ceil32(arg2.length) + 128 len 1]) + mem[ceil32(arg2.length) + 2176]
            t = t + 1
            continue 
        t = 0
        while t < 32:
            mem[ceil32(arg2.length) + 2208] = (mem[(32 * t) + s len 1] * 2^(8 * -t + 31)) + mem[ceil32(arg2.length) + 2208]
            t = t + 1
            continue 
        mem[mem[64]] = 60
        mem[mem[64] len 64] = mem[ceil32(arg2.length) + 2176 len 64]
        mem[mem[64] len 64] = mem[ceil32(arg2.length) + 2176 len 64]
        hash = sha256hash(mem[mem[64] len 64]) 
        require sha256hash.result
        hash = sha256hash(hash) 
        mem[mem[64]] = hash
        mem[mem[64] len 64] = mem[ceil32(arg2.length) + 2176 len 64]
        hash = sha256hash(mem[mem[64] len 64]) 
        hash = sha256hash(hash) 
        _158 = mem[64]
        mem[64] = mem[64] + 1024
        mem[_158] = 0
        t = _158
        s = 32
        while s - 1:
            mem[t + 32] = 0
            t = t + 32
            s = s - 1
            continue 
        s = 0
        while s < 32:
            require -s + 31 < 32
            mem[(32 * -s + 31) + _158] = hash / 2^(8 * s) << 248
            s = s + 1
            continue 
        mem[mem[64]] = 70
        s = 0
        while s < 32:
            require (33 * idx) + s + 33 < mem[96]
            require s < 32
            mem[(32 * s) + ceil32(arg2.length) + 128] = Mask(8, 248, mem[(33 * idx) + s + 161])
            s = s + 1
            continue 
        idx = idx + 1
        s = 32
        s = _158
        continue 
    mem[mem[64] len 1024] = mem[ceil32(arg2.length) + 128 len 1024]
    emit 0xd2a0b742: mem[mem[64] len 1024]
    idx = 0
    while idx < 32:
        require (33 * Mask(8, 248, _7) >> 248) + idx < mem[96]
        require idx < 32
        if mem[(32 * idx) + ceil32(arg2.length) + 128] == Mask(8, 248, mem[(33 * Mask(8, 248, _7) >> 248) + idx + 128]):
            idx = idx + 1
            continue 
        sub_ab552a27 = 0
    sub_ab552a27 = 1
    mem[mem[64]] = 100
    require 0 < mem[96]
    stor2 = 2^(mem[128 len 1] - 1) + 1
    call msg.sender with:
       value stor1[address(arg1)] wei
         gas 0 wei
    stor1[address(arg1)] = 0
}



}
