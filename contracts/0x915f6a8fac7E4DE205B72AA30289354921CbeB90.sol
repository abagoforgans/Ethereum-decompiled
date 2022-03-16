contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor1;
uint16 storCC5;
array of uint256 stor3270;
array of uint256 stor3272;

function _fallback() payable {
    storCC5 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = msg.sender or Mask(96, 160, '!') or Mask(88, 168, uint256(stor1.field_0)) or Mask(96, 160, address(stor1.field_0))
    idx = 0
    while uint8(idx) < uint8(stor1.field_160):
        require idx < 33
        storCC6[0.03125 / idx] = !(255 * 256^(idx % 32)) and storCC6[0.03125 / idx]
        storCC8[0.03125 / idx] = !(255 * 256^(idx % 32)) and storCC8[0.03125 / idx]
        idx = idx + 1
        continue 
    return code.data[229 len 3240]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address stor1;
uint8 storCC5;
uint8 storCC5; offset 8
array of uint8 stor3270;
array of uint8 stor3272;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setOwner(uint8 arg1, uint8 arg2, address arg3) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[(99 * arg1) + (3 * arg2) + 2].field_8) == msg.sender:
        require arg1 < 33
        require arg2 < 33
}

function sub_d810612b(?) payable {
    mem[64] = 1152
    mem[96 len 1056] = call.data[36 len 1056]
    if uint8(storCC5.field_8) != 1:
        if arg1 < uint8(stor1.field_160):
            idx = 0
            while uint8(idx) < uint8(stor1.field_160):
                require idx < 33
                require arg1 < 33
                uint256(stor[(3 * arg1) + (99 * idx) + 2].field_0) = mem[(32 * idx) + 96]
                idx = idx + 1
                continue 
            require arg1 < 33
            uint256(storCC8[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(storCC8[0.03125 / arg1])
            idx = 0
            while idx < uint8(stor1.field_160):
                require idx < 33
                if uint8(storCC8[uint8(idx)]) != 0:
                    idx = idx + 1
                    continue 
            uint8(storCC5.field_8) = 1
}

function sub_a364c21f(?) payable {
    require arg1 < 33
    require arg2 < 33
    if uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0):
        mem[352] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 99, ('param', 'arg1')), ('mul', 3, ('param', 'arg2'))))))), ('exp', 256, 0)))
        idx = 352
        s = 0
        while (32 * uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0)) + 352 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 99, ('param', 'arg1')), ('mul', 3, ('param', 'arg2'))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    return Array(len=uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0), data=mem[352 len 32 * uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0)]), 
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
    mem[64] = 71904
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 70848
    if var12002 - 1:
        mem[64] = 72960
        var11001 = 71904
        var11002 = 33
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor1.field_160):
        s = 0
        while uint8(s) < uint8(stor1.field_160):
            require s < 33
            require idx < 33
            require s < 33
            require idx < 33
            mem[(32 * idx) + mem[(32 * s) + (10 * 3600)]] = address(stor[(3 * idx) + (99 * s) + 2].field_8)
            s = s + 1
            continue 
        s = None
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

function getPrices() payable {
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
    mem[64] = 71904
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 70848
    if var12002 - 1:
        mem[64] = 72960
        var11001 = 71904
        var11002 = 33
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor1.field_160):
        s = 0
        while uint8(s) < uint8(stor1.field_160):
            require s < 33
            require idx < 33
            require s < 33
            require idx < 33
            mem[(32 * idx) + mem[(32 * s) + (10 * 3600)]] = uint256(stor[(3 * idx) + (99 * s) + 3].field_0)
            s = s + 1
            continue 
        s = None
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
    mem[64] = 71904
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 70848
    if var12002 - 1:
        mem[64] = 72960
        var11001 = 71904
        var11002 = 33
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor1.field_160):
        s = 0
        while uint8(s) < uint8(stor1.field_160):
            require s < 33
            require idx < 33
            require s < 33
            require idx < 33
            mem[(32 * idx) + mem[(32 * s) + (10 * 3600)]] = uint8(stor[(3 * idx) + (99 * s) + 2].field_0)
            s = s + 1
            continue 
        s = None
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

function sub_a0ad10a6(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if uint8(storCC5.field_0) != 1:
        idx = 0
        while uint8(idx) < arg1.length:
            require idx < arg1.length
            if mem[(32 * idx) + 159 len 1] <= uint8(uint8(stor1.field_160) - 1):
                idx = idx + 1
                continue 
        idx = 0
        s = 0
        while uint8(idx) < arg1.length:
            require idx < arg1.length
            s = 0
            while uint8(s) < uint8(stor1.field_160):
                require s < 33
                require mem[(32 * idx) + 128] < 33
                Mask(248, 0, stor[(3 * mem[(32 * idx) + 128]) + (99 * s) + 2].field_8) = address(stor1.field_0)
                require s < 33
                require mem[(32 * idx) + 128] < 33
                uint256(stor[(3 * mem[(32 * idx) + 128]) + (99 * s) + 3].field_0) = 25 * 10^16
                s = s + 1
                continue 
            require mem[(32 * idx) + 128] < 33
            uint256(storCC6[0.03125 / mem[(32 * idx) + 128]]) = 256^(mem[(32 * idx) + 128] % 32) or !(255 * 256^(mem[(32 * idx) + 128] % 32)) and uint256(storCC6[0.03125 / mem[(32 * idx) + 128]])
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            continue 
        idx = 0
        while idx < uint8(stor1.field_160):
            require idx < 33
            if uint8(storCC6[uint8(idx)]) != 0:
                idx = idx + 1
                continue 
        uint8(storCC5.field_0) = 1
}

function sub_1a0cda6f(?) payable {
    require arg1 < 33
    require arg2 < 33
    uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) += 7
    if not uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) <= uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) + 7:
        idx = uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) + 38 / 32
        while uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3((3 * arg2) + (99 * arg1) + 4)].field_0) = 0
            idx = idx + 1
            continue 
    require uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 7 < uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0)
    uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 7) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0) = uint8(call.data[68]) * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 7 % 32) or !(255 * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 7 % 32)) and uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 7) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0)
    require uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 6 < uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0)
    uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 6) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0) = uint8(call.data[100]) * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 6 % 32) or !(255 * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 6) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0)
    require uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 5 < uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0)
    uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 5) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0) = uint8(call.data[132]) * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 5) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0)
    require uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 4 < uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0)
    uint256(stor[(0.03125 / uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 4) + sha3((99 * arg1) + (3 * arg2) + 4)].field_0) = uint8(call.data[164]) * 256^(uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 4 % 32) or !(255 * 256^(uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 4) + sha3((99 * arg1) + (3 * arg2) + 4)].field_0)
    require uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 3 < uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0)
    uint256(stor[(0.03125 / uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 3) + sha3((99 * arg1) + (3 * arg2) + 4)].field_0) = uint8(call.data[196]) * 256^(uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 3 % 32) or !(255 * 256^(uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 3 % 32)) and uint256(stor[(0.03125 / uint256(stor[(99 * arg1) + (3 * arg2) + 4].field_0) - 3) + sha3((99 * arg1) + (3 * arg2) + 4)].field_0)
    require uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 2 < uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0)
    uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 2) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0) = uint8(call.data[228]) * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 2 % 32) or !(255 * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 2 % 32)) and uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 2) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0)
    require uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 1 < uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0)
    uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 1) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0) = uint8(call.data[260]) * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 1 % 32) or !(255 * 256^(uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 1 % 32)) and uint256(stor[(0.03125 / uint256(stor[(3 * arg2) + (99 * arg1) + 4].field_0) - 1) + sha3((3 * arg2) + (99 * arg1) + 4)].field_0)
}



}
