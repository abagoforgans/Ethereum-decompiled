contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
address stor0; offset 16

function _fallback() payable {
    uint8(stor0.field_0) = 255
    uint8(stor0.field_8) = 254
    stor0.field_256 % 1 = 0
    require not msg.value
    address(stor0.field_16) = msg.sender
    return code.data[85 len 5376]
}



// =====================  Runtime code  =====================


const n = block.timestamp


uint8 stor0;
uint8 stor0; offset 8
address sub_87f7b975Address; offset 16
mapping of uint8 stor1;

function issues(uint256 arg1) {
    require arg1 < issues.length
    mem[288] = uint256(issues[arg1].field_0)
    idx = 288
    s = 0
    while issues[arg1].length + 288 > idx + 32:
        mem[idx + 32] = uint256(issues[(8 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=issues[arg1].length, data=mem[288 len issues[arg1].length + (floor32(issues[arg1].length - 1) + -issues[arg1].length + 32 % 32)]), 
           uint256(issues[arg1].field_256),
           uint256(issues[arg1].field_512),
           uint256(issues[arg1].field_768),
           uint8(issues[arg1].field_1792)
}

function sub_209c0b36(?) {
    require arg1 < issues.length
    require arg2 < uint256(issues[arg1].field_1280)
    require arg3 < uint256(stor[arg2 + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
    return sub_209c0b36[uint8(arg3)]
}

function sub_664ce146(?) {
    return bool(stor1[arg1][arg2])
}

function sub_6c23ed40(?) {
    return sub_6c23ed40[arg1][0 len sub_6c23ed40[arg1].length]
}

function sub_87f7b975(?) {
    return sub_87f7b975Address
}

function sub_b27f539e(?) {
    return issues.length
}

function sub_d438caa9(?) {
    require arg1 < issues.length
    return uint256(issues[arg1].field_1024)
}

function sub_f1f217ec(?) {
    require arg1 < issues.length
    require arg2 < uint256(issues[arg1].field_1024)
    return uint256(stor[arg2 + sha3((8 * arg1) + ('name', 'issues', 3) + 4)].field_0)
}

function _fallback() payable {
    revert 
}

function maximum(uint256 arg1, uint256 arg2) {
    if arg1 > arg2:
        return arg1
    return arg2
}

function minimum(uint256 arg1, uint256 arg2) {
    if arg1 < arg2:
        return arg1
    return arg2
}

function sub_07c11dcc(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require sub_87f7b975Address == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg2, 1)
        stor1[arg2][mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_39cd33bb(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require sub_87f7b975Address == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg2, 1)
        stor1[arg2][mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_2d050497(?) {
    require arg1 < issues.length
    if uint256(issues[arg1].field_1280):
        idx = 0
        while idx < uint256(issues[arg1].field_1280):
            require arg3 < uint256(stor[idx + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
            require idx < uint256(issues[arg1].field_1280)
            require arg2 < uint256(stor[idx + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
            mem[0] = idx + sha3((8 * arg1) + sha3(3) + 5)
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_69e72a49(?) {
    mem[128 len arg1.length] = arg1[all]
    require sub_87f7b975Address == msg.sender
    sub_6c23ed40.length++
    if not sub_6c23ed40.length <= sub_6c23ed40.length + 1:
        mem[0] = 2
        idx = sub_6c23ed40.length + 1
        while sha3(2) + sub_6c23ed40.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                    uint256(stor[sha3(idx + sha3(mem[0]))]) = 0
                    s = sha3(idx + sha3(mem[0])) + 1
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    sub_6c23ed40[sub_6c23ed40.length] = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        sub_6c23ed40[sub_6c23ed40.length + s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if sub_6c23ed40[sub_6c23ed40.length].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        stor[('array', ('stor', ('length', ('name', 'sub_6c23ed40', 2))), ('name', 'sub_6c23ed40', 2)) + (Mask(251, 0, arg1.length + 31) >> 5)] = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while sub_6c23ed40[sub_6c23ed40.length].length + 31 / 32 > idx:
            sub_6c23ed40[sub_6c23ed40.length + idx] = 0
            idx = idx + 1
            continue 
}

function sub_1300cc38(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1 < issues.length
    require stor1[uint256(stor3[arg1].field_256)][address(msg.sender)]
    require not uint8(stor[(8 * arg1) + ('name', 'issues', 3) + 6][address(msg.sender)].field_0)
    require uint256(issues[arg1].field_768) >= block.timestamp
    require uint256(issues[arg1].field_512) <= block.timestamp
    require arg2.length == uint256(issues[arg1].field_1024)
    uint256(issues[arg1].field_1280)++
    if not uint256(issues[arg1].field_1280) <= uint256(issues[arg1].field_1280) + 1:
        mem[0] = (8 * arg1) + sha3(3) + 5
        idx = uint256(issues[arg1].field_1280) + 1
        while sha3((8 * arg1) + sha3(3) + 5) + uint256(issues[arg1].field_1280) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (uint256(stor[idx + sha3(mem[0])]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    uint256(stor[uint256(issues[arg1].field_1280) + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[uint256(issues[arg1].field_1280) + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0) + 31 / 32 > idx:
            uint8(stor[idx + sha3(uint256(issues[arg1].field_1280) + sha3((8 * arg1) + ('name', 'issues', 3) + 5))].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            uint256(stor[sha3(uint256(issues[arg1].field_1280) + sha3((8 * arg1) + ('name', 'issues', 3) + 5))].field_0) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor[sha3(uint256(issues[arg1].field_1280) + sha3((8 * arg1) + ('name', 'issues', 3) + 5))].field_0)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        s = sha3(uint256(issues[arg1].field_1280) + sha3((8 * arg1) + sha3(3) + 5))
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg2.length) + 31) >> 5 * None + 3 / 32)
        while uint256(stor[uint256(issues[arg1].field_1280) + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0) + 31 / 32 > idx:
            uint8(stor[idx + sha3(uint256(issues[arg1].field_1280) + sha3((8 * arg1) + ('name', 'issues', 3) + 5))].field_0) = 0
            idx = idx + 1
            continue 
    uint8(stor[(8 * arg1) + ('name', 'issues', 3) + 6][address(msg.sender)].field_0) = 1
}

function sub_0a9aa232(?) {
    mem[64] = 3616
    mem[var7001] = 0
    if var7002 - 1:
        var7001 = var7001 + 32
        var7002 = var7002 - 1
        continue 
    mem[var8001] = 3296
    if var8002 - 1:
        mem[64] = 3936
        var7001 = 3616
        var7002 = 10
        continue 
    require arg1 < issues.length
    mem[0] = 3
    s = 0
    idx = 0
    while uint8(idx) < uint8(issues[arg1].field_1024):
        s = 0
        while uint8(s) < uint8(issues[arg1].field_1024):
            if uint8(s) != uint8(idx):
                require arg1 < issues.length
                if uint256(issues[arg1].field_1280):
                    t = 0
                    while t < uint256(issues[arg1].field_1280):
                        require uint8(s) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        require t < uint256(issues[arg1].field_1280)
                        require uint8(idx) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        mem[0] = t + sha3((8 * arg1) + sha3(3) + 5)
                        t = t + 1
                        continue 
                require arg1 < issues.length
                mem[0] = 3
                if uint256(issues[arg1].field_1280):
                    t = 0
                    while t < uint256(issues[arg1].field_1280):
                        require uint8(idx) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        require t < uint256(issues[arg1].field_1280)
                        require uint8(s) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        mem[0] = t + sha3((8 * arg1) + sha3(3) + 5)
                        t = t + 1
                        continue 
                require uint8(s) < 10
                require uint8(idx) < 10
                mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]] = 0
            s = s + 1
            continue 
        s = s
        idx = idx + 1
        continue 
    t = s
    idx = 0
    while uint8(idx) < uint8(issues[arg1].field_1024):
        s = 0
        while uint8(s) < uint8(issues[arg1].field_1024):
            if uint8(s) != uint8(idx):
                t = 0
                while uint8(t) < uint8(issues[arg1].field_1024):
                    if uint8(idx) != uint8(t):
                        if uint8(s) != uint8(t):
                            require uint8(s) < 10
                            require uint8(t) < 10
                            require uint8(s) < 10
                            require uint8(idx) < 10
                            require uint8(t) < 10
                            require uint8(s) < 10
                            require uint8(t) < 10
                            if mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]] < mem[(32 * uint8(t)) + mem[(32 * uint8(idx)) + 96]]:
                                if mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] > mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]]:
                                else:
                                    mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] = mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]]
                            else:
                                if mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] > mem[(32 * uint8(t)) + mem[(32 * uint8(idx)) + 96]]:
                                else:
                                    mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] = mem[(32 * uint8(t)) + mem[(32 * uint8(idx)) + 96]]
                    t = t + 1
                    continue 
            s = s + 1
            continue 
        t = s
        idx = idx + 1
        continue 
    if 0 >= uint8(issues[arg1].field_1024):
        return uint8(stor0.field_8)
    idx = 0
    while uint8(idx) < uint8(issues[arg1].field_1024):
        if uint8(idx):
            require uint8(idx) < 10
            require uint8(idx) < 10
        idx = idx + 1
        continue 
    return 0
}

function setWinner(uint256 arg1) {
    require arg1 < issues.length
    mem[0] = 3
    require uint256(issues[arg1].field_768) <= block.timestamp
    mem[64] = 3616
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 3296
    if var12002 - 1:
        mem[64] = 3936
        var11001 = 3616
        var11002 = 10
        continue 
    require arg1 < issues.length
    mem[0] = 3
    s = 0
    idx = 0
    while uint8(idx) < uint8(issues[arg1].field_1024):
        s = 0
        while uint8(s) < uint8(issues[arg1].field_1024):
            if uint8(s) != uint8(idx):
                require arg1 < issues.length
                if uint256(issues[arg1].field_1280):
                    t = 0
                    while t < uint256(issues[arg1].field_1280):
                        require uint8(s) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        require t < uint256(issues[arg1].field_1280)
                        require uint8(idx) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        mem[0] = t + sha3((8 * arg1) + sha3(3) + 5)
                        t = t + 1
                        continue 
                require arg1 < issues.length
                mem[0] = 3
                if uint256(issues[arg1].field_1280):
                    t = 0
                    while t < uint256(issues[arg1].field_1280):
                        require uint8(idx) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        require t < uint256(issues[arg1].field_1280)
                        require uint8(s) < uint256(stor[t + sha3((8 * arg1) + ('name', 'issues', 3) + 5)].field_0)
                        mem[0] = t + sha3((8 * arg1) + sha3(3) + 5)
                        t = t + 1
                        continue 
                require uint8(s) < 10
                require uint8(idx) < 10
                mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]] = 0
            s = s + 1
            continue 
        s = s
        idx = idx + 1
        continue 
    t = s
    idx = 0
    while uint8(idx) < uint8(issues[arg1].field_1024):
        s = 0
        while uint8(s) < uint8(issues[arg1].field_1024):
            if uint8(s) != uint8(idx):
                t = 0
                while uint8(t) < uint8(issues[arg1].field_1024):
                    if uint8(idx) != uint8(t):
                        if uint8(s) != uint8(t):
                            require uint8(s) < 10
                            require uint8(t) < 10
                            require uint8(s) < 10
                            require uint8(idx) < 10
                            require uint8(t) < 10
                            require uint8(s) < 10
                            require uint8(t) < 10
                            if mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]] < mem[(32 * uint8(t)) + mem[(32 * uint8(idx)) + 96]]:
                                if mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] > mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]]:
                                else:
                                    mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] = mem[(32 * uint8(idx)) + mem[(32 * uint8(s)) + 96]]
                            else:
                                if mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] > mem[(32 * uint8(t)) + mem[(32 * uint8(idx)) + 96]]:
                                else:
                                    mem[(32 * uint8(t)) + mem[(32 * uint8(s)) + 96]] = mem[(32 * uint8(t)) + mem[(32 * uint8(idx)) + 96]]
                    t = t + 1
                    continue 
            s = s + 1
            continue 
        t = s
        idx = idx + 1
        continue 
    if 0 >= uint8(issues[arg1].field_1024):
        uint8(issues[arg1].field_1792) = uint8(stor0.field_8)
    else:
        idx = 0
        while uint8(idx) < uint8(issues[arg1].field_1024):
            if uint8(idx):
                require uint8(idx) < 10
                require uint8(idx) < 10
            idx = idx + 1
            continue 
        uint8(issues[arg1].field_1792) = 0
}

function sub_2ea054f9(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require sub_87f7b975Address == msg.sender
    if arg2:
        require arg3 >= arg2
        require arg2 >= block.timestamp
        issues.length++
        if not issues.length <= issues.length + 1:
            mem[0] = 3
            idx = 8 * issues.length + 1
            while sha3(3) + (8 * issues.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 >= stor[idx + sha3(mem[0])].length:
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    if sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > sha3(idx + sha3(mem[0]) + 4):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 4)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 4) + 1
                        while sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    mem[0] = idx + sha3(mem[0]) + 5
                    s = sha3(mem[0])
                    while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                        uint256(stor[s]) = 0
                        mem[0] = s
                        if sha3(s) + (uint256(stor[s]) + 31 / 32) > sha3(s):
                            uint256(stor[sha3(s)]) = 0
                            t = sha3(s) + 1
                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                    idx = idx + 8
                    continue 
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) <= sha3(idx + sha3(mem[0])):
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    if sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > sha3(idx + sha3(mem[0]) + 4):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 4)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 4) + 1
                        while sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    mem[0] = idx + sha3(mem[0]) + 5
                    s = sha3(mem[0])
                    while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                        uint256(stor[s]) = 0
                        mem[0] = s
                        if sha3(s) + (uint256(stor[s]) + 31 / 32) > sha3(s):
                            uint256(stor[sha3(s)]) = 0
                            t = sha3(s) + 1
                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                    idx = idx + 8
                    continue 
                uint256(stor[sha3(idx + sha3(mem[0]))]) = 0
                s = sha3(idx + sha3(mem[0])) + 1
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                if sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) <= sha3(idx + sha3(mem[0]) + 4):
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    mem[0] = idx + sha3(mem[0]) + 5
                    s = sha3(mem[0])
                    while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                        uint256(stor[s]) = 0
                        mem[0] = s
                        if sha3(s) + (uint256(stor[s]) + 31 / 32) > sha3(s):
                            uint256(stor[sha3(s)]) = 0
                            t = sha3(s) + 1
                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                    idx = idx + 8
                    continue 
                uint256(stor[sha3(idx + sha3(mem[0]) + 4)]) = 0
                s = sha3(s + sha3(mem[0]) + 4) + 1
                while sha3(s + sha3(mem[0]) + 4) + uint256(stor[s + sha3(mem[0]) + 4]) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                mem[0] = s + sha3(mem[0]) + 5
                t = sha3(mem[0])
                while sha3(s + sha3(mem[0]) + 5) + uint256(stor[s + sha3(mem[0]) + 5]) > t:
                    uint256(stor[t]) = 0
                    mem[0] = t
                    if sha3(t) + (uint256(stor[t]) + 31 / 32) > sha3(t):
                        uint256(stor[sha3(t)]) = 0
                        s = sha3(t) + 1
                        while sha3(t) + (uint256(stor[t]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    t = t + 1
                    continue 
                uint8(stor[s + sha3(mem[0]) + 7]) = 0
                s = s + 8
                continue 
        require issues.length < issues.length
        uint256(issues[issues.length].field_0) = (2 * arg4.length) + 1
        s = 0
        idx = 128
        while arg4.length + 128 > idx:
            uint256(issues[(8 * issues.length) + s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if issues[issues.length].length + 31 / 32 > Mask(251, 0, arg4.length + 31) >> 5:
            uint256(stor[('array', ('mul', 8, ('stor', ('length', ('name', 'issues', 3)))), ('name', 'issues', 3)) + (Mask(251, 0, arg4.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg4.length + 31) >> 5) + 1
            while issues[issues.length].length + 31 / 32 > idx:
                uint256(issues[(8 * issues.length) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(issues[issues.length].field_256) = arg1
        uint256(issues[issues.length].field_512) = arg2
    else:
        require arg3 >= block.timestamp
        require block.timestamp >= block.timestamp
        issues.length++
        if not issues.length <= issues.length + 1:
            mem[0] = 3
            idx = 8 * issues.length + 1
            while sha3(3) + (8 * issues.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 >= stor[idx + sha3(mem[0])].length:
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    if sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > sha3(idx + sha3(mem[0]) + 4):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 4)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 4) + 1
                        while sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    mem[0] = idx + sha3(mem[0]) + 5
                    s = sha3(mem[0])
                    while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                        uint256(stor[s]) = 0
                        mem[0] = s
                        if sha3(s) + (uint256(stor[s]) + 31 / 32) > sha3(s):
                            uint256(stor[sha3(s)]) = 0
                            t = sha3(s) + 1
                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                    idx = idx + 8
                    continue 
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) <= sha3(idx + sha3(mem[0])):
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    if sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > sha3(idx + sha3(mem[0]) + 4):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 4)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 4) + 1
                        while sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    mem[0] = idx + sha3(mem[0]) + 5
                    s = sha3(mem[0])
                    while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                        uint256(stor[s]) = 0
                        mem[0] = s
                        if sha3(s) + (uint256(stor[s]) + 31 / 32) > sha3(s):
                            uint256(stor[sha3(s)]) = 0
                            t = sha3(s) + 1
                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                    idx = idx + 8
                    continue 
                uint256(stor[sha3(idx + sha3(mem[0]))]) = 0
                s = sha3(idx + sha3(mem[0])) + 1
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                if sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) <= sha3(idx + sha3(mem[0]) + 4):
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    mem[0] = idx + sha3(mem[0]) + 5
                    s = sha3(mem[0])
                    while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                        uint256(stor[s]) = 0
                        mem[0] = s
                        if sha3(s) + (uint256(stor[s]) + 31 / 32) > sha3(s):
                            uint256(stor[sha3(s)]) = 0
                            t = sha3(s) + 1
                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                    idx = idx + 8
                    continue 
                uint256(stor[sha3(idx + sha3(mem[0]) + 4)]) = 0
                s = sha3(s + sha3(mem[0]) + 4) + 1
                while sha3(s + sha3(mem[0]) + 4) + uint256(stor[s + sha3(mem[0]) + 4]) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                mem[0] = s + sha3(mem[0]) + 5
                t = sha3(mem[0])
                while sha3(s + sha3(mem[0]) + 5) + uint256(stor[s + sha3(mem[0]) + 5]) > t:
                    uint256(stor[t]) = 0
                    mem[0] = t
                    if sha3(t) + (uint256(stor[t]) + 31 / 32) > sha3(t):
                        uint256(stor[sha3(t)]) = 0
                        s = sha3(t) + 1
                        while sha3(t) + (uint256(stor[t]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    t = t + 1
                    continue 
                uint8(stor[s + sha3(mem[0]) + 7]) = 0
                s = s + 8
                continue 
        require issues.length < issues.length
        uint256(issues[issues.length].field_0) = (2 * arg4.length) + 1
        s = 0
        idx = 128
        while arg4.length + 128 > idx:
            uint256(issues[(8 * issues.length) + s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if issues[issues.length].length + 31 / 32 > Mask(251, 0, arg4.length + 31) >> 5:
            uint256(stor[('array', ('mul', 8, ('stor', ('length', ('name', 'issues', 3)))), ('name', 'issues', 3)) + (Mask(251, 0, arg4.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg4.length + 31) >> 5) + 1
            while issues[issues.length].length + 31 / 32 > idx:
                uint256(issues[(8 * issues.length) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(issues[issues.length].field_256) = arg1
        uint256(issues[issues.length].field_512) = block.timestamp
    uint256(issues[issues.length].field_768) = arg3
    idx = 0
    while idx < arg5.length:
        uint256(issues[issues.length].field_1024)++
        mem[0] = (8 * issues.length) + sha3(3) + 4
        require idx < arg5.length
        uint256(stor[uint256(issues[issues.length].field_1024) + sha3((8 * issues.length) + ('name', 'issues', 3) + 4)].field_0) = mem[ceil32(arg4.length) + (32 * idx) + 160]
        idx = idx + 1
        continue 
    uint8(issues[issues.length].field_1792) = uint8(stor0.field_0)
    return issues.length
}



}
