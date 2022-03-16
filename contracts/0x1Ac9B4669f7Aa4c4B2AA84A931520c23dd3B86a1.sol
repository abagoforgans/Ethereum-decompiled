contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor7C6;
uint256 stor7C7;
uint8 stor7C8;

function _fallback() payable {
    stor7C6 = 0
    stor7C7 = 0
    stor7C8 = 125
    stor0 = 17
    return code.data[106 len 9216]
}



// =====================  Runtime code  =====================


uint8 sub_09155884; offset 160
address stor0;
array of uint256 stor1446;
uint8 stor7C2;
array of uint8 stor1987;
uint8 stor7C4;
array of uint8 stor1989;
uint256 sub_8ad40912;
uint256 sub_0a786f34;
uint8 stor7C8;

function sub_09155884(?) payable {
    return sub_09155884
}

function sub_0a786f34(?) payable {
    return sub_0a786f34
}

function sub_8ad40912(?) payable {
    return sub_8ad40912
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_74ca9fbe(?) payable {
    if msg.sender == stor0:
        call stor0 with:
           value sub_8ad40912 wei
             gas 0 wei
}

function getUint8FromByte32(bytes32 arg1, uint8 arg2) payable {
    if arg2 != 0:
        return uint8((arg1 % 16^(-(2 * arg2 % 128) + 64)) - (arg1 % 16^(-(2 * arg2 % 128) + 64) % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
    return uint8(arg1 - (arg1 % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
}

function sub_6a864559(?) payable {
    require arg1 < 17
    require arg2 < 17
    if uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0):
        mem[160] = address(stor[sha3((5 * arg2) + (85 * arg1) + 2)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)) + 128 > idx:
            mem[idx + 32] = address(stor[s + sha3((5 * arg2) + (85 * arg1) + 2) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0), data=mem[160 len 32 * uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)]), 
}

function sub_c7dafc78(?) payable {
    require arg1 < 17
    require arg2 < 17
    if uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0):
        mem[160] = uint256(stor[sha3((5 * arg2) + (85 * arg1) + 3)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((5 * arg2) + (85 * arg1) + 3) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0), data=mem[160 len 32 * uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)]), 
}

function sub_5f264591(?) payable {
    mem[64] = 640
    mem[96 len 544] = call.data[36 len 544]
    if stor7C2 != 1:
        if arg1 < sub_09155884:
            idx = 0
            while uint8(idx) < sub_09155884:
                require idx < 17
                require arg1 < 17
                uint256(stor[(5 * arg1) + (85 * idx) + 1].field_0) = mem[(32 * idx) + 96]
                idx = idx + 1
                continue 
            require arg1 < 17
            uint256(stor7C3[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor7C3[0.03125 / arg1])
            idx = 0
            while idx < sub_09155884:
                require idx < 17
                if uint8(stor7C3[uint8(idx)]) != 0:
                    idx = idx + 1
                    continue 
            stor7C2 = 1
}

function buyTile(uint8 arg1, uint8 arg2) payable {
    if msg.value != 0:
        require arg1 < 17
        require arg2 < 17
        if uint8(stor[(5 * arg2) + (85 * arg1) + 1].field_0) < stor7C8:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            require arg1 < 17
            require arg2 < 17
            if address(stor[(5 * arg2) + (85 * arg1) + 1].field_8) != 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if msg.value != 10^18:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    require arg1 < 17
                    require arg2 < 17
                    Mask(248, 0, stor[(5 * arg2) + (85 * arg1) + 1].field_8) = Mask(248, 0, msg.sender)
                    sub_8ad40912 += msg.value
}

function getBlocks(uint8 arg1, uint8 arg2) payable {
    require arg1 < 17
    require arg2 < 17
    if uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0):
        mem[160] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 5, ('param', 'arg2')), ('mul', 85, ('param', 'arg1'))))))), ('exp', 256, 0)))
        idx = 160
        s = 0
        while (32 * uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)) + 128 > idx:
            mem[idx + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 5, ('param', 'arg2')), ('mul', 85, ('param', 'arg1'))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    return Array(len=uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0), data=mem[160 len 32 * uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)]), 
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
    while uint8(idx) < sub_09155884:
        s = 0
        while uint8(s) < sub_09155884:
            require s < 17
            require idx < 17
            require s < 17
            require idx < 17
            mem[(32 * idx) + mem[(32 * s) + 9888]] = address(stor[(5 * idx) + (85 * s) + 1].field_8)
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
    while uint8(idx) < sub_09155884:
        s = 0
        while uint8(s) < sub_09155884:
            require s < 17
            require idx < 17
            require s < 17
            require idx < 17
            mem[(32 * idx) + mem[(32 * s) + 9888]] = uint8(stor[(5 * idx) + (85 * s) + 1].field_0)
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
    require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
    call address(stor[(5 * arg2) + (85 * arg1) + 1].field_8) with:
       value uint256(stor[arg3 + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) wei
         gas 0 wei
    require arg1 < 17
    require arg2 < 17
    require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
    sub_0a786f34 -= uint256(stor[arg3 + sha3((5 * arg2) + (85 * arg1) + 3)].field_0)
    require arg1 < 17
    require arg2 < 17
    require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
    require arg1 < 17
    require arg2 < 17
    Mask(248, 0, stor[(5 * arg2) + (85 * arg1) + 1].field_8) = address(stor[arg3 + sha3((5 * arg2) + (85 * arg1) + 2)].field_0)
    require arg1 < 17
    require arg2 < 17
    uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) = 0
    idx = 0
    while uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) > idx:
        uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    require arg1 < 17
    require arg2 < 17
    uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) = 0
    idx = 0
    while uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) > idx:
        uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) = 0
        idx = idx + 1
        continue 
}

function sub_352ba204(?) payable {
    mem[ceil32(arg2.length) + 128 len 768] = call.data[68 len 768]
    mem[ceil32(arg2.length) + 896] = arg3.length
    mem[ceil32(arg2.length) + 928 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if msg.sender == stor0:
        if not stor7C4:
            require arg1 < 20
            stor5A6[arg1] = arg1 or Mask(248, 8, stor5A6[arg1])
            uint256(stor[sha3((27 * arg1) + 1447)][].field_0) = Array(len=arg2.length, data=arg2[all])
            s = 0
            idx = 0
            while uint8(idx) < 8:
                s = 0
                while uint8(s) < 3:
                    require (3 * idx) + s < 24
                    require arg1 < 20
                    require idx < 8
                    require s < 3
                    uint256(stor[idx + (27 * arg1) + (0.03125 / s) + 1448].field_0) = mem[(32 * (3 * idx) + s) + ceil32(arg2.length) + 159 len 1] * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(stor[idx + (27 * arg1) + (0.03125 / s) + 1448].field_0)
                    s = s + 1
                    continue 
                s = None
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while uint8(idx) < arg3.length / 3:
                s = 0
                while uint8(s) < 3:
                    require (3 * idx) + s < arg3.length
                    require arg1 < 20
                    require idx < 16
                    require s < 3
                    uint256(stor[idx + (27 * arg1) + (0.03125 / s) + 1457].field_0) = mem[ceil32(arg2.length) + (32 * (3 * idx) + s) + 959 len 1] * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(stor[idx + (27 * arg1) + (0.03125 / s) + 1457].field_0)
                    s = s + 1
                    continue 
                s = None
                idx = idx + 1
                continue 
            require arg1 < 20
            uint256(stor7C5[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor7C5[0.03125 / arg1])
            idx = 0
            while idx < 20:
                if uint8(stor7C5[uint8(idx)]) != 0:
                    idx = idx + 1
                    continue 
            stor7C4 = 1
}

function sub_7203fb00(?) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[(5 * arg2) + (85 * arg1) + 1].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
        require (7 * arg3) + 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = uint8(call.data[132]) * 256^((7 * arg3) + 1 % 32) or !(255 * 256^((7 * arg3) + 1 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
        require arg1 < 17
        require arg2 < 17
        require (7 * arg3) + 2 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = uint8(call.data[164]) * 256^((7 * arg3) + 2 % 32) or !(255 * 256^((7 * arg3) + 2 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
        require arg1 < 17
        require arg2 < 17
        require (7 * arg3) + 3 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = uint8(call.data[196]) * 256^((7 * arg3) + 3 % 32) or !(255 * 256^((7 * arg3) + 3 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
        require arg1 < 17
        require arg2 < 17
        require (7 * arg3) + 4 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = uint8(call.data[228]) * 256^((7 * arg3) + 4 % 32) or !(255 * 256^((7 * arg3) + 4 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
        require arg1 < 17
        require arg2 < 17
        require (7 * arg3) + 5 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = uint8(call.data[260]) * 256^((7 * arg3) + 5 % 32) or !(255 * 256^((7 * arg3) + 5 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
        require arg1 < 17
        require arg2 < 17
        require (7 * arg3) + 6 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
        uint256(stor[(0.03125 / (7 * arg3) + 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = uint8(call.data[292]) * 256^((7 * arg3) + 6 % 32) or !(255 * 256^((7 * arg3) + 6 % 32)) and uint256(stor[(0.03125 / (7 * arg3) + 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
}

function sub_a713081c(?) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[(5 * arg2) + (85 * arg1) + 1].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
        call address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + arg3].field_0) with:
           value uint256(stor[arg3 + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) wei
             gas 0 wei
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
        sub_0a786f34 -= uint256(stor[arg3 + sha3((5 * arg2) + (85 * arg1) + 3)].field_0)
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
        address(stor[arg3 + sha3((5 * arg2) + (85 * arg1) + 2)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        require arg3 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
        uint256(stor[arg3 + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        idx = var37001
        while uint8(idx) < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0):
            require arg1 < 17
            require arg2 < 17
            require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
            require arg1 < 17
            require arg2 < 17
            require idx - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
            address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + idx - 1].field_0) = address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + idx].field_0)
            require arg1 < 17
            require arg2 < 17
            require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
            require arg1 < 17
            require arg2 < 17
            require idx - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
            mem[0] = (5 * arg2) + (85 * arg1) + 3
            uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3) - 1].field_0) = uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0)
            require arg1 < 17
            require arg2 < 17
            idx = idx + 1
            continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)--
        if not uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) <= uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) - 1:
            idx = uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) - 1
            while uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) > idx:
                uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 2)].field_0) = 0
                idx = idx + 1
                continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)--
        if not uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) <= uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) - 1:
            idx = uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) - 1
            while uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) > idx:
                uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_edffcd57(?) payable {
    require arg1 < 17
    require arg2 < 17
    idx = var44001
    while uint8(idx) < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0):
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
        mem[0] = (5 * arg2) + (85 * arg1) + 2
        require arg1 < 17
        if address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + idx].field_0) != msg.sender:
            require arg2 < 17
            idx = idx + 1
            continue 
        require arg2 < 17
        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
        call address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + idx].field_0) with:
           value uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) wei
             gas 0 wei
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
        sub_0a786f34 -= uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0)
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
        address(stor[idx + sha3((5 * arg2) + (85 * arg1) + 2)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
        mem[0] = (5 * arg2) + (85 * arg1) + 3
        uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) = 0
        require arg1 < 17
        require arg2 < 17
        s = var44001
        while uint8(s) < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0):
            require arg1 < 17
            require arg2 < 17
            require s < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
            require arg1 < 17
            require arg2 < 17
            require s - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
            address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + s - 1].field_0) = address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + s].field_0)
            require arg1 < 17
            require arg2 < 17
            require s < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
            require arg1 < 17
            require arg2 < 17
            require s - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
            mem[0] = (5 * arg2) + (85 * arg1) + 3
            uint256(stor[s + sha3((5 * arg2) + (85 * arg1) + 3) - 1].field_0) = uint256(stor[s + sha3((5 * arg2) + (85 * arg1) + 3)].field_0)
            require arg1 < 17
            require arg2 < 17
            require arg2 < 17
            s = s + 1
            continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)--
        if not uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) <= uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) - 1:
            mem[0] = (5 * arg2) + (85 * arg1) + 2
            idx = uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) + sha3((5 * arg2) + (85 * arg1) + 2) - 1
            while sha3((5 * arg2) + (85 * arg1) + 2) + uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) > idx:
                uint256(stor[idx].field_0) = 0
                require arg2 < 17
                idx = idx + 1
                continue 
        require arg1 < 17
        require arg2 < 17
        uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)--
        if not uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) <= uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) - 1:
            mem[0] = (5 * arg2) + (85 * arg1) + 3
            idx = uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) + sha3((5 * arg2) + (85 * arg1) + 3) - 1
            while sha3((5 * arg2) + (85 * arg1) + 3) + uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) > idx:
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
    if msg.value != 0:
        if msg.value < 10^16:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value > test266151307():
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                require arg1 < 17
                require arg2 < 17
                if uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) <= 10:
                    require arg1 < 17
                    require arg2 < 17
                    idx = var17001
                    while uint8(idx) < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0):
                        require arg1 < 17
                        require arg2 < 17
                        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
                        mem[0] = (5 * arg2) + (85 * arg1) + 2
                        require arg1 < 17
                        if address(stor[sha3((5 * arg2) + (85 * arg1) + 2) + idx].field_0) != msg.sender:
                            require arg2 < 17
                            idx = idx + 1
                            continue 
                        require arg2 < 17
                        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
                        call msg.sender with:
                           value uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) wei
                             gas 0 wei
                        require arg1 < 17
                        require arg2 < 17
                        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
                        sub_0a786f34 -= uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require idx < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
                        uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) = msg.value
                        sub_0a786f34 += msg.value
                    require arg1 < 17
                    require arg2 < 17
                    uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)++
                    if not uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) <= uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) + 1:
                        idx = uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) + 1
                        while uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) > idx:
                            uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                    require arg1 < 17
                    require arg2 < 17
                    uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)++
                    if not uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) <= uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) + 1:
                        idx = uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) + 1
                        while uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) > idx:
                            uint256(stor[idx + sha3((5 * arg2) + (85 * arg1) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                    require arg1 < 17
                    require arg2 < 17
                    require arg1 < 17
                    require arg2 < 17
                    require uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0)
                    uint256(stor[sha3((5 * arg2) + (85 * arg1) + 2) + uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((5 * arg2) + (85 * arg1) + 2) + uint256(stor[(5 * arg2) + (85 * arg1) + 2].field_0) - 1].field_0))
                    require arg1 < 17
                    require arg2 < 17
                    require arg1 < 17
                    require arg2 < 17
                    require uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0)
                    uint256(stor[uint256(stor[(5 * arg2) + (85 * arg1) + 3].field_0) + sha3((5 * arg2) + (85 * arg1) + 3) - 1].field_0) = msg.value
                    sub_0a786f34 += msg.value
}

function sub_959eac47(?) payable {
    require arg1 < 17
    require arg2 < 17
    if address(stor[(5 * arg2) + (85 * arg1) + 1].field_8) == msg.sender:
        require arg1 < 17
        require arg2 < 17
        if block.number - uint256(stor[(5 * arg2) + (85 * arg1) + 5].field_0) >= 4320:
            idx = 0
            s = 0
            while uint8(idx) < 10:
                require arg1 < 17
                require arg2 < 17
                uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) += 7
                if not uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) <= uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) + 7:
                    s = sha3((5 * arg2) + (85 * arg1) + 4) + (uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) + 38 / 32)
                    while sha3((5 * arg2) + (85 * arg1) + 4) + (uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                if uint8(idx) != 0:
                    if uint8((block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62)) < 6:
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 14 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 3 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 3 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        mem[0] = (5 * arg2) + (85 * arg1) + 4
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        idx = idx + 1
                        s = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62)
                        continue 
                    if (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 16 <= 13:
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 16 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 253 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 253 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        mem[0] = (5 * arg2) + (85 * arg1) + 4
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        idx = idx + 1
                        s = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 16
                        continue 
                else:
                    if uint8(block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62)) < 6:
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 14 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 3 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 3 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        mem[0] = (5 * arg2) + (85 * arg1) + 4
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        idx = idx + 1
                        s = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62)
                        continue 
                    if block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 16 <= 13:
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 16 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 253 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 253 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        require arg1 < 17
                        require arg2 < 17
                        require arg1 < 17
                        require arg2 < 17
                        require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                        mem[0] = (5 * arg2) + (85 * arg1) + 4
                        Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 % 32))
                        stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                        idx = idx + 1
                        s = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 16
                        continue 
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 7) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 253 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 6) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 253 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 5) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = 255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32) or !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 4) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = !(255 * 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3 % 32)) and uint256(stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 3) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0)
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2 % 32))
                stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 2) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                require arg1 < 17
                require arg2 < 17
                require arg1 < 17
                require arg2 < 17
                require uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 < uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0)
                mem[0] = (5 * arg2) + (85 * arg1) + 4
                Mask(249, 0, stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_0) = Mask(249, 0, 256^(uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1 % 32))
                stor[(0.03125 / uint256(stor[(5 * arg2) + (85 * arg1) + 4].field_0) - 1) + sha3((5 * arg2) + (85 * arg1) + 4)].field_249 % 128 = 0
                idx = idx + 1
                s = 0
                continue 
            require arg1 < 17
            require arg2 < 17
            uint256(stor[(5 * arg2) + (85 * arg1) + 5].field_0) = block.number
}



}
