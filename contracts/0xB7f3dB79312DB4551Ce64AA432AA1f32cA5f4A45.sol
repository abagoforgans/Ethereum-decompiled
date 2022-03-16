contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor0;
uint16 stor290;
array of uint256 stor291;
array of uint256 stor292;

function _fallback() payable {
    stor290 = 0
    uint256(stor0.field_0) = msg.sender or 0x110000000000000000000000000000000000000000 or Mask(88, 168, uint256(stor0.field_0)) or Mask(96, 160, address(stor0.field_0))
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        require idx < 17
        stor291[0.03125 / idx] = !(255 * 256^(idx % 32)) and stor291[0.03125 / idx]
        stor292[0.03125 / idx] = !(255 * 256^(idx % 32)) and stor292[0.03125 / idx]
        idx = idx + 1
        continue 
    return code.data[215 len 1854]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 160
address stor0;
array of address stor1;
uint8 stor290;
uint8 stor290; offset 8
array of uint8 stor291;
array of uint8 stor292;

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function setOwner(uint8 arg1, uint8 arg2, address arg3) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[arg2 + (17 * arg1) + 1].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
}

function sub_2555c061(?) payable {
    mem[64] = 640
    mem[96 len 544] = call.data[36 len 544]
    if uint8(stor290.field_8) != 1:
        if arg1 < uint8(stor0.field_160):
            idx = 0
            while uint8(idx) < uint8(stor0.field_160):
                require idx < 17
                require arg1 < 17
                uint256(stor[arg1 + (17 * idx) + 1].field_0) = mem[(32 * idx) + 96]
                idx = idx + 1
                continue 
            require arg1 < 17
            uint256(stor292[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor292[0.03125 / arg1])
            idx = 0
            while idx < uint8(stor0.field_160):
                require idx < 17
                if uint8(stor292[uint8(idx)]) != 0:
                    idx = idx + 1
                    continue 
            uint8(stor290.field_8) = 1
}

function sub_a0ad10a6(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if uint8(stor290.field_0) != 1:
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
                require s < 17
                require mem[(32 * idx) + 128] < 17
                Mask(248, 0, stor[mem[(32 * idx) + 128] + (17 * s) + 1].field_8) = address(stor0.field_0)
                s = s + 1
                continue 
            require mem[(32 * idx) + 128] < 17
            uint256(stor291[0.03125 / mem[(32 * idx) + 128]]) = 256^(mem[(32 * idx) + 128] % 32) or !(255 * 256^(mem[(32 * idx) + 128] % 32)) and uint256(stor291[0.03125 / mem[(32 * idx) + 128]])
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            continue 
        idx = 0
        while idx < uint8(stor0.field_160):
            require idx < 17
            if uint8(stor291[uint8(idx)]) != 0:
                idx = idx + 1
                continue 
        uint8(stor290.field_0) = 1
}

function getOwners() payable {
    mem[64] = 9888
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 9344
    if var6002 - 1:
        mem[64] = 10432
        var5001 = 9888
        var5002 = 17
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 17
            require idx < 17
            require s < 17
            require idx < 17
            address(stor[idx + (17 * s)].field_0) = address(stor[idx + (17 * s) + 1].field_8)
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    mem[64] = 10432
    s = 9888
    idx = 0
    while idx < 17:
        _8 = mem[64]
        mem[64] = mem[64] + 544
        mem[_8] = address(stor[17 * idx].field_0)
        t = _8
        u = 17 * idx
        while _8 + 544 > t + 32:
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
    if var6002 - 1:
        mem[64] = 10432
        var5001 = 9888
        var5002 = 17
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 17
            require idx < 17
            require s < 17
            require idx < 17
            uint256(stor[(0.03125 / idx) + s].field_0) = uint8(stor[idx + (17 * s) + 1].field_0) * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor[(0.03125 / idx) + s].field_0)
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    mem[64] = 10432
    s = 9888
    idx = 0
    while idx < 17:
        _11 = mem[64]
        mem[64] = mem[64] + 544
        mem[_11] = uint8(stor0.field_0)
        t = _11
        s = 0
        while _11 + 544 > t + 32:
            mem[t + 32] = stor(-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_11 + 512] = _11
        t = _11 + 544
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
