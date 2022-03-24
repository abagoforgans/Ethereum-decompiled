contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 10^17
    stor1 = 6
    stor2 = 16
    return code.data[43 len 431]
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
    require mem[96] != 0
    s = _5
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        s = 0
        while s < stor1:
            require s < 6
            uint256(sub_24c9af35[0.03125 / s]) = mem[(32 * s) + mem[(32 * idx) + 128]] * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(sub_24c9af35[0.03125 / s])
            s = s + 1
            continue 
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}



}
