contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;
uint256 stor271;
uint256 stor273;

function _fallback() {
    mem[96 len -9983] = code.data[10450 len -9983]
    mem[64] = -9887
    stor1 = mem[mem[96] + 96] + 1
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    mem[0] = msg.sender
    mem[32] = 258
    stor258[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor4[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor4[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 258
        stor258[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    stor271 = mem[160]
    stor273 = block.timestamp / 24 * 3600
    return code.data[467 len 9983]
}



// =====================  Runtime code  =====================


#
#  - sub_b945d1f6(?)
#
const version = 2


uint256 m_required;
array of uint256 stor1;
array of struct stor2;
array of address owner;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;
array of uint256 stor261;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
mapping of struct stor274;

function m_numOwners() {
    return stor1.length
}

function m_lastDay() {
    return m_lastDay
}

function m_spentToday() {
    return m_spentToday
}

function m_required() {
    return m_required
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function m_dailyLimit() {
    return m_dailyLimit
}

function kill(address arg1) {
    if not stor258[address(msg.sender)]:
    if not stor259[call.data[0 len calldata.size]].field_0:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[call.data[0 len calldata.size]].field_512 = stor260.length
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
    if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor259[call.data[0 len calldata.size]].field_0 > 1:
        stor259[call.data[0 len calldata.size]].field_0--
        stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
    require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
    stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
    stor259[call.data[0 len calldata.size]].field_0 = 0
    stor259[call.data[0 len calldata.size]].field_256 = 0
    stor259[call.data[0 len calldata.size]].field_512 = 0
    selfdestruct(arg1)
}

function hasCode(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function isOwner(address arg1) {
    return (stor258[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor258[address(arg2)]:
        return not not stor259[arg1].field_256 and 2^stor258[address(arg2)]
    else:
        return 0
}

function getNextSequenceId() {
    idx = 0
    s = 0
    while idx < 10:
        if stor261[idx] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < 10
        idx = idx + 1
        s = stor261[idx]
        continue 
    return (s + 1)
}

function revoke(bytes32 arg1) {
    if stor258[address(msg.sender)]:
        if stor259[arg1].field_256 and 2^stor258[address(msg.sender)] > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function sub_432dcdb8(?) {
    idx = 0
    s = 0
    while idx < stor260.length:
        mem[0] = stor260[idx]
        mem[32] = 274
        if not address(stor274[stor260[idx]].field_0):
            require idx < stor260.length
            mem[0] = stor260[idx]
            mem[32] = 274
            if not Mask(255, 1, (256 * not bool(stor274[stor260[idx]].field_512)) - 1 and stor274[stor260[idx]].field_512):
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function resetSpentToday() {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
        if not stor259[call.data[0 len calldata.size]].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
        if not stor259[call.data[0 len calldata.size]].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                m_dailyLimit = arg1
}

function getPendingTransaction(uint256 arg1) {
    mem[64] = 128
    mem[96] = 0
    idx = 0
    s = 0
    while idx < stor260.length:
        mem[0] = stor260[idx]
        mem[32] = 274
        if not address(stor274[stor260[idx]].field_0):
            require idx < stor260.length
            mem[0] = stor260[idx]
            mem[32] = 274
            if not Mask(255, 1, (256 * not bool(stor274[stor260[idx]].field_512)) - 1 and stor274[stor260[idx]].field_512):
                idx = idx + 1
                s = s
                continue 
        if arg1 != s:
            idx = idx + 1
            s = s + 1
            continue 
        require idx < stor260.length
        mem[32] = 274
        mem[64] = ceil32(stor274[stor260[idx]][2].length) + 160
        mem[128] = stor274[stor260[idx]][2].length
        mem[0] = sha3(stor260[idx], 274) + 2
        mem[160] = stor274[stor260[idx]][2].field_0
        s = 160
        t = sha3(mem[0])
        while stor274[stor260[idx]][2].length + 128 > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = stor260[idx]
        mem[mem[64] + 32] = stor259[stor260[idx]].field_0
        mem[mem[64] + 64] = address(stor274[stor260[idx]].field_0)
        mem[mem[64] + 96] = stor274[stor260[idx]].field_256
        mem[mem[64] + 128] = 160
        mem[mem[64] + 160] = mem[128]
        if mem[128]:
            mem[mem[64] + 192] = mem[160]
            t = 160
            u = mem[64] + 192
            s = mem[128]
            while s > 32:
                mem[u + 32] = mem[t + 32]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
        if not mem[128] % 32:
            return stor260[idx], 
                   stor259[stor260[idx]].field_0,
                   address(stor274[stor260[idx]].field_0),
                   stor274[stor260[idx]].field_256,
                   160,
                   mem[mem[64] + 160 len mem[128] + 32]
        mem[floor32(mem[128]) + mem[64] + 192] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 224 len mem[128] % 32]
        return stor260[idx], 
               stor259[stor260[idx]].field_0,
               address(stor274[stor260[idx]].field_0),
               stor274[stor260[idx]].field_256,
               160,
               mem[mem[64] + 160 len floor32(mem[128]) + 64]
    return 0, 0, 0, 0, 160, 0
}

function confirm(bytes32 arg1) {
    if not stor258[address(msg.sender)]:
        return 0
    if not stor259[arg1].field_0:
        stor259[arg1].field_0 = m_required
        stor259[arg1].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[arg1].field_512 = stor260.length
        require stor259[arg1].field_512 < stor260.length
        stor260[stor259[arg1].field_512] = arg1
    if stor259[arg1].field_256 and 2^stor258[address(msg.sender)]:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor259[arg1].field_0 > 1:
        stor259[arg1].field_0--
        stor259[arg1].field_256 = stor259[arg1].field_256 or 2^stor258[address(msg.sender)]
        return 0
    require stor259[arg1].field_512 < stor260.length
    stor260[stor259[arg1].field_512] = 0
    stor259[arg1].field_0 = 0
    stor259[arg1].field_256 = 0
    stor259[arg1].field_512 = 0
    if not address(stor274[arg1].field_0):
        return 0
    mem[96] = stor274[arg1][2].field_0
    idx = 96
    s = 0
    while stor274[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = stor274[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call address(stor274[arg1].field_0).mem[96 len 4] with:
       value stor274[arg1].field_256 wei
         gas gas_remaining - 34050 wei
        args mem[100 len stor274[arg1][2].length + (floor32(stor274[arg1][2].length - 1) + -stor274[arg1][2].length + 32 % 32) - 4]
    require ext_call.success
    mem[288] = stor274[arg1][2].field_0
    idx = 288
    s = 0
    while stor274[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor274[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit MultiTransact(msg.sender, arg1, stor274[arg1].field_256, address(stor274[arg1].field_0), Array(len=stor274[arg1][2].length, data=mem[288 len stor274[arg1][2].length + (floor32(stor274[arg1][2].length - 1) + -stor274[arg1][2].length + 32 % 32)]));
    address(stor274[arg1].field_0) = 0
    stor274[arg1].field_256 = 0
    stor274[arg1].field_512 = 0
    if 31 < stor274[arg1][2].length:
        idx = 0
        while stor274[arg1][2].length + 31 / 32 > idx:
            stor274[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function changeRequirement(uint256 arg1) {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
        if not stor259[call.data[0 len calldata.size]].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= stor1.length:
                    m_required = arg1
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = stor260[idx]
                        mem[32] = 274
                        address(stor274[stor260[idx]].field_0) = 0
                        stor274[stor260[idx]].field_256 = 0
                        stor274[stor260[idx]].field_512 = 0
                        if 31 < stor274[stor260[idx]][2].length:
                            mem[0] = sha3(stor260[idx], 274) + 2
                            s = sha3(sha3(stor260[idx], 274) + 2)
                            while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = 260
                        if stor260[idx]:
                            require idx < stor260.length
                            mem[0] = stor260[idx]
                            mem[32] = 259
                            stor259[stor260[idx]].field_0 = 0
                            stor259[stor260[idx]].field_256 = 0
                            stor259[stor260[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor260.length = 0
                    idx = 0
                    while stor260.length > idx:
                        stor260[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
        if not stor259[call.data[0 len calldata.size]].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if stor258[address(arg2)] <= 0:
                    if stor258[address(arg1)]:
                        idx = 0
                        while idx < stor260.length:
                            mem[0] = stor260[idx]
                            mem[32] = 274
                            address(stor274[stor260[idx]].field_0) = 0
                            stor274[stor260[idx]].field_256 = 0
                            stor274[stor260[idx]].field_512 = 0
                            if 31 < stor274[stor260[idx]][2].length:
                                mem[0] = sha3(stor260[idx], 274) + 2
                                s = sha3(sha3(stor260[idx], 274) + 2)
                                while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor260.length:
                            mem[0] = 260
                            if stor260[idx]:
                                require idx < stor260.length
                                mem[0] = stor260[idx]
                                mem[32] = 259
                                stor259[stor260[idx]].field_0 = 0
                                stor259[stor260[idx]].field_256 = 0
                                stor259[stor260[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor260.length = 0
                        idx = 0
                        while stor260.length > idx:
                            stor260[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor258[address(arg1)] < 256
                        address(stor2[stor258[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor2[stor258[address(arg1)]].field_160) = 0
                        stor258[address(arg1)] = 0
                        stor258[address(arg2)] = stor258[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if not stor258[address(arg1)]:
        if m_required > stor1.length - 1:
        require stor258[address(arg1)] < 256
        stor2[stor258[address(arg1)]].field_0 = 0
        stor258[address(arg1)] = 0
        idx = 0
        while idx < stor260.length:
            mem[0] = stor260[idx]
            mem[32] = 274
            address(stor274[stor260[idx]].field_0) = 0
            stor274[stor260[idx]].field_256 = 0
            stor274[stor260[idx]].field_512 = 0
            if 31 < stor274[stor260[idx]][2].length:
                mem[0] = sha3(stor260[idx], 274) + 2
                s = sha3(sha3(stor260[idx], 274) + 2)
                while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor260[idx]:
                require idx < stor260.length
                mem[0] = stor260[idx]
                mem[32] = 259
                stor259[stor260[idx]].field_0 = 0
                stor259[stor260[idx]].field_256 = 0
                stor259[stor260[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = 0
        while stor260.length > idx:
            stor260[idx] = 0
            idx = idx + 1
            continue 
        if 1 < stor1.length:
            # nil
        else:
            emit OwnerRemoved(arg1);
    else:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > stor1.length - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 274
                address(stor274[stor260[idx]].field_0) = 0
                stor274[stor260[idx]].field_256 = 0
                stor274[stor260[idx]].field_512 = 0
                if 31 < stor274[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 274) + 2
                    s = sha3(sha3(stor260[idx], 274) + 2)
                    while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor260[idx]:
                    require idx < stor260.length
                    mem[0] = stor260[idx]
                    mem[32] = 259
                    stor259[stor260[idx]].field_0 = 0
                    stor259[stor260[idx]].field_256 = 0
                    stor259[stor260[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > stor1.length - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 274
                address(stor274[stor260[idx]].field_0) = 0
                stor274[stor260[idx]].field_256 = 0
                stor274[stor260[idx]].field_512 = 0
                if 31 < stor274[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 274) + 2
                    s = sha3(sha3(stor260[idx], 274) + 2)
                    while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor260[idx]:
                    require idx < stor260.length
                    mem[0] = stor260[idx]
                    mem[32] = 259
                    stor259[stor260[idx]].field_0 = 0
                    stor259[stor260[idx]].field_256 = 0
                    stor259[stor260[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            if 1 < stor1.length:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if stor258[address(arg1)] > 0:
        idx = 0
        while idx < stor260.length:
            mem[0] = stor260[idx]
            mem[32] = 274
            address(stor274[stor260[idx]].field_0) = 0
            stor274[stor260[idx]].field_256 = 0
            stor274[stor260[idx]].field_512 = 0
            if 31 < stor274[stor260[idx]][2].length:
                mem[0] = sha3(stor260[idx], 274) + 2
                s = sha3(sha3(stor260[idx], 274) + 2)
                while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor260[idx]:
                require idx < stor260.length
                mem[0] = stor260[idx]
                mem[32] = 259
                stor259[stor260[idx]].field_0 = 0
                stor259[stor260[idx]].field_256 = 0
                stor259[stor260[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = 0
        while stor260.length > idx:
            stor260[idx] = 0
            idx = idx + 1
            continue 
        if stor1.length < 250:
            stor1.length++
            address(stor2[stor1.length].field_0) = arg1
            Mask(96, 0, stor2[stor1.length].field_160) = 0
            stor258[address(arg1)] = stor1.length
            emit OwnerAdded(arg1);
        if 1 < stor1.length:
            # nil
        else:
            if stor1.length < 250:
                stor1.length++
                address(stor2[stor1.length].field_0) = arg1
                Mask(96, 0, stor2[stor1.length].field_160) = 0
                stor258[address(arg1)] = stor1.length
                emit OwnerAdded(arg1);
    else:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 274
                address(stor274[stor260[idx]].field_0) = 0
                stor274[stor260[idx]].field_256 = 0
                stor274[stor260[idx]].field_512 = 0
                if 31 < stor274[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 274) + 2
                    s = sha3(sha3(stor260[idx], 274) + 2)
                    while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor260[idx]:
                    require idx < stor260.length
                    mem[0] = stor260[idx]
                    mem[32] = 259
                    stor259[stor260[idx]].field_0 = 0
                    stor259[stor260[idx]].field_256 = 0
                    stor259[stor260[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            if stor1.length >= 250:
                # nil
            else:
                stor1.length++
                address(stor2[stor1.length].field_0) = arg1
                Mask(96, 0, stor2[stor1.length].field_160) = 0
                stor258[address(arg1)] = stor1.length
                emit OwnerAdded(arg1);
        else:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = stor259[call.data[0 len calldata.size]].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 274
                address(stor274[stor260[idx]].field_0) = 0
                stor274[stor260[idx]].field_256 = 0
                stor274[stor260[idx]].field_512 = 0
                if 31 < stor274[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 274) + 2
                    s = sha3(sha3(stor260[idx], 274) + 2)
                    while sha3(sha3(stor260[idx], 274) + 2) + (stor274[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor260[idx]:
                    require idx < stor260.length
                    mem[0] = stor260[idx]
                    mem[32] = 259
                    stor259[stor260[idx]].field_0 = 0
                    stor259[stor260[idx]].field_256 = 0
                    stor259[stor260[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            if stor1.length < 250:
                stor1.length++
                address(stor2[stor1.length].field_0) = arg1
                Mask(96, 0, stor2[stor1.length].field_160) = 0
                stor258[address(arg1)] = stor1.length
                emit OwnerAdded(arg1);
            if 1 < stor1.length:
                # nil
            else:
                if stor1.length < 250:
                    stor1.length++
                    address(stor2[stor1.length].field_0) = arg1
                    Mask(96, 0, stor2[stor1.length].field_160) = 0
                    stor258[address(arg1)] = stor1.length
                    emit OwnerAdded(arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    if stor258[address(msg.sender)] <= 0:
        return 0
    if stor258[address(msg.sender)] > 0:
        if block.timestamp / 24 * 3600 > m_lastDay:
            m_spentToday = 0
            m_lastDay = block.timestamp / 24 * 3600
        if m_spentToday + arg2 >= m_spentToday:
            if m_spentToday + arg2 <= m_dailyLimit:
                m_spentToday += arg2
                if not arg3.length:
                    if ext_code.size(arg1) <= 0:
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit SingleTransact(address(msg.sender), arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                        return 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = block.number
    if not stor258[address(msg.sender)]:
        if not address(stor274[call.data[0 len calldata.size]][block.number].field_0):
            address(stor274[call.data[0 len calldata.size]][block.number].field_0) = arg1
            stor274[call.data[0 len calldata.size]][block.number].field_256 = arg2
            stor274[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor274[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor274[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                stor274[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
    else:
        if not stor259[call.data[0 len calldata.size]][block.number].field_0:
            stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
        if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
            if not address(stor274[call.data[0 len calldata.size]][block.number].field_0):
                address(stor274[call.data[0 len calldata.size]][block.number].field_0) = arg1
                stor274[call.data[0 len calldata.size]][block.number].field_256 = arg2
                stor274[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor274[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor274[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                    stor274[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        else:
            mem[128] = sha3(call.data[0 len calldata.size], block.number)
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
                if not address(stor274[call.data[0 len calldata.size]][block.number].field_0):
                    address(stor274[call.data[0 len calldata.size]][block.number].field_0) = arg1
                    stor274[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    stor274[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor274[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor274[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                        stor274[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if not address(stor274[call.data[0 len calldata.size]][block.number].field_0):
                    if not address(stor274[call.data[0 len calldata.size]][block.number].field_0):
                        address(stor274[call.data[0 len calldata.size]][block.number].field_0) = arg1
                        stor274[call.data[0 len calldata.size]][block.number].field_256 = arg2
                        stor274[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                        s = 0
                        idx = arg3 + 36
                        while arg3 + arg3.length + 36 > idx:
                            stor274[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg3.length + 31) >> 5
                        while stor274[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor274[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                else:
                    mem[96] = stor274[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 96
                    s = 0
                    while stor274[call.data[0 len calldata.size]][block.number][2].length + 96 > idx + 32:
                        mem[idx + 32] = stor274[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(stor274[call.data[0 len calldata.size]][block.number].field_0).mem[96 len 4] with:
                       value stor274[call.data[0 len calldata.size]][block.number].field_256 wei
                         gas gas_remaining - 34050 wei
                        args mem[100 len stor274[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor274[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor274[call.data[0 len calldata.size]][block.number][2].length + 32 % 32) - 4]
                    require ext_call.success
                    mem[288] = stor274[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 288
                    s = 0
                    while stor274[call.data[0 len calldata.size]][block.number][2].length + 288 > idx + 32:
                        mem[idx + 32] = stor274[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit MultiTransact(msg.sender, sha3(call.data[0 len calldata.size], block.number), stor274[call.data[0 len calldata.size]][block.number].field_256, address(stor274[call.data[0 len calldata.size]][block.number].field_0), Array(len=stor274[call.data[0 len calldata.size]][block.number][2].length, data=mem[288 len stor274[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor274[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor274[call.data[0 len calldata.size]][block.number][2].length + 32 % 32)]));
                    address(stor274[call.data[0 len calldata.size]][block.number].field_0) = 0
                    stor274[call.data[0 len calldata.size]][block.number].field_256 = 0
                    stor274[call.data[0 len calldata.size]][block.number].field_512 = 0
                    if 31 < stor274[call.data[0 len calldata.size]][block.number][2].length:
                        idx = 0
                        while stor274[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor274[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
    return sha3(call.data[0 len calldata.size], block.number)
}



}
