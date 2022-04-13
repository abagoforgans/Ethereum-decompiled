contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of struct stor5;
uint8 stor6;
array of struct stor8;

function _fallback() payable {
    mem[128] = 'LogValueBlockToken 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 22
    stor1.length.field_8 = 'LogValueBlockToken 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -5358] = code.data[6239 len -5358]
    stor0 = msg.sender
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = 2 * stor5.length + 1
        while 2 * stor5.length > idx:
            stor5[idx].field_0 = 0
            stor5[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor5[stor5.length].field_0 = mem[160]
    stor5[stor5.length].field_256 = block.number
    stor8[address(msg.sender)].field_0++
    if not stor8[address(msg.sender)].field_0 <= stor8[address(msg.sender)].field_0 + 1:
        idx = 2 * stor8[address(msg.sender)].field_0 + 1
        while 2 * stor8[address(msg.sender)].field_0 > idx:
            stor8[address(msg.sender)][idx].field_0 = 0
            stor8[address(msg.sender)][idx].field_256 = 0
            idx = idx + 2
            continue 
    stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 = mem[160]
    stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_256 = block.number
    stor2[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = 18
    stor6 = 0
    stor1[].field_0 = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    return code.data[881 len 5358]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
array of uint256 stor4;
array of struct loggedTotalSupply;
array of uint256 stor6;
array of uint256 stor7;
array of struct loggedBalances;
mapping of uint8 stor9;
mapping of struct rewards;
mapping of uint256 stor11;

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return stor7.length
}

function decimals() {
    return uint8(stor4.length)
}

function loggedBalances(address arg1, uint256 arg2) {
    require arg2 < loggedBalances[arg1].field_0
    return loggedBalances[arg1][arg2].field_0, loggedBalances[arg1][arg2].field_256
}

function standard() {
    return standard[0 len standard.length]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function loggedTotalSupply(uint256 arg1) {
    require arg1 < loggedTotalSupply.length
    return loggedTotalSupply[arg1].field_0, loggedTotalSupply[arg1].field_256
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function locked() {
    return bool(uint8(stor6.length))
}

function rewards(uint256 arg1) {
    require arg1 < rewards.length
    return rewards[arg1].field_0, 
           rewards[arg1].field_256,
           rewards[arg1].field_512,
           rewards[arg1].field_768,
           rewards[arg1].field_1024,
           rewards[arg1].field_1280,
           rewards[arg1].field_1536,
           rewards[arg1].field_1792,
           bool(uint8(rewards[arg1].field_2048))
}

function _fallback() payable {
    revert
}

function setLocked(bool arg1) {
    require owner == msg.sender
    uint8(stor6.length) = uint8(arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function recycleReward(uint256 arg1) {
    require owner == msg.sender
    if rewards.length - 1 < arg1:
        return 0
    require arg1 < rewards.length
    if uint8(rewards[arg1].field_2048):
        return 0
    uint8(rewards[arg1].field_2048) = 1
    return 1
}

function refundUnclaimedEthers(uint256 arg1) {
    require owner == msg.sender
    if rewards.length - 1 < arg1:
        return 0
    require arg1 < rewards.length
    if not uint8(rewards[arg1].field_2048):
        if block.timestamp < rewards[arg1].field_512 + rewards[arg1].field_1792:
            return 0
    rewards[arg1].field_1280 = rewards[arg1].field_768 - rewards[arg1].field_1024
    if rewards[arg1].field_768 - rewards[arg1].field_1024 <= 0:
        return 0
    call owner with:
       value rewards[arg1].field_768 - rewards[arg1].field_1024 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit UnclaimedRewardTransfer(arg1, rewards[arg1].field_768 - rewards[arg1].field_1024);
    return 1
}

function totalSupply() {
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedTotalSupply.length:
        return 0
    s = 160
    idx = 0
    s = 96
    while idx < loggedTotalSupply.length:
        mem[0] = 5
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16] = loggedTotalSupply[idx].field_0
        mem[_16 + 32] = loggedTotalSupply[idx].field_256
        if loggedTotalSupply[idx].field_256 <= block.number:
            s = _16
            idx = idx + 1
            s = _16
            continue 
        mem[mem[64]] = mem[s]
        return memory
          from mem[64]
           len 32
    mem[mem[64]] = mem[(_16 * loggedTotalSupply.length) + 96]
    return memory
      from mem[64]
       len 32
}

function balanceOf(address arg1) {
    if rewards.length <= 0:
        mem[0] = arg1
        mem[96] = 0
        mem[128] = 0
        mem[64] = 224
        mem[160] = 0
        mem[192] = 0
        if not loggedBalances[address(arg1)].field_0:
            return 0
        s = 160
        idx = 0
        s = 96
        while idx < loggedBalances[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 8)
            _38 = mem[64]
            mem[64] = mem[64] + 64
            mem[_38] = loggedBalances[address(arg1)][idx].field_0
            mem[_38 + 32] = loggedBalances[address(arg1)][idx].field_256
            if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                s = _38
                idx = idx + 1
                s = _38
                continue 
            mem[mem[64]] = mem[s]
            return memory
              from mem[64]
               len 32
        mem[mem[64]] = mem[(_38 * loggedBalances[address(arg1)].field_0) + 96]
    else:
        require 0 < rewards.length
        if uint8(rewards.field_2048):
            return 0
        if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
            return 0
        mem[0] = arg1
        mem[96] = 0
        mem[128] = 0
        mem[64] = 224
        mem[160] = 0
        mem[192] = 0
        if not loggedBalances[address(arg1)].field_0:
            return 0
        s = 160
        idx = 0
        s = 96
        while idx < loggedBalances[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 8)
            _40 = mem[64]
            mem[64] = mem[64] + 64
            mem[_40] = loggedBalances[address(arg1)][idx].field_0
            mem[_40 + 32] = loggedBalances[address(arg1)][idx].field_256
            if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                s = _40
                idx = idx + 1
                s = _40
                continue 
            mem[mem[64]] = mem[s]
            return memory
              from mem[64]
               len 32
        mem[mem[64]] = mem[(_40 * loggedBalances[address(arg1)].field_0) + 96]
    return memory
      from mem[64]
       len 32
}

function addReward(uint256 arg1) payable {
    require owner == msg.sender
    require msg.value > 0
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedTotalSupply.length:
        rewards.length++
        if not rewards.length <= rewards.length + 1:
            idx = (10 * rewards.length) + 10
            while 10 * rewards.length > idx:
                rewards[idx].field_0 = 0
                rewards[idx].field_256 = 0
                rewards[idx].field_512 = 0
                rewards[idx].field_768 = 0
                rewards[idx].field_1024 = 0
                rewards[idx].field_1280 = 0
                rewards[idx].field_1536 = 0
                rewards[idx].field_1792 = 0
                uint8(rewards[idx].field_2048) = 0
                idx = idx + 10
                continue 
        rewards[rewards.length].field_0 = rewards.length
        rewards[rewards.length].field_256 = block.number
        rewards[rewards.length].field_512 = block.timestamp
        rewards[rewards.length].field_768 = msg.value
        rewards[rewards.length].field_1024 = 0
        rewards[rewards.length].field_1280 = 0
        rewards[rewards.length].field_1536 = 0
        rewards[rewards.length].field_1792 = arg1
        uint8(rewards[rewards.length].field_2048) = 0
        emit RewardTransfered(rewards.length, block.number, msg.value, 0, msg.sender);
    else:
        s = 160
        idx = 0
        s = 96
        while idx < loggedTotalSupply.length:
            mem[0] = 5
            _91 = mem[64]
            mem[64] = mem[64] + 64
            mem[_91] = loggedTotalSupply[idx].field_0
            mem[_91 + 32] = loggedTotalSupply[idx].field_256
            if loggedTotalSupply[idx].field_256 <= block.number:
                s = _91
                idx = idx + 1
                s = _91
                continue 
            rewards.length++
            if not rewards.length <= rewards.length + 1:
                idx = sha3(10) + (10 * rewards.length) + 10
                while sha3(10) + (10 * rewards.length) > idx:
                    stor[idx] = 0
                    standard[idx] = 0
                    name[idx] = 0
                    symbol[idx] = 0
                    uint256(stor4[idx]) = 0
                    loggedTotalSupply[idx].field_0 = 0
                    uint256(stor6[idx]) = 0
                    stor7[idx] = 0
                    uint8(loggedBalances[idx].field_0) = 0
                    idx = idx + 10
                    continue 
            rewards[rewards.length].field_0 = rewards.length
            rewards[rewards.length].field_256 = block.number
            rewards[rewards.length].field_512 = block.timestamp
            rewards[rewards.length].field_768 = msg.value
            rewards[rewards.length].field_1024 = 0
            rewards[rewards.length].field_1280 = 0
            rewards[rewards.length].field_1536 = mem[s]
            rewards[rewards.length].field_1792 = arg1
            uint8(rewards[rewards.length].field_2048) = 0
            emit RewardTransfered(rewards.length, block.number, msg.value, mem[s], msg.sender);
        rewards.length++
        if not rewards.length <= rewards.length + 1:
            idx = (10 * rewards.length) + 10
            while 10 * rewards.length > idx:
                rewards[idx].field_0 = 0
                rewards[idx].field_256 = 0
                rewards[idx].field_512 = 0
                rewards[idx].field_768 = 0
                rewards[idx].field_1024 = 0
                rewards[idx].field_1280 = 0
                rewards[idx].field_1536 = 0
                rewards[idx].field_1792 = 0
                uint8(rewards[idx].field_2048) = 0
                idx = idx + 10
                continue 
        rewards[rewards.length].field_0 = rewards.length
        rewards[rewards.length].field_256 = block.number
        rewards[rewards.length].field_512 = block.timestamp
        rewards[rewards.length].field_768 = msg.value
        rewards[rewards.length].field_1024 = 0
        rewards[rewards.length].field_1280 = 0
        rewards[rewards.length].field_1536 = mem[s]
        rewards[rewards.length].field_1792 = arg1
        uint8(rewards[rewards.length].field_2048) = 0
        emit RewardTransfered(rewards.length, block.number, msg.value, mem[s], msg.sender);
}

function claimRewards() payable {
    mem[64] = 96
    require not msg.value
    if stor11[address(msg.sender)] < rewards.length:
        mem[0] = msg.sender
        mem[32] = 11
        idx = stor[sha3(mem[0 len 64])]
        while idx < rewards.length:
            mem[0] = msg.sender
            mem[32] = (10 * idx) + sha3(10) + 9
            if not uint8(stor[(10 * idx) + ('name', 'rewards', 10) + 9][address(msg.sender)].field_0):
                require idx < rewards.length
                mem[0] = 10
                if not uint8(rewards[idx].field_2048):
                    mem[0] = msg.sender
                    mem[32] = 11
                    stor11[address(msg.sender)] = idx + 1
                    if rewards.length - 1 >= idx:
                        require idx < rewards.length
                        mem[0] = msg.sender
                        mem[32] = (10 * idx) + sha3(10) + 9
                        if bool(uint8(stor[(10 * idx) + ('name', 'rewards', 10) + 9][address(msg.sender)].field_0)) != 1:
                            if bool(uint8(rewards[idx].field_2048)) != 1:
                                if block.timestamp < rewards[idx].field_512 + rewards[idx].field_1792:
                                    mem[0] = msg.sender
                                    mem[32] = 8
                                    _62 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_62] = 0
                                    mem[_62 + 32] = 0
                                    _63 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_63] = 0
                                    mem[_63 + 32] = 0
                                    if loggedBalances[address(msg.sender)].field_0:
                                        t = _63
                                        s = 0
                                        t = _62
                                        while s < loggedBalances[address(msg.sender)].field_0:
                                            mem[0] = sha3(address(msg.sender), 8)
                                            _109 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_109] = loggedBalances[address(msg.sender)][s].field_0
                                            mem[_109 + 32] = loggedBalances[address(msg.sender)][s].field_256
                                            if loggedBalances[address(msg.sender)][s].field_256 <= rewards[idx].field_256:
                                                t = _109
                                                s = s + 1
                                                t = _109
                                                continue 
                                            _111 = mem[t]
                                            if mem[t]:
                                                require rewards[idx].field_1536
                                                mem[0] = msg.sender
                                                mem[32] = (10 * idx) + sha3(10) + 9
                                                uint8(stor[(10 * idx) + ('name', 'rewards', 10) + 9][address(msg.sender)].field_0) = 1
                                                rewards[idx].field_1024 += _111 * rewards[idx].field_768 / rewards[idx].field_1536
                                                if _111 * rewards[idx].field_768 / rewards[idx].field_1536 > 0:
                                                    mem[32] = 8
                                                    loggedBalances[address(msg.sender)].field_0++
                                                    if not loggedBalances[address(msg.sender)].field_0 > loggedBalances[address(msg.sender)].field_0 + 1:
                                                        mem[0] = sha3(address(msg.sender), 8)
                                                        _125 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_125] = 0
                                                        mem[_125 + 32] = block.number
                                                    else:
                                                        s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                                            stor[s] = 0
                                                            standard[s] = 0
                                                            s = s + 2
                                                            continue 
                                                        mem[0] = sha3(address(msg.sender), 8)
                                                        _155 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_155] = 0
                                                        mem[_155 + 32] = block.number
                                                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = 0
                                                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                                                    mem[mem[64]] = idx
                                                    mem[mem[64] + 32] = _111 * rewards[idx].field_768 / rewards[idx].field_1536
                                                    emit RewardClaimed(idx, _111 * rewards[idx].field_768 / rewards[idx].field_1536, msg.sender);
                                                    call msg.sender with:
                                                       value _111 * rewards[idx].field_768 / rewards[idx].field_1536 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                            idx = idx + 1
                                            continue 
                                        _107 = mem[t]
                                        if mem[t]:
                                            require rewards[idx].field_1536
                                            mem[0] = msg.sender
                                            mem[32] = (10 * idx) + sha3(10) + 9
                                            uint8(stor[(10 * idx) + ('name', 'rewards', 10) + 9][address(msg.sender)].field_0) = 1
                                            rewards[idx].field_1024 += _107 * rewards[idx].field_768 / rewards[idx].field_1536
                                            if _107 * rewards[idx].field_768 / rewards[idx].field_1536 > 0:
                                                mem[32] = 8
                                                loggedBalances[address(msg.sender)].field_0++
                                                if not loggedBalances[address(msg.sender)].field_0 > loggedBalances[address(msg.sender)].field_0 + 1:
                                                    mem[0] = sha3(address(msg.sender), 8)
                                                    _118 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_118] = 0
                                                    mem[_118 + 32] = block.number
                                                else:
                                                    s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                                        stor[s] = 0
                                                        standard[s] = 0
                                                        s = s + 2
                                                        continue 
                                                    mem[0] = sha3(address(msg.sender), 8)
                                                    _152 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_152] = 0
                                                    mem[_152 + 32] = block.number
                                                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = 0
                                                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                                                mem[mem[64]] = idx
                                                mem[mem[64] + 32] = _107 * rewards[idx].field_768 / rewards[idx].field_1536
                                                emit RewardClaimed(idx, _107 * rewards[idx].field_768 / rewards[idx].field_1536, msg.sender);
                                                call msg.sender with:
                                                   value _107 * rewards[idx].field_768 / rewards[idx].field_1536 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
            idx = idx + 1
            continue 
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.length)
    mem[0] = msg.sender
    mem[32] = 8
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(msg.sender)].field_0:
        mem[0] = arg1
        mem[32] = 8
        mem[224] = 0
        mem[256] = 0
        mem[64] = 352
        mem[288] = 0
        mem[320] = 0
        if not loggedBalances[address(arg1)].field_0:
            require arg2
            require bool(stor9[address(msg.sender)]) != 1
            require 0 >= arg2
            require arg2 > 0
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = -arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2
        else:
            s = 288
            idx = 0
            s = 224
            while idx < loggedBalances[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 8)
                _391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_391] = loggedBalances[address(arg1)][idx].field_0
                mem[_391 + 32] = loggedBalances[address(arg1)][idx].field_256
                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                    s = _391
                    idx = idx + 1
                    s = _391
                    continue 
                require arg2
                require bool(stor9[address(msg.sender)]) != 1
                require 0 >= arg2
                require mem[s] + arg2 > mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = -arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                emit Transfer(arg2, msg.sender, arg1);
            require arg2
            require bool(stor9[address(msg.sender)]) != 1
            require 0 >= arg2
            require mem[s] + arg2 > mem[s]
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = -arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
    else:
        s = 160
        idx = 0
        s = 96
        while idx < loggedBalances[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 8)
            _389 = mem[64]
            mem[64] = mem[64] + 64
            mem[_389] = loggedBalances[address(msg.sender)][idx].field_0
            mem[_389 + 32] = loggedBalances[address(msg.sender)][idx].field_256
            if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                s = _389
                idx = idx + 1
                s = _389
                continue 
            _393 = mem[s]
            mem[0] = arg1
            mem[32] = 8
            _412 = mem[64]
            mem[64] = mem[64] + 64
            mem[_412] = 0
            mem[_412 + 32] = 0
            _415 = mem[64]
            mem[64] = mem[64] + 64
            mem[_415] = 0
            mem[_415 + 32] = 0
            if not loggedBalances[address(arg1)].field_0:
                require arg2
                require bool(stor9[address(msg.sender)]) != 1
                require _393 >= arg2
                require arg2 > 0
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _393 - arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2
            else:
                s = _415
                idx = 0
                s = _412
                while idx < loggedBalances[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 8)
                    _752 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_752] = loggedBalances[address(arg1)][idx].field_0
                    mem[_752 + 32] = loggedBalances[address(arg1)][idx].field_256
                    if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                        s = _752
                        idx = idx + 1
                        s = _752
                        continue 
                    require arg2
                    require bool(stor9[address(msg.sender)]) != 1
                    require _393 >= arg2
                    require mem[s] + arg2 > mem[s]
                    loggedBalances[address(msg.sender)].field_0++
                    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                        idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _393 - arg2
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    emit Transfer(arg2, msg.sender, arg1);
                require arg2
                require bool(stor9[address(msg.sender)]) != 1
                require _393 >= arg2
                require mem[s] + arg2 > mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _393 - arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            emit Transfer(arg2, msg.sender, arg1);
        _384 = mem[s]
        mem[0] = arg1
        mem[32] = 8
        _396 = mem[64]
        mem[64] = mem[64] + 64
        mem[_396] = 0
        mem[_396 + 32] = 0
        _409 = mem[64]
        mem[64] = mem[64] + 64
        mem[_409] = 0
        mem[_409 + 32] = 0
        if not loggedBalances[address(arg1)].field_0:
            require arg2
            require bool(stor9[address(msg.sender)]) != 1
            require _384 >= arg2
            require arg2 > 0
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _384 - arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2
        else:
            s = _409
            idx = 0
            s = _396
            while idx < loggedBalances[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 8)
                _750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_750] = loggedBalances[address(arg1)][idx].field_0
                mem[_750 + 32] = loggedBalances[address(arg1)][idx].field_256
                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                    s = _750
                    idx = idx + 1
                    s = _750
                    continue 
                require arg2
                require bool(stor9[address(msg.sender)]) != 1
                require _384 >= arg2
                require mem[s] + arg2 > mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _384 - arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                emit Transfer(arg2, msg.sender, arg1);
            require arg2
            require bool(stor9[address(msg.sender)]) != 1
            require _384 >= arg2
            require mem[s] + arg2 > mem[s]
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _384 - arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
    emit Transfer(arg2, msg.sender, arg1);
}

function recover(address arg1, address arg2) {
    require owner == msg.sender
    if rewards.length <= 0:
        mem[0] = arg1
        mem[32] = 8
        mem[96] = 0
        mem[128] = 0
        mem[64] = 224
        mem[160] = 0
        mem[192] = 0
        if not loggedBalances[address(arg1)].field_0:
            if rewards.length <= 0:
                mem[0] = arg1
                mem[32] = 8
                mem[224] = 0
                mem[256] = 0
                mem[64] = 352
                mem[288] = 0
                mem[320] = 0
                if not loggedBalances[address(arg1)].field_0:
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                else:
                    s = 288
                    idx = 0
                    s = 224
                    while idx < loggedBalances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 8)
                        _3120 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3120] = loggedBalances[address(arg1)][idx].field_0
                        mem[_3120 + 32] = loggedBalances[address(arg1)][idx].field_256
                        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                            s = _3120
                            idx = idx + 1
                            s = _3120
                            continue 
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                        emit AddressRecovered(arg1, arg2);
                        emit Transfer(0, arg1, arg2);
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
            else:
                require 0 < rewards.length
                if uint8(rewards.field_2048):
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                else:
                    if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                            while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                loggedBalances[address(arg1)][idx].field_0 = 0
                                loggedBalances[address(arg1)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                            while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                loggedBalances[address(arg2)][idx].field_0 = 0
                                loggedBalances[address(arg2)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[224] = 0
                        mem[256] = 0
                        mem[64] = 352
                        mem[288] = 0
                        mem[320] = 0
                        if not loggedBalances[address(arg1)].field_0:
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                        else:
                            s = 288
                            idx = 0
                            s = 224
                            while idx < loggedBalances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 8)
                                _3122 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3122] = loggedBalances[address(arg1)][idx].field_0
                                mem[_3122 + 32] = loggedBalances[address(arg1)][idx].field_256
                                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                    s = _3122
                                    idx = idx + 1
                                    s = _3122
                                    continue 
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(0, arg1, arg2);
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
            emit AddressRecovered(arg1, arg2);
            emit Transfer(0, arg1, arg2);
        else:
            s = 160
            idx = 0
            s = 96
            while idx < loggedBalances[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 8)
                _3118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3118] = loggedBalances[address(arg1)][idx].field_0
                mem[_3118 + 32] = loggedBalances[address(arg1)][idx].field_256
                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                    s = _3118
                    idx = idx + 1
                    s = _3118
                    continue 
                _3138 = mem[s]
                if rewards.length <= 0:
                    mem[0] = arg1
                    mem[32] = 8
                    _3450 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3450] = 0
                    mem[_3450 + 32] = 0
                    _3561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3561] = 0
                    mem[_3561 + 32] = 0
                    if not loggedBalances[address(arg1)].field_0:
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3138
                    else:
                        s = _3561
                        idx = 0
                        s = _3450
                        while idx < loggedBalances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 8)
                            _5924 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5924] = loggedBalances[address(arg1)][idx].field_0
                            mem[_5924 + 32] = loggedBalances[address(arg1)][idx].field_256
                            if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                s = _5924
                                idx = idx + 1
                                s = _5924
                                continue 
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3138
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                            emit AddressRecovered(arg1, arg2);
                            emit Transfer(_3138, arg1, arg2);
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3138
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                    emit AddressRecovered(arg1, arg2);
                    emit Transfer(_3138, arg1, arg2);
                else:
                    require 0 < rewards.length
                    if uint8(rewards.field_2048):
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                        emit AddressRecovered(arg1, arg2);
                        emit Transfer(mem[s], arg1, arg2);
                    else:
                        if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                            emit AddressRecovered(arg1, arg2);
                            emit Transfer(mem[s], arg1, arg2);
                        else:
                            mem[0] = arg1
                            mem[32] = 8
                            _3678 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3678] = 0
                            mem[_3678 + 32] = 0
                            _3739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3739] = 0
                            mem[_3739 + 32] = 0
                            if not loggedBalances[address(arg1)].field_0:
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3138
                            else:
                                s = _3739
                                idx = 0
                                s = _3678
                                while idx < loggedBalances[address(arg1)].field_0:
                                    mem[0] = sha3(address(arg1), 8)
                                    _5926 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5926] = loggedBalances[address(arg1)][idx].field_0
                                    mem[_5926 + 32] = loggedBalances[address(arg1)][idx].field_256
                                    if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                        s = _5926
                                        idx = idx + 1
                                        s = _5926
                                        continue 
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                        while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3138
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                    emit AddressRecovered(arg1, arg2);
                                    emit Transfer(_3138, arg1, arg2);
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3138
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                            emit AddressRecovered(arg1, arg2);
                            emit Transfer(_3138, arg1, arg2);
            _3098 = mem[s]
            if rewards.length <= 0:
                mem[0] = arg1
                mem[32] = 8
                _3384 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3384] = 0
                mem[_3384 + 32] = 0
                _3446 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3446] = 0
                mem[_3446 + 32] = 0
                if not loggedBalances[address(arg1)].field_0:
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3098
                else:
                    s = _3446
                    idx = 0
                    s = _3384
                    while idx < loggedBalances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 8)
                        _5920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5920] = loggedBalances[address(arg1)][idx].field_0
                        mem[_5920 + 32] = loggedBalances[address(arg1)][idx].field_256
                        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                            s = _5920
                            idx = idx + 1
                            s = _5920
                            continue 
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3098
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                        emit AddressRecovered(arg1, arg2);
                        emit Transfer(_3098, arg1, arg2);
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3098
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                emit AddressRecovered(arg1, arg2);
                emit Transfer(_3098, arg1, arg2);
            else:
                require 0 < rewards.length
                if uint8(rewards.field_2048):
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                    emit AddressRecovered(arg1, arg2);
                    emit Transfer(mem[s], arg1, arg2);
                else:
                    if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                            while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                loggedBalances[address(arg1)][idx].field_0 = 0
                                loggedBalances[address(arg1)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                            while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                loggedBalances[address(arg2)][idx].field_0 = 0
                                loggedBalances[address(arg2)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                        emit AddressRecovered(arg1, arg2);
                        emit Transfer(mem[s], arg1, arg2);
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        _3476 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3476] = 0
                        mem[_3476 + 32] = 0
                        _3575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3575] = 0
                        mem[_3575 + 32] = 0
                        if not loggedBalances[address(arg1)].field_0:
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3098
                        else:
                            s = _3575
                            idx = 0
                            s = _3476
                            while idx < loggedBalances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 8)
                                _5922 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5922] = loggedBalances[address(arg1)][idx].field_0
                                mem[_5922 + 32] = loggedBalances[address(arg1)][idx].field_256
                                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                    s = _5922
                                    idx = idx + 1
                                    s = _5922
                                    continue 
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3098
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(_3098, arg1, arg2);
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3098
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                        emit AddressRecovered(arg1, arg2);
                        emit Transfer(_3098, arg1, arg2);
    else:
        require 0 < rewards.length
        if uint8(rewards.field_2048):
            if rewards.length <= 0:
                mem[0] = arg1
                mem[32] = 8
                mem[96] = 0
                mem[128] = 0
                mem[64] = 224
                mem[160] = 0
                mem[192] = 0
                if not loggedBalances[address(arg1)].field_0:
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                else:
                    s = 160
                    idx = 0
                    s = 96
                    while idx < loggedBalances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 8)
                        _3134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3134] = loggedBalances[address(arg1)][idx].field_0
                        mem[_3134 + 32] = loggedBalances[address(arg1)][idx].field_256
                        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                            s = _3134
                            idx = idx + 1
                            s = _3134
                            continue 
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                        emit AddressRecovered(arg1, arg2);
                        emit Transfer(0, arg1, arg2);
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
            else:
                require 0 < rewards.length
                if uint8(rewards.field_2048):
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                            loggedBalances[address(arg1)][idx].field_0 = 0
                            loggedBalances[address(arg1)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                            loggedBalances[address(arg2)][idx].field_0 = 0
                            loggedBalances[address(arg2)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                else:
                    if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                            while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                loggedBalances[address(arg1)][idx].field_0 = 0
                                loggedBalances[address(arg1)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                            while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                loggedBalances[address(arg2)][idx].field_0 = 0
                                loggedBalances[address(arg2)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[96] = 0
                        mem[128] = 0
                        mem[64] = 224
                        mem[160] = 0
                        mem[192] = 0
                        if not loggedBalances[address(arg1)].field_0:
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                        else:
                            s = 160
                            idx = 0
                            s = 96
                            while idx < loggedBalances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 8)
                                _3136 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3136] = loggedBalances[address(arg1)][idx].field_0
                                mem[_3136 + 32] = loggedBalances[address(arg1)][idx].field_256
                                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                    s = _3136
                                    idx = idx + 1
                                    s = _3136
                                    continue 
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(0, arg1, arg2);
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
            emit AddressRecovered(arg1, arg2);
            emit Transfer(0, arg1, arg2);
        else:
            if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                if rewards.length <= 0:
                    mem[0] = arg1
                    mem[32] = 8
                    mem[96] = 0
                    mem[128] = 0
                    mem[64] = 224
                    mem[160] = 0
                    mem[192] = 0
                    if not loggedBalances[address(arg1)].field_0:
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                            while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                loggedBalances[address(arg1)][idx].field_0 = 0
                                loggedBalances[address(arg1)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                            while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                loggedBalances[address(arg2)][idx].field_0 = 0
                                loggedBalances[address(arg2)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                    else:
                        s = 160
                        idx = 0
                        s = 96
                        while idx < loggedBalances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 8)
                            _3130 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3130] = loggedBalances[address(arg1)][idx].field_0
                            mem[_3130 + 32] = loggedBalances[address(arg1)][idx].field_256
                            if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                s = _3130
                                idx = idx + 1
                                s = _3130
                                continue 
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                            emit AddressRecovered(arg1, arg2);
                            emit Transfer(0, arg1, arg2);
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                            while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                loggedBalances[address(arg1)][idx].field_0 = 0
                                loggedBalances[address(arg1)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                            while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                loggedBalances[address(arg2)][idx].field_0 = 0
                                loggedBalances[address(arg2)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                else:
                    require 0 < rewards.length
                    if uint8(rewards.field_2048):
                        loggedBalances[address(arg1)].field_0++
                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                            while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                loggedBalances[address(arg1)][idx].field_0 = 0
                                loggedBalances[address(arg1)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                        loggedBalances[address(arg2)].field_0++
                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                            idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                            while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                loggedBalances[address(arg2)][idx].field_0 = 0
                                loggedBalances[address(arg2)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                    else:
                        if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                        else:
                            mem[0] = arg1
                            mem[32] = 8
                            mem[96] = 0
                            mem[128] = 0
                            mem[64] = 224
                            mem[160] = 0
                            mem[192] = 0
                            if not loggedBalances[address(arg1)].field_0:
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                    while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                        loggedBalances[address(arg1)][idx].field_0 = 0
                                        loggedBalances[address(arg1)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                    while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                        loggedBalances[address(arg2)][idx].field_0 = 0
                                        loggedBalances[address(arg2)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                            else:
                                s = 160
                                idx = 0
                                s = 96
                                while idx < loggedBalances[address(arg1)].field_0:
                                    mem[0] = sha3(address(arg1), 8)
                                    _3132 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3132] = loggedBalances[address(arg1)][idx].field_0
                                    mem[_3132 + 32] = loggedBalances[address(arg1)][idx].field_256
                                    if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                        s = _3132
                                        idx = idx + 1
                                        s = _3132
                                        continue 
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                        while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                    emit AddressRecovered(arg1, arg2);
                                    emit Transfer(0, arg1, arg2);
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                    while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                        loggedBalances[address(arg1)][idx].field_0 = 0
                                        loggedBalances[address(arg1)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                    while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                        loggedBalances[address(arg2)][idx].field_0 = 0
                                        loggedBalances[address(arg2)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                emit AddressRecovered(arg1, arg2);
                emit Transfer(0, arg1, arg2);
            else:
                mem[0] = arg1
                mem[32] = 8
                mem[96] = 0
                mem[128] = 0
                mem[64] = 224
                mem[160] = 0
                mem[192] = 0
                if not loggedBalances[address(arg1)].field_0:
                    if rewards.length <= 0:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[224] = 0
                        mem[256] = 0
                        mem[64] = 352
                        mem[288] = 0
                        mem[320] = 0
                        if not loggedBalances[address(arg1)].field_0:
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                        else:
                            s = 288
                            idx = 0
                            s = 224
                            while idx < loggedBalances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 8)
                                _3126 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3126] = loggedBalances[address(arg1)][idx].field_0
                                mem[_3126 + 32] = loggedBalances[address(arg1)][idx].field_256
                                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                    s = _3126
                                    idx = idx + 1
                                    s = _3126
                                    continue 
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(0, arg1, arg2);
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                    else:
                        require 0 < rewards.length
                        if uint8(rewards.field_2048):
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                        else:
                            if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                    while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                        loggedBalances[address(arg1)][idx].field_0 = 0
                                        loggedBalances[address(arg1)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                    while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                        loggedBalances[address(arg2)][idx].field_0 = 0
                                        loggedBalances[address(arg2)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                            else:
                                mem[0] = arg1
                                mem[32] = 8
                                mem[224] = 0
                                mem[256] = 0
                                mem[64] = 352
                                mem[288] = 0
                                mem[320] = 0
                                if not loggedBalances[address(arg1)].field_0:
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                            loggedBalances[address(arg1)][idx].field_0 = 0
                                            loggedBalances[address(arg1)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                            loggedBalances[address(arg2)][idx].field_0 = 0
                                            loggedBalances[address(arg2)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = 0
                                else:
                                    s = 288
                                    idx = 0
                                    s = 224
                                    while idx < loggedBalances[address(arg1)].field_0:
                                        mem[0] = sha3(address(arg1), 8)
                                        _3128 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3128] = loggedBalances[address(arg1)][idx].field_0
                                        mem[_3128 + 32] = loggedBalances[address(arg1)][idx].field_256
                                        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                            s = _3128
                                            idx = idx + 1
                                            s = _3128
                                            continue 
                                        loggedBalances[address(arg1)].field_0++
                                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                        loggedBalances[address(arg2)].field_0++
                                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                        emit AddressRecovered(arg1, arg2);
                                        emit Transfer(0, arg1, arg2);
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                            loggedBalances[address(arg1)][idx].field_0 = 0
                                            loggedBalances[address(arg1)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                            loggedBalances[address(arg2)][idx].field_0 = 0
                                            loggedBalances[address(arg2)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                    emit AddressRecovered(arg1, arg2);
                    emit Transfer(0, arg1, arg2);
                else:
                    s = 160
                    idx = 0
                    s = 96
                    while idx < loggedBalances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 8)
                        _3124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3124] = loggedBalances[address(arg1)][idx].field_0
                        mem[_3124 + 32] = loggedBalances[address(arg1)][idx].field_256
                        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                            s = _3124
                            idx = idx + 1
                            s = _3124
                            continue 
                        _3141 = mem[s]
                        if rewards.length <= 0:
                            mem[0] = arg1
                            mem[32] = 8
                            _3457 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3457] = 0
                            mem[_3457 + 32] = 0
                            _3566 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3566] = 0
                            mem[_3566 + 32] = 0
                            if not loggedBalances[address(arg1)].field_0:
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3141
                            else:
                                s = _3566
                                idx = 0
                                s = _3457
                                while idx < loggedBalances[address(arg1)].field_0:
                                    mem[0] = sha3(address(arg1), 8)
                                    _5932 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5932] = loggedBalances[address(arg1)][idx].field_0
                                    mem[_5932 + 32] = loggedBalances[address(arg1)][idx].field_256
                                    if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                        s = _5932
                                        idx = idx + 1
                                        s = _5932
                                        continue 
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                        while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3141
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                    emit AddressRecovered(arg1, arg2);
                                    emit Transfer(_3141, arg1, arg2);
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3141
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                            emit AddressRecovered(arg1, arg2);
                            emit Transfer(_3141, arg1, arg2);
                        else:
                            require 0 < rewards.length
                            if uint8(rewards.field_2048):
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(mem[s], arg1, arg2);
                            else:
                                if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                        while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                            stor[idx] = 0
                                            standard[idx] = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                    emit AddressRecovered(arg1, arg2);
                                    emit Transfer(mem[s], arg1, arg2);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    _3684 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3684] = 0
                                    mem[_3684 + 32] = 0
                                    _3776 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3776] = 0
                                    mem[_3776 + 32] = 0
                                    if not loggedBalances[address(arg1)].field_0:
                                        loggedBalances[address(arg1)].field_0++
                                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                        loggedBalances[address(arg2)].field_0++
                                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3141
                                    else:
                                        s = _3776
                                        idx = 0
                                        s = _3684
                                        while idx < loggedBalances[address(arg1)].field_0:
                                            mem[0] = sha3(address(arg1), 8)
                                            _5934 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5934] = loggedBalances[address(arg1)][idx].field_0
                                            mem[_5934 + 32] = loggedBalances[address(arg1)][idx].field_256
                                            if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                                s = _5934
                                                idx = idx + 1
                                                s = _5934
                                                continue 
                                            loggedBalances[address(arg1)].field_0++
                                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                                idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                                while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                                    stor[idx] = 0
                                                    standard[idx] = 0
                                                    idx = idx + 2
                                                    continue 
                                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                            loggedBalances[address(arg2)].field_0++
                                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                                idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                                while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                                    stor[idx] = 0
                                                    standard[idx] = 0
                                                    idx = idx + 2
                                                    continue 
                                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3141
                                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                            emit AddressRecovered(arg1, arg2);
                                            emit Transfer(_3141, arg1, arg2);
                                        loggedBalances[address(arg1)].field_0++
                                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                        loggedBalances[address(arg2)].field_0++
                                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3141
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                    emit AddressRecovered(arg1, arg2);
                                    emit Transfer(_3141, arg1, arg2);
                    _3101 = mem[s]
                    if rewards.length <= 0:
                        mem[0] = arg1
                        mem[32] = 8
                        _3387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3387] = 0
                        mem[_3387 + 32] = 0
                        _3448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3448] = 0
                        mem[_3448 + 32] = 0
                        if not loggedBalances[address(arg1)].field_0:
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3101
                        else:
                            s = _3448
                            idx = 0
                            s = _3387
                            while idx < loggedBalances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 8)
                                _5928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5928] = loggedBalances[address(arg1)][idx].field_0
                                mem[_5928 + 32] = loggedBalances[address(arg1)][idx].field_256
                                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                    s = _5928
                                    idx = idx + 1
                                    s = _5928
                                    continue 
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                        stor[idx] = 0
                                        standard[idx] = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3101
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(_3101, arg1, arg2);
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3101
                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                        emit AddressRecovered(arg1, arg2);
                        emit Transfer(_3101, arg1, arg2);
                    else:
                        require 0 < rewards.length
                        if uint8(rewards.field_2048):
                            loggedBalances[address(arg1)].field_0++
                            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                    loggedBalances[address(arg1)][idx].field_0 = 0
                                    loggedBalances[address(arg1)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                            loggedBalances[address(arg2)].field_0++
                            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                    loggedBalances[address(arg2)][idx].field_0 = 0
                                    loggedBalances[address(arg2)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                            emit AddressRecovered(arg1, arg2);
                            emit Transfer(mem[s], arg1, arg2);
                        else:
                            if block.timestamp >= uint256(rewards.field_512) + uint256(rewards.field_1792):
                                loggedBalances[address(arg1)].field_0++
                                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                    while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                        loggedBalances[address(arg1)][idx].field_0 = 0
                                        loggedBalances[address(arg1)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                loggedBalances[address(arg2)].field_0++
                                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                    idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                    while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                        loggedBalances[address(arg2)][idx].field_0 = 0
                                        loggedBalances[address(arg2)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s]
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(mem[s], arg1, arg2);
                            else:
                                mem[0] = arg1
                                mem[32] = 8
                                _3498 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3498] = 0
                                mem[_3498 + 32] = 0
                                _3602 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3602] = 0
                                mem[_3602 + 32] = 0
                                if not loggedBalances[address(arg1)].field_0:
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                            loggedBalances[address(arg1)][idx].field_0 = 0
                                            loggedBalances[address(arg1)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                            loggedBalances[address(arg2)][idx].field_0 = 0
                                            loggedBalances[address(arg2)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = _3101
                                else:
                                    s = _3602
                                    idx = 0
                                    s = _3498
                                    while idx < loggedBalances[address(arg1)].field_0:
                                        mem[0] = sha3(address(arg1), 8)
                                        _5930 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5930] = loggedBalances[address(arg1)][idx].field_0
                                        mem[_5930 + 32] = loggedBalances[address(arg1)][idx].field_256
                                        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                                            s = _5930
                                            idx = idx + 1
                                            s = _5930
                                            continue 
                                        loggedBalances[address(arg1)].field_0++
                                        if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                            idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                                            while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                        loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                        loggedBalances[address(arg2)].field_0++
                                        if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                            idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                                            while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                                                stor[idx] = 0
                                                standard[idx] = 0
                                                idx = idx + 2
                                                continue 
                                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3101
                                        loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                        emit AddressRecovered(arg1, arg2);
                                        emit Transfer(_3101, arg1, arg2);
                                    loggedBalances[address(arg1)].field_0++
                                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                                        while 2 * loggedBalances[address(arg1)].field_0 > idx:
                                            loggedBalances[address(arg1)][idx].field_0 = 0
                                            loggedBalances[address(arg1)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = 0
                                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                                    loggedBalances[address(arg2)].field_0++
                                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                                        idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                                        while 2 * loggedBalances[address(arg2)].field_0 > idx:
                                            loggedBalances[address(arg2)][idx].field_0 = 0
                                            loggedBalances[address(arg2)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = mem[s] + _3101
                                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                                emit AddressRecovered(arg1, arg2);
                                emit Transfer(_3101, arg1, arg2);
}



}
