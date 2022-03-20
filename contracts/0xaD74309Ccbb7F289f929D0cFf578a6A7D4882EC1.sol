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
uint256 stor264;

function _fallback() payable {
    stor264 = 2
    mem[96 len -4031] = code.data[4325 len -4031]
    mem[64] = -3935
    stor1 = mem[mem[96] + 96] + 1
    address(stor3.field_0) = tx.origin
    Mask(96, 0, stor3.field_160) = 0
    stor258[tx.origin] = 1
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
    return code.data[294 len 4031]
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
array of struct stor2;
array of struct stor3;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
uint256 version;
mapping of struct stor265;
array of uint256 stor134362497131732684766947733697904354910427864217913880040222171057633428218;

function m_numOwners() payable {
    return m_numOwners
}

function m_lastDay() payable {
    return m_lastDay
}

function version() payable {
    return version
}

function m_spentToday() payable {
    return m_spentToday
}

function m_required() payable {
    return m_required
}

function m_dailyLimit() payable {
    return m_dailyLimit
}

function kill(address arg1) payable {
    if 0 == stor258[tx.origin]:
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
        require stor260.length < stor260.length
        stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
    if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
    emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
    if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
        stor259[call.data[0 len calldata.size]][block.number].field_0--
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
    require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
    stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
    stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
    selfdestruct(arg1)
}

function isOwner(address arg1) payable {
    return (stor258[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(tx.origin, msg.value);
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor258[address(arg2)] != 0:
        if 2^stor258[address(arg2)] and stor259[arg1].field_256 != 0:
            return 1
        else:
            return 0
    else:
        return 0
}

function revoke(bytes32 arg1) payable {
    if stor258[tx.origin] != 0:
        if 2^stor258[tx.origin] and stor259[arg1].field_256 > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[tx.origin]
            emit Revoke(tx.origin, arg1);
}

function resetSpentToday() payable {
    if stor258[tx.origin] != 0:
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
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) payable {
    if stor258[tx.origin] != 0:
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
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                m_dailyLimit = arg1
}

function confirm(bytes32 arg1) payable {
    if 0 == stor258[tx.origin]:
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
        require stor260.length < stor260.length
        stor4C0B[stor260.length] = arg1
    if 2^stor258[tx.origin] and stor259[arg1].field_256 != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(tx.origin, arg1);
    if stor259[arg1].field_0 > 1:
        stor259[arg1].field_0--
        stor259[arg1].field_256 = 2^stor258[tx.origin] or stor259[arg1].field_256
        return 0
    require stor259[arg1].field_512 < stor260.length
    stor4C0B[stor259[arg1].field_512] = 0
    stor259[arg1].field_0 = 0
    stor259[arg1].field_256 = 0
    stor259[arg1].field_512 = 0
    if not address(stor265[arg1].field_0):
        return 0
    if not stor265[arg1].field_512:
        call address(stor265[arg1].field_0) with:
           value stor265[arg1].field_256 wei
             gas gas_remaining - 34050 wei
    else:
        mem[96] = stor265[arg1][2].field_0
        idx = 96
        s = 0
        while stor265[arg1].field_512 + 96 > idx + 32:
            mem[idx + 32] = stor265[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor265[arg1].field_0).mem[96 len 4] with:
           value stor265[arg1].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[100 len stor265[arg1].field_512 + (floor32(stor265[arg1].field_512 - 1) + -stor265[arg1].field_512 + 32 % 32) - 4]
    if not stor265[arg1].field_512:
        emit MultiTransact(address rg1, bytes32 rg2, uint256 rg3, address rg4, bytes rg5):
                           tx.origin,
                           arg1,
                           stor265[arg1].field_256,
                           address(stor265[arg1].field_0),
                           160,
                           stor265[arg1].field_512,
    else:
        mem[288] = stor265[arg1][2].field_0
        idx = 288
        s = 0
        while stor265[arg1].field_512 + 288 > idx + 32:
            mem[idx + 32] = stor265[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit MultiTransact(tx.origin, arg1, stor265[arg1].field_256, address(stor265[arg1].field_0), Array(len=stor265[arg1].field_512, data=mem[288 len stor265[arg1].field_512 + (floor32(stor265[arg1].field_512 - 1) + -stor265[arg1].field_512 + 32 % 32)]));
    address(stor265[arg1].field_0) = 0
    stor265[arg1].field_256 = 0
    stor265[arg1].field_512 = 0
    idx = 0
    while stor265[arg1].field_512 + 31 / 32 > idx:
        stor265[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    return 1
}

function changeRequirement(uint256 arg1) payable {
    if stor258[tx.origin] != 0:
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
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor260.length:
                        mem[32] = 265
                        address(stor265[stor4C0B[idx]].field_0) = 0
                        stor265[stor4C0B[idx]].field_256 = 0
                        stor265[stor4C0B[idx]].field_512 = 0
                        mem[0] = sha3(stor4C0B[idx], 265) + 2
                        s = sha3(sha3(stor4C0B[s], 265) + 2)
                        while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
                        continue 
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = 260
                        if stor4C0B[idx]:
                            require idx < stor260.length
                            mem[0] = stor4C0B[idx]
                            mem[32] = 259
                            stor259[stor4C0B[idx]].field_0 = 0
                            stor259[stor4C0B[idx]].field_256 = 0
                            stor259[stor4C0B[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor260.length = 0
                    idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
                    while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) payable {
    if stor258[tx.origin] != 0:
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
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if stor258[address(arg2)] <= 0:
                    if stor258[address(arg1)]:
                        idx = 0
                        while idx < stor260.length:
                            mem[32] = 265
                            address(stor265[stor4C0B[idx]].field_0) = 0
                            stor265[stor4C0B[idx]].field_256 = 0
                            stor265[stor4C0B[idx]].field_512 = 0
                            mem[0] = sha3(stor4C0B[idx], 265) + 2
                            s = sha3(sha3(stor4C0B[s], 265) + 2)
                            while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
                            continue 
                        idx = 0
                        while idx < stor260.length:
                            mem[0] = 260
                            if stor4C0B[idx]:
                                require idx < stor260.length
                                mem[0] = stor4C0B[idx]
                                mem[32] = 259
                                stor259[stor4C0B[idx]].field_0 = 0
                                stor259[stor4C0B[idx]].field_256 = 0
                                stor259[stor4C0B[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor260.length = 0
                        idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
                        while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor258[address(arg1)] < 256
                        address(stor2[stor258[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor2[stor258[address(arg1)]].field_160) = 0
                        stor258[address(arg1)] = 0
                        stor258[arg2] = stor258[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) payable {
    if 0 == stor258[tx.origin]:
    if stor259[call.data[0 len calldata.size]][block.number].field_0:
        if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
        emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
        if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
            stor259[call.data[0 len calldata.size]][block.number].field_0--
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
        require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
        stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
        stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
        if not stor258[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor258[address(arg1)] < 256
        stor2[stor258[address(arg1)]].field_0 = 0
        stor258[address(arg1)] = 0
        idx = 0
        while idx < stor260.length:
            mem[32] = 265
            address(stor265[stor4C0B[idx]].field_0) = 0
            stor265[stor4C0B[idx]].field_256 = 0
            stor265[stor4C0B[idx]].field_512 = 0
            mem[0] = sha3(stor4C0B[idx], 265) + 2
            s = sha3(sha3(stor4C0B[s], 265) + 2)
            while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
            continue 
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor4C0B[idx]:
                require idx < stor260.length
                mem[0] = stor4C0B[idx]
                mem[32] = 259
                stor259[stor4C0B[idx]].field_0 = 0
                stor259[stor4C0B[idx]].field_256 = 0
                stor259[stor4C0B[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
        while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        if 1 < m_numOwners:
            # nil
        else:
            emit OwnerRemoved(arg1);
    else:
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
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[32] = 265
                address(stor265[stor4C0B[idx]].field_0) = 0
                stor265[stor4C0B[idx]].field_256 = 0
                stor265[stor4C0B[idx]].field_512 = 0
                mem[0] = sha3(stor4C0B[idx], 265) + 2
                s = sha3(sha3(stor4C0B[s], 265) + 2)
                while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor4C0B[idx]:
                    require idx < stor260.length
                    mem[0] = stor4C0B[idx]
                    mem[32] = 259
                    stor259[stor4C0B[idx]].field_0 = 0
                    stor259[stor4C0B[idx]].field_256 = 0
                    stor259[stor4C0B[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[32] = 265
                address(stor265[stor4C0B[idx]].field_0) = 0
                stor265[stor4C0B[idx]].field_256 = 0
                stor265[stor4C0B[idx]].field_512 = 0
                mem[0] = sha3(stor4C0B[idx], 265) + 2
                s = sha3(sha3(stor4C0B[s], 265) + 2)
                while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor4C0B[idx]:
                    require idx < stor260.length
                    mem[0] = stor4C0B[idx]
                    mem[32] = 259
                    stor259[stor4C0B[idx]].field_0 = 0
                    stor259[stor4C0B[idx]].field_256 = 0
                    stor259[stor4C0B[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if 0 == stor258[tx.origin]:
    if stor259[call.data[0 len calldata.size]][block.number].field_0:
        if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
        emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
        if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
            stor259[call.data[0 len calldata.size]][block.number].field_0--
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
        require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
        stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
        stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
        if stor258[address(arg1)] > 0:
        idx = 0
        while idx < stor260.length:
            mem[32] = 265
            address(stor265[stor4C0B[idx]].field_0) = 0
            stor265[stor4C0B[idx]].field_256 = 0
            stor265[stor4C0B[idx]].field_512 = 0
            mem[0] = sha3(stor4C0B[idx], 265) + 2
            s = sha3(sha3(stor4C0B[s], 265) + 2)
            while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
            continue 
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor4C0B[idx]:
                require idx < stor260.length
                mem[0] = stor4C0B[idx]
                mem[32] = 259
                stor259[stor4C0B[idx]].field_0 = 0
                stor259[stor4C0B[idx]].field_256 = 0
                stor259[stor4C0B[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
        while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        if m_numOwners < 250:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(stor3[stor1].field_0) = arg1
            Mask(96, 0, stor3[stor1].field_160) = 0
            stor258[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
        if 1 < m_numOwners:
            # nil
        else:
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor3[stor1].field_0) = arg1
                Mask(96, 0, stor3[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
    else:
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
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[32] = 265
                address(stor265[stor4C0B[idx]].field_0) = 0
                stor265[stor4C0B[idx]].field_256 = 0
                stor265[stor4C0B[idx]].field_512 = 0
                mem[0] = sha3(stor4C0B[idx], 265) + 2
                s = sha3(sha3(stor4C0B[s], 265) + 2)
                while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor4C0B[idx]:
                    require idx < stor260.length
                    mem[0] = stor4C0B[idx]
                    mem[32] = 259
                    stor259[stor4C0B[idx]].field_0 = 0
                    stor259[stor4C0B[idx]].field_256 = 0
                    stor259[stor4C0B[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor3[stor1].field_0) = arg1
                Mask(96, 0, stor3[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[32] = 265
                address(stor265[stor4C0B[idx]].field_0) = 0
                stor265[stor4C0B[idx]].field_256 = 0
                stor265[stor4C0B[idx]].field_512 = 0
                mem[0] = sha3(stor4C0B[idx], 265) + 2
                s = sha3(sha3(stor4C0B[s], 265) + 2)
                while sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                s = sha3(sha3(stor4C0B[s], 265) + 2) + (stor265[stor4C0B[s]].field_512 + 31 / 32) + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor4C0B[idx]:
                    require idx < stor260.length
                    mem[0] = stor4C0B[idx]
                    mem[32] = 259
                    stor259[stor4C0B[idx]].field_0 = 0
                    stor259[stor4C0B[idx]].field_256 = 0
                    stor259[stor4C0B[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x4c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor3[stor1].field_0) = arg1
                Mask(96, 0, stor3[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(stor3[stor1].field_0) = arg1
                    Mask(96, 0, stor3[stor1].field_160) = 0
                    stor258[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    if stor258[tx.origin] <= 0:
        return 0
    if stor258[tx.origin] > 0:
        if block.timestamp / 24 * 3600 > m_lastDay:
            m_spentToday = 0
            m_lastDay = block.timestamp / 24 * 3600
        if arg2 + m_spentToday >= m_spentToday:
            if arg2 + m_spentToday <= m_dailyLimit:
                m_spentToday += arg2
                emit SingleTransact(tx.origin, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args arg3[all]
                return 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = block.number
    if 0 == stor258[tx.origin]:
        if not address(stor265[call.data[0 len calldata.size]][block.number].field_0):
            stor265[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor265[call.data[0 len calldata.size]][block.number].field_0)
            stor265[call.data[0 len calldata.size]][block.number].field_256 = arg2
            stor265[call.data[0 len calldata.size]][block.number].field_512 = arg3.length
            if not arg3.length:
                idx = 0
                while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                    stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor265[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                    stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), tx.origin, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
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
            require stor260.length < stor260.length
            stor4C0B[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
        if 2^stor258[tx.origin] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
            if not address(stor265[call.data[0 len calldata.size]][block.number].field_0):
                stor265[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor265[call.data[0 len calldata.size]][block.number].field_0)
                stor265[call.data[0 len calldata.size]][block.number].field_256 = arg2
                stor265[call.data[0 len calldata.size]][block.number].field_512 = arg3.length
                if not arg3.length:
                    idx = 0
                    while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                        stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor265[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                        stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), tx.origin, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        else:
            mem[128] = sha3(call.data[0 len calldata.size], block.number)
            emit Confirmation(tx.origin, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[tx.origin] or stor259[call.data[0 len calldata.size]][block.number].field_256
                if not address(stor265[call.data[0 len calldata.size]][block.number].field_0):
                    stor265[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor265[call.data[0 len calldata.size]][block.number].field_0)
                    stor265[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    stor265[call.data[0 len calldata.size]][block.number].field_512 = arg3.length
                    if not arg3.length:
                        idx = 0
                        while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                            stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = arg3 + 36
                        while arg3 + arg3.length + 36 > idx:
                            stor265[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg3.length + 31) >> 5
                        while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                            stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), tx.origin, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor4C0B[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if not address(stor265[call.data[0 len calldata.size]][block.number].field_0):
                    if not address(stor265[call.data[0 len calldata.size]][block.number].field_0):
                        stor265[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor265[call.data[0 len calldata.size]][block.number].field_0)
                        stor265[call.data[0 len calldata.size]][block.number].field_256 = arg2
                        stor265[call.data[0 len calldata.size]][block.number].field_512 = arg3.length
                        if not arg3.length:
                            idx = 0
                            while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                                stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = arg3 + 36
                            while arg3 + arg3.length + 36 > idx:
                                stor265[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, arg3.length + 31) >> 5
                            while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                                stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), tx.origin, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                else:
                    if not stor265[call.data[0 len calldata.size]][block.number].field_512:
                        call address(stor265[call.data[0 len calldata.size]][block.number].field_0) with:
                           value stor265[call.data[0 len calldata.size]][block.number].field_256 wei
                             gas gas_remaining - 34050 wei
                    else:
                        mem[96] = stor265[call.data[0 len calldata.size]][block.number][2].field_0
                        idx = 96
                        s = 0
                        while stor265[call.data[0 len calldata.size]][block.number].field_512 + 96 > idx + 32:
                            mem[idx + 32] = stor265[call.data[0 len calldata.size]][block.number][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call address(stor265[call.data[0 len calldata.size]][block.number].field_0).mem[96 len 4] with:
                           value stor265[call.data[0 len calldata.size]][block.number].field_256 wei
                             gas gas_remaining - 34050 wei
                            args mem[100 len stor265[call.data[0 len calldata.size]][block.number].field_512 + (floor32(stor265[call.data[0 len calldata.size]][block.number].field_512 - 1) + -stor265[call.data[0 len calldata.size]][block.number].field_512 + 32 % 32) - 4]
                    if not stor265[call.data[0 len calldata.size]][block.number].field_512:
                        emit MultiTransact(address rg1, bytes32 rg2, uint256 rg3, address rg4, bytes rg5):
                                           tx.origin,
                                           sha3(call.data[0 len calldata.size], block.number),
                                           stor265[call.data[0 len calldata.size]][block.number].field_256,
                                           address(stor265[call.data[0 len calldata.size]][block.number].field_0),
                                           160,
                                           stor265[call.data[0 len calldata.size]][block.number].field_512,
                    else:
                        mem[288] = stor265[call.data[0 len calldata.size]][block.number][2].field_0
                        idx = 288
                        s = 0
                        while stor265[call.data[0 len calldata.size]][block.number].field_512 + 288 > idx + 32:
                            mem[idx + 32] = stor265[call.data[0 len calldata.size]][block.number][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit MultiTransact(tx.origin, sha3(call.data[0 len calldata.size], block.number), stor265[call.data[0 len calldata.size]][block.number].field_256, address(stor265[call.data[0 len calldata.size]][block.number].field_0), Array(len=stor265[call.data[0 len calldata.size]][block.number].field_512, data=mem[288 len stor265[call.data[0 len calldata.size]][block.number].field_512 + (floor32(stor265[call.data[0 len calldata.size]][block.number].field_512 - 1) + -stor265[call.data[0 len calldata.size]][block.number].field_512 + 32 % 32)]));
                    address(stor265[call.data[0 len calldata.size]][block.number].field_0) = 0
                    stor265[call.data[0 len calldata.size]][block.number].field_256 = 0
                    stor265[call.data[0 len calldata.size]][block.number].field_512 = 0
                    idx = 0
                    while stor265[call.data[0 len calldata.size]][block.number].field_512 + 31 / 32 > idx:
                        stor265[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
    return sha3(call.data[0 len calldata.size], block.number)
}



}
