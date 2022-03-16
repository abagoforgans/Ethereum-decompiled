contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 17
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
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
    return code.data[268 len 1190]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint8 stor1;
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
    mem[var6001] = 0
    if var6002 - 1:
        var6001 = var6001 + 32
        var6002 = var6002 - 1
        continue 
    mem[var7001] = 9344
    mem[64] = 10432
    if var7002 - 1:
        var6001 = 9888
        var6002 = 17
        continue 
    s = 9888
    idx = 0
    while idx < 17:
        _7 = mem[64]
        mem[64] = mem[64] + 544
        mem[_7] = stor18[idx]
        t = _7
        u = (17 * idx) + 18
        while _7 + 544 > t + 32:
            mem[t + 32] = address(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _7
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
    mem[var6001] = 0
    if var6002 - 1:
        var6001 = var6001 + 32
        var6002 = var6002 - 1
        continue 
    mem[var7001] = 9344
    mem[64] = 10432
    if var7002 - 1:
        var6001 = 9888
        var6002 = 17
        continue 
    s = 9888
    idx = 0
    while idx < 17:
        _7 = mem[64]
        mem[64] = mem[64] + 544
        mem[_7] = uint8(stor1[idx])
        t = _7
        u = 0
        while _7 + 544 > t + 32:
            mem[t + 32] = uint8(stor1[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1])
            t = t + 32
            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
            continue 
        mem[s] = _7
        s = s + 32
        idx = idx + 1
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
