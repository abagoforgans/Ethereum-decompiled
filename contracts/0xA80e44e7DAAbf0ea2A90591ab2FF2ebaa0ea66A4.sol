contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint128 stor6C8; offset 160
uint256 stor6C8;

function _fallback() payable {
    uint256(stor0) = msg.sender or 0x110000000000000000000000000000000000000000 or Mask(88, 168, uint256(stor0)) or Mask(96, 160, address(stor0))
    uint256(stor6C8.field_0) = Mask(96, 0, stor6C8.field_160)
    return code.data[86 len 10275]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
uint8 stor6C7;
uint256 stor6C7; offset 8
address stor6C8;
array of uint256 stor1737;
array of struct stor1738;
array of uint256 stor1746;
uint8 whatHappened;

function getWhatHappened() payable {
    return whatHappened
}

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function setInitializer(address arg1) payable {
    if not uint8(stor6C7.field_0):
        uint8(stor6C7.field_0) = 1
        Mask(248, 0, stor6C7.field_8) = Mask(248, 0, arg1)
        Mask(248, 0, stor6C7.field_8) = 0
}

function sub_f25e675d(?) payable {
    mem[64] = 640
    mem[96 len 544] = call.data[36 len 544]
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        require idx < 17
        require arg1 < 17
        uint256(stor[(6 * arg1) + (102 * idx) + 1].field_0) = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
}

function getUint8FromByte32(bytes32 arg1, uint8 arg2) payable {
    if arg2 != 0:
        return uint8((arg1 % 16^(-(2 * arg2 % 128) + 64)) - (arg1 % 16^(-(2 * arg2 % 128) + 64) % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
    return uint8(arg1 - (arg1 % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
}

function sub_6a864559(?) payable {
    require arg1 < 17
    require arg2 < 17
    if uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0):
        mem[160] = address(stor[sha3((6 * arg2) + (102 * arg1) + 2)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)) + 128 > idx:
            mem[idx + 32] = address(stor[s + sha3((6 * arg2) + (102 * arg1) + 2) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0), data=mem[160 len 32 * uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)]), 
}

function sub_c7dafc78(?) payable {
    require arg1 < 17
    require arg2 < 17
    if uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0):
        mem[160] = uint256(stor[sha3((6 * arg2) + (102 * arg1) + 3)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((6 * arg2) + (102 * arg1) + 3) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0), data=mem[160 len 32 * uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)]), 
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
    mem[64] = 19680
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 19136
    if var12002 - 1:
        mem[64] = 20224
        var11001 = 19680
        var11002 = 17
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
            mem[(32 * idx) + mem[(32 * s) + 9888]] = address(stor[(6 * idx) + (102 * s) + 1].field_8)
            s = s + 1
            continue 
        s = None
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
    mem[64] = 19680
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 19136
    if var12002 - 1:
        mem[64] = 20224
        var11001 = 19680
        var11002 = 17
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
            mem[(32 * idx) + mem[(32 * s) + 9888]] = uint8(stor[(6 * idx) + (102 * s) + 1].field_0)
            s = s + 1
            continue 
        s = None
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

function sub_a5ffca0e(?) payable {
    require arg1 < 17
    require arg2 < 17
    require arg1 < 17
    require arg2 < 17
    require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
    call address(stor[(6 * arg2) + (102 * arg1) + 1].field_8) with:
       value uint256(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) wei
         gas 0 wei
    require arg1 < 17
    require arg2 < 17
    require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
    require arg1 < 17
    require arg2 < 17
    Mask(248, 0, stor[(6 * arg2) + (102 * arg1) + 1].field_8) = address(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 2)].field_0)
    require arg1 < 17
    require arg2 < 17
    uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) = 0
    idx = 0
    while uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) > idx:
        uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    require arg1 < 17
    require arg2 < 17
    uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) = 0
    idx = 0
    while uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) > idx:
        uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = 0
        idx = idx + 1
        continue 
}

function sub_6d1abf29(?) payable {
    mem[96] = 0
    require arg1 < 20
    mem[64] = (32 * stor6D2[arg1]) + 160
    mem[128] = stor6D2[arg1]
    s = 160
    idx = 0
    while idx < stor6D2[arg1]:
        mem[0] = (10 * arg1) + 1746
        _11 = mem[64]
        mem[64] = mem[64] + 96
        mem[_11] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 1746, ('mul', 10, ('param', 'arg1'))))))), ('exp', 256, 0)))
        t = _11
        s = 0
        while _11 + 96 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 1746, ('mul', 10, ('param', 'arg1')))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_11 + 64] = _11
        t = _11 + 96
        s = 3
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _14 = mem[128]
    s = mem[64] + 64
    idx = 0
    while idx < _14:
        mem[s len 96] = mem[mem[(32 * idx) + 160] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _12 + (96 * _14) + -mem[64] + 64
}

function sub_5d07cf91(?) payable {
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
    require arg1 < 20
    mem[64] = 1216
    s = 960
    idx = 0
    while idx < 8:
        _7 = mem[64]
        mem[64] = mem[64] + 96
        mem[_7] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor6CA', 1738))))), ('exp', 256, 0)))
        t = _7
        s = 0
        while _7 + 96 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1739, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('mul', 10, ('param', 'arg1')))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_7 + 64] = _7
        t = _7 + 96
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

function getBlocks(uint8 arg1, uint8 arg2) payable {
    mem[96] = 0
    require arg1 < 17
    require arg2 < 17
    mem[64] = (32 * uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)) + 160
    mem[128] = uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
    s = 160
    idx = 0
    while idx < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0):
        mem[0] = (6 * arg2) + (102 * arg1) + 4
        _11 = mem[64]
        mem[64] = mem[64] + 160
        mem[_11] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))), ('exp', 256, 0)))
        t = _11
        s = 0
        while _11 + 160 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_11 + 128] = _11
        t = _11 + 160
        s = 5
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _14 = mem[128]
    s = mem[64] + 64
    idx = 0
    while idx < _14:
        mem[s len 160] = mem[mem[(32 * idx) + 160] len 160]
        s = s + 160
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _12 + (160 * _14) + -mem[64] + 64
}

function sub_54746dac(?) payable {
    mem[64] = 352
    s = 96
    idx = 0
    while idx < 8:
        _4 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4 len 96] = call.data[(96 * idx) + 36 len 96]
        mem[s] = _4
        s = s + 32
        idx = idx + 1
        continue 
    _3 = mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_3] = arg2.length
    s = _3 + 32
    idx = 0
    while idx < arg2.length:
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12 len 96] = call.data[arg2 + (96 * idx) + 36 len 96]
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    require arg1 < 20
    stor6C9[arg1] = arg1 or Mask(248, 8, stor6C9[arg1])
    s = (10 * arg1) + 1738
    idx = 96
    while 352 > idx:
        t = 0
        u = mem[idx]
        while mem[idx] + 96 > u:
            uint256(stor[s].field_0) = mem[u + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[s].field_0)
            t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
            u = u + 32
            continue 
        u = t
        v = s
        while u:
            uint256(stor[v].field_0) = !(255 * 256^u) and uint256(stor[v].field_0)
            u = u + -(u + 1 / 32) + (-1 * u * u + 1 / 32) + 1
            v = (u + 1 / 32) + v
            continue 
        u = s + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (t * None + 3 / 32)
        while s + 1 > u:
            uint8(stor[u].field_0) = 0
            u = u + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while (10 * arg1) + 1746 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    require arg1 < 20
    _26 = mem[_3]
    stor6D2[arg1] = mem[_3]
    mem[0] = (10 * arg1) + 1746
    if not _26:
        idx = 0
        while stor6D2[arg1] > idx:
            uint256(stor[idx + sha3((10 * arg1) + 1746)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = _3 + 32
        while _3 + (32 * _26) + 32 > idx:
            t = 0
            u = mem[idx]
            while mem[idx] + 96 > u:
                uint256(stor[s + sha3((10 * arg1) + 1746)].field_0) = mem[u + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[s + sha3((10 * arg1) + 1746)].field_0)
                t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                u = u + 32
                continue 
            u = t
            v = s + sha3((10 * arg1) + 1746)
            while u:
                uint256(stor[v].field_0) = !(255 * 256^u) and uint256(stor[v].field_0)
                u = u + -(u + 1 / 32) + (-1 * u * u + 1 / 32) + 1
                v = (u + 1 / 32) + v
                continue 
            u = s + sha3((10 * arg1) + 1746) + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (t * None + 3 / 32)
            while s + sha3((10 * arg1) + 1746) + 1 > u:
                uint8(stor[u].field_0) = 0
                u = u + 1
                continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3((10 * arg1) + 1746) + stor6D2[arg1] > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_a713081c(?) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[(6 * arg2) + (102 * arg1) + 1].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
        call address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + arg3].field_0) with:
           value uint256(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) wei
             gas 0 wei
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
        address(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 2)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
        uint256(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        idx = var34001
        while uint8(idx) < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0):
            require arg1 < 17
            require arg2 < 17
            require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
            require arg1 < 17
            require arg2 < 17
            require idx - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
            address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + idx - 1].field_0) = address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + idx].field_0)
            require arg1 < 17
            require arg2 < 17
            require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
            require arg1 < 17
            require arg2 < 17
            require idx - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
            mem[0] = (6 * arg2) + (102 * arg1) + 3
            uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3) - 1].field_0) = uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0)
            require arg1 < 17
            require arg2 < 17
            idx = idx + 1
            continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)--
        if not uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1:
            idx = uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1
            while uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) > idx:
                uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 2)].field_0) = 0
                idx = idx + 1
                continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)--
        if not uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) - 1:
            idx = uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) - 1
            while uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) > idx:
                uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_959eac47(?) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[(6 * arg2) + (102 * arg1) + 1].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
        if block.number - uint256(stor[(6 * arg2) + (102 * arg1) + 5].field_0) >= 4320:
            idx = 0
            while uint8(idx) < 20:
                require arg1 < 17
                require arg2 < 17
                uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)++
                if not uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + 1:
                    s = uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) + 1
                    while sha3((6 * arg2) + (102 * arg1) + 4) + uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                if uint8(idx) != 0:
                    stor[uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                else:
                    stor[uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                stor[uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) - 1].field_5 % 8 = 0
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) - 1].field_8) = 0
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) - 1].field_16) = 0
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) - 1].field_24) = 255
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                mem[0] = (6 * arg2) + (102 * arg1) + 4
                uint8(stor[uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0) + sha3((6 * arg2) + (102 * arg1) + 4) - 1].field_32) = 0
                idx = idx + 1
                continue 
            require arg1 < 17
            require arg2 < 17
            uint256(stor[(6 * arg2) + (102 * arg1) + 5].field_0) = block.number
}

function sub_edffcd57(?) payable {
    require arg1 < 17
    require arg2 < 17
    idx = var41001
    while uint8(idx) < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0):
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
        mem[0] = (6 * arg2) + (102 * arg1) + 2
        require arg1 < 17
        if address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + idx].field_0) != msg.sender:
            require arg2 < 17
            idx = idx + 1
            continue 
        require arg2 < 17
        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
        call address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + idx].field_0) with:
           value uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) wei
             gas 0 wei
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
        address(stor[idx + sha3((6 * arg2) + (102 * arg1) + 2)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
        mem[0] = (6 * arg2) + (102 * arg1) + 3
        uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        s = var41001
        while uint8(s) < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0):
            require arg1 < 17
            require arg2 < 17
            require s < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
            require arg1 < 17
            require arg2 < 17
            require s - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
            address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + s - 1].field_0) = address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + s].field_0)
            require arg1 < 17
            require arg2 < 17
            require s < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
            require arg1 < 17
            require arg2 < 17
            require s - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
            mem[0] = (6 * arg2) + (102 * arg1) + 3
            uint256(stor[s + sha3((6 * arg2) + (102 * arg1) + 3) - 1].field_0) = uint256(stor[s + sha3((6 * arg2) + (102 * arg1) + 3)].field_0)
            require arg1 < 17
            require arg2 < 17
            require arg2 < 17
            s = s + 1
            continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)--
        if not uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1:
            mem[0] = (6 * arg2) + (102 * arg1) + 2
            idx = uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) + sha3((6 * arg2) + (102 * arg1) + 2) - 1
            while sha3((6 * arg2) + (102 * arg1) + 2) + uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) > idx:
                uint256(stor[idx].field_0) = 0
                require arg2 < 17
                idx = idx + 1
                continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)--
        if not uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) - 1:
            mem[0] = (6 * arg2) + (102 * arg1) + 3
            idx = uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) + sha3((6 * arg2) + (102 * arg1) + 3) - 1
            while sha3((6 * arg2) + (102 * arg1) + 3) + uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) > idx:
                uint256(stor[idx].field_0) = 0
                require arg2 < 17
                idx = idx + 1
                continue 
        require arg1 < 17
        require arg2 < 17
        s = None + 1
        continue 
}

function sub_6266b514(?) payable {
    if msg.value < 10^16:
        if msg.value != 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if msg.value > test266151307():
            if msg.value != 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            require arg1 < 17
            require arg2 < 17
            require arg1 < 17
            require arg2 < 17
            if uint8(stor[(6 * arg2) + (102 * arg1) + 1].field_0) < 125:
                if uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) < 10:
                    require arg1 < 17
                    require arg2 < 17
                    idx = var20001
                    while uint8(idx) < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0):
                        require arg1 < 17
                        require arg2 < 17
                        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
                        mem[0] = (6 * arg2) + (102 * arg1) + 2
                        require arg1 < 17
                        if address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + idx].field_0) != msg.sender:
                            require arg2 < 17
                            idx = idx + 1
                            continue 
                        require arg2 < 17
                        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
                        call msg.sender with:
                           value uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) wei
                             gas 0 wei
                        require arg1 < 17
                        require arg2 < 17
                        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
                        uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = msg.value
                    require arg1 < 17
                    require arg2 < 17
                    uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)++
                    if not uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) + 1:
                        idx = uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) + 1
                        while uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) > idx:
                            uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                    require arg1 < 17
                    require arg2 < 17
                    uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)++
                    if not uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) + 1:
                        idx = uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) + 1
                        while uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) > idx:
                            uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                    require arg1 < 17
                    require arg2 < 17
                    require arg1 < 17
                    require arg2 < 17
                    require uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
                    uint256(stor[sha3((6 * arg2) + (102 * arg1) + 2) + uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((6 * arg2) + (102 * arg1) + 2) + uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1].field_0))
                    require arg1 < 17
                    require arg2 < 17
                    require arg1 < 17
                    require arg2 < 17
                    require uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
                    uint256(stor[uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) + sha3((6 * arg2) + (102 * arg1) + 3) - 1].field_0) = msg.value
            else:
                if not address(stor[(6 * arg2) + (102 * arg1) + 1].field_8):
                    if 10^18 != msg.value:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        call stor6C8 with:
                           value msg.value wei
                             gas 0 wei
                        require arg1 < 17
                        require arg2 < 17
                        Mask(248, 0, stor[(6 * arg2) + (102 * arg1) + 1].field_8) = Mask(248, 0, msg.sender)
                else:
                    require arg1 < 17
                    require arg2 < 17
                    if uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) < 10:
                        require arg1 < 17
                        require arg2 < 17
                        idx = var23001
                        while uint8(idx) < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0):
                            require arg1 < 17
                            require arg2 < 17
                            require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
                            mem[0] = (6 * arg2) + (102 * arg1) + 2
                            require arg1 < 17
                            if address(stor[sha3((6 * arg2) + (102 * arg1) + 2) + idx].field_0) != msg.sender:
                                require arg2 < 17
                                idx = idx + 1
                                continue 
                            require arg2 < 17
                            require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
                            call msg.sender with:
                               value uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) wei
                                 gas 0 wei
                            require arg1 < 17
                            require arg2 < 17
                            require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
                            uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = msg.value
                        require arg1 < 17
                        require arg2 < 17
                        uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)++
                        if not uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) + 1:
                            idx = uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) + 1
                            while uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) > idx:
                                uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                        require arg1 < 17
                        require arg2 < 17
                        uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)++
                        if not uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) + 1:
                            idx = uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) + 1
                            while uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) > idx:
                                uint256(stor[idx + sha3((6 * arg2) + (102 * arg1) + 3)].field_0) = 0
                                idx = idx + 1
                                continue 
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0)
                        uint256(stor[sha3((6 * arg2) + (102 * arg1) + 2) + uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((6 * arg2) + (102 * arg1) + 2) + uint256(stor[(6 * arg2) + (102 * arg1) + 2].field_0) - 1].field_0))
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0)
                        uint256(stor[uint256(stor[(6 * arg2) + (102 * arg1) + 3].field_0) + sha3((6 * arg2) + (102 * arg1) + 3) - 1].field_0) = msg.value
}

function editBlock(uint8 arg1, uint8 arg2, uint256 arg3, int8[5] arg4) payable {
    mem[96 len 160] = call.data[100 len 160]
    require arg1 < 17
    require arg2 < 17
    if address(stor[(6 * arg2) + (102 * arg1) + 1].field_8) != msg.sender:
        whatHappened = 1
    else:
        if ('signextend', 0, ('call.data', 196, 32)) < -1:
            whatHappened = 2
        else:
            require arg1 < 17
            require arg2 < 17
            require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
            mem[96] = ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))
            require ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))) < 20
            idx = 0
            s = 0
            while uint8(idx) < 8:
                require idx < 8
                uint8(stor[(10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + idx + 1738].field_0) = uint8(call.data[132] + ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 0)))))))
                uint8(stor[idx + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_8) = uint8(call.data[164] + ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 0)))))))
                require idx < 8
                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('call.data', 164, 32)), 2)):
                else:
                    require idx < 8
                    if not ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                    else:
                        uint8(stor[idx + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_0) = uint8(('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1)
                uint8(stor[(10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + idx + 1738].field_16) = uint8(call.data[196] + ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 0)))))))
                if -33 > ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))):
                    if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                        if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) < 0:
                            if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                                else:
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                            else:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                                else:
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                        else:
                            if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                    if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                                else:
                                    if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                            else:
                                if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                else:
                                    if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                        else:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                    else:
                                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                        else:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                    else:
                        if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) < 0:
                            if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                                else:
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                            else:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                                else:
                                    if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                        else:
                            if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                    if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                                else:
                                    if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                        whatHappened = 3
                                        whatHappened = 3
                            else:
                                if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                else:
                                    if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                        else:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                    else:
                                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                        else:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                else:
                    if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 33:
                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                            if -49 > ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))):
                                whatHappened = 3
                                whatHappened = 3
                        else:
                            if -50 > ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))):
                                whatHappened = 3
                                whatHappened = 3
                        if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) > 49:
                            whatHappened = 3
                            whatHappened = 3
                    else:
                        if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                            if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) < 0:
                                if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                else:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                            else:
                                if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                else:
                                    if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                        else:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                    else:
                                        if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                            if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                                            else:
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                                        else:
                                            if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                                            else:
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                        else:
                            if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) < 0:
                                if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                else:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((-3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                            else:
                                if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                    else:
                                        if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                            whatHappened = 3
                                            whatHappened = 3
                                else:
                                    if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) >= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                        else:
                                            if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                whatHappened = 3
                                                whatHappened = 3
                                    else:
                                        if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) <= 0:
                                            if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)) != 0:
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                                            else:
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                                        else:
                                            if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1) - 3) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                                            else:
                                                if uint8((3 * ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) + (2 * -('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 0), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))) > 198:
                                                    whatHappened = 3
                                                    whatHappened = 3
                if s != 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < 8
                if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 0))))))):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 1
                continue 
            if not s:
                whatHappened = 6
                whatHappened = 3
            else:
                whatHappened = 5
                require ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))) < 20
                s = 0
                while uint8(s) < 8:
                    require s < 8
                    uint8(stor[(10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + s + 1738].field_0) = uint8(call.data[132] + ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 1)))))))
                    uint8(stor[s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_8) = uint8(call.data[164] + ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 1)))))))
                    require s < 8
                    if not ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('array', ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('name', 'stor6CA', 1738))))))), 2)):
                    else:
                        require s < 8
                        if not ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                        else:
                            uint8(stor[s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_0) = uint8(('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1)
                    uint8(stor[s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_16) = uint8(call.data[196] + ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))))
                    s = s + 1
                    continue 
                require arg1 < 17
                require arg2 < 17
                require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                if ('signextend', 0, ('signextend', 0, ('type', 232, ('field', 24, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))) < 0:
                    s = 0
                    while uint8(s) < 8:
                        require arg1 < 17
                        require arg2 < 17
                        uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0)++
                        if not uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) > uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) + 1:
                            require s < 8
                            require arg1 < 17
                            require arg2 < 17
                            require arg1 < 17
                            require arg2 < 17
                            require uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0)
                            mem[0] = (6 * arg2) + (102 * arg1) + 6
                            t = sha3((6 * arg2) + (102 * arg1) + 6) + uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) - 1
                            u = s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738
                            while s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1739 > u:
                                uint256(stor[t].field_0) = uint256(stor[u].field_0)
                                t = t + 1
                                u = u + 1
                                continue 
                            u = t
                            while sha3((6 * arg2) + (102 * arg1) + 6) + uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) > u:
                                uint8(stor[u].field_0) = 0
                                u = u + 1
                                continue 
                        else:
                            idx = uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) + sha3((6 * arg2) + (102 * arg1) + 6) + 1
                            while sha3((6 * arg2) + (102 * arg1) + 6) + uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            require s < 8
                            require arg1 < 17
                            require arg2 < 17
                            require arg1 < 17
                            require arg2 < 17
                            require uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) - 1 < uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0)
                            mem[0] = (6 * arg2) + (102 * arg1) + 6
                            t = sha3((6 * arg2) + (102 * arg1) + 6) + uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) - 1
                            u = s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738
                            while s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1739 > u:
                                uint256(stor[t].field_0) = uint256(stor[u].field_0)
                                t = t + 1
                                u = u + 1
                                continue 
                            idx = t
                            while sha3((6 * arg2) + (102 * arg1) + 6) + uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0) > idx:
                                uint8(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        s = s + 1
                        continue 
                    require arg1 < 17
                    require arg2 < 17
                    require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                    s = 0
                    idx = 96
                    while 256 > idx:
                        uint256(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 4)].field_0) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 4)].field_0)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = 5
                    s = arg3 + sha3((6 * arg2) + (102 * arg1) + 4)
                    while idx:
                        uint256(stor[s].field_0) = !(255 * 256^idx) and uint256(stor[s].field_0)
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = arg3 - (3 * None + 3 / 32) + (None * None + 3 / 32)
                    while arg3 + 1 > idx:
                        uint8(stor[idx + sha3((6 * arg2) + (102 * arg1) + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    require ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))) < 20
                    s = 0
                    while uint8(s) < 8:
                        require arg1 < 17
                        require arg2 < 17
                        require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                        require s < 8
                        uint8(stor[s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_0) = uint8(('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))) + ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 1)))))))
                        require arg1 < 17
                        require arg2 < 17
                        require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                        require s < 8
                        uint8(stor[s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_8) = uint8(('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))) + ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 1)))))))
                        if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('array', ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('name', 'stor6CA', 1738))))))), 2)):
                            require s < 8
                            if ('signextend', 0, ('smod', ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))), 2)):
                                require s < 8
                                uint8(stor[s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_0) = uint8(('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))))))))))) + 1)
                        require arg1 < 17
                        require arg2 < 17
                        require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                        mem[0] = (6 * arg2) + (102 * arg1) + 4
                        require s < 8
                        uint8(stor[s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738].field_16) = uint8(('signextend', 0, ('type', 232, ('field', 24, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1'))))))))) + ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', 1738, ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))), ('var', 1)))))))
                        s = s + 1
                        continue 
                    s = 0
                    while uint8(s) < 8:
                        require arg1 < 17
                        require arg2 < 17
                        idx = var63002
                        while idx < uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0):
                            require arg1 < 17
                            require arg2 < 17
                            require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0)
                            mem[0] = (6 * arg2) + (102 * arg1) + 6
                            require s < 8
                            require arg1 < 17
                            if ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) == ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))), ('var', 0))))))):
                                require arg2 < 17
                                require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0)
                                require s < 8
                                if ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) == ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', ('var', 0), ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))):
                                    require arg1 < 17
                                    require arg2 < 17
                                    require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0)
                                    mem[0] = (6 * arg2) + (102 * arg1) + 6
                                    require s < 8
                                    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', 1738, ('var', 1), ('mul', 10, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))))))))) == ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))), ('var', 0))))))):
                                        require s < 8
                                        require arg1 < 17
                                        require arg2 < 17
                                        require idx < uint256(stor[(6 * arg2) + (102 * arg1) + 6].field_0)
                                        mem[0] = (6 * arg2) + (102 * arg1) + 6
                                        t = sha3((6 * arg2) + (102 * arg1) + 6) + idx
                                        u = s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1738
                                        while s + (10 * ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 102, ('param', 'arg1')))))))))))) + 1739 > u:
                                            uint256(stor[t].field_0) = uint256(stor[u].field_0)
                                            require arg2 < 17
                                            t = t + 1
                                            u = u + 1
                                            continue 
                                        s = t
                                        while sha3((6 * arg2) + (102 * arg1) + 6) + idx + 1 > s:
                                            uint8(stor[s].field_0) = 0
                                            require arg2 < 17
                                            s = s + 1
                                            continue 
                            require arg2 < 17
                            idx = idx + 1
                            continue 
                        s = s + 1
                        continue 
                    require arg1 < 17
                    require arg2 < 17
                    require arg3 < uint256(stor[(6 * arg2) + (102 * arg1) + 4].field_0)
                    t = 0
                    s = 96
                    while 256 > s:
                        uint256(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 4)].field_0) = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[arg3 + sha3((6 * arg2) + (102 * arg1) + 4)].field_0)
                        t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                        s = s + 32
                        continue 
                    s = 5
                    t = arg3 + sha3((6 * arg2) + (102 * arg1) + 4)
                    while s:
                        uint256(stor[t].field_0) = !(255 * 256^s) and uint256(stor[t].field_0)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        t = (s + 1 / 32) + t
                        continue 
                    s = arg3 - (3 * None + 3 / 32) + (None * None + 3 / 32)
                    while arg3 + 1 > s:
                        uint8(stor[s + sha3((6 * arg2) + (102 * arg1) + 4)].field_0) = 0
                        s = s + 1
                        continue 
}



}
