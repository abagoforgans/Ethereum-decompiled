contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor0;
uint16 stor442;
array of uint256 stor1091;
array of uint256 stor1093;

function _fallback() payable {
    stor442 = 0
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, '!') or Mask(88, 168, uint256(stor0.field_0)) or Mask(96, 160, address(stor0.field_0))
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        require idx < 33
        stor443[0.03125 / idx] = !(255 * 256^(idx % 32)) and stor443[0.03125 / idx]
        stor445[0.03125 / idx] = !(255 * 256^(idx % 32)) and stor445[0.03125 / idx]
        idx = idx + 1
        continue 
    return code.data[215 len 1862]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 160
address stor0;
array of address stor1;
uint8 stor442;
uint8 stor442; offset 8
array of uint8 stor1091;
array of uint8 stor1093;

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function setOwner(uint8 arg1, uint8 arg2, address arg3) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[arg2 + (33 * arg1) + 1].field_8) == msg.sender:
        require arg1 < 33
        require arg2 < 33
}

function sub_d810612b(?) payable {
    mem[64] = 1152
    mem[96 len 1056] = call.data[36 len 1056]
    if uint8(stor442.field_8) != 1:
        if arg1 < uint8(stor0.field_160):
            idx = 0
            while uint8(idx) < uint8(stor0.field_160):
                require idx < 33
                require arg1 < 33
                uint256(stor[arg1 + (33 * idx) + 1].field_0) = mem[(32 * idx) + 96]
                idx = idx + 1
                continue 
            require arg1 < 33
            uint256(stor445[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor445[0.03125 / arg1])
            idx = 0
            while idx < uint8(stor0.field_160):
                require idx < 33
                if uint8(stor445[uint8(idx)]) != 0:
                    idx = idx + 1
                    continue 
            uint8(stor442.field_8) = 1
}

function sub_a0ad10a6(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if uint8(stor442.field_0) != 1:
        idx = 0
        while uint8(idx) < arg1.length:
            require idx < arg1.length
            if mem[(32 * idx) + 159 len 1] <= uint8(uint8(stor0.field_160) - 1):
                idx = idx + 1
                continue 
        idx = 0
        s = 0
        while uint8(idx) < arg1.length:
            require idx < arg1.length
            s = 0
            while uint8(s) < uint8(stor0.field_160):
                require s < 33
                require mem[(32 * idx) + 128] < 33
                Mask(248, 0, stor[mem[(32 * idx) + 128] + (33 * s) + 1].field_8) = address(stor0.field_0)
                s = s + 1
                continue 
            require mem[(32 * idx) + 128] < 33
            uint256(stor443[0.03125 / mem[(32 * idx) + 128]]) = 256^(mem[(32 * idx) + 128] % 32) or !(255 * 256^(mem[(32 * idx) + 128] % 32)) and uint256(stor443[0.03125 / mem[(32 * idx) + 128]])
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            continue 
        idx = 0
        while idx < uint8(stor0.field_160):
            require idx < 33
            if uint8(stor443[uint8(idx)]) != 0:
                idx = idx + 1
                continue 
        uint8(stor442.field_0) = 1
}

function getOwners() payable {
    mem[64] = 10 * 3600
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 34944
    if var6002 - 1:
        mem[64] = 37056
        var5001 = 10 * 3600
        var5002 = 33
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 33
            require idx < 33
            require s < 33
            require idx < 33
            address(stor[idx + (33 * s)].field_0) = address(stor[idx + (33 * s) + 1].field_8)
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    mem[64] = 37056
    s = 10 * 3600
    idx = 0
    while idx < 33:
        _8 = mem[64]
        mem[64] = mem[64] + 1056
        mem[_8] = address(stor[33 * idx].field_0)
        t = _8
        u = 33 * idx
        while _8 + 1056 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _8
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
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 34944
    if var6002 - 1:
        mem[64] = 37056
        var5001 = 10 * 3600
        var5002 = 33
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 33
            require idx < 33
            require s < 33
            require idx < 33
            uint256(stor[(0.03125 / idx) + (2 * s)].field_0) = uint8(stor[idx + (33 * s) + 1].field_0) * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor[(0.03125 / idx) + (2 * s)].field_0)
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    mem[64] = 37056
    s = 10 * 3600
    idx = 0
    while idx < 33:
        _11 = mem[64]
        mem[64] = mem[64] + 1056
        mem[_11] = uint8(stor0.field_0)
        t = _11
        s = 0
        while _11 + 1056 > t + 32:
            mem[t + 32] = stor(2 * -(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_11 + 1024] = _11
        t = _11 + 1056
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



}
