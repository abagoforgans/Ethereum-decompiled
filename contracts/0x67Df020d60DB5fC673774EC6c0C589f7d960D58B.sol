contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1) = msg.sender or 0x110000000000000000000000000000000000000000 or Mask(88, 168, uint256(stor1)) or Mask(96, 160, address(stor1))
    return code.data[86 len 4542]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address stor1;
uint8 stor580;
uint8 stor580; offset 8
array of uint8 stor581;
array of uint8 stor582;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setOwner(uint8 arg1, uint8 arg2, address arg3) payable {
    require arg1 < 17
    require arg2 < 17
    require arg1 < 17
    require arg2 < 17
    if address(stor[(2 * arg2) + (34 * arg1) + 2].field_8) == msg.sender:
    else:
        if not address(stor[(2 * arg2) + (34 * arg1) + 2].field_8):
            if msg.sender == address(stor1.field_0):
                require arg1 < 17
                require arg2 < 17
}

function sub_17513d49(?) payable {
    mem[64] = 640
    mem[96 len 544] = call.data[36 len 544]
    if uint8(stor580.field_8) != 1:
        if arg1 < uint8(stor1.field_160):
            idx = 0
            while uint8(idx) < uint8(stor1.field_160):
                require idx < 17
                require arg1 < 17
                uint256(stor[(2 * arg1) + (34 * idx) + 2].field_0) = mem[(32 * idx) + 96]
                idx = idx + 1
                continue 
            require arg1 < 17
            uint256(stor581[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor581[0.03125 / arg1])
            idx = 0
            while idx < uint8(stor1.field_160):
                require idx < 17
                if uint8(stor581[uint8(idx)]) != 0:
                    idx = idx + 1
                    continue 
            uint8(stor580.field_8) = 1
}

function sub_2f6d498f(?) payable {
    if uint8(stor580.field_0) != 1:
        if arg1 < uint8(stor1.field_160):
            idx = 0
            while uint8(idx) < uint8(stor1.field_160):
                require idx < 17
                require arg1 < 17
                uint16(stor[(2 * arg1) + (34 * idx) + 2].field_168) = 0
                stor[(2 * arg1) + (34 * idx) + 2].field_184 % 281474976710656 = 3814697265625
                uint16(stor[(2 * arg1) + (34 * idx) + 2].field_232) = 0
                idx = idx + 1
                continue 
            require arg1 < 17
            uint256(stor582[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor582[0.03125 / arg1])
            idx = 0
            while idx < uint8(stor1.field_160):
                require idx < 17
                if uint8(stor582[uint8(idx)]) != 0:
                    idx = idx + 1
                    continue 
            uint8(stor580.field_0) = 1
}

function sub_a364c21f(?) payable {
    require arg1 < 17
    require arg2 < 17
    if uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0):
        mem[352] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 3, ('mul', 34, ('param', 'arg1')), ('mul', 2, ('param', 'arg2'))))))), ('exp', 256, 0)))
        idx = 352
        s = 0
        while (32 * uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)) + 352 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 3, ('mul', 34, ('param', 'arg1')), ('mul', 2, ('param', 'arg2'))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    return Array(len=uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0), data=mem[352 len 32 * uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)]), 
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
    while uint8(idx) < uint8(stor1.field_160):
        s = 0
        while uint8(s) < uint8(stor1.field_160):
            require s < 17
            require idx < 17
            require s < 17
            require idx < 17
            mem[(32 * idx) + mem[(32 * s) + 9888]] = uint8(stor[(2 * idx) + (34 * s) + 2].field_0)
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

function getPrices() payable {
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
    while uint8(idx) < uint8(stor1.field_160):
        s = 0
        while uint8(s) < uint8(stor1.field_160):
            require s < 17
            require idx < 17
            require s < 17
            require idx < 17
            mem[(32 * idx) + mem[(32 * s) + 9888]] = Mask(80, 0, stor[(2 * idx) + (34 * s) + 2].field_168)
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
    while uint8(idx) < uint8(stor1.field_160):
        s = 0
        while uint8(s) < uint8(stor1.field_160):
            require s < 17
            require idx < 17
            require s < 17
            require idx < 17
            if 0 == address(stor[(2 * idx) + (34 * s) + 2].field_8):
                mem[(32 * idx) + mem[(32 * s) + 9888]] = address(stor1.field_0)
            else:
                require s < 17
                require idx < 17
                mem[(32 * idx) + mem[(32 * s) + 9888]] = address(stor[(2 * idx) + (34 * s) + 2].field_8)
            s = s + 1
            continue 
        s = s
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

function sub_7203fb00(?) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[(2 * arg2) + (34 * arg1) + 2].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
        require (7 * arg3) + 1 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 1) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = uint8(call.data[132]) * 256^((7 * arg3) + 1 % 32) or !(255 * 256^((7 * arg3) + 1 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 1) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0)
        require (7 * arg3) + 2 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 2) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = uint8(call.data[164]) * 256^((7 * arg3) + 2 % 32) or !(255 * 256^((7 * arg3) + 2 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 2) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0)
        require (7 * arg3) + 3 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 3) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = uint8(call.data[196]) * 256^((7 * arg3) + 3 % 32) or !(255 * 256^((7 * arg3) + 3 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 3) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0)
        require (7 * arg3) + 4 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 4) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = uint8(call.data[228]) * 256^((7 * arg3) + 4 % 32) or !(255 * 256^((7 * arg3) + 4 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 4) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0)
        require (7 * arg3) + 5 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 5) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = uint8(call.data[260]) * 256^((7 * arg3) + 5 % 32) or !(255 * 256^((7 * arg3) + 5 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 5) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0)
        require (7 * arg3) + 6 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 6) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = uint8(call.data[292]) * 256^((7 * arg3) + 6 % 32) or !(255 * 256^((7 * arg3) + 6 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 6) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0)
}

function sub_959eac47(?) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[(2 * arg2) + (34 * arg1) + 2].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) += 7
        if not uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) <= uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) + 7:
            idx = uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) + 38 / 32
            while uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) + 31 / 32 > idx:
                uint256(stor[idx + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = 0
                idx = idx + 1
                continue 
        require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
        if uint8(block.hash(block.number - 1)) != 0:
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) and !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7 % 32))
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) or 253 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6 % 32)
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = 253 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0)
            require uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 4 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 4) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = !(255 * 256^(uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 4) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) or 255 * 256^(uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 4 % 32)
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3 % 32)) and uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0)
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 2 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            Mask(249, 0, stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 2) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = Mask(249, 0, 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 2 % 32))
            stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 2) + sha3((34 * arg1) + (2 * arg2) + 3)].field_249 % 128 = 0
        else:
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = 14 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7 % 32) or uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) and !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 7 % 32))
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) or 3 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 6 % 32)
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = 3 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 5) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0)
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 4 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 4) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = !(255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 4) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) or 255 * 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 4 % 32)
            require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
            Mask(249, 0, stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = Mask(249, 0, 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3 % 32))
            stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 3) + sha3((34 * arg1) + (2 * arg2) + 3)].field_249 % 128 = 0
            require uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 2 < uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0)
            uint256(stor[(0.03125 / uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 2) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0) = !(255 * 256^(uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 2 % 32)) and uint256(stor[(0.03125 / uint256(stor[(2 * arg2) + (34 * arg1) + 3].field_0) - 2) + sha3((2 * arg2) + (34 * arg1) + 3)].field_0)
        require uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 1 < uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0)
        Mask(249, 0, stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 1) + sha3((34 * arg1) + (2 * arg2) + 3)].field_0) = Mask(249, 0, 256^(uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 1 % 32))
        stor[(0.03125 / uint256(stor[(34 * arg1) + (2 * arg2) + 3].field_0) - 1) + sha3((34 * arg1) + (2 * arg2) + 3)].field_249 % 128 = 0
}



}
