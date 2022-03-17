contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 762]




// =====================  Runtime code  =====================


uint8 stor2;
array of uint8 stor3;

function getElevation(uint8 arg1, uint8 arg2) payable {
    require arg1 < 33
    require arg2 < 33
    return elevation[uint8(arg2)]
}

function _fallback() payable {
  stop
}

function getElevations() payable {
    mem[64] = 10 * 3600
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 34944
    mem[64] = 37056
    if var6002 - 1:
        var5001 = 10 * 3600
        var5002 = 33
        continue 
    s = 10 * 3600
    idx = 0
    while idx < 33:
        _6 = mem[64]
        mem[64] = mem[64] + 1056
        mem[_6] = uint8(stor3.length)
        t = _6
        s = 0
        while _6 + 1056 > t + 32:
            mem[t + 32] = uint8(stor3[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_6 + 1024] = _6
        t = _6 + 1056
        s = 33
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

function initElevations(uint8 arg1, uint8[33] arg2) payable {
    mem[96 len 1056] = call.data[36 len 1056]
    if not stor2:
        require arg1 < 33
        s = 0
        idx = 96
        while 1152 > idx:
            uint256(stor3[arg1]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor3[arg1])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = 33
        s = (2 * arg1) + 3
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (2 * arg1) + (-31 * None + 3 / 32) + (None * None + 3 / 32) + 3
        while (2 * arg1) + 5 > idx:
            uint8(stor[idx]) = 0
            idx = idx + 1
            continue 
        require arg1 < 33
        uint256(stor[0.03125 / arg1]) = 256^(arg1 % 32) or uint256(stor[0.03125 / arg1]) and !(255 * 256^(arg1 % 32))
        idx = 0
        while uint8(idx) < 33:
            require idx < 33
            if stor(0.03125 / idx)[uint8(idx)]:
                idx = idx + 1
                continue 
        stor2 = 1
}



}
