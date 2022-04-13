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
    mem[160 len -6253] = code.data[7134 len -6253]
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
    return code.data[881 len 6253]
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
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of struct rewards;
mapping of uint256 stor12;

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
    return bool(stor10[arg1])
}

function locked() {
    return bool(uint8(stor6.length))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
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

function approve(address arg1, uint256 arg2) {
    if uint8(stor6.length):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if uint8(stor6.length):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
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

function claimReward(uint256 arg1) {
    if rewards.length - 1 < arg1:
        return 0
    require arg1 < rewards.length
    if 1 == bool(uint8(stor[(10 * arg1) + ('name', 'rewards', 11) + 9][address(msg.sender)].field_0)):
        return 0
    if 1 == bool(uint8(rewards[arg1].field_2048)):
        return 0
    if block.timestamp >= rewards[arg1].field_512 + rewards[arg1].field_1792:
        return 0
    mem[0] = msg.sender
    mem[32] = 8
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(msg.sender)].field_0:
        return 0
    s = 160
    idx = 0
    s = 96
    while idx < loggedBalances[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 8)
        _77 = mem[64]
        mem[64] = mem[64] + 64
        mem[_77] = loggedBalances[address(msg.sender)][idx].field_0
        mem[_77 + 32] = loggedBalances[address(msg.sender)][idx].field_256
        if loggedBalances[address(msg.sender)][idx].field_256 <= rewards[arg1].field_256:
            s = _77
            idx = idx + 1
            s = _77
            continue 
        if not mem[s]:
            return 0
        require rewards[arg1].field_1536
        uint8(stor[(10 * arg1) + ('name', 'rewards', 11) + 9][address(msg.sender)].field_0) = 1
        rewards[arg1].field_1024 += mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536
        if mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536 <= 0:
            return 0
        loggedBalances[address(msg.sender)].field_0++
        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
            idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                stor[idx] = 0
                standard[idx] = 0
                idx = idx + 2
                continue 
        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = 0
        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
        emit RewardClaimed(arg1, mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536, msg.sender);
        call msg.sender with:
           value mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 1
    if not mem[s]:
        return 0
    require rewards[arg1].field_1536
    uint8(stor[(10 * arg1) + ('name', 'rewards', 11) + 9][address(msg.sender)].field_0) = 1
    rewards[arg1].field_1024 += mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536
    if mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536 <= 0:
        return 0
    loggedBalances[address(msg.sender)].field_0++
    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
        idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
        while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
            loggedBalances[address(msg.sender)][idx].field_0 = 0
            loggedBalances[address(msg.sender)][idx].field_256 = 0
            idx = idx + 2
            continue 
    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = 0
    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
    emit RewardClaimed(arg1, mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536, msg.sender);
    call msg.sender with:
       value mem[s] * rewards[arg1].field_768 / rewards[arg1].field_1536 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
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
                idx = sha3(11) + (10 * rewards.length) + 10
                while sha3(11) + (10 * rewards.length) > idx:
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
    require stor12[address(msg.sender)] < rewards.length
    mem[0] = msg.sender
    mem[32] = 12
    idx = stor[sha3(mem[0 len 64])]
    while idx < rewards.length:
        mem[0] = msg.sender
        mem[32] = (10 * idx) + sha3(11) + 9
        if not uint8(stor[(10 * idx) + ('name', 'rewards', 11) + 9][address(msg.sender)].field_0):
            require idx < rewards.length
            mem[0] = 11
            if not uint8(rewards[idx].field_2048):
                mem[0] = msg.sender
                mem[32] = 12
                stor12[address(msg.sender)] = idx + 1
                if rewards.length - 1 >= idx:
                    require idx < rewards.length
                    mem[0] = msg.sender
                    mem[32] = (10 * idx) + sha3(11) + 9
                    if bool(uint8(stor[(10 * idx) + ('name', 'rewards', 11) + 9][address(msg.sender)].field_0)) != 1:
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
                                            mem[32] = (10 * idx) + sha3(11) + 9
                                            uint8(stor[(10 * idx) + ('name', 'rewards', 11) + 9][address(msg.sender)].field_0) = 1
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
                                        mem[32] = (10 * idx) + sha3(11) + 9
                                        uint8(stor[(10 * idx) + ('name', 'rewards', 11) + 9][address(msg.sender)].field_0) = 1
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
                _326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_326] = loggedBalances[address(arg1)][idx].field_0
                mem[_326 + 32] = loggedBalances[address(arg1)][idx].field_256
                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                    s = _326
                    idx = idx + 1
                    s = _326
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
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = loggedBalances[address(arg1)][idx].field_0
                        mem[_328 + 32] = loggedBalances[address(arg1)][idx].field_256
                        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                            s = _328
                            idx = idx + 1
                            s = _328
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
            require bool(stor10[address(msg.sender)]) != 1
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
                require bool(stor10[address(msg.sender)]) != 1
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
            require bool(stor10[address(msg.sender)]) != 1
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
                require bool(stor10[address(msg.sender)]) != 1
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
                    require bool(stor10[address(msg.sender)]) != 1
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
                require bool(stor10[address(msg.sender)]) != 1
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
            require bool(stor10[address(msg.sender)]) != 1
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
                require bool(stor10[address(msg.sender)]) != 1
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
            require bool(stor10[address(msg.sender)]) != 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor6.length):
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    mem[0] = arg1
    mem[32] = 8
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(arg1)].field_0:
        mem[0] = arg2
        mem[32] = 8
        mem[224] = 0
        mem[256] = 0
        mem[64] = 352
        mem[288] = 0
        mem[320] = 0
        if not loggedBalances[address(arg2)].field_0:
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if 0 < arg3:
                return 0
            if arg3 <= 0:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = -arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3
        else:
            s = 288
            idx = 0
            s = 224
            while idx < loggedBalances[address(arg2)].field_0:
                mem[0] = sha3(address(arg2), 8)
                _613 = mem[64]
                mem[64] = mem[64] + 64
                mem[_613] = loggedBalances[address(arg2)][idx].field_0
                mem[_613 + 32] = loggedBalances[address(arg2)][idx].field_256
                if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                    s = _613
                    idx = idx + 1
                    s = _613
                    continue 
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if 0 < arg3:
                    return 0
                if mem[s] + arg3 <= mem[s]:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = -arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                emit Transfer(arg3, arg1, arg2);
                allowance[address(arg1)][address(msg.sender)] -= arg3
                return 1
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if 0 < arg3:
                return 0
            if mem[s] + arg3 <= mem[s]:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = -arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
    else:
        s = 160
        idx = 0
        s = 96
        while idx < loggedBalances[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 8)
            _611 = mem[64]
            mem[64] = mem[64] + 64
            mem[_611] = loggedBalances[address(arg1)][idx].field_0
            mem[_611 + 32] = loggedBalances[address(arg1)][idx].field_256
            if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                s = _611
                idx = idx + 1
                s = _611
                continue 
            _615 = mem[s]
            mem[0] = arg2
            mem[32] = 8
            _634 = mem[64]
            mem[64] = mem[64] + 64
            mem[_634] = 0
            mem[_634 + 32] = 0
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 0
            mem[_641 + 32] = 0
            if not loggedBalances[address(arg2)].field_0:
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _615 < arg3:
                    return 0
                if arg3 <= 0:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _615 - arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3
            else:
                s = _641
                idx = 0
                s = _634
                while idx < loggedBalances[address(arg2)].field_0:
                    mem[0] = sha3(address(arg2), 8)
                    _1178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1178] = loggedBalances[address(arg2)][idx].field_0
                    mem[_1178 + 32] = loggedBalances[address(arg2)][idx].field_256
                    if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                        s = _1178
                        idx = idx + 1
                        s = _1178
                        continue 
                    if not arg3:
                        return 0
                    if 1 == bool(stor10[address(arg1)]):
                        return 0
                    if _615 < arg3:
                        return 0
                    if mem[s] + arg3 <= mem[s]:
                        return 0
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _615 - arg3
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                        while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                    emit Transfer(arg3, arg1, arg2);
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    return 1
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _615 < arg3:
                    return 0
                if mem[s] + arg3 <= mem[s]:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _615 - arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
            emit Transfer(arg3, arg1, arg2);
            allowance[address(arg1)][address(msg.sender)] -= arg3
            return 1
        _606 = mem[s]
        mem[0] = arg2
        mem[32] = 8
        _618 = mem[64]
        mem[64] = mem[64] + 64
        mem[_618] = 0
        mem[_618 + 32] = 0
        _631 = mem[64]
        mem[64] = mem[64] + 64
        mem[_631] = 0
        mem[_631 + 32] = 0
        if not loggedBalances[address(arg2)].field_0:
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if _606 < arg3:
                return 0
            if arg3 <= 0:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _606 - arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3
        else:
            s = _631
            idx = 0
            s = _618
            while idx < loggedBalances[address(arg2)].field_0:
                mem[0] = sha3(address(arg2), 8)
                _1176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1176] = loggedBalances[address(arg2)][idx].field_0
                mem[_1176 + 32] = loggedBalances[address(arg2)][idx].field_256
                if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                    s = _1176
                    idx = idx + 1
                    s = _1176
                    continue 
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _606 < arg3:
                    return 0
                if mem[s] + arg3 <= mem[s]:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _606 - arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                emit Transfer(arg3, arg1, arg2);
                allowance[address(arg1)][address(msg.sender)] -= arg3
                return 1
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if _606 < arg3:
                return 0
            if mem[s] + arg3 <= mem[s]:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _606 - arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
