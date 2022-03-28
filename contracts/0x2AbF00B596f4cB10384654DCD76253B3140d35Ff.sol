contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;
uint256 stor261;
uint256 stor263;

function _fallback() {
    mem[96 len -5363] = code.data[5676 len -5363]
    mem[64] = -5267
    stor1 = mem[mem[96] + 96] + 1
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
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
    stor261 = mem[160]
    stor263 = block.timestamp / 24 * 3600
    return code.data[313 len 5363]
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
array of struct m_owners;
array of struct owner;
mapping of uint256 m_ownerIndex;
mapping of struct m_pending;
array of uint256 m_pendingIndex;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
mapping of struct m_txs;
uint256 stor4C0B;

function m_owners(uint256 arg1) {
    require arg1 < 256
    return m_owners[arg1].field_0
}

function m_pending(bytes32 arg1) {
    return m_pending[arg1].field_0, m_pending[arg1].field_256, m_pending[arg1].field_512
}

function m_txs(bytes32 arg1) {
    mem[224] = m_txs[arg1][2].field_0
    idx = 224
    s = 0
    while m_txs[arg1][2].length + 224 > idx + 32:
        mem[idx + 32] = m_txs[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(m_txs[arg1].field_0), 
           m_txs[arg1].field_256,
           Array(len=m_txs[arg1][2].length, data=mem[224 len m_txs[arg1][2].length + (floor32(m_txs[arg1][2].length - 1) + -m_txs[arg1][2].length + 32 % 32)])
}

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

function m_ownerIndex(uint256 arg1) {
    return m_ownerIndex[arg1]
}

function m_dailyLimit() {
    return m_dailyLimit
}

function m_pendingIndex(uint256 arg1) {
    require arg1 < m_pendingIndex.length
    return m_pendingIndex[arg1]
}

function kill(address arg1) {
    if not m_ownerIndex[address(msg.sender)]:
    if not m_pending[call.data[0 len calldata.size]].field_0:
        m_pending[call.data[0 len calldata.size]].field_0 = m_required
        m_pending[call.data[0 len calldata.size]].field_256 = 0
        m_pendingIndex.length++
        m_pending[call.data[0 len calldata.size]].field_512 = m_pendingIndex.length
        require m_pendingIndex.length < m_pendingIndex.length
        m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size])
    if m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)] != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if m_pending[call.data[0 len calldata.size]].field_0 > 1:
        m_pending[call.data[0 len calldata.size]].field_0--
        m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
    require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
    m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
    m_pending[call.data[0 len calldata.size]].field_0 = 0
    m_pending[call.data[0 len calldata.size]].field_256 = 0
    m_pending[call.data[0 len calldata.size]].field_512 = 0
    selfdestruct(arg1)
}

function isOwner(address arg1) {
    return (m_ownerIndex[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if m_ownerIndex[address(arg2)]:
        return m_pending[arg1].field_256 and 2^m_ownerIndex[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if m_ownerIndex[address(msg.sender)]:
        if 2^m_ownerIndex[address(msg.sender)] and m_pending[arg1].field_256 > 0:
            m_pending[arg1].field_0++
            m_pending[arg1].field_256 -= 2^m_ownerIndex[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function resetSpentToday() {
    if m_ownerIndex[address(msg.sender)]:
        if not m_pending[call.data[0 len calldata.size]].field_0:
            m_pending[call.data[0 len calldata.size]].field_0 = m_required
            m_pending[call.data[0 len calldata.size]].field_256 = 0
            m_pendingIndex.length++
            m_pending[call.data[0 len calldata.size]].field_512 = m_pendingIndex.length
            require m_pendingIndex.length < m_pendingIndex.length
            m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size])
        if 0 == m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if m_pending[call.data[0 len calldata.size]].field_0 > 1:
                m_pending[call.data[0 len calldata.size]].field_0--
                m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
            else:
                require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
                m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
                m_pending[call.data[0 len calldata.size]].field_0 = 0
                m_pending[call.data[0 len calldata.size]].field_256 = 0
                m_pending[call.data[0 len calldata.size]].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) {
    if m_ownerIndex[address(msg.sender)]:
        if not m_pending[call.data[0 len calldata.size]].field_0:
            m_pending[call.data[0 len calldata.size]].field_0 = m_required
            m_pending[call.data[0 len calldata.size]].field_256 = 0
            m_pendingIndex.length++
            m_pending[call.data[0 len calldata.size]].field_512 = m_pendingIndex.length
            require m_pendingIndex.length < m_pendingIndex.length
            m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size])
        if 0 == m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if m_pending[call.data[0 len calldata.size]].field_0 > 1:
                m_pending[call.data[0 len calldata.size]].field_0--
                m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
            else:
                require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
                m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
                m_pending[call.data[0 len calldata.size]].field_0 = 0
                m_pending[call.data[0 len calldata.size]].field_256 = 0
                m_pending[call.data[0 len calldata.size]].field_512 = 0
                m_dailyLimit = arg1
}

function confirm(bytes32 arg1) {
    if not m_ownerIndex[address(msg.sender)]:
        return 0
    if not m_pending[arg1].field_0:
        m_pending[arg1].field_0 = m_required
        m_pending[arg1].field_256 = 0
        m_pendingIndex.length++
        m_pending[arg1].field_512 = m_pendingIndex.length
        require m_pendingIndex.length < m_pendingIndex.length
        m_pendingIndex[m_pendingIndex.length] = arg1
    if m_pending[arg1].field_256 and 2^m_ownerIndex[address(msg.sender)] != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if m_pending[arg1].field_0 > 1:
        m_pending[arg1].field_0--
        m_pending[arg1].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[arg1].field_256
        return 0
    require m_pending[arg1].field_512 < m_pendingIndex.length
    m_pendingIndex[stor259[arg1].field_512] = 0
    m_pending[arg1].field_0 = 0
    m_pending[arg1].field_256 = 0
    m_pending[arg1].field_512 = 0
    if not address(m_txs[arg1].field_0):
        return 0
    mem[96] = m_txs[arg1][2].field_0
    idx = 96
    s = 0
    while m_txs[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = m_txs[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call address(m_txs[arg1].field_0).mem[96 len 4] with:
       value m_txs[arg1].field_256 wei
         gas gas_remaining - 34050 wei
        args mem[100 len m_txs[arg1][2].length + (floor32(m_txs[arg1][2].length - 1) + -m_txs[arg1][2].length + 32 % 32) - 4]
    mem[288] = m_txs[arg1][2].field_0
    idx = 288
    s = 0
    while m_txs[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = m_txs[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit MultiTransact(msg.sender, arg1, m_txs[arg1].field_256, address(m_txs[arg1].field_0), Array(len=m_txs[arg1][2].length, data=mem[288 len m_txs[arg1][2].length + (floor32(m_txs[arg1][2].length - 1) + -m_txs[arg1][2].length + 32 % 32)]));
    address(m_txs[arg1].field_0) = 0
    m_txs[arg1].field_256 = 0
    m_txs[arg1].field_512 = 0
    if 31 < m_txs[arg1][2].length:
        idx = 0
        while m_txs[arg1][2].length + 31 / 32 > idx:
            m_txs[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function changeRequirement(uint256 arg1) {
    if m_ownerIndex[address(msg.sender)]:
        if not m_pending[call.data[0 len calldata.size]].field_0:
            m_pending[call.data[0 len calldata.size]].field_0 = m_required
            m_pending[call.data[0 len calldata.size]].field_256 = 0
            m_pendingIndex.length++
            m_pending[call.data[0 len calldata.size]].field_512 = m_pendingIndex.length
            require m_pendingIndex.length < m_pendingIndex.length
            m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size])
        if 0 == m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if m_pending[call.data[0 len calldata.size]].field_0 > 1:
                m_pending[call.data[0 len calldata.size]].field_0--
                m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
            else:
                require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
                m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
                m_pending[call.data[0 len calldata.size]].field_0 = 0
                m_pending[call.data[0 len calldata.size]].field_256 = 0
                m_pending[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < m_pendingIndex.length:
                        mem[0] = m_pendingIndex[idx]
                        mem[32] = 264
                        address(m_txs[stor260[idx]].field_0) = 0
                        m_txs[stor260[idx]].field_256 = 0
                        m_txs[stor260[idx]].field_512 = 0
                        if 31 < m_txs[stor260[idx]][2].length:
                            mem[0] = sha3(m_pendingIndex[idx], 264) + 2
                            if sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > sha3(sha3(m_pendingIndex[idx], 264) + 2):
                                m_txs[stor260[idx]][2].field_0 = 0
                                s = sha3(sha3(m_pendingIndex[idx], 264) + 2) + 1
                                while sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < m_pendingIndex.length:
                        mem[0] = 260
                        if m_pendingIndex[idx]:
                            require idx < m_pendingIndex.length
                            mem[0] = m_pendingIndex[idx]
                            mem[32] = 259
                            m_pending[stor260[idx]].field_0 = 0
                            m_pending[stor260[idx]].field_256 = 0
                            m_pending[stor260[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    m_pendingIndex.length = 0
                    if m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe:
                        stor4C0B = 0
                        idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabf
                        while m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) {
    if m_ownerIndex[address(msg.sender)]:
        if not m_pending[call.data[0 len calldata.size]].field_0:
            m_pending[call.data[0 len calldata.size]].field_0 = m_required
            m_pending[call.data[0 len calldata.size]].field_256 = 0
            m_pendingIndex.length++
            m_pending[call.data[0 len calldata.size]].field_512 = m_pendingIndex.length
            require m_pendingIndex.length < m_pendingIndex.length
            m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size])
        if 0 == m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if m_pending[call.data[0 len calldata.size]].field_0 > 1:
                m_pending[call.data[0 len calldata.size]].field_0--
                m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
            else:
                require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
                m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
                m_pending[call.data[0 len calldata.size]].field_0 = 0
                m_pending[call.data[0 len calldata.size]].field_256 = 0
                m_pending[call.data[0 len calldata.size]].field_512 = 0
                if m_ownerIndex[address(arg2)] <= 0:
                    if m_ownerIndex[address(arg1)]:
                        idx = 0
                        while idx < m_pendingIndex.length:
                            mem[0] = m_pendingIndex[idx]
                            mem[32] = 264
                            address(m_txs[stor260[idx]].field_0) = 0
                            m_txs[stor260[idx]].field_256 = 0
                            m_txs[stor260[idx]].field_512 = 0
                            if 31 < m_txs[stor260[idx]][2].length:
                                mem[0] = sha3(m_pendingIndex[idx], 264) + 2
                                if sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > sha3(sha3(m_pendingIndex[idx], 264) + 2):
                                    m_txs[stor260[idx]][2].field_0 = 0
                                    s = sha3(sha3(m_pendingIndex[idx], 264) + 2) + 1
                                    while sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < m_pendingIndex.length:
                            mem[0] = 260
                            if m_pendingIndex[idx]:
                                require idx < m_pendingIndex.length
                                mem[0] = m_pendingIndex[idx]
                                mem[32] = 259
                                m_pending[stor260[idx]].field_0 = 0
                                m_pending[stor260[idx]].field_256 = 0
                                m_pending[stor260[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        m_pendingIndex.length = 0
                        if m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe:
                            stor4C0B = 0
                            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabf
                            while m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        require m_ownerIndex[address(arg1)] < 256
                        address(m_owners[stor258[address(arg1)]].field_0) = arg2
                        Mask(96, 0, m_owners[stor258[address(arg1)]].field_160) = 0
                        m_ownerIndex[address(arg1)] = 0
                        m_ownerIndex[arg2] = m_ownerIndex[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) {
    if not m_ownerIndex[address(msg.sender)]:
    if m_pending[call.data[0 len calldata.size]].field_0:
        if m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if m_pending[call.data[0 len calldata.size]].field_0 > 1:
            m_pending[call.data[0 len calldata.size]].field_0--
            m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
        require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
        m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
        m_pending[call.data[0 len calldata.size]].field_0 = 0
        m_pending[call.data[0 len calldata.size]].field_256 = 0
        m_pending[call.data[0 len calldata.size]].field_512 = 0
        if not m_ownerIndex[address(arg1)]:
        if m_required > m_numOwners - 1:
        require m_ownerIndex[address(arg1)] < 256
        m_owners[stor258[address(arg1)]].field_0 = 0
        m_ownerIndex[address(arg1)] = 0
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = m_pendingIndex[idx]
            mem[32] = 264
            address(m_txs[stor260[idx]].field_0) = 0
            m_txs[stor260[idx]].field_256 = 0
            m_txs[stor260[idx]].field_512 = 0
            if 31 < m_txs[stor260[idx]][2].length:
                mem[0] = sha3(m_pendingIndex[idx], 264) + 2
                if sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > sha3(sha3(m_pendingIndex[idx], 264) + 2):
                    m_txs[stor260[idx]][2].field_0 = 0
                    s = sha3(sha3(m_pendingIndex[idx], 264) + 2) + 1
                    while sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = 260
            if m_pendingIndex[idx]:
                require idx < m_pendingIndex.length
                mem[0] = m_pendingIndex[idx]
                mem[32] = 259
                m_pending[stor260[idx]].field_0 = 0
                m_pending[stor260[idx]].field_256 = 0
                m_pending[stor260[idx]].field_512 = 0
            idx = idx + 1
            continue 
        m_pendingIndex.length = 0
        if m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe <= 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe:
            # nil
        else:
            stor4C0B = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabf
            while m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
    else:
        m_pending[call.data[0 len calldata.size]].field_0 = m_required
        m_pending[call.data[0 len calldata.size]].field_256 = 0
        m_pendingIndex.length++
        m_pending[call.data[0 len calldata.size]].field_512 = m_pendingIndex.length
        require m_pendingIndex.length < m_pendingIndex.length
        m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size])
        if m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if m_pending[call.data[0 len calldata.size]].field_0 > 1:
            m_pending[call.data[0 len calldata.size]].field_0--
            m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
        require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
        m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
        m_pending[call.data[0 len calldata.size]].field_0 = 0
        m_pending[call.data[0 len calldata.size]].field_256 = 0
        m_pending[call.data[0 len calldata.size]].field_512 = 0
        if not m_ownerIndex[address(arg1)]:
        if m_required > m_numOwners - 1:
        require m_ownerIndex[address(arg1)] < 256
        m_owners[stor258[address(arg1)]].field_0 = 0
        m_ownerIndex[address(arg1)] = 0
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = m_pendingIndex[idx]
            mem[32] = 264
            address(m_txs[stor260[idx]].field_0) = 0
            m_txs[stor260[idx]].field_256 = 0
            m_txs[stor260[idx]].field_512 = 0
            if 31 < m_txs[stor260[idx]][2].length:
                mem[0] = sha3(m_pendingIndex[idx], 264) + 2
                if sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > sha3(sha3(m_pendingIndex[idx], 264) + 2):
                    m_txs[stor260[idx]][2].field_0 = 0
                    s = sha3(sha3(m_pendingIndex[idx], 264) + 2) + 1
                    while sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = 260
            if m_pendingIndex[idx]:
                require idx < m_pendingIndex.length
                mem[0] = m_pendingIndex[idx]
                mem[32] = 259
                m_pending[stor260[idx]].field_0 = 0
                m_pending[stor260[idx]].field_256 = 0
                m_pending[stor260[idx]].field_512 = 0
            idx = idx + 1
            continue 
        m_pendingIndex.length = 0
        if m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe <= 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe:
            # nil
        else:
            stor4C0B = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabf
            while m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if not m_ownerIndex[address(msg.sender)]:
    if m_pending[call.data[0 len calldata.size]].field_0:
        if m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if m_pending[call.data[0 len calldata.size]].field_0 > 1:
            m_pending[call.data[0 len calldata.size]].field_0--
            m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
        require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
        m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
        m_pending[call.data[0 len calldata.size]].field_0 = 0
        m_pending[call.data[0 len calldata.size]].field_256 = 0
        m_pending[call.data[0 len calldata.size]].field_512 = 0
        if m_ownerIndex[address(arg1)] > 0:
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = m_pendingIndex[idx]
            mem[32] = 264
            address(m_txs[stor260[idx]].field_0) = 0
            m_txs[stor260[idx]].field_256 = 0
            m_txs[stor260[idx]].field_512 = 0
            if 31 < m_txs[stor260[idx]][2].length:
                mem[0] = sha3(m_pendingIndex[idx], 264) + 2
                if sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > sha3(sha3(m_pendingIndex[idx], 264) + 2):
                    m_txs[stor260[idx]][2].field_0 = 0
                    s = sha3(sha3(m_pendingIndex[idx], 264) + 2) + 1
                    while sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = 260
            if m_pendingIndex[idx]:
                require idx < m_pendingIndex.length
                mem[0] = m_pendingIndex[idx]
                mem[32] = 259
                m_pending[stor260[idx]].field_0 = 0
                m_pending[stor260[idx]].field_256 = 0
                m_pending[stor260[idx]].field_512 = 0
            idx = idx + 1
            continue 
        m_pendingIndex.length = 0
        if m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe <= 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe:
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                m_ownerIndex[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor4C0B = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabf
            while m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                m_ownerIndex[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(owner[stor1].field_0) = arg1
                    Mask(96, 0, owner[stor1].field_160) = 0
                    m_ownerIndex[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
    else:
        m_pending[call.data[0 len calldata.size]].field_0 = m_required
        m_pending[call.data[0 len calldata.size]].field_256 = 0
        m_pendingIndex.length++
        m_pending[call.data[0 len calldata.size]].field_512 = m_pendingIndex.length
        require m_pendingIndex.length < m_pendingIndex.length
        m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size])
        if m_pending[call.data[0 len calldata.size]].field_256 and 2^m_ownerIndex[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if m_pending[call.data[0 len calldata.size]].field_0 > 1:
            m_pending[call.data[0 len calldata.size]].field_0--
            m_pending[call.data[0 len calldata.size]].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]].field_256
        require m_pending[call.data[0 len calldata.size]].field_512 < m_pendingIndex.length
        m_pendingIndex[stor259[call.data[0 len calldata.size]].field_512] = 0
        m_pending[call.data[0 len calldata.size]].field_0 = 0
        m_pending[call.data[0 len calldata.size]].field_256 = 0
        m_pending[call.data[0 len calldata.size]].field_512 = 0
        if m_ownerIndex[address(arg1)] > 0:
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = m_pendingIndex[idx]
            mem[32] = 264
            address(m_txs[stor260[idx]].field_0) = 0
            m_txs[stor260[idx]].field_256 = 0
            m_txs[stor260[idx]].field_512 = 0
            if 31 < m_txs[stor260[idx]][2].length:
                mem[0] = sha3(m_pendingIndex[idx], 264) + 2
                if sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > sha3(sha3(m_pendingIndex[idx], 264) + 2):
                    m_txs[stor260[idx]][2].field_0 = 0
                    s = sha3(sha3(m_pendingIndex[idx], 264) + 2) + 1
                    while sha3(sha3(m_pendingIndex[idx], 264) + 2) + (m_txs[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < m_pendingIndex.length:
            mem[0] = 260
            if m_pendingIndex[idx]:
                require idx < m_pendingIndex.length
                mem[0] = m_pendingIndex[idx]
                mem[32] = 259
                m_pending[stor260[idx]].field_0 = 0
                m_pending[stor260[idx]].field_256 = 0
                m_pending[stor260[idx]].field_512 = 0
            idx = idx + 1
            continue 
        m_pendingIndex.length = 0
        if m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe <= 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe:
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                m_ownerIndex[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor4C0B = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabf
            while m_pendingIndex.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fabe > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                m_ownerIndex[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(owner[stor1].field_0) = arg1
                    Mask(96, 0, owner[stor1].field_160) = 0
                    m_ownerIndex[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    if m_ownerIndex[address(msg.sender)] <= 0:
        return 0
    if m_ownerIndex[address(msg.sender)] > 0:
        if block.timestamp / 24 * 3600 > m_lastDay:
            m_spentToday = 0
            m_lastDay = block.timestamp / 24 * 3600
        if m_spentToday + arg2 >= m_spentToday:
            if m_spentToday + arg2 <= m_dailyLimit:
                m_spentToday += arg2
                emit SingleTransact(address(msg.sender), arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args arg3[all]
                return 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = block.number
    if not m_ownerIndex[address(msg.sender)]:
        if not address(m_txs[call.data[0 len calldata.size]][block.number].field_0):
            address(m_txs[call.data[0 len calldata.size]][block.number].field_0) = arg1
            m_txs[call.data[0 len calldata.size]][block.number].field_256 = arg2
            m_txs[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                m_txs[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            if m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
                stor[('array', 2, ('map', ('data', ('call.data', 0, 'calldatasize'), 'number'), ('name', 'm_txs', 264))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
                idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
                while m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                    m_txs[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
    else:
        if not m_pending[call.data[0 len calldata.size]][block.number].field_0:
            m_pending[call.data[0 len calldata.size]][block.number].field_0 = m_required
            m_pending[call.data[0 len calldata.size]][block.number].field_256 = 0
            m_pendingIndex.length++
            m_pending[call.data[0 len calldata.size]][block.number].field_512 = m_pendingIndex.length
            require m_pendingIndex.length < m_pendingIndex.length
            m_pendingIndex[m_pendingIndex.length] = sha3(call.data[0 len calldata.size], block.number)
        if m_pending[call.data[0 len calldata.size]][block.number].field_256 and 2^m_ownerIndex[address(msg.sender)] != 0:
            if not address(m_txs[call.data[0 len calldata.size]][block.number].field_0):
                address(m_txs[call.data[0 len calldata.size]][block.number].field_0) = arg1
                m_txs[call.data[0 len calldata.size]][block.number].field_256 = arg2
                m_txs[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    m_txs[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                if m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
                    stor[('array', 2, ('map', ('data', ('call.data', 0, 'calldatasize'), 'number'), ('name', 'm_txs', 264))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
                    idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
                    while m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                        m_txs[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        else:
            mem[128] = sha3(call.data[0 len calldata.size], block.number)
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if m_pending[call.data[0 len calldata.size]][block.number].field_0 > 1:
                m_pending[call.data[0 len calldata.size]][block.number].field_0--
                m_pending[call.data[0 len calldata.size]][block.number].field_256 = 2^m_ownerIndex[address(msg.sender)] or m_pending[call.data[0 len calldata.size]][block.number].field_256
                if not address(m_txs[call.data[0 len calldata.size]][block.number].field_0):
                    address(m_txs[call.data[0 len calldata.size]][block.number].field_0) = arg1
                    m_txs[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    m_txs[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        m_txs[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    if m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
                        stor[('array', 2, ('map', ('data', ('call.data', 0, 'calldatasize'), 'number'), ('name', 'm_txs', 264))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
                        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
                        while m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            m_txs[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
            else:
                require m_pending[call.data[0 len calldata.size]][block.number].field_512 < m_pendingIndex.length
                m_pendingIndex[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                m_pending[call.data[0 len calldata.size]][block.number].field_0 = 0
                m_pending[call.data[0 len calldata.size]][block.number].field_256 = 0
                m_pending[call.data[0 len calldata.size]][block.number].field_512 = 0
                if not address(m_txs[call.data[0 len calldata.size]][block.number].field_0):
                    if not address(m_txs[call.data[0 len calldata.size]][block.number].field_0):
                        address(m_txs[call.data[0 len calldata.size]][block.number].field_0) = arg1
                        m_txs[call.data[0 len calldata.size]][block.number].field_256 = arg2
                        m_txs[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                        s = 0
                        idx = arg3 + 36
                        while arg3 + arg3.length + 36 > idx:
                            m_txs[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        if m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
                            stor[('array', 2, ('map', ('data', ('call.data', 0, 'calldatasize'), 'number'), ('name', 'm_txs', 264))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
                            idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
                            while m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                                m_txs[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                else:
                    mem[96] = m_txs[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 96
                    s = 0
                    while m_txs[call.data[0 len calldata.size]][block.number][2].length + 96 > idx + 32:
                        mem[idx + 32] = m_txs[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(m_txs[call.data[0 len calldata.size]][block.number].field_0).mem[96 len 4] with:
                       value m_txs[call.data[0 len calldata.size]][block.number].field_256 wei
                         gas gas_remaining - 34050 wei
                        args mem[100 len m_txs[call.data[0 len calldata.size]][block.number][2].length + (floor32(m_txs[call.data[0 len calldata.size]][block.number][2].length - 1) + -m_txs[call.data[0 len calldata.size]][block.number][2].length + 32 % 32) - 4]
                    mem[288] = m_txs[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 288
                    s = 0
                    while m_txs[call.data[0 len calldata.size]][block.number][2].length + 288 > idx + 32:
                        mem[idx + 32] = m_txs[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit MultiTransact(msg.sender, sha3(call.data[0 len calldata.size], block.number), m_txs[call.data[0 len calldata.size]][block.number].field_256, address(m_txs[call.data[0 len calldata.size]][block.number].field_0), Array(len=m_txs[call.data[0 len calldata.size]][block.number][2].length, data=mem[288 len m_txs[call.data[0 len calldata.size]][block.number][2].length + (floor32(m_txs[call.data[0 len calldata.size]][block.number][2].length - 1) + -m_txs[call.data[0 len calldata.size]][block.number][2].length + 32 % 32)]));
                    address(m_txs[call.data[0 len calldata.size]][block.number].field_0) = 0
                    m_txs[call.data[0 len calldata.size]][block.number].field_256 = 0
                    m_txs[call.data[0 len calldata.size]][block.number].field_512 = 0
                    if 31 < m_txs[call.data[0 len calldata.size]][block.number][2].length:
                        idx = 0
                        while m_txs[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            m_txs[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
    return sha3(call.data[0 len calldata.size], block.number)
}



}
