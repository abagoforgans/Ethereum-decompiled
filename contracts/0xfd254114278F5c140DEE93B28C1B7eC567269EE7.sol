contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    s = 0
    idx = 0
    s = 0
    while idx < 8:
        t = 0
        u = s
        while t < 3:
            require idx < 8
            require t < 3
            stor[(0.03125 / t) + idx + 1] = uint8(u) * 256^(t % 32) or !(255 * 256^(t % 32)) and stor[(0.03125 / t) + idx + 1]
            t = t + 1
            u = u + 1
            continue 
        s = 3
        idx = idx + 1
        s = s + 3
        continue 
    return code.data[180 len 366]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getArray() payable {
    mem[64] = 960
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 864
    if var6002 - 1:
        mem[64] = 1056
        var5001 = 960
        var5002 = 3
        continue 
    mem[64] = 1216
    s = 960
    idx = 0
    while idx < 8:
        _6 = mem[64]
        mem[64] = mem[64] + 96
        mem[_6] = ('signextend', 0, ('div', ('stor', ('name', 'stor1', 1)), ('exp', 256, 0)))
        t = _6
        s = 0
        while _6 + 96 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('stor', ('add', 2, ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('mul', -1, ('var', 1), ('div', 0.03125, ('add', 1, ('var', 1)))))), ('exp', 256, ('add', 1, ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('mul', -1, ('var', 1), ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32))))))
            t = t + 32
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            continue 
        mem[_6 + 64] = _6
        t = _6 + 96
        s = 3
        continue 
    s = mem[64]
    idx = 0
    while idx < 8:
        mem[s len 96] = mem[mem[(32 * idx) + 960] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 768
}



}
