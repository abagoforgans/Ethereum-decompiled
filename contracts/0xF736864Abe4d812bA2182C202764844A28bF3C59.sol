contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;
uint256 stor91; offset 8
uint256 stor91;

function _fallback() payable {
    uint8(stor0.field_160) = 9
    mem[96 len 2592] = code.data[2043 len 2592]
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < uint8(stor0.field_160):
        t = 0
        u = s
        while uint8(t) < uint8(stor0.field_160):
            require t < 9
            require idx < 9
            stor[idx + (9 * t) + 10] = msg.sender or Mask(96, 160, stor[idx + (9 * t) + 10])
            require u < 81
            require t < 9
            require idx < 9
            stor[(0.03125 / idx) + t + 1] = mem[(32 * u) + code.data[2043 len 32] + 96] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + t + 1]
            if uint8(idx) == uint8(t):
                if uint8(idx) == uint8(uint8(stor0.field_160) - 1):
                    require u < 81
                    uint256(stor91.field_0) = mem[(32 * u) + code.data[2043 len 32] + 96]
                    Mask(248, 0, stor91.field_8) = Mask(248, 0, u)
            t = t + 1
            u = u + 1
            continue 
        s = t
        idx = idx + 1
        s = u
        continue 
    return code.data[507 len 1536]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint8 stor1;
array of address stor10;
uint8 sub_936a62a3;
uint8 sub_0f7aebb9; offset 8
uint256 stor91; offset 8
uint256 stor91;

function sub_0f7aebb9(?) payable {
    return sub_0f7aebb9
}

function sub_936a62a3(?) payable {
    return sub_936a62a3
}

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function getOwners() payable {
    mem[64] = 2976
    mem[var6001] = 0
    if var6002 - 1:
        var6001 = var6001 + 32
        var6002 = var6002 - 1
        continue 
    mem[var7001] = 2688
    mem[64] = 3264
    if var7002 - 1:
        var6001 = 2976
        var6002 = 9
        continue 
    s = 2976
    idx = 0
    while idx < 9:
        _7 = mem[64]
        mem[64] = mem[64] + 288
        mem[_7] = stor10[idx]
        t = _7
        u = (9 * idx) + 10
        while _7 + 288 > t + 32:
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
    while idx < 9:
        mem[t len 288] = mem[mem[(32 * idx) + 2976] len 288]
        t = t + 288
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 2592
}

function getElevations() payable {
    mem[64] = 2976
    mem[var6001] = 0
    if var6002 - 1:
        var6001 = var6001 + 32
        var6002 = var6002 - 1
        continue 
    mem[var7001] = 2688
    mem[64] = 3264
    if var7002 - 1:
        var6001 = 2976
        var6002 = 9
        continue 
    s = 2976
    idx = 0
    while idx < 9:
        _7 = mem[64]
        mem[64] = mem[64] + 288
        mem[_7] = uint8(stor1[idx])
        t = _7
        u = 0
        while _7 + 288 > t + 32:
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
    while idx < 9:
        mem[s len 288] = mem[mem[(32 * idx) + 2976] len 288]
        s = s + 288
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 2592
}

function sub_060faeb0(?) payable {
    mem[96 len 2592] = call.data[4 len 2592]
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < uint8(stor0.field_160):
        t = 0
        u = s
        while uint8(t) < uint8(stor0.field_160):
            require t < 9
            require idx < 9
            stor[idx + (9 * t) + 10] = msg.sender or Mask(96, 160, stor[idx + (9 * t) + 10])
            require u < 81
            require t < 9
            require idx < 9
            stor[(0.03125 / idx) + t + 1] = mem[(32 * u) + 96] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + t + 1]
            if uint8(idx) == uint8(t):
                if uint8(idx) == uint8(uint8(stor0.field_160) - 1):
                    require u < 81
                    uint256(stor91.field_0) = mem[(32 * u) + 96]
                    Mask(248, 0, stor91.field_8) = Mask(248, 0, u)
            t = t + 1
            u = u + 1
            continue 
        s = t
        idx = idx + 1
        s = u
        continue 
}



}
