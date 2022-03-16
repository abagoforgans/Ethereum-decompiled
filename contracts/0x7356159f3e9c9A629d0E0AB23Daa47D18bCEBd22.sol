contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 17
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    return code.data[88 len 2356]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of address stor1;

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
    if arg1 < uint8(stor0.field_160):
        idx = 0
        while uint8(idx) < uint8(stor0.field_160):
            require idx < 17
            require arg1 < 17
            uint256(stor[arg1 + (17 * idx) + 1].field_0) = mem[(32 * idx) + 96]
            idx = idx + 1
            continue 
}

function sub_a0ad10a6(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
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
        idx = idx + 1
        s = mem[(32 * idx) + 128]
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
    if var7002 - 1:
        mem[64] = 10432
        var6001 = 9888
        var6002 = 17
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
        _9 = mem[64]
        mem[64] = mem[64] + 544
        mem[_9] = address(stor[17 * idx].field_0)
        t = _9
        u = 17 * idx
        while _9 + 544 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _9
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
    if var7002 - 1:
        mem[64] = 10432
        var6001 = 9888
        var6002 = 17
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
        _12 = mem[64]
        mem[64] = mem[64] + 544
        mem[_12] = uint8(stor[idx].field_0)
        t = _12
        u = 0
        while _12 + 544 > t + 32:
            mem[t + 32] = storidx[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
            t = t + 32
            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
            continue 
        mem[s] = _12
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
