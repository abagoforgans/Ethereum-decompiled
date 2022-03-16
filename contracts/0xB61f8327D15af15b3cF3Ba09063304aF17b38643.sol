contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 33
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 33
            require idx < 33
            stor[idx + (33 * s) + 67] = msg.sender or Mask(96, 160, stor[idx + (33 * s) + 67])
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    return code.data[268 len 1196]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint8 stor1;
array of address stor67;

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function sub_418dece7(?) payable {
    mem[96 len 34848] = call.data[4 len 34848]
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < uint8(stor0.field_160):
        t = 0
        u = s
        while uint8(t) < uint8(stor0.field_160):
            require u < 1089
            require t < 33
            require idx < 33
            stor[(0.03125 / idx) + (2 * t) + 1] = mem[(32 * u) + 96] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + (2 * t) + 1]
            t = t + 1
            u = u + 1
            continue 
        s = None
        idx = idx + 1
        s = s + None
        continue 
}

function getOwners() payable {
    mem[64] = 10 * 3600
    mem[var6001] = 0
    if var6002 - 1:
        var6001 = var6001 + 32
        var6002 = var6002 - 1
        continue 
    mem[var7001] = 34944
    mem[64] = 37056
    if var7002 - 1:
        var6001 = 10 * 3600
        var6002 = 33
        continue 
    s = 10 * 3600
    idx = 0
    while idx < 33:
        _7 = mem[64]
        mem[64] = mem[64] + 1056
        mem[_7] = stor67[idx]
        t = _7
        u = (33 * idx) + 67
        while _7 + 1056 > t + 32:
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
    while idx < 33:
        mem[t len 1056] = mem[mem[(32 * idx) + (10 * 3600)] len 1056]
        t = t + 1056
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 34848
}

function getElevations() payable {
    mem[64] = 10 * 3600
    mem[var6001] = 0
    if var6002 - 1:
        var6001 = var6001 + 32
        var6002 = var6002 - 1
        continue 
    mem[var7001] = 34944
    mem[64] = 37056
    if var7002 - 1:
        var6001 = 10 * 3600
        var6002 = 33
        continue 
    s = 10 * 3600
    idx = 0
    while idx < 33:
        _7 = mem[64]
        mem[64] = mem[64] + 1056
        mem[_7] = uint8(stor1[idx])
        t = _7
        u = 0
        while _7 + 1056 > t + 32:
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
    while idx < 33:
        mem[s len 1056] = mem[mem[(32 * idx) + (10 * 3600)] len 1056]
        s = s + 1056
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 34848
}



}
