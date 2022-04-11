contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
array of struct stor4;
mapping of uint256 stor259;
uint256 stor262;
uint256 stor264;

function _fallback() {
    mem[96 len -6161] = code.data[6507 len -6161]
    mem[64] = -6065
    require mem[128] > 0
    require mem[mem[96] + 96] >= mem[128]
    stor2 = mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 1 < 256
        stor4[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor4[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 259
        stor259[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 1
        idx = idx + 1
        continue 
    stor1 = mem[128]
    stor0 = 12
    stor262 = mem[160]
    stor264 = block.timestamp / 24 * 3600
    return code.data[346 len 6161]
}



// =====================  Runtime code  =====================


#
#  - execute(address arg1, uint256 arg2, bytes arg3)
#
uint256 m_required;
uint256 m_numOwners;
array of struct stor3;
array of struct owner;
mapping of uint256 stor259;
mapping of struct stor260;
array of uint256 stor261;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
mapping of struct stor265;

function m_numOwners() {
    return m_numOwners
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
    return address(owner[arg1].field_0)
}

function m_dailyLimit() {
    return m_dailyLimit
}

function kill(address arg1) {
    if 0 == stor259[address(msg.sender)]:
    if 0 == stor260[call.data[0 len calldata.size]].field_0:
        stor260[call.data[0 len calldata.size]].field_0 = m_required
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length <= stor261.length + 1:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
        stor260[call.data[0 len calldata.size]].field_512 = stor261.length
        require stor261.length < stor261.length
        stor261[stor261.length] = sha3(call.data[0 len calldata.size])
    if stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)] != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor260[call.data[0 len calldata.size]].field_0 != 1:
        stor260[call.data[0 len calldata.size]].field_0--
        stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
    require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
    stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
    stor260[call.data[0 len calldata.size]].field_0 = 0
    stor260[call.data[0 len calldata.size]].field_256 = 0
    stor260[call.data[0 len calldata.size]].field_512 = 0
    selfdestruct(arg1)
}

function isOwner(address arg1) {
    return (stor259[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor259[address(arg2)] != 0:
        return stor260[arg1].field_256 and 2^stor259[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor259[address(msg.sender)] != 0:
        if stor260[arg1].field_256 and 2^stor259[address(msg.sender)] > 0:
            stor260[arg1].field_0++
            stor260[arg1].field_256 -= 2^stor259[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function resetSpentToday() {
    if stor259[address(msg.sender)] != 0:
        if 0 == stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = m_required
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) {
    if stor259[address(msg.sender)] != 0:
        if 0 == stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = m_required
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                m_dailyLimit = arg1
}

function changeRequirement(uint256 arg1) {
    if stor259[address(msg.sender)] != 0:
        if 0 == stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = m_required
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if arg1 != 0:
                    if arg1 <= m_numOwners:
                        m_required = arg1
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = stor261[idx]
                            mem[32] = 265
                            address(stor265[stor261[idx]].field_0) = 0
                            stor265[stor261[idx]].field_256 = 0
                            stor265[stor261[idx]].field_512 = 0
                            if 31 < stor265[stor261[idx]][2].length:
                                mem[0] = sha3(stor261[idx], 265) + 2
                                s = sha3(sha3(stor261[idx], 265) + 2)
                                while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < stor261.length:
                            mem[0] = 261
                            if stor261[s] != 0:
                                require s < stor261.length
                                mem[0] = stor261[s]
                                mem[32] = 260
                                stor260[stor261[s]].field_0 = 0
                                stor260[stor261[s]].field_256 = 0
                                stor260[stor261[s]].field_512 = 0
                            s = s + 1
                            continue 
                        stor261.length = 0
                        s = 0
                        while stor261.length > s:
                            stor261[s] = 0
                            s = s + 1
                            continue 
                        emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) {
    if stor259[address(msg.sender)] != 0:
        if 0 == stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = m_required
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if stor259[address(arg2)] <= 0:
                    if stor259[address(arg1)] != 0:
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = stor261[idx]
                            mem[32] = 265
                            address(stor265[stor261[idx]].field_0) = 0
                            stor265[stor261[idx]].field_256 = 0
                            stor265[stor261[idx]].field_512 = 0
                            if 31 < stor265[stor261[idx]][2].length:
                                mem[0] = sha3(stor261[idx], 265) + 2
                                s = sha3(sha3(stor261[idx], 265) + 2)
                                while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < stor261.length:
                            mem[0] = 261
                            if stor261[s] != 0:
                                require s < stor261.length
                                mem[0] = stor261[s]
                                mem[32] = 260
                                stor260[stor261[s]].field_0 = 0
                                stor260[stor261[s]].field_256 = 0
                                stor260[stor261[s]].field_512 = 0
                            s = s + 1
                            continue 
                        stor261.length = 0
                        s = 0
                        while stor261.length > s:
                            stor261[s] = 0
                            s = s + 1
                            continue 
                        require stor259[address(arg1)] < 256
                        address(stor3[stor259[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor3[stor259[address(arg1)]].field_160) = 0
                        stor259[address(arg1)] = 0
                        stor259[address(arg2)] = stor259[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function confirm(bytes32 arg1) {
    if 0 == stor259[address(msg.sender)]:
        return 0
    if 0 == stor260[arg1].field_0:
        stor260[arg1].field_0 = m_required
        stor260[arg1].field_256 = 0
        stor261.length++
        if not stor261.length <= stor261.length + 1:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
        stor260[arg1].field_512 = stor261.length
        require stor261.length < stor261.length
        stor261[stor261.length] = arg1
    if stor260[arg1].field_256 and 2^stor259[address(msg.sender)] != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor260[arg1].field_0 != 1:
        stor260[arg1].field_0--
        stor260[arg1].field_256 = 2^stor259[address(msg.sender)] or stor260[arg1].field_256
        return 0
    require stor260[arg1].field_512 < stor261.length
    stor261[stor260[arg1].field_512] = 0
    stor260[arg1].field_0 = 0
    stor260[arg1].field_256 = 0
    stor260[arg1].field_512 = 0
    if not address(stor265[arg1].field_0):
        if not stor265[arg1].field_256:
            if not Mask(255, 1, (256 * not bool(stor265[arg1].field_512)) - 1 and stor265[arg1].field_512):
                return 0
    if address(stor265[arg1].field_0):
        mem[96] = stor265[arg1][2].field_0
        idx = 96
        s = 0
        while stor265[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = stor265[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor265[arg1].field_0).mem[96 len 4] with:
           value stor265[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[100 len stor265[arg1][2].length + (floor32(stor265[arg1][2].length - 1) + -stor265[arg1][2].length + 32 % 32) - 4]
        require ext_call.success
        mem[320] = stor265[arg1][2].field_0
        idx = 320
        s = 0
        while stor265[arg1][2].length + 320 > idx + 32:
            mem[idx + 32] = stor265[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit MultiTransact(address rg1, bytes32 rg2, uint256 rg3, address rg4, bytes rg5, address rg6):
                           msg.sender,
                           arg1,
                           stor265[arg1].field_256,
                           address(stor265[arg1].field_0),
                           192,
                           0,
                           stor265[arg1][2].length,
                           mem[320 len stor265[arg1][2].length + (floor32(stor265[arg1][2].length - 1) + -stor265[arg1][2].length + 32 % 32)],
    else:
        mem[128] = stor265[arg1][2].field_0
        idx = 128
        s = 0
        while stor265[arg1][2].length + 96 > idx:
            mem[idx + 32] = stor265[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        create contract with ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor265', 265)))) wei
                        code: mem[128 len stor265[arg1][2].length]
        require ext_code.size(create.new_address)
        mem[ceil32(stor265[arg1][2].length) + 352] = stor265[arg1][2].field_0
        idx = ceil32(stor265[arg1][2].length) + 352
        s = 0
        while ceil32(stor265[arg1][2].length) + stor265[arg1][2].length + 352 > idx + 32:
            mem[idx + 32] = stor265[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit MultiTransact(msg.sender, arg1, stor265[arg1].field_256, address(stor265[arg1].field_0), Array(len=stor265[arg1][2].length, data=mem[ceil32(stor265[arg1][2].length) + 352 len stor265[arg1][2].length + (floor32(stor265[arg1][2].length - 1) + -stor265[arg1][2].length + 32 % 32)]), address(create.new_address));
    address(stor265[arg1].field_0) = 0
    stor265[arg1].field_256 = 0
    stor265[arg1].field_512 = 0
    if 31 < stor265[arg1][2].length:
        idx = 0
        while stor265[arg1][2].length + 31 / 32 > idx:
            stor265[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function removeOwner(address arg1) {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0 != 0:
        if stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 != 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if 0 == stor259[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor259[address(arg1)] < 256
        stor3[stor259[address(arg1)]].field_0 = 0
        stor259[address(arg1)] = 0
        idx = 0
        while idx < stor261.length:
            mem[0] = stor261[idx]
            mem[32] = 265
            address(stor265[stor261[idx]].field_0) = 0
            stor265[stor261[idx]].field_256 = 0
            stor265[stor261[idx]].field_512 = 0
            if 31 < stor265[stor261[idx]][2].length:
                mem[0] = sha3(stor261[idx], 265) + 2
                s = sha3(sha3(stor261[idx], 265) + 2)
                while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        s = 0
        while s < stor261.length:
            mem[0] = 261
            if stor261[s] != 0:
                require s < stor261.length
                mem[0] = stor261[s]
                mem[32] = 260
                stor260[stor261[s]].field_0 = 0
                stor260[stor261[s]].field_256 = 0
                stor260[stor261[s]].field_512 = 0
            s = s + 1
            continue 
        stor261.length = 0
        s = 0
        while stor261.length > s:
            stor261[s] = 0
            s = s + 1
            continue 
        if 1 < m_numOwners:
            # nil
        else:
            emit OwnerRemoved(arg1);
    else:
        stor260[call.data[0 len calldata.size]].field_0 = m_required
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length <= stor261.length + 1:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
            if stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if 0 == stor259[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 265
                address(stor265[stor261[idx]].field_0) = 0
                stor265[stor261[idx]].field_256 = 0
                stor265[stor261[idx]].field_512 = 0
                if 31 < stor265[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 265) + 2
                    s = sha3(sha3(stor261[idx], 265) + 2)
                    while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor261.length:
                mem[0] = 261
                if stor261[s] != 0:
                    require s < stor261.length
                    mem[0] = stor261[s]
                    mem[32] = 260
                    stor260[stor261[s]].field_0 = 0
                    stor260[stor261[s]].field_256 = 0
                    stor260[stor261[s]].field_512 = 0
                s = s + 1
                continue 
            stor261.length = 0
            s = 0
            while stor261.length > s:
                stor261[s] = 0
                s = s + 1
                continue 
            # nil
        else:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
            if stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if 0 == stor259[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 265
                address(stor265[stor261[idx]].field_0) = 0
                stor265[stor261[idx]].field_256 = 0
                stor265[stor261[idx]].field_512 = 0
                if 31 < stor265[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 265) + 2
                    s = sha3(sha3(stor261[idx], 265) + 2)
                    while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor261.length:
                mem[0] = 261
                if stor261[s] != 0:
                    require s < stor261.length
                    mem[0] = stor261[s]
                    mem[32] = 260
                    stor260[stor261[s]].field_0 = 0
                    stor260[stor261[s]].field_256 = 0
                    stor260[stor261[s]].field_512 = 0
                s = s + 1
                continue 
            stor261.length = 0
            s = 0
            while stor261.length > s:
                stor261[s] = 0
                s = s + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0 != 0:
        if stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 != 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if stor259[address(arg1)] > 0:
        idx = 0
        while idx < stor261.length:
            mem[0] = stor261[idx]
            mem[32] = 265
            address(stor265[stor261[idx]].field_0) = 0
            stor265[stor261[idx]].field_256 = 0
            stor265[stor261[idx]].field_512 = 0
            if 31 < stor265[stor261[idx]][2].length:
                mem[0] = sha3(stor261[idx], 265) + 2
                s = sha3(sha3(stor261[idx], 265) + 2)
                while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        s = 0
        while s < stor261.length:
            mem[0] = 261
            if stor261[s] != 0:
                require s < stor261.length
                mem[0] = stor261[s]
                mem[32] = 260
                stor260[stor261[s]].field_0 = 0
                stor260[stor261[s]].field_256 = 0
                stor260[stor261[s]].field_512 = 0
            s = s + 1
            continue 
        stor261.length = 0
        s = 0
        while stor261.length > s:
            stor261[s] = 0
            s = s + 1
            continue 
        if m_numOwners < 250:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(owner[stor2].field_0) = arg1
            Mask(96, 0, owner[stor2].field_160) = 0
            stor259[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
        if 1 < m_numOwners:
            # nil
        else:
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor2].field_0) = arg1
                Mask(96, 0, owner[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
    else:
        stor260[call.data[0 len calldata.size]].field_0 = m_required
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length <= stor261.length + 1:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
            if stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 265
                address(stor265[stor261[idx]].field_0) = 0
                stor265[stor261[idx]].field_256 = 0
                stor265[stor261[idx]].field_512 = 0
                if 31 < stor265[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 265) + 2
                    s = sha3(sha3(stor261[idx], 265) + 2)
                    while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor261.length:
                mem[0] = 261
                if stor261[s] != 0:
                    require s < stor261.length
                    mem[0] = stor261[s]
                    mem[32] = 260
                    stor260[stor261[s]].field_0 = 0
                    stor260[stor261[s]].field_256 = 0
                    stor260[stor261[s]].field_512 = 0
                s = s + 1
                continue 
            stor261.length = 0
            s = 0
            while stor261.length > s:
                stor261[s] = 0
                s = s + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor2].field_0) = arg1
                Mask(96, 0, owner[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor261[stor261.length] = sha3(call.data[0 len calldata.size])
            if stor260[call.data[0 len calldata.size]].field_256 and 2^stor259[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 != 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 265
                address(stor265[stor261[idx]].field_0) = 0
                stor265[stor261[idx]].field_256 = 0
                stor265[stor261[idx]].field_512 = 0
                if 31 < stor265[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 265) + 2
                    s = sha3(sha3(stor261[idx], 265) + 2)
                    while sha3(sha3(stor261[idx], 265) + 2) + (stor265[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor261.length:
                mem[0] = 261
                if stor261[s] != 0:
                    require s < stor261.length
                    mem[0] = stor261[s]
                    mem[32] = 260
                    stor260[stor261[s]].field_0 = 0
                    stor260[stor261[s]].field_256 = 0
                    stor260[stor261[s]].field_512 = 0
                s = s + 1
                continue 
            stor261.length = 0
            s = 0
            while stor261.length > s:
                stor261[s] = 0
                s = s + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor2].field_0) = arg1
                Mask(96, 0, owner[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(owner[stor2].field_0) = arg1
                    Mask(96, 0, owner[stor2].field_160) = 0
                    stor259[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
