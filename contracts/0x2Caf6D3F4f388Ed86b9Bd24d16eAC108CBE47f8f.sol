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
    mem[96 len -5407] = code.data[5741 len -5407]
    mem[64] = -5311
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
        stor4[idx].field_0 = mem[mem[96] + (32 * idx) + 140 len 20]
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
    return code.data[334 len 5407]
}



// =====================  Runtime code  =====================


#
#  - execute(address arg1, uint256 arg2, bytes arg3)
#
uint256 m_required;
uint256 m_numOwners;
array of struct stor2;
array of struct owner;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
mapping of struct stor264;

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
        require stor260.length < stor260.length
        stor260[stor260.length] = sha3(call.data[0 len calldata.size])
    if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor259[call.data[0 len calldata.size]].field_0 > 1:
        stor259[call.data[0 len calldata.size]].field_0--
        stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
    require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
    stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
    stor259[call.data[0 len calldata.size]].field_0 = 0
    stor259[call.data[0 len calldata.size]].field_256 = 0
    stor259[call.data[0 len calldata.size]].field_512 = 0
    selfdestruct(arg1)
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
        return stor259[arg1].field_256 and 2^stor258[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor258[address(msg.sender)]:
        if 2^stor258[address(msg.sender)] and stor259[arg1].field_256 > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
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
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
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
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                m_dailyLimit = arg1
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
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = stor260[idx]
                        mem[32] = 264
                        address(stor264[stor260[idx]].field_0) = 0
                        stor264[stor260[idx]].field_256 = 0
                        stor264[stor260[idx]].field_512 = 0
                        if 31 < stor264[stor260[idx]][2].length:
                            mem[0] = sha3(stor260[idx], 264) + 2
                            s = sha3(sha3(stor260[idx], 264) + 2)
                            while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < stor260.length:
                        mem[0] = 260
                        if stor260[s]:
                            require s < stor260.length
                            mem[0] = stor260[s]
                            mem[32] = 259
                            stor259[stor260[s]].field_0 = 0
                            stor259[stor260[s]].field_256 = 0
                            stor259[stor260[s]].field_512 = 0
                        s = s + 1
                        continue 
                    stor260.length = 0
                    s = 0
                    while stor260.length > s:
                        stor260[s] = 0
                        s = s + 1
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
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
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
                            mem[32] = 264
                            address(stor264[stor260[idx]].field_0) = 0
                            stor264[stor260[idx]].field_256 = 0
                            stor264[stor260[idx]].field_512 = 0
                            if 31 < stor264[stor260[idx]][2].length:
                                mem[0] = sha3(stor260[idx], 264) + 2
                                s = sha3(sha3(stor260[idx], 264) + 2)
                                while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < stor260.length:
                            mem[0] = 260
                            if stor260[s]:
                                require s < stor260.length
                                mem[0] = stor260[s]
                                mem[32] = 259
                                stor259[stor260[s]].field_0 = 0
                                stor259[stor260[s]].field_256 = 0
                                stor259[stor260[s]].field_512 = 0
                            s = s + 1
                            continue 
                        stor260.length = 0
                        s = 0
                        while stor260.length > s:
                            stor260[s] = 0
                            s = s + 1
                            continue 
                        require stor258[address(arg1)] < 256
                        address(stor2[stor258[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor2[stor258[address(arg1)]].field_160) = 0
                        stor258[address(arg1)] = 0
                        stor258[arg2] = stor258[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
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
        require stor260.length < stor260.length
        stor260[stor260.length] = arg1
    if stor259[arg1].field_256 and 2^stor258[address(msg.sender)] != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor259[arg1].field_0 > 1:
        stor259[arg1].field_0--
        stor259[arg1].field_256 = 2^stor258[address(msg.sender)] or stor259[arg1].field_256
        return 0
    require stor259[arg1].field_512 < stor260.length
    stor260[stor259[arg1].field_512] = 0
    stor259[arg1].field_0 = 0
    stor259[arg1].field_256 = 0
    stor259[arg1].field_512 = 0
    if not address(stor264[arg1].field_0):
        if not stor264[arg1].field_256:
            if not Mask(255, 1, (256 * not bool(stor264[arg1].field_512)) - 1 and stor264[arg1].field_512):
                return 0
    if address(stor264[arg1].field_0):
        mem[96] = stor264[arg1][2].field_0
        idx = 96
        s = 0
        while stor264[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = stor264[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor264[arg1].field_0).mem[96 len 4] with:
           value stor264[arg1].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[100 len stor264[arg1][2].length + (floor32(stor264[arg1][2].length - 1) + -stor264[arg1][2].length + 32 % 32) - 4]
        require ext_call.success
        mem[320] = stor264[arg1][2].field_0
        idx = 320
        s = 0
        while stor264[arg1][2].length + 320 > idx + 32:
            mem[idx + 32] = stor264[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit MultiTransact(address rg1, bytes32 rg2, uint256 rg3, address rg4, bytes rg5, address rg6):
                           msg.sender,
                           arg1,
                           stor264[arg1].field_256,
                           address(stor264[arg1].field_0),
                           192,
                           0,
                           stor264[arg1][2].length,
                           mem[320 len stor264[arg1][2].length + (floor32(stor264[arg1][2].length - 1) + -stor264[arg1][2].length + 32 % 32)],
    else:
        mem[128] = stor264[arg1][2].field_0
        idx = 128
        s = 0
        while stor264[arg1][2].length + 96 > idx:
            mem[idx + 32] = stor264[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        create contract with ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor264', 264)))) wei
                        code: mem[128 len stor264[arg1][2].length]
        require ext_code.size(create.new_address)
        mem[ceil32(stor264[arg1][2].length) + 352] = stor264[arg1][2].field_0
        idx = ceil32(stor264[arg1][2].length) + 352
        s = 0
        while ceil32(stor264[arg1][2].length) + stor264[arg1][2].length + 352 > idx + 32:
            mem[idx + 32] = stor264[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit MultiTransact(msg.sender, arg1, stor264[arg1].field_256, address(stor264[arg1].field_0), Array(len=stor264[arg1][2].length, data=mem[ceil32(stor264[arg1][2].length) + 352 len stor264[arg1][2].length + (floor32(stor264[arg1][2].length - 1) + -stor264[arg1][2].length + 32 % 32)]), address(create.new_address));
    address(stor264[arg1].field_0) = 0
    stor264[arg1].field_256 = 0
    stor264[arg1].field_512 = 0
    if 31 < stor264[arg1][2].length:
        idx = 0
        while stor264[arg1][2].length + 31 / 32 > idx:
            stor264[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function removeOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if not stor258[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor258[address(arg1)] < 256
        stor2[stor258[address(arg1)]].field_0 = 0
        stor258[address(arg1)] = 0
        idx = 0
        while idx < stor260.length:
            mem[0] = stor260[idx]
            mem[32] = 264
            address(stor264[stor260[idx]].field_0) = 0
            stor264[stor260[idx]].field_256 = 0
            stor264[stor260[idx]].field_512 = 0
            if 31 < stor264[stor260[idx]][2].length:
                mem[0] = sha3(stor260[idx], 264) + 2
                s = sha3(sha3(stor260[idx], 264) + 2)
                while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        s = 0
        while s < stor260.length:
            mem[0] = 260
            if stor260[s]:
                require s < stor260.length
                mem[0] = stor260[s]
                mem[32] = 259
                stor259[stor260[s]].field_0 = 0
                stor259[stor260[s]].field_256 = 0
                stor259[stor260[s]].field_512 = 0
            s = s + 1
            continue 
        stor260.length = 0
        s = 0
        while stor260.length > s:
            stor260[s] = 0
            s = s + 1
            continue 
        if 1 < m_numOwners:
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
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 264
                address(stor264[stor260[idx]].field_0) = 0
                stor264[stor260[idx]].field_256 = 0
                stor264[stor260[idx]].field_512 = 0
                if 31 < stor264[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 264) + 2
                    s = sha3(sha3(stor260[idx], 264) + 2)
                    while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            # nil
        else:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 264
                address(stor264[stor260[idx]].field_0) = 0
                stor264[stor260[idx]].field_256 = 0
                stor264[stor260[idx]].field_512 = 0
                if 31 < stor264[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 264) + 2
                    s = sha3(sha3(stor260[idx], 264) + 2)
                    while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if stor258[address(arg1)] > 0:
        idx = 0
        while idx < stor260.length:
            mem[0] = stor260[idx]
            mem[32] = 264
            address(stor264[stor260[idx]].field_0) = 0
            stor264[stor260[idx]].field_256 = 0
            stor264[stor260[idx]].field_512 = 0
            if 31 < stor264[stor260[idx]][2].length:
                mem[0] = sha3(stor260[idx], 264) + 2
                s = sha3(sha3(stor260[idx], 264) + 2)
                while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        s = 0
        while s < stor260.length:
            mem[0] = 260
            if stor260[s]:
                require s < stor260.length
                mem[0] = stor260[s]
                mem[32] = 259
                stor259[stor260[s]].field_0 = 0
                stor259[stor260[s]].field_256 = 0
                stor259[stor260[s]].field_512 = 0
            s = s + 1
            continue 
        stor260.length = 0
        s = 0
        while stor260.length > s:
            stor260[s] = 0
            s = s + 1
            continue 
        if m_numOwners < 250:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(owner[stor1].field_0) = arg1
            Mask(96, 0, owner[stor1].field_160) = 0
            stor258[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
        if 1 < m_numOwners:
            # nil
        else:
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
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
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 264
                address(stor264[stor260[idx]].field_0) = 0
                stor264[stor260[idx]].field_256 = 0
                stor264[stor260[idx]].field_512 = 0
                if 31 < stor264[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 264) + 2
                    s = sha3(sha3(stor260[idx], 264) + 2)
                    while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 264
                address(stor264[stor260[idx]].field_0) = 0
                stor264[stor260[idx]].field_256 = 0
                stor264[stor260[idx]].field_512 = 0
                if 31 < stor264[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 264) + 2
                    s = sha3(sha3(stor260[idx], 264) + 2)
                    while sha3(sha3(stor260[idx], 264) + 2) + (stor264[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(owner[stor1].field_0) = arg1
                    Mask(96, 0, owner[stor1].field_160) = 0
                    stor258[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
