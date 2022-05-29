contract main {




// =====================  Runtime code  =====================


address OWNER_ADDR;
array of uint256 stor1;
address SPARE_RECOMM_ADDR;
uint256 lastStage;
uint256 lastRound;
array of address stor5;
array of struct stor6;
mapping of struct stages;
mapping of address users;
array of struct userBets;
mapping of uint8 stor10;

function lastStage() {
    return lastStage
}

function getSpareRecommAddr() {
    return SPARE_RECOMM_ADDR
}

function OWNER_ADDR() {
    return OWNER_ADDR
}

function RECOMM_ADDR() {
    return address(stor1.length)
}

function lastRound() {
    return lastRound
}

function stages(uint256 arg1) {
    return uint256(stages[arg1].field_0), 
           uint256(stages[arg1].field_256),
           uint256(stages[arg1].field_512),
           uint256(stages[arg1].field_768),
           uint256(stages[arg1].field_1024)
}

function getDefaultRecommAddr() {
    return address(stor1.length)
}

function users(address arg1) {
    return users[arg1]
}

function SPARE_RECOMM_ADDR() {
    return SPARE_RECOMM_ADDR
}

function userBets(uint256 arg1, uint256 arg2) {
    require arg2 < uint256(userBets[arg1].field_0)
    return address(userBets[arg1][arg2].field_0), 
           uint256(userBets[arg1][arg2].field_256),
           uint256(userBets[arg1][arg2].field_768),
           uint256(userBets[arg1][arg2].field_1024)
}

function _fallback() payable {
    revert
}

function setSpareRecommAddr(address arg1) {
    if OWNER_ADDR != msg.sender:
        revert with 0, 'Permission denied'
    SPARE_RECOMM_ADDR = arg1
}

function setDefaultRecommAddr(address arg1) {
    if OWNER_ADDR != msg.sender:
        revert with 0, 'Permission denied'
    address(stor1.length) = arg1
}

function setSeedHash(uint256 arg1, bytes32 arg2) {
    if OWNER_ADDR != msg.sender:
        revert with 0, 'Permission denied'
    if uint256(stages[arg1].field_256):
        revert with 0, 'No need to set seed hash'
    uint256(stages[arg1].field_256) = arg2
}

function distributionReward(uint256 arg1, string arg2, bytes32 arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if block.timestamp < uint256(stages[arg1].field_1024) + 600:
        revert with 0, 'Current time is not allowed to reward'
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 192 len arg2.length % 32] = mem[ceil32(arg2.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != uint256(stages[arg1].field_256):
        revert with 0, 'Encrypted numbers are illegal'
    if arg1 < 1:
        revert with 0, 'Stage no greater than 5 (MAX_STAGE)'
    if arg1 > 5:
        revert with 0, 'Stage no greater than 5 (MAX_STAGE)'
    if OWNER_ADDR != msg.sender:
        revert with 0, 'Permission denied'
    if uint256(stages[arg1].field_512) < 2:
        uint256(stages[arg1].field_1024) = block.timestamp
    else:
        if OWNER_ADDR != msg.sender:
            revert with 0, 'Permission denied'
        mem[0] = arg1
        mem[32] = 7
        mem[arg2.length + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + 160] = arg2.length
        mem[(2 * arg2.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(2 * arg2.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 224 len arg2.length % 32]
        if sha3(mem[(2 * arg2.length) + ceil32(arg2.length) + 192 len arg2.length]) != uint256(stages[arg1].field_256):
            revert with 0, 'Encrypted numbers are illegal'
        mem[(2 * arg2.length) + ceil32(arg2.length) + 192] = 3
        mem[64] = (2 * arg2.length) + ceil32(arg2.length) + 320
        mem[(2 * arg2.length) + ceil32(arg2.length) + 224 len 96] = code.data[15119 len 96]
        idx = 0
        while idx < 3:
            _217 = mem[64]
            mem[mem[64] + 32] = uint256(userBets[arg1].field_0)
            mem[mem[64] + 64] = block.difficulty
            _218 = mem[96]
            t = 128
            u = mem[64] + 96
            s = mem[96]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_217 + floor32(mem[96]) + 96] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[_217 + floor32(mem[96]) + 96])
            mem[_218 + _217 + 96] = block.timestamp
            mem[_218 + _217 + 128] = idx
            _758 = mem[64]
            mem[mem[64]] = _218 + _217 + -mem[64] + 128
            mem[64] = _218 + _217 + 160
            _760 = mem[_758]
            t = _758 + 32
            u = _218 + _217 + 160
            s = mem[_758]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_218 + _217 + floor32(mem[_758]) + 160] = mem[_758 + -(mem[_758] % 32) + floor32(mem[_758]) + 64 len mem[_758] % 32] or Mask(8 * -(mem[_758] % 32) + 32, -(8 * -(mem[_758] % 32) + 32) + 256, mem[_218 + _217 + floor32(mem[_758]) + 160])
            require s < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
            mem[(32 * s) + (2 * arg2.length) + ceil32(arg2.length) + 224] = (sha3(mem[_218 + _217 + 160 len _760]) % 9) + 1
            s = s + 1
            continue 
        if mem[(2 * arg2.length) + ceil32(arg2.length) + 192] != 3:
            revert with 0, 'Random number is illegal'
        if OWNER_ADDR != msg.sender:
            revert with 0, 'Permission denied'
        mem[0] = arg1
        mem[32] = 9
        idx = 0
        s = 0
        while idx < uint256(userBets[arg1].field_0):
            require idx < uint256(userBets[arg1].field_0)
            require 0 < uint256(userBets[arg1][idx].field_512)
            require 0 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
            if mem[(2 * arg2.length) + ceil32(arg2.length) + 224] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0):
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(userBets[arg1].field_0)
            require 1 < uint256(userBets[arg1][idx].field_512)
            require 1 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
            if mem[(2 * arg2.length) + ceil32(arg2.length) + 256] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_256):
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(userBets[arg1].field_0)
            require 2 < uint256(userBets[arg1][idx].field_512)
            require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
            if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(userBets[arg1].field_0)
            _894 = mem[64]
            mem[64] = mem[64] + 160
            require idx < uint256(userBets[arg1].field_0)
            mem[0] = sha3(arg1, 9)
            mem[_894] = address(userBets[arg1][idx].field_0)
            mem[32] = 9
            require idx < uint256(userBets[arg1].field_0)
            mem[_894 + 32] = uint256(userBets[arg1][idx].field_256)
            mem[32] = 9
            require idx < uint256(userBets[arg1].field_0)
            mem[0] = sha3(arg1, 9)
            _946 = mem[64]
            mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
            mem[_946] = uint256(userBets[arg1][idx].field_512)
            if not uint256(userBets[arg1][idx].field_512):
                mem[_894 + 64] = _946
                require idx < uint256(userBets[arg1].field_0)
                mem[_894 + 96] = uint256(userBets[arg1][idx].field_768)
                mem[32] = 9
                require idx < uint256(userBets[arg1].field_0)
                mem[_894 + 128] = uint256(userBets[arg1][idx].field_1024)
                stor6.length++
                address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                mem[0] = (5 * stor6.length) + sha3(6) + 2
                if not uint256(userBets[arg1][idx].field_512):
                    t = sha3(mem[0])
                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                        uint256(stor[t]) = 0
                        mem[0] = arg1
                        mem[32] = 9
                        t = t + 1
                        continue 
                else:
                    t = sha3(mem[0])
                    u = _946 + 32
                    while _946 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                        uint256(stor[t]) = mem[u]
                        mem[0] = arg1
                        mem[32] = 9
                        t = t + 1
                        u = u + 32
                        continue 
                    t = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                        uint256(stor[t]) = 0
                        mem[0] = arg1
                        mem[32] = 9
                        t = t + 1
                        continue 
            else:
                mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                mem[_946 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                t = _946 + 32
                u = sha3(mem[0])
                while _946 + (32 * uint256(userBets[arg1][idx].field_512)) > t:
                    mem[0] = arg1
                    mem[32] = 9
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_894 + 64] = _946
                require idx < uint256(userBets[arg1].field_0)
                mem[_894 + 96] = uint256(userBets[arg1][idx].field_768)
                mem[32] = 9
                require idx < uint256(userBets[arg1].field_0)
                mem[_894 + 128] = uint256(userBets[arg1][idx].field_1024)
                stor6.length++
                mem[0] = 6
                address(stor6[stor6.length].field_0) = mem[_894 + 12 len 20]
                uint256(stor6[stor6.length].field_256) = mem[_894 + 32]
                _1866 = mem[_946]
                uint256(stor6[stor6.length].field_512) = mem[_946]
                mem[0] = (5 * stor6.length) + sha3(6) + 2
                if not _1866:
                    t = sha3(mem[0])
                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                        uint256(stor[t]) = 0
                        mem[0] = arg1
                        mem[32] = 9
                        t = t + 1
                        continue 
                else:
                    u = sha3(mem[0])
                    t = _946 + 32
                    while _946 + (32 * _1866) + 32 > t:
                        uint256(stor[u]) = mem[t]
                        mem[0] = arg1
                        mem[32] = 9
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(mem[0]) + (Mask(251, 0, (32 * _1866) + 31) >> 5)
                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                        uint256(stor[t]) = 0
                        mem[0] = arg1
                        mem[32] = 9
                        t = t + 1
                        continue 
            uint256(stor6[stor6.length].field_768) = uint256(userBets[arg1][idx].field_768)
            uint256(stor6[stor6.length].field_1024) = uint256(userBets[arg1][idx].field_1024)
            mem[0] = arg1
            mem[32] = 9
            idx = idx + 1
            s = s + uint256(userBets[arg1][idx].field_768)
            continue 
        if stor6.length:
            call address(stor1.length) with:
               value uint256(stages[arg1].field_768) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call SPARE_RECOMM_ADDR with:
               value uint256(stages[arg1].field_768) / 100 wei
                 gas 2300 * is_zero(value) wei
            call OWNER_ADDR with:
               value uint256(stages[arg1].field_768) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not stor6.length:
                uint256(stages[arg1].field_768) += -3 * uint256(stages[arg1].field_768) / 100
                mem[0] = arg1
                mem[32] = 7
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = uint256(stages[arg1].field_0)
                mem[mem[64] + 128] = block.timestamp
                mem[mem[64]] = 160
                mem[mem[64] + 160] = 7
                mem[mem[64] + 192] = 'lottery'
                mem[mem[64] + 96] = 224
                mem[mem[64] + 224] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                _809 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                mem[mem[64] + 256 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])] = mem[(2 * arg2.length) + ceil32(arg2.length) + 224 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])]
                emit eventLottery(string arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5):
                                  160,
                                  arg1,
                                  uint256(stages[arg1].field_0),
                                  224,
                                  block.timestamp,
                                  7,
                                  'lottery',
                                  mem[mem[64] + 224 len (32 * _809) + 32],
            else:
                if OWNER_ADDR != msg.sender:
                    revert with 0, 'Permission denied'
                mem[0] = arg1
                t = 0
                idx = 0
                while idx < stor6.length:
                    require s
                    require idx < stor6.length
                    call address(stor6[idx].field_0) with:
                       value (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor6.length
                    mem[32] = 7
                    mem[0] = 6
                    _1392 = mem[64]
                    mem[mem[64] + 32] = address(stor6[idx].field_0)
                    mem[mem[64] + 64] = uint256(stor6[idx].field_256)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = uint256(stages[arg1].field_0)
                    mem[mem[64] + 160] = uint256(stor6[idx].field_768)
                    mem[mem[64] + 256] = (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / s
                    mem[mem[64] + 288] = block.timestamp
                    mem[mem[64]] = 320
                    mem[_1392 + 320] = 6
                    mem[_1392 + 352] = 'reward'
                    mem[_1392 + 192] = 384
                    mem[_1392 + 384] = uint256(stor6[idx].field_512)
                    if not uint256(stor6[idx].field_512):
                        mem[_1392 + 224] = 416
                        mem[_1392 + 416] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        _1398 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        t = 0
                        while t < 32 * _1398:
                            mem[_1392 + t + 448] = mem[(2 * arg2.length) + ceil32(arg2.length) + t + 224]
                            t = t + 32
                            continue 
                        emit eventReward(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256[] arg8, uint256 arg9, uint256 arg10):
                                         mem[mem[64] len (32 * _1398) + _1392 + -mem[64] + 448],
                        t = (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / s
                        idx = idx + 1
                        continue 
                    mem[0] = (5 * idx) + sha3(6) + 2
                    mem[_1392 + 416] = uint256(stor[sha3((5 * idx) + ('name', 'stor6', 6) + 2)].field_0)
                    u = _1392 + 416
                    v = sha3(mem[0])
                    while _1392 + (32 * uint256(stor6[v].field_512)) + 416 > u + 32:
                        mem[u + 32] = uint256(stor1[v])
                        u = u + 32
                        v = v + 1
                        continue 
                    mem[_1392 + 224] = (32 * uint256(stor6[v].field_512)) + 416
                    mem[_1392 + (32 * uint256(stor6[v].field_512)) + 416] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    _2107 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    idx = 0
                    while idx < 32 * _2107:
                        mem[_1392 + (32 * uint256(stor6[v].field_512)) + idx + 448] = mem[(2 * arg2.length) + ceil32(arg2.length) + idx + 224]
                        idx = idx + 32
                        continue 
                    emit eventReward(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256[] arg8, uint256 arg9, uint256 arg10):
                                     mem[mem[64] len (32 * _2107) + _1392 + (32 * uint256(stor6[v].field_512)) + -mem[64] + 448],
                    u = (uint256(stages[arg1].field_768) * uint256(stor6[v].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[v].field_768)) / s
                    v = v + 1
                    continue 
                stor6.length = 0
                mem[0] = 6
                idx = 0
                while sha3(6) + (5 * stor6.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + uint256(stor[idx + sha3(mem[0]) + 2]) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    idx = idx + 5
                    continue 
                mem[0] = arg1
                mem[32] = 7
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = uint256(stages[arg1].field_0)
                mem[mem[64] + 128] = block.timestamp
                mem[mem[64]] = 160
                mem[mem[64] + 160] = 7
                mem[mem[64] + 192] = 'lottery'
                mem[mem[64] + 96] = 224
                mem[mem[64] + 224] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                _1906 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                mem[mem[64] + 256 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])] = mem[(2 * arg2.length) + ceil32(arg2.length) + 224 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])]
                emit eventLottery(string arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5):
                                  160,
                                  arg1,
                                  uint256(stages[arg1].field_0),
                                  224,
                                  block.timestamp,
                                  7,
                                  'lottery',
                                  mem[mem[64] + 224 len (32 * _1906) + 32],
                uint256(stages[arg1].field_768) = 0
                lastStage = arg1
                lastRound = uint256(stages[arg1].field_0)
        else:
            mem[0] = arg1
            mem[32] = 9
            idx = 0
            t = s
            while idx < uint256(userBets[arg1].field_0):
                require idx < uint256(userBets[arg1].field_0)
                require 0 < uint256(userBets[arg1][idx].field_512)
                require 0 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                require idx < uint256(userBets[arg1].field_0)
                require 1 < uint256(userBets[arg1][idx].field_512)
                require 1 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                require idx < uint256(userBets[arg1].field_0)
                if mem[(2 * arg2.length) + ceil32(arg2.length) + 224] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0):
                    if mem[(2 * arg2.length) + ceil32(arg2.length) + 256] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_256):
                        require 0 < uint256(userBets[arg1][idx].field_512)
                        require 0 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        if mem[(2 * arg2.length) + ceil32(arg2.length) + 224] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0):
                            mem[0] = arg1
                            mem[32] = 9
                            idx = idx + 1
                            t = t
                            continue 
                        require idx < uint256(userBets[arg1].field_0)
                        require 2 < uint256(userBets[arg1][idx].field_512)
                        require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                            mem[0] = arg1
                            mem[32] = 9
                            idx = idx + 1
                            t = t
                            continue 
                        require idx < uint256(userBets[arg1].field_0)
                        _1632 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < uint256(userBets[arg1].field_0)
                        mem[0] = sha3(arg1, 9)
                        mem[_1632] = address(userBets[arg1][idx].field_0)
                        mem[32] = 9
                        require idx < uint256(userBets[arg1].field_0)
                        mem[_1632 + 32] = uint256(userBets[arg1][idx].field_256)
                        mem[32] = 9
                        require idx < uint256(userBets[arg1].field_0)
                        mem[0] = sha3(arg1, 9)
                        _1687 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                        mem[_1687] = uint256(userBets[arg1][idx].field_512)
                        if not uint256(userBets[arg1][idx].field_512):
                            mem[_1632 + 64] = _1687
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1632 + 96] = uint256(userBets[arg1][idx].field_768)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1632 + 128] = uint256(userBets[arg1][idx].field_1024)
                            stor6.length++
                            address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                            uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                            uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                            mem[0] = (5 * stor6.length) + sha3(6) + 2
                            if not uint256(userBets[arg1][idx].field_512):
                                s = sha3(mem[0])
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                            else:
                                s = sha3(mem[0])
                                u = _1687 + 32
                                while _1687 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                    uint256(stor[s]) = mem[u]
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    u = u + 32
                                    continue 
                                s = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                        else:
                            mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                            mem[_1687 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                            s = _1687 + 32
                            u = sha3(mem[0])
                            while _1687 + (32 * uint256(userBets[arg1][idx].field_512)) > s:
                                mem[0] = arg1
                                mem[32] = 9
                                mem[s + 32] = uint256(stor1[u])
                                s = s + 32
                                u = u + 1
                                continue 
                            mem[_1632 + 64] = _1687
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1632 + 96] = uint256(userBets[arg1][idx].field_768)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1632 + 128] = uint256(userBets[arg1][idx].field_1024)
                            stor6.length++
                            mem[0] = 6
                            address(stor6[stor6.length].field_0) = mem[_1632 + 12 len 20]
                            uint256(stor6[stor6.length].field_256) = mem[_1632 + 32]
                            _2152 = mem[_1687]
                            uint256(stor6[stor6.length].field_512) = mem[_1687]
                            mem[0] = (5 * stor6.length) + sha3(6) + 2
                            if not _2152:
                                s = sha3(mem[0])
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                            else:
                                u = sha3(mem[0])
                                s = _1687 + 32
                                while _1687 + (32 * _2152) + 32 > s:
                                    uint256(stor[u]) = mem[s]
                                    mem[0] = arg1
                                    mem[32] = 9
                                    u = u + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[0]) + (Mask(251, 0, (32 * _2152) + 31) >> 5)
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                    else:
                        require 2 < uint256(userBets[arg1][idx].field_512)
                        require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        require idx < uint256(userBets[arg1].field_0)
                        if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] == uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                            _1530 = mem[64]
                            mem[64] = mem[64] + 160
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            mem[_1530] = address(userBets[arg1][idx].field_0)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1530 + 32] = uint256(userBets[arg1][idx].field_256)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            _1585 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                            mem[_1585] = uint256(userBets[arg1][idx].field_512)
                            if not uint256(userBets[arg1][idx].field_512):
                                mem[_1530 + 64] = _1585
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1530 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1530 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                                uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                                uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not uint256(userBets[arg1][idx].field_512):
                                    s = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3(mem[0])
                                    u = _1585 + 32
                                    while _1585 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                        uint256(stor[s]) = mem[u]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        u = u + 32
                                        continue 
                                    s = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                            else:
                                mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                                mem[_1585 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                                s = _1585 + 32
                                u = sha3(mem[0])
                                while _1585 + (32 * uint256(userBets[arg1][idx].field_512)) > s:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    mem[s + 32] = uint256(stor1[u])
                                    s = s + 32
                                    u = u + 1
                                    continue 
                                mem[_1530 + 64] = _1585
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1530 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1530 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                mem[0] = 6
                                address(stor6[stor6.length].field_0) = mem[_1530 + 12 len 20]
                                uint256(stor6[stor6.length].field_256) = mem[_1530 + 32]
                                _2158 = mem[_1585]
                                uint256(stor6[stor6.length].field_512) = mem[_1585]
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not _2158:
                                    s = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3(mem[0])
                                    s = _1585 + 32
                                    while _1585 + (32 * _2158) + 32 > s:
                                        uint256(stor[u]) = mem[s]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[0]) + (Mask(251, 0, (32 * _2158) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                        else:
                            require 0 < uint256(userBets[arg1][idx].field_512)
                            require 0 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            if mem[(2 * arg2.length) + ceil32(arg2.length) + 224] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0):
                                mem[0] = arg1
                                mem[32] = 9
                                idx = idx + 1
                                t = t
                                continue 
                            require idx < uint256(userBets[arg1].field_0)
                            require 2 < uint256(userBets[arg1][idx].field_512)
                            require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                                mem[0] = arg1
                                mem[32] = 9
                                idx = idx + 1
                                t = t
                                continue 
                            require idx < uint256(userBets[arg1].field_0)
                            _1701 = mem[64]
                            mem[64] = mem[64] + 160
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            mem[_1701] = address(userBets[arg1][idx].field_0)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1701 + 32] = uint256(userBets[arg1][idx].field_256)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            _1746 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                            mem[_1746] = uint256(userBets[arg1][idx].field_512)
                            if not uint256(userBets[arg1][idx].field_512):
                                mem[_1701 + 64] = _1746
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1701 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1701 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                                uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                                uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not uint256(userBets[arg1][idx].field_512):
                                    s = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3(mem[0])
                                    u = _1746 + 32
                                    while _1746 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                        uint256(stor[s]) = mem[u]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        u = u + 32
                                        continue 
                                    s = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                            else:
                                mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                                mem[_1746 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                                s = _1746 + 32
                                u = sha3(mem[0])
                                while _1746 + (32 * uint256(userBets[arg1][idx].field_512)) > s:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    mem[s + 32] = uint256(stor1[u])
                                    s = s + 32
                                    u = u + 1
                                    continue 
                                mem[_1701 + 64] = _1746
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1701 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1701 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                mem[0] = 6
                                address(stor6[stor6.length].field_0) = mem[_1701 + 12 len 20]
                                uint256(stor6[stor6.length].field_256) = mem[_1701 + 32]
                                _2164 = mem[_1746]
                                uint256(stor6[stor6.length].field_512) = mem[_1746]
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not _2164:
                                    s = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3(mem[0])
                                    s = _1746 + 32
                                    while _1746 + (32 * _2164) + 32 > s:
                                        uint256(stor[u]) = mem[s]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[0]) + (Mask(251, 0, (32 * _2164) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                else:
                    if mem[(2 * arg2.length) + ceil32(arg2.length) + 256] == uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_256):
                        _1451 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < uint256(userBets[arg1].field_0)
                        mem[0] = sha3(arg1, 9)
                        mem[_1451] = address(userBets[arg1][idx].field_0)
                        mem[32] = 9
                        require idx < uint256(userBets[arg1].field_0)
                        mem[_1451 + 32] = uint256(userBets[arg1][idx].field_256)
                        mem[32] = 9
                        require idx < uint256(userBets[arg1].field_0)
                        mem[0] = sha3(arg1, 9)
                        _1493 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                        mem[_1493] = uint256(userBets[arg1][idx].field_512)
                        if not uint256(userBets[arg1][idx].field_512):
                            mem[_1451 + 64] = _1493
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1451 + 96] = uint256(userBets[arg1][idx].field_768)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1451 + 128] = uint256(userBets[arg1][idx].field_1024)
                            stor6.length++
                            address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                            uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                            uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                            mem[0] = (5 * stor6.length) + sha3(6) + 2
                            if not uint256(userBets[arg1][idx].field_512):
                                s = sha3(mem[0])
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                            else:
                                s = sha3(mem[0])
                                u = _1493 + 32
                                while _1493 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                    uint256(stor[s]) = mem[u]
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    u = u + 32
                                    continue 
                                s = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                        else:
                            mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                            mem[_1493 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                            s = _1493 + 32
                            u = sha3(mem[0])
                            while _1493 + (32 * uint256(userBets[arg1][idx].field_512)) > s:
                                mem[0] = arg1
                                mem[32] = 9
                                mem[s + 32] = uint256(stor1[u])
                                s = s + 32
                                u = u + 1
                                continue 
                            mem[_1451 + 64] = _1493
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1451 + 96] = uint256(userBets[arg1][idx].field_768)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1451 + 128] = uint256(userBets[arg1][idx].field_1024)
                            stor6.length++
                            mem[0] = 6
                            address(stor6[stor6.length].field_0) = mem[_1451 + 12 len 20]
                            uint256(stor6[stor6.length].field_256) = mem[_1451 + 32]
                            _2170 = mem[_1493]
                            uint256(stor6[stor6.length].field_512) = mem[_1493]
                            mem[0] = (5 * stor6.length) + sha3(6) + 2
                            if not _2170:
                                s = sha3(mem[0])
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                            else:
                                u = sha3(mem[0])
                                s = _1493 + 32
                                while _1493 + (32 * _2170) + 32 > s:
                                    uint256(stor[u]) = mem[s]
                                    mem[0] = arg1
                                    mem[32] = 9
                                    u = u + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[0]) + (Mask(251, 0, (32 * _2170) + 31) >> 5)
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                    else:
                        require 1 < uint256(userBets[arg1][idx].field_512)
                        require 1 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        require idx < uint256(userBets[arg1].field_0)
                        if mem[(2 * arg2.length) + ceil32(arg2.length) + 256] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_256):
                            require 0 < uint256(userBets[arg1][idx].field_512)
                            require 0 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            if mem[(2 * arg2.length) + ceil32(arg2.length) + 224] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0):
                                mem[0] = arg1
                                mem[32] = 9
                                idx = idx + 1
                                t = t
                                continue 
                            require idx < uint256(userBets[arg1].field_0)
                            require 2 < uint256(userBets[arg1][idx].field_512)
                            require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                                mem[0] = arg1
                                mem[32] = 9
                                idx = idx + 1
                                t = t
                                continue 
                            require idx < uint256(userBets[arg1].field_0)
                            _1706 = mem[64]
                            mem[64] = mem[64] + 160
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            mem[_1706] = address(userBets[arg1][idx].field_0)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1706 + 32] = uint256(userBets[arg1][idx].field_256)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            _1750 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                            mem[_1750] = uint256(userBets[arg1][idx].field_512)
                            if not uint256(userBets[arg1][idx].field_512):
                                mem[_1706 + 64] = _1750
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1706 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1706 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                                uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                                uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not uint256(userBets[arg1][idx].field_512):
                                    s = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3(mem[0])
                                    u = _1750 + 32
                                    while _1750 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                        uint256(stor[s]) = mem[u]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        u = u + 32
                                        continue 
                                    s = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                            else:
                                mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                                mem[_1750 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                                s = _1750 + 32
                                u = sha3(mem[0])
                                while _1750 + (32 * uint256(userBets[arg1][idx].field_512)) > s:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    mem[s + 32] = uint256(stor1[u])
                                    s = s + 32
                                    u = u + 1
                                    continue 
                                mem[_1706 + 64] = _1750
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1706 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1706 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                mem[0] = 6
                                address(stor6[stor6.length].field_0) = mem[_1706 + 12 len 20]
                                uint256(stor6[stor6.length].field_256) = mem[_1706 + 32]
                                _2176 = mem[_1750]
                                uint256(stor6[stor6.length].field_512) = mem[_1750]
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not _2176:
                                    s = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3(mem[0])
                                    s = _1750 + 32
                                    while _1750 + (32 * _2176) + 32 > s:
                                        uint256(stor[u]) = mem[s]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[0]) + (Mask(251, 0, (32 * _2176) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                        else:
                            require 2 < uint256(userBets[arg1][idx].field_512)
                            require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            require idx < uint256(userBets[arg1].field_0)
                            if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] == uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                                _1616 = mem[64]
                                mem[64] = mem[64] + 160
                                require idx < uint256(userBets[arg1].field_0)
                                mem[0] = sha3(arg1, 9)
                                mem[_1616] = address(userBets[arg1][idx].field_0)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1616 + 32] = uint256(userBets[arg1][idx].field_256)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[0] = sha3(arg1, 9)
                                _1672 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                                mem[_1672] = uint256(userBets[arg1][idx].field_512)
                                if not uint256(userBets[arg1][idx].field_512):
                                    mem[_1616 + 64] = _1672
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1616 + 96] = uint256(userBets[arg1][idx].field_768)
                                    mem[32] = 9
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1616 + 128] = uint256(userBets[arg1][idx].field_1024)
                                    stor6.length++
                                    address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                                    uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                                    uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                                    mem[0] = (5 * stor6.length) + sha3(6) + 2
                                    if not uint256(userBets[arg1][idx].field_512):
                                        s = sha3(mem[0])
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                                    else:
                                        s = sha3(mem[0])
                                        u = _1672 + 32
                                        while _1672 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                            uint256(stor[s]) = mem[u]
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            u = u + 32
                                            continue 
                                        s = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                                else:
                                    mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                                    mem[_1672 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                                    s = _1672 + 32
                                    u = sha3(mem[0])
                                    while _1672 + (32 * uint256(userBets[arg1][idx].field_512)) > s:
                                        mem[0] = arg1
                                        mem[32] = 9
                                        mem[s + 32] = uint256(stor1[u])
                                        s = s + 32
                                        u = u + 1
                                        continue 
                                    mem[_1616 + 64] = _1672
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1616 + 96] = uint256(userBets[arg1][idx].field_768)
                                    mem[32] = 9
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1616 + 128] = uint256(userBets[arg1][idx].field_1024)
                                    stor6.length++
                                    mem[0] = 6
                                    address(stor6[stor6.length].field_0) = mem[_1616 + 12 len 20]
                                    uint256(stor6[stor6.length].field_256) = mem[_1616 + 32]
                                    _2182 = mem[_1672]
                                    uint256(stor6[stor6.length].field_512) = mem[_1672]
                                    mem[0] = (5 * stor6.length) + sha3(6) + 2
                                    if not _2182:
                                        s = sha3(mem[0])
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3(mem[0])
                                        s = _1672 + 32
                                        while _1672 + (32 * _2182) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            mem[0] = arg1
                                            mem[32] = 9
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[0]) + (Mask(251, 0, (32 * _2182) + 31) >> 5)
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                            else:
                                require 0 < uint256(userBets[arg1][idx].field_512)
                                require 0 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                                if mem[(2 * arg2.length) + ceil32(arg2.length) + 224] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0):
                                    mem[0] = arg1
                                    mem[32] = 9
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require idx < uint256(userBets[arg1].field_0)
                                require 2 < uint256(userBets[arg1][idx].field_512)
                                require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                                if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                                    mem[0] = arg1
                                    mem[32] = 9
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require idx < uint256(userBets[arg1].field_0)
                                _1758 = mem[64]
                                mem[64] = mem[64] + 160
                                require idx < uint256(userBets[arg1].field_0)
                                mem[0] = sha3(arg1, 9)
                                mem[_1758] = address(userBets[arg1][idx].field_0)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1758 + 32] = uint256(userBets[arg1][idx].field_256)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[0] = sha3(arg1, 9)
                                _1796 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                                mem[_1796] = uint256(userBets[arg1][idx].field_512)
                                if not uint256(userBets[arg1][idx].field_512):
                                    mem[_1758 + 64] = _1796
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1758 + 96] = uint256(userBets[arg1][idx].field_768)
                                    mem[32] = 9
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1758 + 128] = uint256(userBets[arg1][idx].field_1024)
                                    stor6.length++
                                    address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                                    uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                                    uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                                    mem[0] = (5 * stor6.length) + sha3(6) + 2
                                    if not uint256(userBets[arg1][idx].field_512):
                                        s = sha3(mem[0])
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                                    else:
                                        s = sha3(mem[0])
                                        u = _1796 + 32
                                        while _1796 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                            uint256(stor[s]) = mem[u]
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            u = u + 32
                                            continue 
                                        s = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                                else:
                                    mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                                    mem[_1796 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                                    s = _1796 + 32
                                    u = sha3(mem[0])
                                    while _1796 + (32 * uint256(userBets[arg1][idx].field_512)) > s:
                                        mem[0] = arg1
                                        mem[32] = 9
                                        mem[s + 32] = uint256(stor1[u])
                                        s = s + 32
                                        u = u + 1
                                        continue 
                                    mem[_1758 + 64] = _1796
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1758 + 96] = uint256(userBets[arg1][idx].field_768)
                                    mem[32] = 9
                                    require idx < uint256(userBets[arg1].field_0)
                                    mem[_1758 + 128] = uint256(userBets[arg1][idx].field_1024)
                                    stor6.length++
                                    mem[0] = 6
                                    address(stor6[stor6.length].field_0) = mem[_1758 + 12 len 20]
                                    uint256(stor6[stor6.length].field_256) = mem[_1758 + 32]
                                    _2188 = mem[_1796]
                                    uint256(stor6[stor6.length].field_512) = mem[_1796]
                                    mem[0] = (5 * stor6.length) + sha3(6) + 2
                                    if not _2188:
                                        s = sha3(mem[0])
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3(mem[0])
                                        s = _1796 + 32
                                        while _1796 + (32 * _2188) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            mem[0] = arg1
                                            mem[32] = 9
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[0]) + (Mask(251, 0, (32 * _2188) + 31) >> 5)
                                        while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = arg1
                                            mem[32] = 9
                                            s = s + 1
                                            continue 
                uint256(stor6[stor6.length].field_768) = uint256(userBets[arg1][idx].field_768)
                uint256(stor6[stor6.length].field_1024) = uint256(userBets[arg1][idx].field_1024)
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                t = t + uint256(userBets[arg1][idx].field_768)
                continue 
            if stor6.length:
                call address(stor1.length) with:
                   value uint256(stages[arg1].field_768) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call SPARE_RECOMM_ADDR with:
                   value uint256(stages[arg1].field_768) / 100 wei
                     gas 2300 * is_zero(value) wei
                call OWNER_ADDR with:
                   value uint256(stages[arg1].field_768) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not stor6.length:
                    uint256(stages[arg1].field_768) += -3 * uint256(stages[arg1].field_768) / 100
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = uint256(stages[arg1].field_0)
                    mem[mem[64] + 128] = block.timestamp
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = 7
                    mem[mem[64] + 192] = 'lottery'
                    mem[mem[64] + 96] = 224
                    mem[mem[64] + 224] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    _1403 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    mem[mem[64] + 256 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])] = mem[(2 * arg2.length) + ceil32(arg2.length) + 224 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])]
                    emit eventLottery(string arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5):
                                      160,
                                      arg1,
                                      uint256(stages[arg1].field_0),
                                      224,
                                      block.timestamp,
                                      7,
                                      'lottery',
                                      mem[mem[64] + 224 len (32 * _1403) + 32],
                else:
                    if OWNER_ADDR != msg.sender:
                        revert with 0, 'Permission denied'
                    mem[0] = arg1
                    s = 0
                    idx = 0
                    while idx < stor6.length:
                        require t
                        require idx < stor6.length
                        call address(stor6[idx].field_0) with:
                           value (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / t wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor6.length
                        mem[32] = 7
                        mem[0] = 6
                        _1947 = mem[64]
                        mem[mem[64] + 32] = address(stor6[idx].field_0)
                        mem[mem[64] + 64] = uint256(stor6[idx].field_256)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = uint256(stages[arg1].field_0)
                        mem[mem[64] + 160] = uint256(stor6[idx].field_768)
                        mem[mem[64] + 256] = (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / t
                        mem[mem[64] + 288] = block.timestamp
                        mem[mem[64]] = 320
                        mem[_1947 + 320] = 6
                        mem[_1947 + 352] = 'reward'
                        mem[_1947 + 192] = 384
                        mem[_1947 + 384] = uint256(stor6[idx].field_512)
                        if not uint256(stor6[idx].field_512):
                            mem[_1947 + 224] = 416
                            mem[_1947 + 416] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            _1959 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            s = 0
                            while s < 32 * _1959:
                                mem[_1947 + s + 448] = mem[(2 * arg2.length) + ceil32(arg2.length) + s + 224]
                                s = s + 32
                                continue 
                            emit eventReward(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256[] arg8, uint256 arg9, uint256 arg10):
                                             mem[mem[64] len (32 * _1959) + _1947 + -mem[64] + 448],
                            s = (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / t
                            idx = idx + 1
                            continue 
                        mem[0] = (5 * idx) + sha3(6) + 2
                        mem[_1947 + 416] = uint256(stor[sha3((5 * idx) + ('name', 'stor6', 6) + 2)].field_0)
                        u = _1947 + 416
                        v = sha3(mem[0])
                        while _1947 + (32 * uint256(stor6[v].field_512)) + 416 > u + 32:
                            mem[u + 32] = uint256(stor1[v])
                            u = u + 32
                            v = v + 1
                            continue 
                        mem[_1947 + 224] = (32 * uint256(stor6[v].field_512)) + 416
                        mem[_1947 + (32 * uint256(stor6[v].field_512)) + 416] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        _2325 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        idx = 0
                        while idx < 32 * _2325:
                            mem[_1947 + (32 * uint256(stor6[v].field_512)) + idx + 448] = mem[(2 * arg2.length) + ceil32(arg2.length) + idx + 224]
                            idx = idx + 32
                            continue 
                        emit eventReward(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256[] arg8, uint256 arg9, uint256 arg10):
                                         mem[mem[64] len (32 * _2325) + _1947 + (32 * uint256(stor6[v].field_512)) + -mem[64] + 448],
                        u = (uint256(stages[arg1].field_768) * uint256(stor6[v].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[v].field_768)) / t
                        v = v + 1
                        continue 
                    stor6.length = 0
                    mem[0] = 6
                    idx = 0
                    while sha3(6) + (5 * stor6.length) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        mem[0] = idx + sha3(mem[0]) + 2
                        t = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + uint256(stor[idx + sha3(mem[0]) + 2]) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        idx = idx + 5
                        continue 
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = uint256(stages[arg1].field_0)
                    mem[mem[64] + 128] = block.timestamp
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = 7
                    mem[mem[64] + 192] = 'lottery'
                    mem[mem[64] + 96] = 224
                    mem[mem[64] + 224] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    _2232 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    mem[mem[64] + 256 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])] = mem[(2 * arg2.length) + ceil32(arg2.length) + 224 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])]
                    emit eventLottery(string arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5):
                                      160,
                                      arg1,
                                      uint256(stages[arg1].field_0),
                                      224,
                                      block.timestamp,
                                      7,
                                      'lottery',
                                      mem[mem[64] + 224 len (32 * _2232) + 32],
                    uint256(stages[arg1].field_768) = 0
                    lastStage = arg1
                    lastRound = uint256(stages[arg1].field_0)
            else:
                mem[0] = arg1
                mem[32] = 9
                idx = 0
                s = t
                while idx < uint256(userBets[arg1].field_0):
                    require idx < uint256(userBets[arg1].field_0)
                    require 0 < uint256(userBets[arg1][idx].field_512)
                    require 0 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    require idx < uint256(userBets[arg1].field_0)
                    if mem[(2 * arg2.length) + ceil32(arg2.length) + 224] == uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0):
                        _1923 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < uint256(userBets[arg1].field_0)
                        mem[0] = sha3(arg1, 9)
                        mem[_1923] = address(userBets[arg1][idx].field_0)
                        mem[32] = 9
                        require idx < uint256(userBets[arg1].field_0)
                        mem[_1923 + 32] = uint256(userBets[arg1][idx].field_256)
                        mem[32] = 9
                        require idx < uint256(userBets[arg1].field_0)
                        mem[0] = sha3(arg1, 9)
                        _1974 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                        mem[_1974] = uint256(userBets[arg1][idx].field_512)
                        if not uint256(userBets[arg1][idx].field_512):
                            mem[_1923 + 64] = _1974
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1923 + 96] = uint256(userBets[arg1][idx].field_768)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1923 + 128] = uint256(userBets[arg1][idx].field_1024)
                            stor6.length++
                            address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                            uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                            uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                            mem[0] = (5 * stor6.length) + sha3(6) + 2
                            if not uint256(userBets[arg1][idx].field_512):
                                t = sha3(mem[0])
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                    uint256(stor[t]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    t = t + 1
                                    continue 
                            else:
                                t = sha3(mem[0])
                                u = _1974 + 32
                                while _1974 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                    uint256(stor[t]) = mem[u]
                                    mem[0] = arg1
                                    mem[32] = 9
                                    t = t + 1
                                    u = u + 32
                                    continue 
                                t = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                    uint256(stor[t]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    t = t + 1
                                    continue 
                        else:
                            mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                            mem[_1974 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                            t = _1974 + 32
                            u = sha3(mem[0])
                            while _1974 + (32 * uint256(userBets[arg1][idx].field_512)) > t:
                                mem[0] = arg1
                                mem[32] = 9
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1923 + 64] = _1974
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1923 + 96] = uint256(userBets[arg1][idx].field_768)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1923 + 128] = uint256(userBets[arg1][idx].field_1024)
                            stor6.length++
                            mem[0] = 6
                            address(stor6[stor6.length].field_0) = mem[_1923 + 12 len 20]
                            uint256(stor6[stor6.length].field_256) = mem[_1923 + 32]
                            _2360 = mem[_1974]
                            uint256(stor6[stor6.length].field_512) = mem[_1974]
                            mem[0] = (5 * stor6.length) + sha3(6) + 2
                            if not _2360:
                                t = sha3(mem[0])
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                    uint256(stor[t]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    t = t + 1
                                    continue 
                            else:
                                u = sha3(mem[0])
                                t = _1974 + 32
                                while _1974 + (32 * _2360) + 32 > t:
                                    uint256(stor[u]) = mem[t]
                                    mem[0] = arg1
                                    mem[32] = 9
                                    u = u + 1
                                    t = t + 32
                                    continue 
                                t = sha3(mem[0]) + (Mask(251, 0, (32 * _2360) + 31) >> 5)
                                while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                    uint256(stor[t]) = 0
                                    mem[0] = arg1
                                    mem[32] = 9
                                    t = t + 1
                                    continue 
                    else:
                        require 1 < uint256(userBets[arg1][idx].field_512)
                        require 1 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        require idx < uint256(userBets[arg1].field_0)
                        if mem[(2 * arg2.length) + ceil32(arg2.length) + 256] == uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_256):
                            _1984 = mem[64]
                            mem[64] = mem[64] + 160
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            mem[_1984] = address(userBets[arg1][idx].field_0)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_1984 + 32] = uint256(userBets[arg1][idx].field_256)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            _2016 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                            mem[_2016] = uint256(userBets[arg1][idx].field_512)
                            if not uint256(userBets[arg1][idx].field_512):
                                mem[_1984 + 64] = _2016
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1984 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1984 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                                uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                                uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not uint256(userBets[arg1][idx].field_512):
                                    t = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                                else:
                                    t = sha3(mem[0])
                                    u = _2016 + 32
                                    while _2016 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                        uint256(stor[t]) = mem[u]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    t = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                            else:
                                mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                                mem[_2016 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                                t = _2016 + 32
                                u = sha3(mem[0])
                                while _2016 + (32 * uint256(userBets[arg1][idx].field_512)) > t:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1984 + 64] = _2016
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1984 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_1984 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                mem[0] = 6
                                address(stor6[stor6.length].field_0) = mem[_1984 + 12 len 20]
                                uint256(stor6[stor6.length].field_256) = mem[_1984 + 32]
                                _2366 = mem[_2016]
                                uint256(stor6[stor6.length].field_512) = mem[_2016]
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not _2366:
                                    t = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                                else:
                                    u = sha3(mem[0])
                                    t = _2016 + 32
                                    while _2016 + (32 * _2366) + 32 > t:
                                        uint256(stor[u]) = mem[t]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        u = u + 1
                                        t = t + 32
                                        continue 
                                    t = sha3(mem[0]) + (Mask(251, 0, (32 * _2366) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                        else:
                            require 2 < uint256(userBets[arg1][idx].field_512)
                            require 2 < mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            if mem[(2 * arg2.length) + ceil32(arg2.length) + 288] != uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_512):
                                mem[0] = arg1
                                mem[32] = 9
                                idx = idx + 1
                                s = s
                                continue 
                            require idx < uint256(userBets[arg1].field_0)
                            _2023 = mem[64]
                            mem[64] = mem[64] + 160
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            mem[_2023] = address(userBets[arg1][idx].field_0)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[_2023 + 32] = uint256(userBets[arg1][idx].field_256)
                            mem[32] = 9
                            require idx < uint256(userBets[arg1].field_0)
                            mem[0] = sha3(arg1, 9)
                            _2055 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(userBets[arg1][idx].field_512)) + 32
                            mem[_2055] = uint256(userBets[arg1][idx].field_512)
                            if not uint256(userBets[arg1][idx].field_512):
                                mem[_2023 + 64] = _2055
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_2023 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_2023 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                address(stor6[stor6.length].field_0) = address(userBets[arg1][idx].field_0)
                                uint256(stor6[stor6.length].field_256) = uint256(userBets[arg1][idx].field_256)
                                uint256(stor6[stor6.length].field_512) = uint256(userBets[arg1][idx].field_512)
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not uint256(userBets[arg1][idx].field_512):
                                    t = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                                else:
                                    t = sha3(mem[0])
                                    u = _2055 + 32
                                    while _2055 + (32 * uint256(userBets[arg1][idx].field_512)) + 32 > u:
                                        uint256(stor[t]) = mem[u]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    t = sha3(mem[0]) + (Mask(251, 0, (32 * uint256(userBets[arg1][idx].field_512)) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                            else:
                                mem[0] = (5 * idx) + sha3(sha3(arg1, 9)) + 2
                                mem[_2055 + 32] = uint256(stor[sha3((5 * idx) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0)
                                t = _2055 + 32
                                u = sha3(mem[0])
                                while _2055 + (32 * uint256(userBets[arg1][idx].field_512)) > t:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_2023 + 64] = _2055
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_2023 + 96] = uint256(userBets[arg1][idx].field_768)
                                mem[32] = 9
                                require idx < uint256(userBets[arg1].field_0)
                                mem[_2023 + 128] = uint256(userBets[arg1][idx].field_1024)
                                stor6.length++
                                mem[0] = 6
                                address(stor6[stor6.length].field_0) = mem[_2023 + 12 len 20]
                                uint256(stor6[stor6.length].field_256) = mem[_2023 + 32]
                                _2372 = mem[_2055]
                                uint256(stor6[stor6.length].field_512) = mem[_2055]
                                mem[0] = (5 * stor6.length) + sha3(6) + 2
                                if not _2372:
                                    t = sha3(mem[0])
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                                else:
                                    u = sha3(mem[0])
                                    t = _2055 + 32
                                    while _2055 + (32 * _2372) + 32 > t:
                                        uint256(stor[u]) = mem[t]
                                        mem[0] = arg1
                                        mem[32] = 9
                                        u = u + 1
                                        t = t + 32
                                        continue 
                                    t = sha3(mem[0]) + (Mask(251, 0, (32 * _2372) + 31) >> 5)
                                    while sha3((5 * stor6.length) + sha3(6) + 2) + uint256(stor6[stor6.length].field_512) > t:
                                        uint256(stor[t]) = 0
                                        mem[0] = arg1
                                        mem[32] = 9
                                        t = t + 1
                                        continue 
                    uint256(stor6[stor6.length].field_768) = uint256(userBets[arg1][idx].field_768)
                    uint256(stor6[stor6.length].field_1024) = uint256(userBets[arg1][idx].field_1024)
                    mem[0] = arg1
                    mem[32] = 9
                    idx = idx + 1
                    s = s + uint256(userBets[arg1][idx].field_768)
                    continue 
                call address(stor1.length) with:
                   value uint256(stages[arg1].field_768) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call SPARE_RECOMM_ADDR with:
                   value uint256(stages[arg1].field_768) / 100 wei
                     gas 2300 * is_zero(value) wei
                call OWNER_ADDR with:
                   value uint256(stages[arg1].field_768) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not stor6.length:
                    uint256(stages[arg1].field_768) += -3 * uint256(stages[arg1].field_768) / 100
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = uint256(stages[arg1].field_0)
                    mem[mem[64] + 128] = block.timestamp
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = 7
                    mem[mem[64] + 192] = 'lottery'
                    mem[mem[64] + 96] = 224
                    mem[mem[64] + 224] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    _1951 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    mem[mem[64] + 256 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])] = mem[(2 * arg2.length) + ceil32(arg2.length) + 224 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])]
                    emit eventLottery(string arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5):
                                      160,
                                      arg1,
                                      uint256(stages[arg1].field_0),
                                      224,
                                      block.timestamp,
                                      7,
                                      'lottery',
                                      mem[mem[64] + 224 len (32 * _1951) + 32],
                else:
                    if OWNER_ADDR != msg.sender:
                        revert with 0, 'Permission denied'
                    mem[0] = arg1
                    t = 0
                    idx = 0
                    while idx < stor6.length:
                        require s
                        require idx < stor6.length
                        call address(stor6[idx].field_0) with:
                           value (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / s wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor6.length
                        mem[32] = 7
                        mem[0] = 6
                        _2264 = mem[64]
                        mem[mem[64] + 32] = address(stor6[idx].field_0)
                        mem[mem[64] + 64] = uint256(stor6[idx].field_256)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = uint256(stages[arg1].field_0)
                        mem[mem[64] + 160] = uint256(stor6[idx].field_768)
                        mem[mem[64] + 256] = (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / s
                        mem[mem[64] + 288] = block.timestamp
                        mem[mem[64]] = 320
                        mem[_2264 + 320] = 6
                        mem[_2264 + 352] = 'reward'
                        mem[_2264 + 192] = 384
                        mem[_2264 + 384] = uint256(stor6[idx].field_512)
                        if not uint256(stor6[idx].field_512):
                            mem[_2264 + 224] = 416
                            mem[_2264 + 416] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            _2271 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                            t = 0
                            while t < 32 * _2271:
                                mem[_2264 + t + 448] = mem[(2 * arg2.length) + ceil32(arg2.length) + t + 224]
                                t = t + 32
                                continue 
                            emit eventReward(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256[] arg8, uint256 arg9, uint256 arg10):
                                             mem[mem[64] len (32 * _2271) + _2264 + -mem[64] + 448],
                            t = (uint256(stages[arg1].field_768) * uint256(stor6[idx].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[idx].field_768)) / s
                            idx = idx + 1
                            continue 
                        mem[0] = (5 * idx) + sha3(6) + 2
                        mem[_2264 + 416] = uint256(stor[sha3((5 * idx) + ('name', 'stor6', 6) + 2)].field_0)
                        u = _2264 + 416
                        v = sha3(mem[0])
                        while _2264 + (32 * uint256(stor6[v].field_512)) + 416 > u + 32:
                            mem[u + 32] = uint256(stor1[v])
                            u = u + 32
                            v = v + 1
                            continue 
                        mem[_2264 + 224] = (32 * uint256(stor6[v].field_512)) + 416
                        mem[_2264 + (32 * uint256(stor6[v].field_512)) + 416] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        _2458 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                        idx = 0
                        while idx < 32 * _2458:
                            mem[_2264 + (32 * uint256(stor6[v].field_512)) + idx + 448] = mem[(2 * arg2.length) + ceil32(arg2.length) + idx + 224]
                            idx = idx + 32
                            continue 
                        emit eventReward(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256[] arg8, uint256 arg9, uint256 arg10):
                                         mem[mem[64] len (32 * _2458) + _2264 + (32 * uint256(stor6[v].field_512)) + -mem[64] + 448],
                        u = (uint256(stages[arg1].field_768) * uint256(stor6[v].field_768)) - (3 * uint256(stages[arg1].field_768) / 100 * uint256(stor6[v].field_768)) / s
                        v = v + 1
                        continue 
                    stor6.length = 0
                    mem[0] = 6
                    idx = 0
                    while sha3(6) + (5 * stor6.length) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + uint256(stor[idx + sha3(mem[0]) + 2]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        idx = idx + 5
                        continue 
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = uint256(stages[arg1].field_0)
                    mem[mem[64] + 128] = block.timestamp
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = 7
                    mem[mem[64] + 192] = 'lottery'
                    mem[mem[64] + 96] = 224
                    mem[mem[64] + 224] = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    _2411 = mem[(2 * arg2.length) + ceil32(arg2.length) + 192]
                    mem[mem[64] + 256 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])] = mem[(2 * arg2.length) + ceil32(arg2.length) + 224 len floor32(mem[(2 * arg2.length) + ceil32(arg2.length) + 192])]
                    emit eventLottery(string arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5):
                                      160,
                                      arg1,
                                      uint256(stages[arg1].field_0),
                                      224,
                                      block.timestamp,
                                      7,
                                      'lottery',
                                      mem[mem[64] + 224 len (32 * _2411) + 32],
                    uint256(stages[arg1].field_768) = 0
                    lastStage = arg1
                    lastRound = uint256(stages[arg1].field_0)
        uint256(userBets[arg1].field_0) = 0
        mem[0] = sha3(arg1, 9)
        idx = 0
        while sha3(sha3(arg1, 9)) + (5 * uint256(userBets[arg1].field_0)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + uint256(stor[idx + sha3(mem[0]) + 2]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            idx = idx + 5
            continue 
        uint256(stages[arg1].field_0)++
        uint256(stages[arg1].field_512) = 0
        uint256(stages[arg1].field_256) = arg3
        uint256(stages[arg1].field_1024) = block.timestamp + 300
}

function bet(uint256 arg1, uint256 arg2, uint256[] arg3, uint256 arg4, address arg5, bytes32 arg6) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg1 < 1:
        revert with 0, 'Stage no greater than 5 (MAX_STAGE)'
    if arg1 > 5:
        revert with 0, 'Stage no greater than 5 (MAX_STAGE)'
    if uint256(stages[arg1].field_256) != arg6:
        revert with 0, 'The hash of the stage is illegal'
    if not arg6:
        revert with 0, 'The hash of the stage is illegal'
    if block.timestamp > uint256(stages[arg1].field_1024) + 300:
        revert with 0, 'Current time is not allowed to bet'
    if uint256(stages[arg1].field_0) != arg2:
        revert with 0, 'Round illegal'
    if arg3.length != 3:
        revert with 0, 'The bet is 3 digits'
    if msg.value < 10^15:
        revert with 0, 'The amount of the bet is illegal'
    if msg.value > 10 * 10^18:
        revert with 0, 'The amount of the bet is illegal'
    if 10^15 * 10^(arg1 - 1) * arg4 != msg.value:
        revert with 0, 'The amount of the bet is illegal'
    if msg.sender == arg5:
        revert with 0, 'The recommender cannot be himself'
    if users[address(msg.sender)]:
        stor5.length++
        address(stor5[stor5.length]) = users[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 8
        if users[address(msg.sender)] == address(stor1.length):
            if stor5.length > 3:
                revert with 0, 'User relationship error'
            mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
            mem[64] = (32 * arg3.length) + 320
            mem[(32 * arg3.length) + 224] = 5
            mem[(32 * arg3.length) + 256] = 3
            mem[(32 * arg3.length) + 288] = 2
            idx = 0
            s = 0
            while idx < stor5.length:
                require idx < 3
                _1631 = mem[(32 * idx) + (32 * arg3.length) + 224]
                require idx < stor5.length
                require idx < 3
                call address(stor5[idx]) with:
                   value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < stor5.length
                mem[0] = 5
                require idx < 3
                _1781 = mem[(32 * idx) + (32 * arg3.length) + 224]
                _1894 = mem[64]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = msg.value
                mem[mem[64] + 96] = arg1
                mem[mem[64] + 128] = arg2
                mem[mem[64] + 160] = arg4
                mem[mem[64] + 224] = idx
                mem[mem[64] + 256] = address(stor5[idx])
                mem[mem[64] + 288] = msg.value * _1781 / 1000
                mem[mem[64] + 320] = block.timestamp
                mem[mem[64]] = 352
                mem[_1894 + 352] = 8
                mem[_1894 + 384] = 'dividend'
                mem[_1894 + 192] = 416
                mem[_1894 + 416] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[_1894 + t + 448] = mem[t + 128]
                    t = t + 32
                    continue 
                emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                   mem[mem[64] len (32 * mem[96]) + _1894 + -mem[64] + 448],
                idx = idx + 1
                s = s + (msg.value * _1631 / 1000)
                continue 
            uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
            stor5.length = 0
            idx = 0
            while stor5.length > idx:
                uint256(stor5[idx]) = 0
                idx = idx + 1
                continue 
            if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                mem[0] = arg1
                mem[32] = 9
                _3185 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3185] = msg.sender
                mem[_3185 + 32] = msg.value
                mem[_3185 + 64] = 96
                mem[_3185 + 96] = arg4
                mem[_3185 + 128] = block.timestamp
                uint256(userBets[arg1].field_0)++
                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                if not mem[96]:
                    idx = 0
                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                    _4299 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = msg.value
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = arg2
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 224] = block.timestamp
                    mem[mem[64]] = 256
                    mem[_4299 + 256] = 7
                    mem[_4299 + 288] = 'userBet'
                    mem[_4299 + 192] = 320
                    mem[_4299 + 320] = mem[96]
                    mem[_4299 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                      mem[mem[64] len (32 * mem[96]) + _4299 + -mem[64] + 352],
                else:
                    s = 0
                    idx = 128
                    while (32 * mem[96]) + 128 > idx:
                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                    _4971 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = msg.value
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = arg2
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 224] = block.timestamp
                    mem[mem[64]] = 256
                    mem[_4971 + 256] = 7
                    mem[_4971 + 288] = 'userBet'
                    mem[_4971 + 192] = 320
                    mem[_4971 + 320] = mem[96]
                    mem[_4971 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                      mem[mem[64] len (32 * mem[96]) + _4971 + -mem[64] + 352],
            else:
                uint256(stages[arg1].field_512)++
                stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                mem[0] = arg1
                mem[32] = 9
                _3438 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3438] = msg.sender
                mem[_3438 + 32] = msg.value
                mem[_3438 + 64] = 96
                mem[_3438 + 96] = arg4
                mem[_3438 + 128] = block.timestamp
                uint256(userBets[arg1].field_0)++
                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                if not mem[96]:
                    idx = 0
                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                    _4304 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = msg.value
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = arg2
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 224] = block.timestamp
                    mem[mem[64]] = 256
                    mem[_4304 + 256] = 7
                    mem[_4304 + 288] = 'userBet'
                    mem[_4304 + 192] = 320
                    mem[_4304 + 320] = mem[96]
                    mem[_4304 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                      mem[mem[64] len (32 * mem[96]) + _4304 + -mem[64] + 352],
                else:
                    s = 0
                    idx = 128
                    while (32 * mem[96]) + 128 > idx:
                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                    _4976 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = msg.value
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = arg2
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 224] = block.timestamp
                    mem[mem[64]] = 256
                    mem[_4976 + 256] = 7
                    mem[_4976 + 288] = 'userBet'
                    mem[_4976 + 192] = 320
                    mem[_4976 + 320] = mem[96]
                    mem[_4976 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                      mem[mem[64] len (32 * mem[96]) + _4976 + -mem[64] + 352],
        else:
            mem[0] = msg.sender
            mem[32] = 8
            if not users[address(msg.sender)]:
                if stor5.length > 3:
                    revert with 0, 'User relationship error'
                mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                mem[64] = (32 * arg3.length) + 320
                mem[(32 * arg3.length) + 224] = 5
                mem[(32 * arg3.length) + 256] = 3
                mem[(32 * arg3.length) + 288] = 2
                idx = 0
                s = 0
                while idx < stor5.length:
                    require idx < 3
                    _1633 = mem[(32 * idx) + (32 * arg3.length) + 224]
                    require idx < stor5.length
                    require idx < 3
                    call address(stor5[idx]) with:
                       value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor5.length
                    mem[0] = 5
                    require idx < 3
                    _1786 = mem[(32 * idx) + (32 * arg3.length) + 224]
                    _1909 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = msg.value
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = arg2
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 224] = idx
                    mem[mem[64] + 256] = address(stor5[idx])
                    mem[mem[64] + 288] = msg.value * _1786 / 1000
                    mem[mem[64] + 320] = block.timestamp
                    mem[mem[64]] = 352
                    mem[_1909 + 352] = 8
                    mem[_1909 + 384] = 'dividend'
                    mem[_1909 + 192] = 416
                    mem[_1909 + 416] = mem[96]
                    t = 0
                    while t < 32 * mem[96]:
                        mem[_1909 + t + 448] = mem[t + 128]
                        t = t + 32
                        continue 
                    emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                       mem[mem[64] len (32 * mem[96]) + _1909 + -mem[64] + 448],
                    idx = idx + 1
                    s = s + (msg.value * _1633 / 1000)
                    continue 
                uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                stor5.length = 0
                idx = 0
                while stor5.length > idx:
                    uint256(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                    mem[0] = arg1
                    mem[32] = 9
                    _3197 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3197] = msg.sender
                    mem[_3197 + 32] = msg.value
                    mem[_3197 + 64] = 96
                    mem[_3197 + 96] = arg4
                    mem[_3197 + 128] = block.timestamp
                    uint256(userBets[arg1].field_0)++
                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                    if not mem[96]:
                        idx = 0
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4309 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4309 + 256] = 7
                        mem[_4309 + 288] = 'userBet'
                        mem[_4309 + 192] = 320
                        mem[_4309 + 320] = mem[96]
                        mem[_4309 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4309 + -mem[64] + 352],
                    else:
                        s = 0
                        idx = 128
                        while (32 * mem[96]) + 128 > idx:
                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4981 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4981 + 256] = 7
                        mem[_4981 + 288] = 'userBet'
                        mem[_4981 + 192] = 320
                        mem[_4981 + 320] = mem[96]
                        mem[_4981 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4981 + -mem[64] + 352],
                else:
                    uint256(stages[arg1].field_512)++
                    stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                    mem[0] = arg1
                    mem[32] = 9
                    _3446 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3446] = msg.sender
                    mem[_3446 + 32] = msg.value
                    mem[_3446 + 64] = 96
                    mem[_3446 + 96] = arg4
                    mem[_3446 + 128] = block.timestamp
                    uint256(userBets[arg1].field_0)++
                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                    if not mem[96]:
                        idx = 0
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4314 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4314 + 256] = 7
                        mem[_4314 + 288] = 'userBet'
                        mem[_4314 + 192] = 320
                        mem[_4314 + 320] = mem[96]
                        mem[_4314 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4314 + -mem[64] + 352],
                    else:
                        s = 0
                        idx = 128
                        while (32 * mem[96]) + 128 > idx:
                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4986 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4986 + 256] = 7
                        mem[_4986 + 288] = 'userBet'
                        mem[_4986 + 192] = 320
                        mem[_4986 + 320] = mem[96]
                        mem[_4986 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4986 + -mem[64] + 352],
            else:
                stor5.length++
                address(stor5[stor5.length]) = users[users[address(msg.sender)]]
                mem[0] = users[address(msg.sender)]
                mem[32] = 8
                if users[users[address(msg.sender)]] == address(stor1.length):
                    if stor5.length > 3:
                        revert with 0, 'User relationship error'
                    mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                    mem[64] = (32 * arg3.length) + 320
                    mem[(32 * arg3.length) + 224] = 5
                    mem[(32 * arg3.length) + 256] = 3
                    mem[(32 * arg3.length) + 288] = 2
                    idx = 0
                    s = 0
                    while idx < stor5.length:
                        require idx < 3
                        _1635 = mem[(32 * idx) + (32 * arg3.length) + 224]
                        require idx < stor5.length
                        require idx < 3
                        call address(stor5[idx]) with:
                           value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor5.length
                        mem[0] = 5
                        require idx < 3
                        _1791 = mem[(32 * idx) + (32 * arg3.length) + 224]
                        _1924 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = idx
                        mem[mem[64] + 256] = address(stor5[idx])
                        mem[mem[64] + 288] = msg.value * _1791 / 1000
                        mem[mem[64] + 320] = block.timestamp
                        mem[mem[64]] = 352
                        mem[_1924 + 352] = 8
                        mem[_1924 + 384] = 'dividend'
                        mem[_1924 + 192] = 416
                        mem[_1924 + 416] = mem[96]
                        t = 0
                        while t < 32 * mem[96]:
                            mem[_1924 + t + 448] = mem[t + 128]
                            t = t + 32
                            continue 
                        emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                           mem[mem[64] len (32 * mem[96]) + _1924 + -mem[64] + 448],
                        idx = idx + 1
                        s = s + (msg.value * _1635 / 1000)
                        continue 
                    uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                    stor5.length = 0
                    idx = 0
                    while stor5.length > idx:
                        uint256(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                        mem[0] = arg1
                        mem[32] = 9
                        _3209 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3209] = msg.sender
                        mem[_3209 + 32] = msg.value
                        mem[_3209 + 64] = 96
                        mem[_3209 + 96] = arg4
                        mem[_3209 + 128] = block.timestamp
                        uint256(userBets[arg1].field_0)++
                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                        if not mem[96]:
                            idx = 0
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4319 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4319 + 256] = 7
                            mem[_4319 + 288] = 'userBet'
                            mem[_4319 + 192] = 320
                            mem[_4319 + 320] = mem[96]
                            mem[_4319 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4319 + -mem[64] + 352],
                        else:
                            s = 0
                            idx = 128
                            while (32 * mem[96]) + 128 > idx:
                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4991 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4991 + 256] = 7
                            mem[_4991 + 288] = 'userBet'
                            mem[_4991 + 192] = 320
                            mem[_4991 + 320] = mem[96]
                            mem[_4991 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4991 + -mem[64] + 352],
                    else:
                        uint256(stages[arg1].field_512)++
                        stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                        mem[0] = arg1
                        mem[32] = 9
                        _3454 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3454] = msg.sender
                        mem[_3454 + 32] = msg.value
                        mem[_3454 + 64] = 96
                        mem[_3454 + 96] = arg4
                        mem[_3454 + 128] = block.timestamp
                        uint256(userBets[arg1].field_0)++
                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                        if not mem[96]:
                            idx = 0
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4324 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4324 + 256] = 7
                            mem[_4324 + 288] = 'userBet'
                            mem[_4324 + 192] = 320
                            mem[_4324 + 320] = mem[96]
                            mem[_4324 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4324 + -mem[64] + 352],
                        else:
                            s = 0
                            idx = 128
                            while (32 * mem[96]) + 128 > idx:
                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4996 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4996 + 256] = 7
                            mem[_4996 + 288] = 'userBet'
                            mem[_4996 + 192] = 320
                            mem[_4996 + 320] = mem[96]
                            mem[_4996 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4996 + -mem[64] + 352],
                else:
                    mem[0] = users[address(msg.sender)]
                    mem[32] = 8
                    if not users[users[address(msg.sender)]]:
                        if stor5.length > 3:
                            revert with 0, 'User relationship error'
                        mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                        mem[64] = (32 * arg3.length) + 320
                        mem[(32 * arg3.length) + 224] = 5
                        mem[(32 * arg3.length) + 256] = 3
                        mem[(32 * arg3.length) + 288] = 2
                        idx = 0
                        s = 0
                        while idx < stor5.length:
                            require idx < 3
                            _1637 = mem[(32 * idx) + (32 * arg3.length) + 224]
                            require idx < stor5.length
                            require idx < 3
                            call address(stor5[idx]) with:
                               value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < stor5.length
                            mem[0] = 5
                            require idx < 3
                            _1796 = mem[(32 * idx) + (32 * arg3.length) + 224]
                            _1939 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = idx
                            mem[mem[64] + 256] = address(stor5[idx])
                            mem[mem[64] + 288] = msg.value * _1796 / 1000
                            mem[mem[64] + 320] = block.timestamp
                            mem[mem[64]] = 352
                            mem[_1939 + 352] = 8
                            mem[_1939 + 384] = 'dividend'
                            mem[_1939 + 192] = 416
                            mem[_1939 + 416] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[_1939 + t + 448] = mem[t + 128]
                                t = t + 32
                                continue 
                            emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                               mem[mem[64] len (32 * mem[96]) + _1939 + -mem[64] + 448],
                            idx = idx + 1
                            s = s + (msg.value * _1637 / 1000)
                            continue 
                        uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                        stor5.length = 0
                        idx = 0
                        while stor5.length > idx:
                            uint256(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                        if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                            mem[0] = arg1
                            mem[32] = 9
                            _3221 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3221] = msg.sender
                            mem[_3221 + 32] = msg.value
                            mem[_3221 + 64] = 96
                            mem[_3221 + 96] = arg4
                            mem[_3221 + 128] = block.timestamp
                            uint256(userBets[arg1].field_0)++
                            address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                            mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                            if not mem[96]:
                                idx = 0
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _4329 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_4329 + 256] = 7
                                mem[_4329 + 288] = 'userBet'
                                mem[_4329 + 192] = 320
                                mem[_4329 + 320] = mem[96]
                                mem[_4329 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _4329 + -mem[64] + 352],
                            else:
                                s = 0
                                idx = 128
                                while (32 * mem[96]) + 128 > idx:
                                    uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _5001 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_5001 + 256] = 7
                                mem[_5001 + 288] = 'userBet'
                                mem[_5001 + 192] = 320
                                mem[_5001 + 320] = mem[96]
                                mem[_5001 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _5001 + -mem[64] + 352],
                        else:
                            uint256(stages[arg1].field_512)++
                            stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                            mem[0] = arg1
                            mem[32] = 9
                            _3462 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3462] = msg.sender
                            mem[_3462 + 32] = msg.value
                            mem[_3462 + 64] = 96
                            mem[_3462 + 96] = arg4
                            mem[_3462 + 128] = block.timestamp
                            uint256(userBets[arg1].field_0)++
                            address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                            mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                            if not mem[96]:
                                idx = 0
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _4334 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_4334 + 256] = 7
                                mem[_4334 + 288] = 'userBet'
                                mem[_4334 + 192] = 320
                                mem[_4334 + 320] = mem[96]
                                mem[_4334 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _4334 + -mem[64] + 352],
                            else:
                                s = 0
                                idx = 128
                                while (32 * mem[96]) + 128 > idx:
                                    uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _5006 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_5006 + 256] = 7
                                mem[_5006 + 288] = 'userBet'
                                mem[_5006 + 192] = 320
                                mem[_5006 + 320] = mem[96]
                                mem[_5006 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _5006 + -mem[64] + 352],
                    else:
                        stor5.length++
                        address(stor5[stor5.length]) = users[users[users[address(msg.sender)]]]
                        mem[0] = users[users[address(msg.sender)]]
                        mem[32] = 8
                        if users[users[users[address(msg.sender)]]] == address(stor1.length):
                            if stor5.length > 3:
                                revert with 0, 'User relationship error'
                            mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                            mem[64] = (32 * arg3.length) + 320
                            mem[(32 * arg3.length) + 224] = 5
                            mem[(32 * arg3.length) + 256] = 3
                            mem[(32 * arg3.length) + 288] = 2
                            idx = 0
                            s = 0
                            while idx < stor5.length:
                                require idx < 3
                                _1639 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                require idx < stor5.length
                                require idx < 3
                                call address(stor5[idx]) with:
                                   value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < stor5.length
                                mem[0] = 5
                                require idx < 3
                                _1801 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                _1954 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = idx
                                mem[mem[64] + 256] = address(stor5[idx])
                                mem[mem[64] + 288] = msg.value * _1801 / 1000
                                mem[mem[64] + 320] = block.timestamp
                                mem[mem[64]] = 352
                                mem[_1954 + 352] = 8
                                mem[_1954 + 384] = 'dividend'
                                mem[_1954 + 192] = 416
                                mem[_1954 + 416] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[_1954 + t + 448] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                   mem[mem[64] len (32 * mem[96]) + _1954 + -mem[64] + 448],
                                idx = idx + 1
                                s = s + (msg.value * _1639 / 1000)
                                continue 
                            uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                            stor5.length = 0
                            idx = 0
                            while stor5.length > idx:
                                uint256(stor5[idx]) = 0
                                idx = idx + 1
                                continue 
                            if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                mem[0] = arg1
                                mem[32] = 9
                                _3233 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3233] = msg.sender
                                mem[_3233 + 32] = msg.value
                                mem[_3233 + 64] = 96
                                mem[_3233 + 96] = arg4
                                mem[_3233 + 128] = block.timestamp
                                uint256(userBets[arg1].field_0)++
                                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                if not mem[96]:
                                    idx = 0
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _4339 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_4339 + 256] = 7
                                    mem[_4339 + 288] = 'userBet'
                                    mem[_4339 + 192] = 320
                                    mem[_4339 + 320] = mem[96]
                                    mem[_4339 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _4339 + -mem[64] + 352],
                                else:
                                    s = 0
                                    idx = 128
                                    while (32 * mem[96]) + 128 > idx:
                                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _5011 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_5011 + 256] = 7
                                    mem[_5011 + 288] = 'userBet'
                                    mem[_5011 + 192] = 320
                                    mem[_5011 + 320] = mem[96]
                                    mem[_5011 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _5011 + -mem[64] + 352],
                            else:
                                uint256(stages[arg1].field_512)++
                                stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                mem[0] = arg1
                                mem[32] = 9
                                _3470 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3470] = msg.sender
                                mem[_3470 + 32] = msg.value
                                mem[_3470 + 64] = 96
                                mem[_3470 + 96] = arg4
                                mem[_3470 + 128] = block.timestamp
                                uint256(userBets[arg1].field_0)++
                                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                if not mem[96]:
                                    idx = 0
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _4344 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_4344 + 256] = 7
                                    mem[_4344 + 288] = 'userBet'
                                    mem[_4344 + 192] = 320
                                    mem[_4344 + 320] = mem[96]
                                    mem[_4344 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _4344 + -mem[64] + 352],
                                else:
                                    s = 0
                                    idx = 128
                                    while (32 * mem[96]) + 128 > idx:
                                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _5016 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_5016 + 256] = 7
                                    mem[_5016 + 288] = 'userBet'
                                    mem[_5016 + 192] = 320
                                    mem[_5016 + 320] = mem[96]
                                    mem[_5016 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _5016 + -mem[64] + 352],
                        else:
                            mem[0] = users[users[address(msg.sender)]]
                            mem[32] = 8
                            if stor5.length > 3:
                                revert with 0, 'User relationship error'
                            mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                            mem[64] = (32 * arg3.length) + 320
                            mem[(32 * arg3.length) + 224] = 5
                            mem[(32 * arg3.length) + 256] = 3
                            mem[(32 * arg3.length) + 288] = 2
                            if not users[users[users[address(msg.sender)]]]:
                                idx = 0
                                s = 0
                                while idx < stor5.length:
                                    require idx < 3
                                    _1641 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    require idx < stor5.length
                                    require idx < 3
                                    call address(stor5[idx]) with:
                                       value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < stor5.length
                                    mem[0] = 5
                                    require idx < 3
                                    _1806 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    _1969 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = idx
                                    mem[mem[64] + 256] = address(stor5[idx])
                                    mem[mem[64] + 288] = msg.value * _1806 / 1000
                                    mem[mem[64] + 320] = block.timestamp
                                    mem[mem[64]] = 352
                                    mem[_1969 + 352] = 8
                                    mem[_1969 + 384] = 'dividend'
                                    mem[_1969 + 192] = 416
                                    mem[_1969 + 416] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[_1969 + t + 448] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                       mem[mem[64] len (32 * mem[96]) + _1969 + -mem[64] + 448],
                                    idx = idx + 1
                                    s = s + (msg.value * _1641 / 1000)
                                    continue 
                                uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                stor5.length = 0
                                idx = 0
                                while stor5.length > idx:
                                    uint256(stor5[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3245 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3245] = msg.sender
                                    mem[_3245 + 32] = msg.value
                                    mem[_3245 + 64] = 96
                                    mem[_3245 + 96] = arg4
                                    mem[_3245 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4349 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4349 + 256] = 7
                                        mem[_4349 + 288] = 'userBet'
                                        mem[_4349 + 192] = 320
                                        mem[_4349 + 320] = mem[96]
                                        mem[_4349 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4349 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5021 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5021 + 256] = 7
                                        mem[_5021 + 288] = 'userBet'
                                        mem[_5021 + 192] = 320
                                        mem[_5021 + 320] = mem[96]
                                        mem[_5021 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5021 + -mem[64] + 352],
                                else:
                                    uint256(stages[arg1].field_512)++
                                    stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3478 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3478] = msg.sender
                                    mem[_3478 + 32] = msg.value
                                    mem[_3478 + 64] = 96
                                    mem[_3478 + 96] = arg4
                                    mem[_3478 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4354 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4354 + 256] = 7
                                        mem[_4354 + 288] = 'userBet'
                                        mem[_4354 + 192] = 320
                                        mem[_4354 + 320] = mem[96]
                                        mem[_4354 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4354 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5026 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5026 + 256] = 7
                                        mem[_5026 + 288] = 'userBet'
                                        mem[_5026 + 192] = 320
                                        mem[_5026 + 320] = mem[96]
                                        mem[_5026 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5026 + -mem[64] + 352],
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length:
                                    require idx < 3
                                    _1643 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    require idx < stor5.length
                                    require idx < 3
                                    call address(stor5[idx]) with:
                                       value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < stor5.length
                                    mem[0] = 5
                                    require idx < 3
                                    _1811 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    _1984 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = idx
                                    mem[mem[64] + 256] = address(stor5[idx])
                                    mem[mem[64] + 288] = msg.value * _1811 / 1000
                                    mem[mem[64] + 320] = block.timestamp
                                    mem[mem[64]] = 352
                                    mem[_1984 + 352] = 8
                                    mem[_1984 + 384] = 'dividend'
                                    mem[_1984 + 192] = 416
                                    mem[_1984 + 416] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[_1984 + t + 448] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                       mem[mem[64] len (32 * mem[96]) + _1984 + -mem[64] + 448],
                                    idx = idx + 1
                                    s = s + (msg.value * _1643 / 1000)
                                    continue 
                                uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                stor5.length = 0
                                idx = 0
                                while stor5.length > idx:
                                    uint256(stor5[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3257 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3257] = msg.sender
                                    mem[_3257 + 32] = msg.value
                                    mem[_3257 + 64] = 96
                                    mem[_3257 + 96] = arg4
                                    mem[_3257 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4359 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4359 + 256] = 7
                                        mem[_4359 + 288] = 'userBet'
                                        mem[_4359 + 192] = 320
                                        mem[_4359 + 320] = mem[96]
                                        mem[_4359 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4359 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5031 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5031 + 256] = 7
                                        mem[_5031 + 288] = 'userBet'
                                        mem[_5031 + 192] = 320
                                        mem[_5031 + 320] = mem[96]
                                        mem[_5031 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5031 + -mem[64] + 352],
                                else:
                                    uint256(stages[arg1].field_512)++
                                    stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3486 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3486] = msg.sender
                                    mem[_3486 + 32] = msg.value
                                    mem[_3486 + 64] = 96
                                    mem[_3486 + 96] = arg4
                                    mem[_3486 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4364 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4364 + 256] = 7
                                        mem[_4364 + 288] = 'userBet'
                                        mem[_4364 + 192] = 320
                                        mem[_4364 + 320] = mem[96]
                                        mem[_4364 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4364 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5036 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5036 + 256] = 7
                                        mem[_5036 + 288] = 'userBet'
                                        mem[_5036 + 192] = 320
                                        mem[_5036 + 320] = mem[96]
                                        mem[_5036 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5036 + -mem[64] + 352],
    else:
        if arg5 == address(stor1.length):
            users[address(msg.sender)] = arg5
            stor5.length++
            address(stor5[stor5.length]) = users[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 8
            if users[address(msg.sender)] == address(stor1.length):
                if stor5.length > 3:
                    revert with 0, 'User relationship error'
                mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                mem[64] = (32 * arg3.length) + 320
                mem[(32 * arg3.length) + 224] = 5
                mem[(32 * arg3.length) + 256] = 3
                mem[(32 * arg3.length) + 288] = 2
                idx = 0
                s = 0
                while idx < stor5.length:
                    require idx < 3
                    _1645 = mem[(32 * idx) + (32 * arg3.length) + 224]
                    require idx < stor5.length
                    require idx < 3
                    call address(stor5[idx]) with:
                       value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor5.length
                    mem[0] = 5
                    require idx < 3
                    _1816 = mem[(32 * idx) + (32 * arg3.length) + 224]
                    _1999 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = msg.value
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = arg2
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 224] = idx
                    mem[mem[64] + 256] = address(stor5[idx])
                    mem[mem[64] + 288] = msg.value * _1816 / 1000
                    mem[mem[64] + 320] = block.timestamp
                    mem[mem[64]] = 352
                    mem[_1999 + 352] = 8
                    mem[_1999 + 384] = 'dividend'
                    mem[_1999 + 192] = 416
                    mem[_1999 + 416] = mem[96]
                    t = 0
                    while t < 32 * mem[96]:
                        mem[_1999 + t + 448] = mem[t + 128]
                        t = t + 32
                        continue 
                    emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                       mem[mem[64] len (32 * mem[96]) + _1999 + -mem[64] + 448],
                    idx = idx + 1
                    s = s + (msg.value * _1645 / 1000)
                    continue 
                uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                stor5.length = 0
                idx = 0
                while stor5.length > idx:
                    uint256(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                    mem[0] = arg1
                    mem[32] = 9
                    _3269 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3269] = msg.sender
                    mem[_3269 + 32] = msg.value
                    mem[_3269 + 64] = 96
                    mem[_3269 + 96] = arg4
                    mem[_3269 + 128] = block.timestamp
                    uint256(userBets[arg1].field_0)++
                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                    if not mem[96]:
                        idx = 0
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4369 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4369 + 256] = 7
                        mem[_4369 + 288] = 'userBet'
                        mem[_4369 + 192] = 320
                        mem[_4369 + 320] = mem[96]
                        mem[_4369 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4369 + -mem[64] + 352],
                    else:
                        s = 0
                        idx = 128
                        while (32 * mem[96]) + 128 > idx:
                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _5041 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_5041 + 256] = 7
                        mem[_5041 + 288] = 'userBet'
                        mem[_5041 + 192] = 320
                        mem[_5041 + 320] = mem[96]
                        mem[_5041 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _5041 + -mem[64] + 352],
                else:
                    uint256(stages[arg1].field_512)++
                    stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                    mem[0] = arg1
                    mem[32] = 9
                    _3494 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3494] = msg.sender
                    mem[_3494 + 32] = msg.value
                    mem[_3494 + 64] = 96
                    mem[_3494 + 96] = arg4
                    mem[_3494 + 128] = block.timestamp
                    uint256(userBets[arg1].field_0)++
                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                    if not mem[96]:
                        idx = 0
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4374 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4374 + 256] = 7
                        mem[_4374 + 288] = 'userBet'
                        mem[_4374 + 192] = 320
                        mem[_4374 + 320] = mem[96]
                        mem[_4374 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4374 + -mem[64] + 352],
                    else:
                        s = 0
                        idx = 128
                        while (32 * mem[96]) + 128 > idx:
                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _5046 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_5046 + 256] = 7
                        mem[_5046 + 288] = 'userBet'
                        mem[_5046 + 192] = 320
                        mem[_5046 + 320] = mem[96]
                        mem[_5046 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _5046 + -mem[64] + 352],
            else:
                mem[0] = msg.sender
                mem[32] = 8
                if not users[address(msg.sender)]:
                    if stor5.length > 3:
                        revert with 0, 'User relationship error'
                    mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                    mem[64] = (32 * arg3.length) + 320
                    mem[(32 * arg3.length) + 224] = 5
                    mem[(32 * arg3.length) + 256] = 3
                    mem[(32 * arg3.length) + 288] = 2
                    idx = 0
                    s = 0
                    while idx < stor5.length:
                        require idx < 3
                        _1647 = mem[(32 * idx) + (32 * arg3.length) + 224]
                        require idx < stor5.length
                        require idx < 3
                        call address(stor5[idx]) with:
                           value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor5.length
                        mem[0] = 5
                        require idx < 3
                        _1821 = mem[(32 * idx) + (32 * arg3.length) + 224]
                        _2014 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = idx
                        mem[mem[64] + 256] = address(stor5[idx])
                        mem[mem[64] + 288] = msg.value * _1821 / 1000
                        mem[mem[64] + 320] = block.timestamp
                        mem[mem[64]] = 352
                        mem[_2014 + 352] = 8
                        mem[_2014 + 384] = 'dividend'
                        mem[_2014 + 192] = 416
                        mem[_2014 + 416] = mem[96]
                        t = 0
                        while t < 32 * mem[96]:
                            mem[_2014 + t + 448] = mem[t + 128]
                            t = t + 32
                            continue 
                        emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                           mem[mem[64] len (32 * mem[96]) + _2014 + -mem[64] + 448],
                        idx = idx + 1
                        s = s + (msg.value * _1647 / 1000)
                        continue 
                    uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                    stor5.length = 0
                    idx = 0
                    while stor5.length > idx:
                        uint256(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                        mem[0] = arg1
                        mem[32] = 9
                        _3281 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3281] = msg.sender
                        mem[_3281 + 32] = msg.value
                        mem[_3281 + 64] = 96
                        mem[_3281 + 96] = arg4
                        mem[_3281 + 128] = block.timestamp
                        uint256(userBets[arg1].field_0)++
                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                        if not mem[96]:
                            idx = 0
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4379 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4379 + 256] = 7
                            mem[_4379 + 288] = 'userBet'
                            mem[_4379 + 192] = 320
                            mem[_4379 + 320] = mem[96]
                            mem[_4379 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4379 + -mem[64] + 352],
                        else:
                            s = 0
                            idx = 128
                            while (32 * mem[96]) + 128 > idx:
                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _5051 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_5051 + 256] = 7
                            mem[_5051 + 288] = 'userBet'
                            mem[_5051 + 192] = 320
                            mem[_5051 + 320] = mem[96]
                            mem[_5051 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _5051 + -mem[64] + 352],
                    else:
                        uint256(stages[arg1].field_512)++
                        stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                        mem[0] = arg1
                        mem[32] = 9
                        _3502 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3502] = msg.sender
                        mem[_3502 + 32] = msg.value
                        mem[_3502 + 64] = 96
                        mem[_3502 + 96] = arg4
                        mem[_3502 + 128] = block.timestamp
                        uint256(userBets[arg1].field_0)++
                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                        if not mem[96]:
                            idx = 0
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4384 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4384 + 256] = 7
                            mem[_4384 + 288] = 'userBet'
                            mem[_4384 + 192] = 320
                            mem[_4384 + 320] = mem[96]
                            mem[_4384 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4384 + -mem[64] + 352],
                        else:
                            s = 0
                            idx = 128
                            while (32 * mem[96]) + 128 > idx:
                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _5056 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_5056 + 256] = 7
                            mem[_5056 + 288] = 'userBet'
                            mem[_5056 + 192] = 320
                            mem[_5056 + 320] = mem[96]
                            mem[_5056 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _5056 + -mem[64] + 352],
                else:
                    stor5.length++
                    address(stor5[stor5.length]) = users[users[address(msg.sender)]]
                    mem[0] = users[address(msg.sender)]
                    mem[32] = 8
                    if users[users[address(msg.sender)]] == address(stor1.length):
                        if stor5.length > 3:
                            revert with 0, 'User relationship error'
                        mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                        mem[64] = (32 * arg3.length) + 320
                        mem[(32 * arg3.length) + 224] = 5
                        mem[(32 * arg3.length) + 256] = 3
                        mem[(32 * arg3.length) + 288] = 2
                        idx = 0
                        s = 0
                        while idx < stor5.length:
                            require idx < 3
                            _1649 = mem[(32 * idx) + (32 * arg3.length) + 224]
                            require idx < stor5.length
                            require idx < 3
                            call address(stor5[idx]) with:
                               value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < stor5.length
                            mem[0] = 5
                            require idx < 3
                            _1826 = mem[(32 * idx) + (32 * arg3.length) + 224]
                            _2029 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = idx
                            mem[mem[64] + 256] = address(stor5[idx])
                            mem[mem[64] + 288] = msg.value * _1826 / 1000
                            mem[mem[64] + 320] = block.timestamp
                            mem[mem[64]] = 352
                            mem[_2029 + 352] = 8
                            mem[_2029 + 384] = 'dividend'
                            mem[_2029 + 192] = 416
                            mem[_2029 + 416] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[_2029 + t + 448] = mem[t + 128]
                                t = t + 32
                                continue 
                            emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                               mem[mem[64] len (32 * mem[96]) + _2029 + -mem[64] + 448],
                            idx = idx + 1
                            s = s + (msg.value * _1649 / 1000)
                            continue 
                        uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                        stor5.length = 0
                        idx = 0
                        while stor5.length > idx:
                            uint256(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                        if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                            mem[0] = arg1
                            mem[32] = 9
                            _3293 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3293] = msg.sender
                            mem[_3293 + 32] = msg.value
                            mem[_3293 + 64] = 96
                            mem[_3293 + 96] = arg4
                            mem[_3293 + 128] = block.timestamp
                            uint256(userBets[arg1].field_0)++
                            address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                            mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                            if not mem[96]:
                                idx = 0
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _4389 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_4389 + 256] = 7
                                mem[_4389 + 288] = 'userBet'
                                mem[_4389 + 192] = 320
                                mem[_4389 + 320] = mem[96]
                                mem[_4389 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _4389 + -mem[64] + 352],
                            else:
                                s = 0
                                idx = 128
                                while (32 * mem[96]) + 128 > idx:
                                    uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _5061 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_5061 + 256] = 7
                                mem[_5061 + 288] = 'userBet'
                                mem[_5061 + 192] = 320
                                mem[_5061 + 320] = mem[96]
                                mem[_5061 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _5061 + -mem[64] + 352],
                        else:
                            uint256(stages[arg1].field_512)++
                            stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                            mem[0] = arg1
                            mem[32] = 9
                            _3510 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3510] = msg.sender
                            mem[_3510 + 32] = msg.value
                            mem[_3510 + 64] = 96
                            mem[_3510 + 96] = arg4
                            mem[_3510 + 128] = block.timestamp
                            uint256(userBets[arg1].field_0)++
                            address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                            mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                            if not mem[96]:
                                idx = 0
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _4394 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_4394 + 256] = 7
                                mem[_4394 + 288] = 'userBet'
                                mem[_4394 + 192] = 320
                                mem[_4394 + 320] = mem[96]
                                mem[_4394 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _4394 + -mem[64] + 352],
                            else:
                                s = 0
                                idx = 128
                                while (32 * mem[96]) + 128 > idx:
                                    uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _5066 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_5066 + 256] = 7
                                mem[_5066 + 288] = 'userBet'
                                mem[_5066 + 192] = 320
                                mem[_5066 + 320] = mem[96]
                                mem[_5066 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _5066 + -mem[64] + 352],
                    else:
                        mem[0] = users[address(msg.sender)]
                        mem[32] = 8
                        if not users[users[address(msg.sender)]]:
                            if stor5.length > 3:
                                revert with 0, 'User relationship error'
                            mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                            mem[64] = (32 * arg3.length) + 320
                            mem[(32 * arg3.length) + 224] = 5
                            mem[(32 * arg3.length) + 256] = 3
                            mem[(32 * arg3.length) + 288] = 2
                            idx = 0
                            s = 0
                            while idx < stor5.length:
                                require idx < 3
                                _1651 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                require idx < stor5.length
                                require idx < 3
                                call address(stor5[idx]) with:
                                   value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < stor5.length
                                mem[0] = 5
                                require idx < 3
                                _1831 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                _2044 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = idx
                                mem[mem[64] + 256] = address(stor5[idx])
                                mem[mem[64] + 288] = msg.value * _1831 / 1000
                                mem[mem[64] + 320] = block.timestamp
                                mem[mem[64]] = 352
                                mem[_2044 + 352] = 8
                                mem[_2044 + 384] = 'dividend'
                                mem[_2044 + 192] = 416
                                mem[_2044 + 416] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[_2044 + t + 448] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                   mem[mem[64] len (32 * mem[96]) + _2044 + -mem[64] + 448],
                                idx = idx + 1
                                s = s + (msg.value * _1651 / 1000)
                                continue 
                            uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                            stor5.length = 0
                            idx = 0
                            while stor5.length > idx:
                                uint256(stor5[idx]) = 0
                                idx = idx + 1
                                continue 
                            if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                mem[0] = arg1
                                mem[32] = 9
                                _3305 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3305] = msg.sender
                                mem[_3305 + 32] = msg.value
                                mem[_3305 + 64] = 96
                                mem[_3305 + 96] = arg4
                                mem[_3305 + 128] = block.timestamp
                                uint256(userBets[arg1].field_0)++
                                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                if not mem[96]:
                                    idx = 0
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _4399 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_4399 + 256] = 7
                                    mem[_4399 + 288] = 'userBet'
                                    mem[_4399 + 192] = 320
                                    mem[_4399 + 320] = mem[96]
                                    mem[_4399 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _4399 + -mem[64] + 352],
                                else:
                                    s = 0
                                    idx = 128
                                    while (32 * mem[96]) + 128 > idx:
                                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _5071 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_5071 + 256] = 7
                                    mem[_5071 + 288] = 'userBet'
                                    mem[_5071 + 192] = 320
                                    mem[_5071 + 320] = mem[96]
                                    mem[_5071 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _5071 + -mem[64] + 352],
                            else:
                                uint256(stages[arg1].field_512)++
                                stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                mem[0] = arg1
                                mem[32] = 9
                                _3518 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3518] = msg.sender
                                mem[_3518 + 32] = msg.value
                                mem[_3518 + 64] = 96
                                mem[_3518 + 96] = arg4
                                mem[_3518 + 128] = block.timestamp
                                uint256(userBets[arg1].field_0)++
                                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                if not mem[96]:
                                    idx = 0
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _4404 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_4404 + 256] = 7
                                    mem[_4404 + 288] = 'userBet'
                                    mem[_4404 + 192] = 320
                                    mem[_4404 + 320] = mem[96]
                                    mem[_4404 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _4404 + -mem[64] + 352],
                                else:
                                    s = 0
                                    idx = 128
                                    while (32 * mem[96]) + 128 > idx:
                                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _5076 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_5076 + 256] = 7
                                    mem[_5076 + 288] = 'userBet'
                                    mem[_5076 + 192] = 320
                                    mem[_5076 + 320] = mem[96]
                                    mem[_5076 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _5076 + -mem[64] + 352],
                        else:
                            stor5.length++
                            address(stor5[stor5.length]) = users[users[users[address(msg.sender)]]]
                            mem[0] = users[users[address(msg.sender)]]
                            mem[32] = 8
                            if users[users[users[address(msg.sender)]]] == address(stor1.length):
                                if stor5.length > 3:
                                    revert with 0, 'User relationship error'
                                mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                                mem[64] = (32 * arg3.length) + 320
                                mem[(32 * arg3.length) + 224] = 5
                                mem[(32 * arg3.length) + 256] = 3
                                mem[(32 * arg3.length) + 288] = 2
                                idx = 0
                                s = 0
                                while idx < stor5.length:
                                    require idx < 3
                                    _1653 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    require idx < stor5.length
                                    require idx < 3
                                    call address(stor5[idx]) with:
                                       value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < stor5.length
                                    mem[0] = 5
                                    require idx < 3
                                    _1836 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    _2059 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = idx
                                    mem[mem[64] + 256] = address(stor5[idx])
                                    mem[mem[64] + 288] = msg.value * _1836 / 1000
                                    mem[mem[64] + 320] = block.timestamp
                                    mem[mem[64]] = 352
                                    mem[_2059 + 352] = 8
                                    mem[_2059 + 384] = 'dividend'
                                    mem[_2059 + 192] = 416
                                    mem[_2059 + 416] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[_2059 + t + 448] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                       mem[mem[64] len (32 * mem[96]) + _2059 + -mem[64] + 448],
                                    idx = idx + 1
                                    s = s + (msg.value * _1653 / 1000)
                                    continue 
                                uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                stor5.length = 0
                                idx = 0
                                while stor5.length > idx:
                                    uint256(stor5[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3317 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3317] = msg.sender
                                    mem[_3317 + 32] = msg.value
                                    mem[_3317 + 64] = 96
                                    mem[_3317 + 96] = arg4
                                    mem[_3317 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4409 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4409 + 256] = 7
                                        mem[_4409 + 288] = 'userBet'
                                        mem[_4409 + 192] = 320
                                        mem[_4409 + 320] = mem[96]
                                        mem[_4409 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4409 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5081 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5081 + 256] = 7
                                        mem[_5081 + 288] = 'userBet'
                                        mem[_5081 + 192] = 320
                                        mem[_5081 + 320] = mem[96]
                                        mem[_5081 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5081 + -mem[64] + 352],
                                else:
                                    uint256(stages[arg1].field_512)++
                                    stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3526 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3526] = msg.sender
                                    mem[_3526 + 32] = msg.value
                                    mem[_3526 + 64] = 96
                                    mem[_3526 + 96] = arg4
                                    mem[_3526 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4414 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4414 + 256] = 7
                                        mem[_4414 + 288] = 'userBet'
                                        mem[_4414 + 192] = 320
                                        mem[_4414 + 320] = mem[96]
                                        mem[_4414 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4414 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5086 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5086 + 256] = 7
                                        mem[_5086 + 288] = 'userBet'
                                        mem[_5086 + 192] = 320
                                        mem[_5086 + 320] = mem[96]
                                        mem[_5086 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5086 + -mem[64] + 352],
                            else:
                                mem[0] = users[users[address(msg.sender)]]
                                mem[32] = 8
                                if stor5.length > 3:
                                    revert with 0, 'User relationship error'
                                mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                                mem[64] = (32 * arg3.length) + 320
                                mem[(32 * arg3.length) + 224] = 5
                                mem[(32 * arg3.length) + 256] = 3
                                mem[(32 * arg3.length) + 288] = 2
                                if not users[users[users[address(msg.sender)]]]:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length:
                                        require idx < 3
                                        _1655 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        require idx < stor5.length
                                        require idx < 3
                                        call address(stor5[idx]) with:
                                           value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor5.length
                                        mem[0] = 5
                                        require idx < 3
                                        _1841 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        _2074 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = idx
                                        mem[mem[64] + 256] = address(stor5[idx])
                                        mem[mem[64] + 288] = msg.value * _1841 / 1000
                                        mem[mem[64] + 320] = block.timestamp
                                        mem[mem[64]] = 352
                                        mem[_2074 + 352] = 8
                                        mem[_2074 + 384] = 'dividend'
                                        mem[_2074 + 192] = 416
                                        mem[_2074 + 416] = mem[96]
                                        t = 0
                                        while t < 32 * mem[96]:
                                            mem[_2074 + t + 448] = mem[t + 128]
                                            t = t + 32
                                            continue 
                                        emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                           mem[mem[64] len (32 * mem[96]) + _2074 + -mem[64] + 448],
                                        idx = idx + 1
                                        s = s + (msg.value * _1655 / 1000)
                                        continue 
                                    uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                    stor5.length = 0
                                    idx = 0
                                    while stor5.length > idx:
                                        uint256(stor5[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                    if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3329 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3329] = msg.sender
                                        mem[_3329 + 32] = msg.value
                                        mem[_3329 + 64] = 96
                                        mem[_3329 + 96] = arg4
                                        mem[_3329 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4419 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4419 + 256] = 7
                                            mem[_4419 + 288] = 'userBet'
                                            mem[_4419 + 192] = 320
                                            mem[_4419 + 320] = mem[96]
                                            mem[_4419 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4419 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5091 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5091 + 256] = 7
                                            mem[_5091 + 288] = 'userBet'
                                            mem[_5091 + 192] = 320
                                            mem[_5091 + 320] = mem[96]
                                            mem[_5091 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5091 + -mem[64] + 352],
                                    else:
                                        uint256(stages[arg1].field_512)++
                                        stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3534 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3534] = msg.sender
                                        mem[_3534 + 32] = msg.value
                                        mem[_3534 + 64] = 96
                                        mem[_3534 + 96] = arg4
                                        mem[_3534 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4424 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4424 + 256] = 7
                                            mem[_4424 + 288] = 'userBet'
                                            mem[_4424 + 192] = 320
                                            mem[_4424 + 320] = mem[96]
                                            mem[_4424 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4424 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5096 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5096 + 256] = 7
                                            mem[_5096 + 288] = 'userBet'
                                            mem[_5096 + 192] = 320
                                            mem[_5096 + 320] = mem[96]
                                            mem[_5096 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5096 + -mem[64] + 352],
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length:
                                        require idx < 3
                                        _1657 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        require idx < stor5.length
                                        require idx < 3
                                        call address(stor5[idx]) with:
                                           value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor5.length
                                        mem[0] = 5
                                        require idx < 3
                                        _1846 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        _2089 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = idx
                                        mem[mem[64] + 256] = address(stor5[idx])
                                        mem[mem[64] + 288] = msg.value * _1846 / 1000
                                        mem[mem[64] + 320] = block.timestamp
                                        mem[mem[64]] = 352
                                        mem[_2089 + 352] = 8
                                        mem[_2089 + 384] = 'dividend'
                                        mem[_2089 + 192] = 416
                                        mem[_2089 + 416] = mem[96]
                                        t = 0
                                        while t < 32 * mem[96]:
                                            mem[_2089 + t + 448] = mem[t + 128]
                                            t = t + 32
                                            continue 
                                        emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                           mem[mem[64] len (32 * mem[96]) + _2089 + -mem[64] + 448],
                                        idx = idx + 1
                                        s = s + (msg.value * _1657 / 1000)
                                        continue 
                                    uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                    stor5.length = 0
                                    idx = 0
                                    while stor5.length > idx:
                                        uint256(stor5[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                    if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3341 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3341] = msg.sender
                                        mem[_3341 + 32] = msg.value
                                        mem[_3341 + 64] = 96
                                        mem[_3341 + 96] = arg4
                                        mem[_3341 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4429 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4429 + 256] = 7
                                            mem[_4429 + 288] = 'userBet'
                                            mem[_4429 + 192] = 320
                                            mem[_4429 + 320] = mem[96]
                                            mem[_4429 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4429 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5101 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5101 + 256] = 7
                                            mem[_5101 + 288] = 'userBet'
                                            mem[_5101 + 192] = 320
                                            mem[_5101 + 320] = mem[96]
                                            mem[_5101 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5101 + -mem[64] + 352],
                                    else:
                                        uint256(stages[arg1].field_512)++
                                        stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3542 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3542] = msg.sender
                                        mem[_3542 + 32] = msg.value
                                        mem[_3542 + 64] = 96
                                        mem[_3542 + 96] = arg4
                                        mem[_3542 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4434 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4434 + 256] = 7
                                            mem[_4434 + 288] = 'userBet'
                                            mem[_4434 + 192] = 320
                                            mem[_4434 + 320] = mem[96]
                                            mem[_4434 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4434 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5106 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5106 + 256] = 7
                                            mem[_5106 + 288] = 'userBet'
                                            mem[_5106 + 192] = 320
                                            mem[_5106 + 320] = mem[96]
                                            mem[_5106 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5106 + -mem[64] + 352],
        else:
            if not users[address(arg5)]:
                revert with 0, 'Referrer is not legal'
            users[address(msg.sender)] = arg5
            stor5.length++
            address(stor5[stor5.length]) = users[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 8
            if users[address(msg.sender)] == address(stor1.length):
                if stor5.length > 3:
                    revert with 0, 'User relationship error'
                mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                mem[64] = (32 * arg3.length) + 320
                mem[(32 * arg3.length) + 224] = 5
                mem[(32 * arg3.length) + 256] = 3
                mem[(32 * arg3.length) + 288] = 2
                idx = 0
                s = 0
                while idx < stor5.length:
                    require idx < 3
                    _1659 = mem[(32 * idx) + (32 * arg3.length) + 224]
                    require idx < stor5.length
                    require idx < 3
                    call address(stor5[idx]) with:
                       value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor5.length
                    mem[0] = 5
                    require idx < 3
                    _1851 = mem[(32 * idx) + (32 * arg3.length) + 224]
                    _2104 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = msg.value
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = arg2
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 224] = idx
                    mem[mem[64] + 256] = address(stor5[idx])
                    mem[mem[64] + 288] = msg.value * _1851 / 1000
                    mem[mem[64] + 320] = block.timestamp
                    mem[mem[64]] = 352
                    mem[_2104 + 352] = 8
                    mem[_2104 + 384] = 'dividend'
                    mem[_2104 + 192] = 416
                    mem[_2104 + 416] = mem[96]
                    t = 0
                    while t < 32 * mem[96]:
                        mem[_2104 + t + 448] = mem[t + 128]
                        t = t + 32
                        continue 
                    emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                       mem[mem[64] len (32 * mem[96]) + _2104 + -mem[64] + 448],
                    idx = idx + 1
                    s = s + (msg.value * _1659 / 1000)
                    continue 
                uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                stor5.length = 0
                idx = 0
                while stor5.length > idx:
                    uint256(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                    mem[0] = arg1
                    mem[32] = 9
                    _3353 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3353] = msg.sender
                    mem[_3353 + 32] = msg.value
                    mem[_3353 + 64] = 96
                    mem[_3353 + 96] = arg4
                    mem[_3353 + 128] = block.timestamp
                    uint256(userBets[arg1].field_0)++
                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                    if not mem[96]:
                        idx = 0
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4439 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4439 + 256] = 7
                        mem[_4439 + 288] = 'userBet'
                        mem[_4439 + 192] = 320
                        mem[_4439 + 320] = mem[96]
                        mem[_4439 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4439 + -mem[64] + 352],
                    else:
                        s = 0
                        idx = 128
                        while (32 * mem[96]) + 128 > idx:
                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _5111 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_5111 + 256] = 7
                        mem[_5111 + 288] = 'userBet'
                        mem[_5111 + 192] = 320
                        mem[_5111 + 320] = mem[96]
                        mem[_5111 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _5111 + -mem[64] + 352],
                else:
                    uint256(stages[arg1].field_512)++
                    stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                    mem[0] = arg1
                    mem[32] = 9
                    _3550 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3550] = msg.sender
                    mem[_3550 + 32] = msg.value
                    mem[_3550 + 64] = 96
                    mem[_3550 + 96] = arg4
                    mem[_3550 + 128] = block.timestamp
                    uint256(userBets[arg1].field_0)++
                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                    if not mem[96]:
                        idx = 0
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _4444 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_4444 + 256] = 7
                        mem[_4444 + 288] = 'userBet'
                        mem[_4444 + 192] = 320
                        mem[_4444 + 320] = mem[96]
                        mem[_4444 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _4444 + -mem[64] + 352],
                    else:
                        s = 0
                        idx = 128
                        while (32 * mem[96]) + 128 > idx:
                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                        _5116 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = block.timestamp
                        mem[mem[64]] = 256
                        mem[_5116 + 256] = 7
                        mem[_5116 + 288] = 'userBet'
                        mem[_5116 + 192] = 320
                        mem[_5116 + 320] = mem[96]
                        mem[_5116 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                          mem[mem[64] len (32 * mem[96]) + _5116 + -mem[64] + 352],
            else:
                mem[0] = msg.sender
                mem[32] = 8
                if not users[address(msg.sender)]:
                    if stor5.length > 3:
                        revert with 0, 'User relationship error'
                    mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                    mem[64] = (32 * arg3.length) + 320
                    mem[(32 * arg3.length) + 224] = 5
                    mem[(32 * arg3.length) + 256] = 3
                    mem[(32 * arg3.length) + 288] = 2
                    idx = 0
                    s = 0
                    while idx < stor5.length:
                        require idx < 3
                        _1661 = mem[(32 * idx) + (32 * arg3.length) + 224]
                        require idx < stor5.length
                        require idx < 3
                        call address(stor5[idx]) with:
                           value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor5.length
                        mem[0] = 5
                        require idx < 3
                        _1856 = mem[(32 * idx) + (32 * arg3.length) + 224]
                        _2119 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = msg.value
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 224] = idx
                        mem[mem[64] + 256] = address(stor5[idx])
                        mem[mem[64] + 288] = msg.value * _1856 / 1000
                        mem[mem[64] + 320] = block.timestamp
                        mem[mem[64]] = 352
                        mem[_2119 + 352] = 8
                        mem[_2119 + 384] = 'dividend'
                        mem[_2119 + 192] = 416
                        mem[_2119 + 416] = mem[96]
                        t = 0
                        while t < 32 * mem[96]:
                            mem[_2119 + t + 448] = mem[t + 128]
                            t = t + 32
                            continue 
                        emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                           mem[mem[64] len (32 * mem[96]) + _2119 + -mem[64] + 448],
                        idx = idx + 1
                        s = s + (msg.value * _1661 / 1000)
                        continue 
                    uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                    stor5.length = 0
                    idx = 0
                    while stor5.length > idx:
                        uint256(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                        mem[0] = arg1
                        mem[32] = 9
                        _3365 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3365] = msg.sender
                        mem[_3365 + 32] = msg.value
                        mem[_3365 + 64] = 96
                        mem[_3365 + 96] = arg4
                        mem[_3365 + 128] = block.timestamp
                        uint256(userBets[arg1].field_0)++
                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                        if not mem[96]:
                            idx = 0
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4449 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4449 + 256] = 7
                            mem[_4449 + 288] = 'userBet'
                            mem[_4449 + 192] = 320
                            mem[_4449 + 320] = mem[96]
                            mem[_4449 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4449 + -mem[64] + 352],
                        else:
                            s = 0
                            idx = 128
                            while (32 * mem[96]) + 128 > idx:
                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _5121 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_5121 + 256] = 7
                            mem[_5121 + 288] = 'userBet'
                            mem[_5121 + 192] = 320
                            mem[_5121 + 320] = mem[96]
                            mem[_5121 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _5121 + -mem[64] + 352],
                    else:
                        uint256(stages[arg1].field_512)++
                        stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                        mem[0] = arg1
                        mem[32] = 9
                        _3558 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3558] = msg.sender
                        mem[_3558 + 32] = msg.value
                        mem[_3558 + 64] = 96
                        mem[_3558 + 96] = arg4
                        mem[_3558 + 128] = block.timestamp
                        uint256(userBets[arg1].field_0)++
                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                        if not mem[96]:
                            idx = 0
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _4454 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_4454 + 256] = 7
                            mem[_4454 + 288] = 'userBet'
                            mem[_4454 + 192] = 320
                            mem[_4454 + 320] = mem[96]
                            mem[_4454 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _4454 + -mem[64] + 352],
                        else:
                            s = 0
                            idx = 128
                            while (32 * mem[96]) + 128 > idx:
                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                            _5126 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = block.timestamp
                            mem[mem[64]] = 256
                            mem[_5126 + 256] = 7
                            mem[_5126 + 288] = 'userBet'
                            mem[_5126 + 192] = 320
                            mem[_5126 + 320] = mem[96]
                            mem[_5126 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                              mem[mem[64] len (32 * mem[96]) + _5126 + -mem[64] + 352],
                else:
                    stor5.length++
                    address(stor5[stor5.length]) = users[users[address(msg.sender)]]
                    mem[0] = users[address(msg.sender)]
                    mem[32] = 8
                    if users[users[address(msg.sender)]] == address(stor1.length):
                        if stor5.length > 3:
                            revert with 0, 'User relationship error'
                        mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                        mem[64] = (32 * arg3.length) + 320
                        mem[(32 * arg3.length) + 224] = 5
                        mem[(32 * arg3.length) + 256] = 3
                        mem[(32 * arg3.length) + 288] = 2
                        idx = 0
                        s = 0
                        while idx < stor5.length:
                            require idx < 3
                            _1663 = mem[(32 * idx) + (32 * arg3.length) + 224]
                            require idx < stor5.length
                            require idx < 3
                            call address(stor5[idx]) with:
                               value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < stor5.length
                            mem[0] = 5
                            require idx < 3
                            _1861 = mem[(32 * idx) + (32 * arg3.length) + 224]
                            _2134 = mem[64]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = msg.value
                            mem[mem[64] + 96] = arg1
                            mem[mem[64] + 128] = arg2
                            mem[mem[64] + 160] = arg4
                            mem[mem[64] + 224] = idx
                            mem[mem[64] + 256] = address(stor5[idx])
                            mem[mem[64] + 288] = msg.value * _1861 / 1000
                            mem[mem[64] + 320] = block.timestamp
                            mem[mem[64]] = 352
                            mem[_2134 + 352] = 8
                            mem[_2134 + 384] = 'dividend'
                            mem[_2134 + 192] = 416
                            mem[_2134 + 416] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[_2134 + t + 448] = mem[t + 128]
                                t = t + 32
                                continue 
                            emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                               mem[mem[64] len (32 * mem[96]) + _2134 + -mem[64] + 448],
                            idx = idx + 1
                            s = s + (msg.value * _1663 / 1000)
                            continue 
                        uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                        stor5.length = 0
                        idx = 0
                        while stor5.length > idx:
                            uint256(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                        if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                            mem[0] = arg1
                            mem[32] = 9
                            _3377 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3377] = msg.sender
                            mem[_3377 + 32] = msg.value
                            mem[_3377 + 64] = 96
                            mem[_3377 + 96] = arg4
                            mem[_3377 + 128] = block.timestamp
                            uint256(userBets[arg1].field_0)++
                            address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                            mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                            if not mem[96]:
                                idx = 0
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _4459 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_4459 + 256] = 7
                                mem[_4459 + 288] = 'userBet'
                                mem[_4459 + 192] = 320
                                mem[_4459 + 320] = mem[96]
                                mem[_4459 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _4459 + -mem[64] + 352],
                            else:
                                s = 0
                                idx = 128
                                while (32 * mem[96]) + 128 > idx:
                                    uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _5131 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_5131 + 256] = 7
                                mem[_5131 + 288] = 'userBet'
                                mem[_5131 + 192] = 320
                                mem[_5131 + 320] = mem[96]
                                mem[_5131 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _5131 + -mem[64] + 352],
                        else:
                            uint256(stages[arg1].field_512)++
                            stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                            mem[0] = arg1
                            mem[32] = 9
                            _3566 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3566] = msg.sender
                            mem[_3566 + 32] = msg.value
                            mem[_3566 + 64] = 96
                            mem[_3566 + 96] = arg4
                            mem[_3566 + 128] = block.timestamp
                            uint256(userBets[arg1].field_0)++
                            address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                            mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                            if not mem[96]:
                                idx = 0
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _4464 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_4464 + 256] = 7
                                mem[_4464 + 288] = 'userBet'
                                mem[_4464 + 192] = 320
                                mem[_4464 + 320] = mem[96]
                                mem[_4464 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _4464 + -mem[64] + 352],
                            else:
                                s = 0
                                idx = 128
                                while (32 * mem[96]) + 128 > idx:
                                    uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                    uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                _5136 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = block.timestamp
                                mem[mem[64]] = 256
                                mem[_5136 + 256] = 7
                                mem[_5136 + 288] = 'userBet'
                                mem[_5136 + 192] = 320
                                mem[_5136 + 320] = mem[96]
                                mem[_5136 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                  mem[mem[64] len (32 * mem[96]) + _5136 + -mem[64] + 352],
                    else:
                        mem[0] = users[address(msg.sender)]
                        mem[32] = 8
                        if not users[users[address(msg.sender)]]:
                            if stor5.length > 3:
                                revert with 0, 'User relationship error'
                            mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                            mem[64] = (32 * arg3.length) + 320
                            mem[(32 * arg3.length) + 224] = 5
                            mem[(32 * arg3.length) + 256] = 3
                            mem[(32 * arg3.length) + 288] = 2
                            idx = 0
                            s = 0
                            while idx < stor5.length:
                                require idx < 3
                                _1665 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                require idx < stor5.length
                                require idx < 3
                                call address(stor5[idx]) with:
                                   value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < stor5.length
                                mem[0] = 5
                                require idx < 3
                                _1866 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                _2149 = mem[64]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = msg.value
                                mem[mem[64] + 96] = arg1
                                mem[mem[64] + 128] = arg2
                                mem[mem[64] + 160] = arg4
                                mem[mem[64] + 224] = idx
                                mem[mem[64] + 256] = address(stor5[idx])
                                mem[mem[64] + 288] = msg.value * _1866 / 1000
                                mem[mem[64] + 320] = block.timestamp
                                mem[mem[64]] = 352
                                mem[_2149 + 352] = 8
                                mem[_2149 + 384] = 'dividend'
                                mem[_2149 + 192] = 416
                                mem[_2149 + 416] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[_2149 + t + 448] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                   mem[mem[64] len (32 * mem[96]) + _2149 + -mem[64] + 448],
                                idx = idx + 1
                                s = s + (msg.value * _1665 / 1000)
                                continue 
                            uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                            stor5.length = 0
                            idx = 0
                            while stor5.length > idx:
                                uint256(stor5[idx]) = 0
                                idx = idx + 1
                                continue 
                            if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                mem[0] = arg1
                                mem[32] = 9
                                _3389 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3389] = msg.sender
                                mem[_3389 + 32] = msg.value
                                mem[_3389 + 64] = 96
                                mem[_3389 + 96] = arg4
                                mem[_3389 + 128] = block.timestamp
                                uint256(userBets[arg1].field_0)++
                                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                if not mem[96]:
                                    idx = 0
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _4469 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_4469 + 256] = 7
                                    mem[_4469 + 288] = 'userBet'
                                    mem[_4469 + 192] = 320
                                    mem[_4469 + 320] = mem[96]
                                    mem[_4469 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _4469 + -mem[64] + 352],
                                else:
                                    s = 0
                                    idx = 128
                                    while (32 * mem[96]) + 128 > idx:
                                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _5141 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_5141 + 256] = 7
                                    mem[_5141 + 288] = 'userBet'
                                    mem[_5141 + 192] = 320
                                    mem[_5141 + 320] = mem[96]
                                    mem[_5141 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _5141 + -mem[64] + 352],
                            else:
                                uint256(stages[arg1].field_512)++
                                stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                mem[0] = arg1
                                mem[32] = 9
                                _3574 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3574] = msg.sender
                                mem[_3574 + 32] = msg.value
                                mem[_3574 + 64] = 96
                                mem[_3574 + 96] = arg4
                                mem[_3574 + 128] = block.timestamp
                                uint256(userBets[arg1].field_0)++
                                address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                if not mem[96]:
                                    idx = 0
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _4474 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_4474 + 256] = 7
                                    mem[_4474 + 288] = 'userBet'
                                    mem[_4474 + 192] = 320
                                    mem[_4474 + 320] = mem[96]
                                    mem[_4474 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _4474 + -mem[64] + 352],
                                else:
                                    s = 0
                                    idx = 128
                                    while (32 * mem[96]) + 128 > idx:
                                        uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                    while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                        uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                    _5146 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = block.timestamp
                                    mem[mem[64]] = 256
                                    mem[_5146 + 256] = 7
                                    mem[_5146 + 288] = 'userBet'
                                    mem[_5146 + 192] = 320
                                    mem[_5146 + 320] = mem[96]
                                    mem[_5146 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                    emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                      mem[mem[64] len (32 * mem[96]) + _5146 + -mem[64] + 352],
                        else:
                            stor5.length++
                            address(stor5[stor5.length]) = users[users[users[address(msg.sender)]]]
                            mem[0] = users[users[address(msg.sender)]]
                            mem[32] = 8
                            if users[users[users[address(msg.sender)]]] == address(stor1.length):
                                if stor5.length > 3:
                                    revert with 0, 'User relationship error'
                                mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                                mem[64] = (32 * arg3.length) + 320
                                mem[(32 * arg3.length) + 224] = 5
                                mem[(32 * arg3.length) + 256] = 3
                                mem[(32 * arg3.length) + 288] = 2
                                idx = 0
                                s = 0
                                while idx < stor5.length:
                                    require idx < 3
                                    _1667 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    require idx < stor5.length
                                    require idx < 3
                                    call address(stor5[idx]) with:
                                       value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < stor5.length
                                    mem[0] = 5
                                    require idx < 3
                                    _1871 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                    _2164 = mem[64]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = msg.value
                                    mem[mem[64] + 96] = arg1
                                    mem[mem[64] + 128] = arg2
                                    mem[mem[64] + 160] = arg4
                                    mem[mem[64] + 224] = idx
                                    mem[mem[64] + 256] = address(stor5[idx])
                                    mem[mem[64] + 288] = msg.value * _1871 / 1000
                                    mem[mem[64] + 320] = block.timestamp
                                    mem[mem[64]] = 352
                                    mem[_2164 + 352] = 8
                                    mem[_2164 + 384] = 'dividend'
                                    mem[_2164 + 192] = 416
                                    mem[_2164 + 416] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[_2164 + t + 448] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                       mem[mem[64] len (32 * mem[96]) + _2164 + -mem[64] + 448],
                                    idx = idx + 1
                                    s = s + (msg.value * _1667 / 1000)
                                    continue 
                                uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                stor5.length = 0
                                idx = 0
                                while stor5.length > idx:
                                    uint256(stor5[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3401 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3401] = msg.sender
                                    mem[_3401 + 32] = msg.value
                                    mem[_3401 + 64] = 96
                                    mem[_3401 + 96] = arg4
                                    mem[_3401 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4479 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4479 + 256] = 7
                                        mem[_4479 + 288] = 'userBet'
                                        mem[_4479 + 192] = 320
                                        mem[_4479 + 320] = mem[96]
                                        mem[_4479 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4479 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5151 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5151 + 256] = 7
                                        mem[_5151 + 288] = 'userBet'
                                        mem[_5151 + 192] = 320
                                        mem[_5151 + 320] = mem[96]
                                        mem[_5151 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5151 + -mem[64] + 352],
                                else:
                                    uint256(stages[arg1].field_512)++
                                    stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                    mem[0] = arg1
                                    mem[32] = 9
                                    _3582 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3582] = msg.sender
                                    mem[_3582 + 32] = msg.value
                                    mem[_3582 + 64] = 96
                                    mem[_3582 + 96] = arg4
                                    mem[_3582 + 128] = block.timestamp
                                    uint256(userBets[arg1].field_0)++
                                    address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                    uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                    mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                    if not mem[96]:
                                        idx = 0
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _4484 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_4484 + 256] = 7
                                        mem[_4484 + 288] = 'userBet'
                                        mem[_4484 + 192] = 320
                                        mem[_4484 + 320] = mem[96]
                                        mem[_4484 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _4484 + -mem[64] + 352],
                                    else:
                                        s = 0
                                        idx = 128
                                        while (32 * mem[96]) + 128 > idx:
                                            uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                        while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                            uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                        _5156 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = block.timestamp
                                        mem[mem[64]] = 256
                                        mem[_5156 + 256] = 7
                                        mem[_5156 + 288] = 'userBet'
                                        mem[_5156 + 192] = 320
                                        mem[_5156 + 320] = mem[96]
                                        mem[_5156 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                        emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                          mem[mem[64] len (32 * mem[96]) + _5156 + -mem[64] + 352],
                            else:
                                mem[0] = users[users[address(msg.sender)]]
                                mem[32] = 8
                                if stor5.length > 3:
                                    revert with 0, 'User relationship error'
                                mem[(32 * arg3.length) + 128 len 96] = code.data[15119 len 96]
                                mem[64] = (32 * arg3.length) + 320
                                mem[(32 * arg3.length) + 224] = 5
                                mem[(32 * arg3.length) + 256] = 3
                                mem[(32 * arg3.length) + 288] = 2
                                if not users[users[users[address(msg.sender)]]]:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length:
                                        require idx < 3
                                        _1669 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        require idx < stor5.length
                                        require idx < 3
                                        call address(stor5[idx]) with:
                                           value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor5.length
                                        mem[0] = 5
                                        require idx < 3
                                        _1876 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        _2179 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = idx
                                        mem[mem[64] + 256] = address(stor5[idx])
                                        mem[mem[64] + 288] = msg.value * _1876 / 1000
                                        mem[mem[64] + 320] = block.timestamp
                                        mem[mem[64]] = 352
                                        mem[_2179 + 352] = 8
                                        mem[_2179 + 384] = 'dividend'
                                        mem[_2179 + 192] = 416
                                        mem[_2179 + 416] = mem[96]
                                        t = 0
                                        while t < 32 * mem[96]:
                                            mem[_2179 + t + 448] = mem[t + 128]
                                            t = t + 32
                                            continue 
                                        emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                           mem[mem[64] len (32 * mem[96]) + _2179 + -mem[64] + 448],
                                        idx = idx + 1
                                        s = s + (msg.value * _1669 / 1000)
                                        continue 
                                    uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                    stor5.length = 0
                                    idx = 0
                                    while stor5.length > idx:
                                        uint256(stor5[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                    if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3413 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3413] = msg.sender
                                        mem[_3413 + 32] = msg.value
                                        mem[_3413 + 64] = 96
                                        mem[_3413 + 96] = arg4
                                        mem[_3413 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4489 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4489 + 256] = 7
                                            mem[_4489 + 288] = 'userBet'
                                            mem[_4489 + 192] = 320
                                            mem[_4489 + 320] = mem[96]
                                            mem[_4489 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4489 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5161 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5161 + 256] = 7
                                            mem[_5161 + 288] = 'userBet'
                                            mem[_5161 + 192] = 320
                                            mem[_5161 + 320] = mem[96]
                                            mem[_5161 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5161 + -mem[64] + 352],
                                    else:
                                        uint256(stages[arg1].field_512)++
                                        stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3590 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3590] = msg.sender
                                        mem[_3590 + 32] = msg.value
                                        mem[_3590 + 64] = 96
                                        mem[_3590 + 96] = arg4
                                        mem[_3590 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4494 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4494 + 256] = 7
                                            mem[_4494 + 288] = 'userBet'
                                            mem[_4494 + 192] = 320
                                            mem[_4494 + 320] = mem[96]
                                            mem[_4494 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4494 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5166 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5166 + 256] = 7
                                            mem[_5166 + 288] = 'userBet'
                                            mem[_5166 + 192] = 320
                                            mem[_5166 + 320] = mem[96]
                                            mem[_5166 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5166 + -mem[64] + 352],
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length:
                                        require idx < 3
                                        _1671 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        require idx < stor5.length
                                        require idx < 3
                                        call address(stor5[idx]) with:
                                           value msg.value * mem[(32 * idx) + (32 * arg3.length) + 224] / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor5.length
                                        mem[0] = 5
                                        require idx < 3
                                        _1881 = mem[(32 * idx) + (32 * arg3.length) + 224]
                                        _2194 = mem[64]
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = msg.value
                                        mem[mem[64] + 96] = arg1
                                        mem[mem[64] + 128] = arg2
                                        mem[mem[64] + 160] = arg4
                                        mem[mem[64] + 224] = idx
                                        mem[mem[64] + 256] = address(stor5[idx])
                                        mem[mem[64] + 288] = msg.value * _1881 / 1000
                                        mem[mem[64] + 320] = block.timestamp
                                        mem[mem[64]] = 352
                                        mem[_2194 + 352] = 8
                                        mem[_2194 + 384] = 'dividend'
                                        mem[_2194 + 192] = 416
                                        mem[_2194 + 416] = mem[96]
                                        t = 0
                                        while t < 32 * mem[96]:
                                            mem[_2194 + t + 448] = mem[t + 128]
                                            t = t + 32
                                            continue 
                                        emit eventDividend(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11):
                                                           mem[mem[64] len (32 * mem[96]) + _2194 + -mem[64] + 448],
                                        idx = idx + 1
                                        s = s + (msg.value * _1671 / 1000)
                                        continue 
                                    uint256(stages[arg1].field_768) = uint256(stages[arg1].field_768) + msg.value - s
                                    stor5.length = 0
                                    idx = 0
                                    while stor5.length > idx:
                                        uint256(stor5[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                    if stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)]:
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3425 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3425] = msg.sender
                                        mem[_3425 + 32] = msg.value
                                        mem[_3425 + 64] = 96
                                        mem[_3425 + 96] = arg4
                                        mem[_3425 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4499 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4499 + 256] = 7
                                            mem[_4499 + 288] = 'userBet'
                                            mem[_4499 + 192] = 320
                                            mem[_4499 + 320] = mem[96]
                                            mem[_4499 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4499 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5171 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5171 + 256] = 7
                                            mem[_5171 + 288] = 'userBet'
                                            mem[_5171 + 192] = 320
                                            mem[_5171 + 320] = mem[96]
                                            mem[_5171 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5171 + -mem[64] + 352],
                                    else:
                                        uint256(stages[arg1].field_512)++
                                        stor10[arg1][uint256(stor7[arg1].field_0)][address(msg.sender)] = 1
                                        mem[0] = arg1
                                        mem[32] = 9
                                        _3598 = mem[64]
                                        mem[64] = mem[64] + 160
                                        mem[_3598] = msg.sender
                                        mem[_3598 + 32] = msg.value
                                        mem[_3598 + 64] = 96
                                        mem[_3598 + 96] = arg4
                                        mem[_3598 + 128] = block.timestamp
                                        uint256(userBets[arg1].field_0)++
                                        address(userBets[arg1][uint256(userBets[arg1].field_0)].field_0) = msg.sender
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_256) = msg.value
                                        uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) = mem[96]
                                        mem[0] = (5 * uint256(userBets[arg1].field_0)) + sha3(sha3(arg1, 9)) + 2
                                        if not mem[96]:
                                            idx = 0
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _4504 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_4504 + 256] = 7
                                            mem[_4504 + 288] = 'userBet'
                                            mem[_4504 + 192] = 320
                                            mem[_4504 + 320] = mem[96]
                                            mem[_4504 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _4504 + -mem[64] + 352],
                                        else:
                                            s = 0
                                            idx = 128
                                            while (32 * mem[96]) + 128 > idx:
                                                uint256(stor[s + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
                                            while uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_512) > idx:
                                                uint256(stor[idx + sha3((5 * uint256(userBets[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'userBets', 9)) + 2)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_768) = arg4
                                            uint256(userBets[arg1][uint256(userBets[arg1].field_0)].field_1024) = block.timestamp
                                            _5176 = mem[64]
                                            mem[mem[64] + 32] = msg.sender
                                            mem[mem[64] + 64] = msg.value
                                            mem[mem[64] + 96] = arg1
                                            mem[mem[64] + 128] = arg2
                                            mem[mem[64] + 160] = arg4
                                            mem[mem[64] + 224] = block.timestamp
                                            mem[mem[64]] = 256
                                            mem[_5176 + 256] = 7
                                            mem[_5176 + 288] = 'userBet'
                                            mem[_5176 + 192] = 320
                                            mem[_5176 + 320] = mem[96]
                                            mem[_5176 + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                            emit eventUserBet(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7, uint256 arg8):
                                                              mem[mem[64] len (32 * mem[96]) + _5176 + -mem[64] + 352],
}



}
