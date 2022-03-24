contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 10^17
    stor1 = 6
    stor2 = 16
    return code.data[43 len 525]
}



// =====================  Runtime code  =====================


uint256 stor1;
array of uint8 sub_24c9af35;

function sub_24c9af35(?) payable {
    require arg1 < 6
    return uint8(sub_24c9af35[uint8(arg1)])
}

function _fallback() payable {
  stop
}

function sub_d44b75ff(?) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    s = 128
    idx = 0
    while idx < arg1.length:
        _6 = mem[64]
        mem[64] = mem[64] + 192
        mem[_6 len 192] = call.data[arg1 + (192 * idx) + 36 len 192]
        mem[s] = _6
        s = s + 32
        idx = idx + 1
        continue 
    _4 = mem[64]
    mem[64] = mem[64] + 32
    mem[_4] = 0
    _5 = mem[64]
    mem[64] = mem[64] + 192
    mem[_5] = 0
    mem[_5 + 32 len 160] = 0
    _7 = mem[96]
    require mem[96] != 0
    s = _5
    s = _4
    idx = 0
    while idx < _7:
        _23 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = stor1
            mem[64] = mem[64] + (32 * stor1) + 32
            require idx < mem[96]
            _27 = mem[(32 * idx) + 128]
            s = 0
            while s < stor1:
                require s < 6
                require s < mem[_23]
                mem[(32 * s) + _23 + 32] = mem[(32 * s) + _27 + 31 len 1]
                require s < mem[_23]
                require s < 6
                uint256(sub_24c9af35[0.03125 / s]) = mem[(32 * s) + _23 + 32] * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(sub_24c9af35[0.03125 / s])
                s = s + 1
                continue 
            s = _27
            s = _23
            idx = idx + 1
            continue 
        _26 = msize
        mem[msize] = stor1
        mem[64] = _26 + (32 * stor1) + 32
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        s = 0
        while s < stor1:
            require s < 6
            require s < mem[_26]
            mem[(32 * s) + _26 + 32] = mem[(32 * s) + _29 + 31 len 1]
            require s < mem[_26]
            require s < 6
            uint256(sub_24c9af35[0.03125 / s]) = mem[(32 * s) + _26 + 32] * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(sub_24c9af35[0.03125 / s])
            s = s + 1
            continue 
        s = _29
        s = _26
        idx = idx + 1
        continue 
}



}
