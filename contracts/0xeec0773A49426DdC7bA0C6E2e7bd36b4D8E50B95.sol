contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor0;

function _fallback() payable {
    uint256(stor0.field_0) = msg.sender or 0x110000000000000000000000000000000000000000 or Mask(88, 168, uint256(stor0.field_0)) or Mask(96, 160, address(stor0.field_0))
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 17
            require idx < 17
            stor[idx + (17 * s) + 18] = msg.sender or Mask(96, 160, stor[idx + (17 * s) + 18])
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    return code.data[225 len 738]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of address stor1;
array of address stor18;

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function sub_4c95b65a(?) payable {
    mem[96 len 9248] = call.data[4 len 9248]
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < uint8(stor0.field_160):
        t = 0
        u = s
        while uint8(t) < uint8(stor0.field_160):
            require u < 289
            require t < 17
            require idx < 17
            stor[(0.03125 / idx) + t + 1] = mem[(32 * u) + 96] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + t + 1]
            t = t + 1
            u = u + 1
            continue 
        s = None
        idx = idx + 1
        s = s + None
        continue 
}

function getOwners() payable {
    mem[64] = 9888
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 9344
    mem[64] = 10432
    if var6002 - 1:
        var5001 = 9888
        var5002 = 17
        continue 
    s = 9888
    idx = 0
    while idx < 17:
        _6 = mem[64]
        mem[64] = mem[64] + 544
        mem[_6] = stor18[idx]
        t = _6
        u = (17 * idx) + 18
        while _6 + 544 > t + 32:
            mem[t + 32] = address(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _6
        s = s + 32
        idx = idx + 1
        continue 
    t = mem[64]
    idx = 0
    while idx < 17:
        mem[t len 544] = mem[mem[(32 * idx) + 9888] len 544]
        t = t + 544
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 9248
}

function getElevations() payable {
    mem[64] = 9888
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 9344
    mem[64] = 10432
    if var6002 - 1:
        var5001 = 9888
        var5002 = 17
        continue 
    s = 9888
    idx = 0
    while idx < 17:
        _6 = mem[64]
        mem[64] = mem[64] + 544
        mem[_6] = uint8(stor1.length)
        t = _6
        s = 0
        while _6 + 544 > t + 32:
            mem[t + 32] = stor(s + -(0.03125 / s + 1) + (-1 * s * 0.03125 / s + 1) + 2)[s + -(0.03125 / s + 1) + (-1 * s * 0.03125 / s + 1) + 1]
            t = t + 32
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            continue 
        mem[_6 + 512] = _6
        t = _6 + 544
        s = 17
        continue 
    s = mem[64]
    idx = 0
    while idx < 17:
        mem[s len 544] = mem[mem[(32 * idx) + 9888] len 544]
        s = s + 544
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 9248
}



}
