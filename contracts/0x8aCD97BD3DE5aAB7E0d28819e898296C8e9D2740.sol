contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint128 stor4; offset 160
address stor4;
array of struct stor5;
mapping of uint256 stor259;
uint256 stor262;
uint256 stor264;
uint256 stor265;

function _fallback() payable {
    stor265 = 2
    mem[96 len -4343] = code.data[4594 len -4343]
    mem[64] = -4247
    stor2 = mem[mem[96] + 96] + 1
    address(stor4.field_0) = msg.sender
    Mask(96, 0, stor4.field_160) = 0
    mem[0] = msg.sender
    mem[32] = 259
    stor259[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor5[idx].field_0 = mem[mem[96] + (32 * idx) + 140 len 20]
        stor5[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
        mem[32] = 259
        stor259[mem[mem[96] + (32 * idx) + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor1 = mem[128]
    stor262 = mem[160]
    stor264 = block.timestamp / 24 * 3600
    return code.data[251 len 4343]
}



// =====================  Runtime code  =====================


uint256 stor0; offset 8
uint256 stor0;
uint256 m_required;
uint256 m_numOwners;
array of struct stor3;
array of struct stor4;
mapping of uint256 stor259;
mapping of struct stor260;
array of uint256 stor261;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
uint256 version;
mapping of struct stor266;
array of uint256 stor114157174466269788254070916921964605470815142572687165195628328561717180527473;

function m_numOwners() {
    return m_numOwners
}

function m_lastDay() {
    return m_lastDay
}

function version() {
    return version
}

function m_spentToday() {
    return m_spentToday
}

function m_required() {
    return m_required
}

function m_dailyLimit() {
    return m_dailyLimit
}

function kill(address arg1) {
    if 0 == stor259[address(msg.sender)]:
    if not stor260[call.data[0 len calldata.size]][block.number].field_0:
        stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor261.length++
        if not stor261.length <= stor261.length + 1:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
        stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
        require stor261.length < stor261.length
        storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
    if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
    if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
        stor260[call.data[0 len calldata.size]][block.number].field_0--
        stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
    require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
    stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
    stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
    stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
    stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
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
        if 2^stor259[address(arg2)] and stor260[arg1].field_256 != 0:
            return 1
        else:
            return 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor259[address(msg.sender)] != 0:
        if 2^stor259[address(msg.sender)] and stor260[arg1].field_256 > 0:
            stor260[arg1].field_0++
            stor260[arg1].field_256 -= 2^stor259[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function resetSpentToday() {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]][block.number].field_0:
            stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]][block.number].field_0:
            stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
                m_dailyLimit = arg1
}

function confirm(bytes32 arg1) {
    if 0 == stor259[address(msg.sender)]:
        return 0
    if not stor260[arg1].field_0:
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
        storFC62[stor261.length] = arg1
    if 2^stor259[address(msg.sender)] and stor260[arg1].field_256 != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor260[arg1].field_0 > 1:
        stor260[arg1].field_0--
        stor260[arg1].field_256 = 2^stor259[address(msg.sender)] or stor260[arg1].field_256
        return 0
    require stor260[arg1].field_512 < stor261.length
    stor261[stor260[arg1].field_512] = 0
    stor260[arg1].field_0 = 0
    stor260[arg1].field_256 = 0
    stor260[arg1].field_512 = 0
    if not address(stor266[arg1].field_0):
        return 0
    mem[96] = stor266[arg1][2].field_0
    idx = 96
    s = 0
    while stor266[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = stor266[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call address(stor266[arg1].field_0).mem[96 len 4] with:
       value stor266[arg1].field_256 wei
         gas gas_remaining - 34050 wei
        args mem[100 len stor266[arg1][2].length + (floor32(stor266[arg1][2].length - 1) + -stor266[arg1][2].length + 32 % 32) - 4]
    uint256(stor0.field_0) = Mask(248, 0, stor0.field_8)
    mem[288] = stor266[arg1][2].field_0
    idx = 288
    s = 0
    while stor266[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor266[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit MultiTransact(msg.sender, arg1, stor266[arg1].field_256, address(stor266[arg1].field_0), Array(len=stor266[arg1][2].length, data=mem[288 len stor266[arg1][2].length + (floor32(stor266[arg1][2].length - 1) + -stor266[arg1][2].length + 32 % 32)]));
    address(stor266[arg1].field_0) = 0
    stor266[arg1].field_256 = 0
    stor266[arg1].field_512 = 0
    if 31 < stor266[arg1][2].length:
        idx = 0
        while stor266[arg1][2].length + 31 / 32 > idx:
            stor266[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function changeRequirement(uint256 arg1) {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]][block.number].field_0:
            stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor261.length:
                        mem[0] = stor261[idx]
                        mem[32] = 266
                        address(stor266[stor261[idx]].field_0) = 0
                        stor266[stor261[idx]].field_256 = 0
                        stor266[stor261[idx]].field_512 = 0
                        if 31 < stor266[stor261[idx]][2].length:
                            mem[0] = sha3(stor261[idx], 266) + 2
                            s = sha3(sha3(stor261[idx], 266) + 2)
                            while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor261.length:
                        mem[0] = 261
                        if stor261[idx]:
                            require idx < stor261.length
                            mem[0] = stor261[idx]
                            mem[32] = 260
                            stor260[stor261[idx]].field_0 = 0
                            stor260[stor261[idx]].field_256 = 0
                            stor260[stor261[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor261.length = 0
                    idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
                    while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]][block.number].field_0:
            stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            else:
                require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
                if stor259[address(arg2)] <= 0:
                    if stor259[address(arg1)]:
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = stor261[idx]
                            mem[32] = 266
                            address(stor266[stor261[idx]].field_0) = 0
                            stor266[stor261[idx]].field_256 = 0
                            stor266[stor261[idx]].field_512 = 0
                            if 31 < stor266[stor261[idx]][2].length:
                                mem[0] = sha3(stor261[idx], 266) + 2
                                s = sha3(sha3(stor261[idx], 266) + 2)
                                while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if stor261[idx]:
                                require idx < stor261.length
                                mem[0] = stor261[idx]
                                mem[32] = 260
                                stor260[stor261[idx]].field_0 = 0
                                stor260[stor261[idx]].field_256 = 0
                                stor260[stor261[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
                        while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor259[address(arg1)] < 256
                        address(stor3[stor259[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor3[stor259[address(arg1)]].field_160) = 0
                        stor259[address(arg1)] = 0
                        stor259[arg2] = stor259[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]][block.number].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
        if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
            stor260[call.data[0 len calldata.size]][block.number].field_0--
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
        require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
        stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
        stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
        stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
        if not stor259[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor259[address(arg1)] < 256
        stor3[stor259[address(arg1)]].field_0 = 0
        stor259[address(arg1)] = 0
        idx = 0
        while idx < stor261.length:
            mem[0] = stor261[idx]
            mem[32] = 266
            address(stor266[stor261[idx]].field_0) = 0
            stor266[stor261[idx]].field_256 = 0
            stor266[stor261[idx]].field_512 = 0
            if 31 < stor266[stor261[idx]][2].length:
                mem[0] = sha3(stor261[idx], 266) + 2
                s = sha3(sha3(stor261[idx], 266) + 2)
                while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if stor261[idx]:
                require idx < stor261.length
                mem[0] = stor261[idx]
                mem[32] = 260
                stor260[stor261[idx]].field_0 = 0
                stor260[stor261[idx]].field_256 = 0
                stor260[stor261[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
        while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        if 1 < m_numOwners:
            # nil
        else:
            emit OwnerRemoved(arg1);
    else:
        stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor261.length++
        if not stor261.length <= stor261.length + 1:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
            if not stor259[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 266
                address(stor266[stor261[idx]].field_0) = 0
                stor266[stor261[idx]].field_256 = 0
                stor266[stor261[idx]].field_512 = 0
                if 31 < stor266[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 266) + 2
                    s = sha3(sha3(stor261[idx], 266) + 2)
                    while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor261[idx]:
                    require idx < stor261.length
                    mem[0] = stor261[idx]
                    mem[32] = 260
                    stor260[stor261[idx]].field_0 = 0
                    stor260[stor261[idx]].field_256 = 0
                    stor260[stor261[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
            while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
            if not stor259[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 266
                address(stor266[stor261[idx]].field_0) = 0
                stor266[stor261[idx]].field_256 = 0
                stor266[stor261[idx]].field_512 = 0
                if 31 < stor266[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 266) + 2
                    s = sha3(sha3(stor261[idx], 266) + 2)
                    while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor261[idx]:
                    require idx < stor261.length
                    mem[0] = stor261[idx]
                    mem[32] = 260
                    stor260[stor261[idx]].field_0 = 0
                    stor260[stor261[idx]].field_256 = 0
                    stor260[stor261[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
            while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]][block.number].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
        if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
            stor260[call.data[0 len calldata.size]][block.number].field_0--
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
        require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
        stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
        stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
        stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
        if stor259[address(arg1)] > 0:
        idx = 0
        while idx < stor261.length:
            mem[0] = stor261[idx]
            mem[32] = 266
            address(stor266[stor261[idx]].field_0) = 0
            stor266[stor261[idx]].field_256 = 0
            stor266[stor261[idx]].field_512 = 0
            if 31 < stor266[stor261[idx]][2].length:
                mem[0] = sha3(stor261[idx], 266) + 2
                s = sha3(sha3(stor261[idx], 266) + 2)
                while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if stor261[idx]:
                require idx < stor261.length
                mem[0] = stor261[idx]
                mem[32] = 260
                stor260[stor261[idx]].field_0 = 0
                stor260[stor261[idx]].field_256 = 0
                stor260[stor261[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
        while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        if m_numOwners < 250:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(stor4[stor2].field_0) = arg1
            Mask(96, 0, stor4[stor2].field_160) = 0
            stor259[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
        if 1 < m_numOwners:
            # nil
        else:
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
    else:
        stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor261.length++
        if not stor261.length <= stor261.length + 1:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 266
                address(stor266[stor261[idx]].field_0) = 0
                stor266[stor261[idx]].field_256 = 0
                stor266[stor261[idx]].field_512 = 0
                if 31 < stor266[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 266) + 2
                    s = sha3(sha3(stor261[idx], 266) + 2)
                    while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor261[idx]:
                    require idx < stor261.length
                    mem[0] = stor261[idx]
                    mem[32] = 260
                    stor260[stor261[idx]].field_0 = 0
                    stor260[stor261[idx]].field_256 = 0
                    stor260[stor261[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
            while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
            require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
            stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = stor261[idx]
                mem[32] = 266
                address(stor266[stor261[idx]].field_0) = 0
                stor266[stor261[idx]].field_256 = 0
                stor266[stor261[idx]].field_512 = 0
                if 31 < stor266[stor261[idx]][2].length:
                    mem[0] = sha3(stor261[idx], 266) + 2
                    s = sha3(sha3(stor261[idx], 266) + 2)
                    while sha3(sha3(stor261[idx], 266) + 2) + (stor266[stor261[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor261[idx]:
                    require idx < stor261.length
                    mem[0] = stor261[idx]
                    mem[32] = 260
                    stor260[stor261[idx]].field_0 = 0
                    stor260[stor261[idx]].field_256 = 0
                    stor260[stor261[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xfc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a9867371
            while stor261.length - 0x39d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798c8f > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(stor4[stor2].field_0) = arg1
                    Mask(96, 0, stor4[stor2].field_160) = 0
                    stor259[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    if stor259[address(msg.sender)] <= 0:
        return 0
    if stor259[address(msg.sender)] > 0:
        if block.timestamp / 24 * 3600 > m_lastDay:
            m_spentToday = 0
            m_lastDay = block.timestamp / 24 * 3600
        if arg2 + m_spentToday >= m_spentToday:
            if arg2 + m_spentToday <= m_dailyLimit:
                m_spentToday += arg2
                emit SingleTransact(address(msg.sender), arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args arg3[all]
                uint256(stor0.field_0) = Mask(248, 0, stor0.field_8)
                return 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = block.number
    if 0 == stor259[address(msg.sender)]:
        if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
            stor266[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor266[call.data[0 len calldata.size]][block.number].field_0)
            stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
            stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
    else:
        if not stor260[call.data[0 len calldata.size]][block.number].field_0:
            stor260[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]][block.number].field_512 = stor261.length
            require stor261.length < stor261.length
            storFC62[stor261.length] = sha3(call.data[0 len calldata.size], block.number)
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]][block.number].field_256 != 0:
            if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                stor266[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor266[call.data[0 len calldata.size]][block.number].field_0)
                stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
                stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                    stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        else:
            mem[128] = sha3(call.data[0 len calldata.size], block.number)
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor260[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor260[call.data[0 len calldata.size]][block.number].field_0--
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]][block.number].field_256
                if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                    stor266[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor266[call.data[0 len calldata.size]][block.number].field_0)
                    stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                        stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
            else:
                require stor260[call.data[0 len calldata.size]][block.number].field_512 < stor261.length
                stor261[stor260[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
                if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                    if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                        stor266[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor266[call.data[0 len calldata.size]][block.number].field_0)
                        stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
                        stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                        s = 0
                        idx = arg3 + 36
                        while arg3 + arg3.length + 36 > idx:
                            stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg3.length + 31) >> 5
                        while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                else:
                    mem[96] = stor266[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 96
                    s = 0
                    while stor266[call.data[0 len calldata.size]][block.number][2].length + 96 > idx + 32:
                        mem[idx + 32] = stor266[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(stor266[call.data[0 len calldata.size]][block.number].field_0).mem[96 len 4] with:
                       value stor266[call.data[0 len calldata.size]][block.number].field_256 wei
                         gas gas_remaining - 34050 wei
                        args mem[100 len stor266[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor266[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor266[call.data[0 len calldata.size]][block.number][2].length + 32 % 32) - 4]
                    uint256(stor0.field_0) = Mask(248, 0, stor0.field_8)
                    mem[288] = stor266[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 288
                    s = 0
                    while stor266[call.data[0 len calldata.size]][block.number][2].length + 288 > idx + 32:
                        mem[idx + 32] = stor266[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit MultiTransact(msg.sender, sha3(call.data[0 len calldata.size], block.number), stor266[call.data[0 len calldata.size]][block.number].field_256, address(stor266[call.data[0 len calldata.size]][block.number].field_0), Array(len=stor266[call.data[0 len calldata.size]][block.number][2].length, data=mem[288 len stor266[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor266[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor266[call.data[0 len calldata.size]][block.number][2].length + 32 % 32)]));
                    address(stor266[call.data[0 len calldata.size]][block.number].field_0) = 0
                    stor266[call.data[0 len calldata.size]][block.number].field_256 = 0
                    stor266[call.data[0 len calldata.size]][block.number].field_512 = 0
                    if 31 < stor266[call.data[0 len calldata.size]][block.number][2].length:
                        idx = 0
                        while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
    return sha3(call.data[0 len calldata.size], block.number)
}



}
