contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() payable {
    stor1 = msg.sender
    stor2 = msg.sender
    return code.data[69 len 8392]
}



// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert 
}

function _setOrganiser(address arg1) {
    require msg.sender == stor1
    stor1 = arg1
}

function _setDepositAccount(address arg1) {
    require msg.sender == stor2
    stor2 = arg1
}

function increaseJackpot(string arg1) payable {
    require uint8(stor0[arg1[all]].field_3328) < 2
    uint128(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_768) = uint128(msg.value + uint128(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_768))
}

function _setLagParams(string arg1, uint16 arg2, uint8 arg3) {
    require stor1 == msg.sender
    require arg3 >= 1
    require uint8(stor0[arg1[all]].field_3328) < 2
    uint8(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256) = arg3
    uint16(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_272) = arg2
}

function _setBugFixVersion(string arg1, uint32 arg2, bytes32 arg3, uint32 arg4) {
    require stor1 == msg.sender
    require uint8(stor0[arg1[all]].field_3328) < 2
    require arg2 > uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_352)
    if uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_576) > block.timestamp:
        uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_352) = arg2
        uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_384) = uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_352)
        uint128(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_384) = 0
        uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_416) = uint64(block.number + arg4)
        uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_480) = 0
        uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_480) = 0
        emit VersionChange(arg3, sha3(arg1[all]), arg2);
}

function getPlayersFromCompetition(string arg1, uint8 arg2) {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 160] = 0
    require arg2 < 2
    if stor0[arg1[all]][arg2].field_1536:
        mem[ceil32(arg1.length) + 192] = address(stor[sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6)].field_0)
        idx = ceil32(arg1.length) + 192
        s = 0
        while ceil32(arg1.length) + (32 * stor0[arg1[all]][arg2].field_1536) + 160 > idx:
            mem[idx + 32] = address(stor[s + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[arg1[all]][arg2].field_1536, data=mem[ceil32(arg1.length) + 192 len 32 * stor0[arg1[all]][arg2].field_1536]), 
           uint32(stor0[arg1[all]][arg2].field_256)
}

function getPlayerSubmissionFromCompetition(string arg1, uint8 arg2, address arg3) {
    require arg2 < 2
    return uint32(stor[(6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg3)].field_0), 
           uint64(stor[(6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg3)].field_0),
           uint32(stor[(6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg3)].field_0),
           stor[(6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg3)].field_256,
           uint32(stor[(6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg3)].field_0),
           uint64(stor[(6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg3)].field_160)
}

function getCompetitionValues(string arg1, uint8 arg2) {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 160] = 0
    require arg2 < 2
    if stor0[arg1[all]][arg2].field_1024:
        mem[ceil32(arg1.length) + 192] = uint32(stor[sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0)
        idx = ceil32(arg1.length) + 192
        s = 0
        while ceil32(arg1.length) + (32 * stor0[arg1[all]][arg2].field_1024) + 160 > idx:
            mem[idx + 32] = uint32(stor[sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    return uint128(stor0[arg1[all]][arg2].field_768), 
           Mask(88, 0, stor0[arg1[all]][arg2].field_512),
           uint32(stor0[arg1[all]][arg2].field_256),
           uint8(stor0[arg1[all]][arg2].field_256),
           uint64(stor0[arg1[all]][arg2].field_512),
           uint32(stor0[arg1[all]][arg2].field_256),
           Array(len=stor0[arg1[all]][arg2].field_1024, data=mem[ceil32(arg1.length) + 192 len 32 * stor0[arg1[all]][arg2].field_1024]),
           uint8(stor0[arg1[all]][arg2].field_256),
           uint16(stor0[arg1[all]][arg2].field_256),
           uint64(stor0[arg1[all]][arg2].field_512),
           uint32(stor0[arg1[all]][arg2].field_256),
           arg2 << 248
}

function start(string arg1, uint64 arg2, uint8 arg3, uint32 arg4) payable {
    require arg3 < 2
    require Mask(88, 0, stor0[arg1[all]][arg3].field_640) == msg.value
    if uint64(stor0[arg1[all]][arg3].field_576) <= block.timestamp:
        if not msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if uint8(stor0[arg1[all]].field_3328) != arg3:
        if not msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if uint32(stor0[arg1[all]][arg3].field_352) != arg4:
        if uint32(stor0[arg1[all]][arg3].field_384) != arg4:
            if not msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if block.number > uint64(stor0[arg1[all]][arg3].field_416):
            if not msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    if block.number >= uint8(stor0[arg1[all]][arg3].field_256):
        if block.number - uint8(stor0[arg1[all]][arg3].field_256) > arg2:
            if not msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    uint128(stor0[arg1[all]][arg3].field_768) = uint128(msg.value + uint128(stor0[arg1[all]][arg3].field_768))
    uint8(stor0[arg1[all]][address(msg.sender)].field_0) = arg3
    uint32(stor0[arg1[all]][address(msg.sender)].field_8) = arg4
    uint64(stor0[arg1[all]][address(msg.sender)].field_40) = uint64(sha3(block.hash(arg2), block.hash(uint64(arg2 - 1)), block.hash(uint64(arg2 - 2)), block.hash(uint64(arg2 - 3)), block.hash(uint64(arg2 - 4)), block.hash(uint64(arg2 - 5)), msg.sender))
    uint64(stor0[arg1[all]][address(msg.sender)].field_104) = uint64(block.timestamp)
}

function getSeedAndState(string arg1, address arg2) {
    require uint8(stor0[arg1[all]].field_3328) < 2
    if uint64(stor[(6 * uint8(stor0[arg1[all]].field_3328)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg2)].field_160) < uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512):
        return sha3(block.hash(uint64(block.number - 1)), block.hash(uint64(block.number - 2)), block.hash(uint64(block.number - 3)), block.hash(uint64(block.number - 4)), block.hash(uint64(block.number - 5)), block.hash(uint64(block.number - 6)), arg2) << 192, 
               block.number - 1 << 192,
               uint8(stor0[arg1[all]].field_3328),
               uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
               uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
               Mask(88, 0, stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
               0,
               uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
               uint64(stor0[arg1[all]][address(arg2)].field_40)
    return sha3(block.hash(uint64(block.number - 1)), block.hash(uint64(block.number - 2)), block.hash(uint64(block.number - 3)), block.hash(uint64(block.number - 4)), block.hash(uint64(block.number - 5)), block.hash(uint64(block.number - 6)), arg2) << 192, 
           block.number - 1 << 192,
           uint8(stor0[arg1[all]].field_3328),
           uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
           uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
           Mask(88, 0, stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
           uint32(stor[(6 * uint8(stor0[arg1[all]].field_3328)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(arg2)].field_0),
           uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
           uint64(stor0[arg1[all]][address(arg2)].field_40)
}

function getCurrentCompetitionValues(string arg1) {
    mem[ceil32(arg1.length) + 192 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 192] = 0
    require uint8(stor0[arg1[all]].field_3328) < 2
    if stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_1024:
        mem[ceil32(arg1.length) + 224] = uint32(stor[sha3((6 * uint8(stor0[arg1[all]].field_3328)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0)
        idx = ceil32(arg1.length) + 224
        s = 0
        while ceil32(arg1.length) + (32 * stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_1024) + 192 > idx:
            mem[idx + 32] = uint32(stor[sha3((6 * uint8(stor0[arg1[all]].field_3328)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    return uint128(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_768), 
           Mask(88, 0, stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
           uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
           uint8(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
           uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
           uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
           Array(len=stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_1024, data=mem[ceil32(arg1.length) + 224 len 32 * stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_1024]),
           uint8(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
           uint16(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
           uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_512),
           uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_256),
           uint8(stor0[arg1[all]].field_3328)
}

function _startNextCompetition(string arg1, uint32 arg2, uint88 arg3, uint8 arg4, uint8 arg5, uint16 arg6, uint64 arg7, uint32 arg8, bytes32 arg9, uint32[] arg10) payable {
    mem[ceil32(arg1.length) + 160 len 32 * arg10.length] = call.data[arg10 + 36 len 32 * arg10.length]
    require stor1 == msg.sender
    mem[(32 * arg10.length) + ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + (32 * arg10.length) + ceil32(arg1.length) + 160] = 0
    require uint8(-uint8(stor0[arg1[all]].field_3328) + 1) < 2
    require uint8(stor0[arg1[all]].field_3328) < 2
    require uint64(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_576) < block.timestamp
    require uint32(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_320) <= 0
    require arg5
    require arg4 >= 1
    require arg10.length
    require arg10.length <= 64
    idx = 0
    s = 0
    while uint8(idx) < arg10.length:
        require uint8(idx) < arg10.length
        require mem[(32 * uint8(idx)) + ceil32(arg1.length) + 188 len 4] != 0
        require uint8(idx) < arg10.length
        if uint32(s):
            require mem[(32 * uint8(idx)) + ceil32(arg1.length) + 188 len 4] <= uint32(s)
        idx = idx + 1
        s = mem[ceil32(arg1.length) + (32 * uint8(idx)) + 160]
        continue 
    if uint32(stor0[arg1[all]][uint8(stor0[arg1[all]].field_3328)].field_352) == arg2:
        uint8(stor0[arg1[all]].field_3328) = uint8(-uint8(stor0[arg1[all]].field_3328) + 1)
        uint64(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_512) = uint64(block.number)
        uint32(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_384) = 0
        uint64(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_416) = 0
        uint32(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_352) = arg2
        Mask(88, 0, stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_640) = Mask(88, 0, arg3)
        uint8(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_256) = arg4
        stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_1024 = arg10.length
        if not arg10.length:
            s = 0
            while stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_1024 + 7 / 8 > s:
                uint32(stor[s + sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0) = 0
                s = s + 1
                continue 
        else:
            t = 0
            s = ceil32(arg1.length) + 160
            while ceil32(arg1.length) + (32 * arg10.length) + 160 > s:
                stor[sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0 = mem[s + 28 len 4] * 256^t or !(test266151307() * 256^t) and stor[sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0
                t = t + (4 * -t + 7 / 32) + (-1 * t * t + 7 / 32) + 4
                s = s + 32
                continue 
            idx = floor32(arg10.length) >> 3
            s = sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + sha3(arg1[all], 0) + 4)
            while idx:
                stor[s] = !(test266151307() * 256^idx) and stor[s]
                idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
                s = (idx + 7 / 32) + s
                continue 
            idx = (floor32(arg10.length) >> 3) + Mask(252, 2, None + -(floor32(arg10.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg10.length) >> 3) + 5) >> 2
            while stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_1024 + 7 / 8 > idx:
                uint32(stor[idx + sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        mem[(32 * arg10.length) + ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
        mem[(32 * arg10.length) + ceil32(arg1.length) + 160] = arg9
        emit VersionChange(arg9, sha3(arg1[all]), arg2);
        uint8(stor0[arg1[all]].field_3328) = uint8(-uint8(stor0[arg1[all]].field_3328) + 1)
        uint64(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_512) = uint64(block.number)
        uint32(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_384) = 0
        uint64(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_416) = 0
        uint32(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_352) = arg2
        Mask(88, 0, stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_640) = Mask(88, 0, arg3)
        uint8(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_256) = arg4
        stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_1024 = arg10.length
        if not arg10.length:
            idx = 0
            while stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_1024 + 7 / 8 > idx:
                uint32(stor[idx + sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = ceil32(arg1.length) + 160
            while ceil32(arg1.length) + (32 * arg10.length) + 160 > idx:
                stor[sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0 = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and stor[sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0
                s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
                idx = idx + 32
                continue 
            idx = floor32(arg10.length) >> 3
            s = sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + sha3(arg1[all], 0) + 4)
            while idx:
                stor[s] = !(test266151307() * 256^idx) and stor[s]
                idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
                s = (idx + 7 / 32) + s
                continue 
            idx = (floor32(arg10.length) >> 3) + Mask(252, 2, None + -(floor32(arg10.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg10.length) >> 3) + 5) >> 2
            while stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_1024 + 7 / 8 > idx:
                uint32(stor[idx + sha3((6 * uint8(-uint8(stor0[arg1[all]].field_3328) + 1)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4)].field_0) = 0
                idx = idx + 1
                continue 
    uint128(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_768) = uint128(msg.value + uint128(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_768))
    uint64(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_576) = uint64(arg7 + block.timestamp)
    uint8(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_264) = arg5
    uint16(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_272) = arg6
    uint32(stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_288) = arg8
    Mask(192, 0, stor0[arg1[all]][uint8(-uint8(stor0[arg1[all]].field_3328) + 1)].field_320) = 0
}

function submit(string arg1, uint64 arg2, uint32 arg3, uint32 arg4, bytes32 arg5) {
    if uint64(stor0[arg1[all]][address(msg.sender)].field_40) == arg2:
        require uint8(stor0[arg1[all]][address(msg.sender)].field_0) < 2
        if block.timestamp - uint64(stor0[arg1[all]][address(msg.sender)].field_104) <= uint32(arg4 + uint16(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_272)):
            if block.timestamp < uint64(uint64(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_576) + uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_288)):
                if uint64(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_160) >= uint64(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_512):
                    if arg3 > uint32(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_0):
                        if uint64(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_160) < uint64(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_512):
                            if uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320) < stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536:
                                address(stor[sha3((6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6) + uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320)].field_0) = msg.sender
                            else:
                                stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536++
                                if not stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 <= stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 + 1:
                                    idx = stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 + 1
                                    while stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 > idx:
                                        stor[idx + sha3((6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6)].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                address(stor[sha3((6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6) + stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536].field_0) = msg.sender
                            uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320) = uint32(uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320) + 1)
                        uint32(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_0) = arg3
                        uint32(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_32) = arg4
                        uint32(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_64) = uint32(stor0[arg1[all]][address(msg.sender)].field_8)
                        uint64(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_96) = uint64(stor0[arg1[all]][address(msg.sender)].field_40)
                        uint64(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_160) = uint64(block.number)
                        stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_256 = arg5
                else:
                    if uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320) < test266151307():
                        if uint64(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_160) < uint64(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_512):
                            if uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320) < stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536:
                                address(stor[sha3((6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6) + uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320)].field_0) = msg.sender
                            else:
                                stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536++
                                if not stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 <= stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 + 1:
                                    idx = stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 + 1
                                    while stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536 > idx:
                                        stor[idx + sha3((6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6)].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                address(stor[sha3((6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 6) + stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_1536].field_0) = msg.sender
                            uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320) = uint32(uint32(stor0[arg1[all]][uint8(stor0[arg1[all]][address(msg.sender)].field_0)].field_320) + 1)
                        uint32(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_0) = arg3
                        uint32(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_32) = arg4
                        uint32(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_64) = uint32(stor0[arg1[all]][address(msg.sender)].field_8)
                        uint64(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_96) = uint64(stor0[arg1[all]][address(msg.sender)].field_40)
                        uint64(stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_160) = uint64(block.number)
                        stor[(6 * uint8(stor0[arg1[all]][address(msg.sender)].field_0)) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 5][address(msg.sender)].field_256 = arg5
}

function _rewardWinners(string arg1, uint8 arg2, address[] arg3) {
    mem[ceil32(arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == stor1
    mem[(32 * arg3.length) + ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + 160] = 0
    require arg2 < 2
    require block.timestamp - uint64(stor0[arg1[all]][arg2].field_576) >= uint32(stor0[arg1[all]][arg2].field_288)
    if uint128(stor0[arg1[all]][arg2].field_768) > 0:
        if uint8(stor0[arg1[all]][arg2].field_1024) <= uint8(arg3.length):
            if uint8(stor0[arg1[all]][arg2].field_1024) <= 0:
                call stor2 with:
                   value uint128(stor0[arg1[all]][arg2].field_768) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require uint8(-arg2 + 1) < 2
                    uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768) = uint128(uint128(stor0[arg1[all]][arg2].field_768) + uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768))
            else:
                if uint8(stor0[arg1[all]][arg2].field_264) <= 1:
                    call stor2 with:
                       value uint128(stor0[arg1[all]][arg2].field_768) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require uint8(-arg2 + 1) < 2
                        uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768) = uint128(uint128(stor0[arg1[all]][arg2].field_768) + uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768))
                else:
                    require uint8(stor0[arg1[all]][arg2].field_264)
                    idx = 0
                    s = 0
                    while uint8(idx) < uint8(stor0[arg1[all]][arg2].field_1024):
                        require uint8(idx) < stor0[arg1[all]][arg2].field_1024
                        mem[0] = (6 * arg2) + sha3(arg1[all], 0) + 4
                        idx = idx + 1
                        s = stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)] + s
                        continue 
                    s = 0
                    idx = 0
                    s = uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264)
                    while uint8(idx) < uint8(stor0[arg1[all]][arg2].field_1024):
                        require uint8(idx) < stor0[arg1[all]][arg2].field_1024
                        mem[0] = (6 * arg2) + sha3(arg1[all], 0) + 4
                        require uint64(stor((Mask(5, 3, None) >> 3) + _41)[uint8(None)] * None)
                        require uint8(idx) < arg3.length
                        call mem[ceil32(arg1.length) + (32 * uint8(idx)) + 172 len 20] with:
                           value uint128(uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _41)[uint8(None)] * None)) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            s = uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _41)[uint8(None)] * None)
                            idx = idx + 1
                            s = s
                            continue 
                        s = uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _41)[uint8(None)] * None)
                        idx = idx + 1
                        s = (uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _41)[uint8(None)] * None)) + s
                        continue 
                    call stor2 with:
                       value uint128(s) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require uint8(-arg2 + 1) < 2
                        uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768) = uint128(s + uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768))
        else:
            if uint8(arg3.length) <= 0:
                call stor2 with:
                   value uint128(stor0[arg1[all]][arg2].field_768) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require uint8(-arg2 + 1) < 2
                    uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768) = uint128(uint128(stor0[arg1[all]][arg2].field_768) + uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768))
            else:
                if uint8(stor0[arg1[all]][arg2].field_264) <= 1:
                    call stor2 with:
                       value uint128(stor0[arg1[all]][arg2].field_768) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require uint8(-arg2 + 1) < 2
                        uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768) = uint128(uint128(stor0[arg1[all]][arg2].field_768) + uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768))
                else:
                    require uint8(stor0[arg1[all]][arg2].field_264)
                    idx = 0
                    s = 0
                    while uint8(idx) < uint8(arg3.length):
                        require uint8(idx) < stor0[arg1[all]][arg2].field_1024
                        mem[0] = (6 * arg2) + sha3(arg1[all], 0) + 4
                        idx = idx + 1
                        s = stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)] + s
                        continue 
                    s = 0
                    idx = 0
                    s = uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264)
                    while uint8(idx) < uint8(arg3.length):
                        require uint8(idx) < stor0[arg1[all]][arg2].field_1024
                        mem[0] = (6 * arg2) + sha3(arg1[all], 0) + 4
                        require uint64(stor((Mask(5, 3, None) >> 3) + _42)[uint8(None)] * None)
                        require uint8(idx) < arg3.length
                        call mem[ceil32(arg1.length) + (32 * uint8(idx)) + 172 len 20] with:
                           value uint128(uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _42)[uint8(None)] * None)) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            s = uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _42)[uint8(None)] * None)
                            idx = idx + 1
                            s = s
                            continue 
                        s = uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _42)[uint8(None)] * None)
                        idx = idx + 1
                        s = (uint128((uint128(stor0[arg1[all]][arg2].field_768) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)]) - (uint128(stor0[arg1[all]][arg2].field_768) / uint8(stor0[arg1[all]][arg2].field_264) * stor((Mask(5, 3, idx) >> 3) + sha3((6 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0)) + 4))[uint8(idx)])) / uint64(stor((Mask(5, 3, None) >> 3) + _42)[uint8(None)] * None)) + s
                        continue 
                    call stor2 with:
                       value uint128(s) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require uint8(-arg2 + 1) < 2
                        uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768) = uint128(s + uint128(stor0[arg1[all]][uint8(-arg2 + 1)].field_768))
        uint128(stor0[arg1[all]][arg2].field_768) = 0
    uint32(stor0[arg1[all]][arg2].field_320) = 0
}



}
