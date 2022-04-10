contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 5735]




// =====================  Runtime code  =====================


#
#  - execute(address arg1, uint256 arg2, bytes arg3)
#
uint256 m_required;
uint256 m_numOwners;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
array of struct stor5;
array of struct owner;
array of struct stor7;
mapping of uint256 stor261;
mapping of struct stor262;
array of uint256 stor263;
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
    if not stor261[address(msg.sender)]:
    if not stor262[call.data[0 len calldata.size]].field_0:
        stor262[call.data[0 len calldata.size]].field_0 = m_required
        stor262[call.data[0 len calldata.size]].field_256 = 0
        stor263.length++
        if not stor263.length <= stor263.length + 1:
            idx = stor263.length + 1
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
        stor262[call.data[0 len calldata.size]].field_512 = stor263.length
        require stor263.length < stor263.length
        stor263[stor263.length] = sha3(call.data[0 len calldata.size])
    if stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)] != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor262[call.data[0 len calldata.size]].field_0 > 1:
        stor262[call.data[0 len calldata.size]].field_0--
        stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
    require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
    stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
    stor262[call.data[0 len calldata.size]].field_0 = 0
    stor262[call.data[0 len calldata.size]].field_256 = 0
    stor262[call.data[0 len calldata.size]].field_512 = 0
    selfdestruct(arg1)
}

function isOwner(address arg1) {
    return (stor261[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor261[address(arg2)]:
        return stor262[arg1].field_256 and 2^stor261[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor261[address(msg.sender)]:
        if 2^stor261[address(msg.sender)] and stor262[arg1].field_256 > 0:
            stor262[arg1].field_0++
            stor262[arg1].field_256 -= 2^stor261[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function initWallet(address[] arg1, uint256 arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require m_numOwners <= 0
    m_dailyLimit = arg3
    m_lastDay = block.timestamp / 24 * 3600
    m_numOwners = arg1.length + 1
    address(owner.length) = msg.sender
    Mask(96, 0, owner.length.field_160) = 0
    stor261[address(msg.sender)] = 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx + 2 < 256
        address(stor7[idx].field_0) = mem[(32 * idx) + 140 len 20]
        Mask(96, 0, stor7[idx].field_160) = 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 261
        stor261[mem[(32 * idx) + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    m_required = arg2
}

function resetSpentToday() {
    if stor261[address(msg.sender)]:
        if not stor262[call.data[0 len calldata.size]].field_0:
            stor262[call.data[0 len calldata.size]].field_0 = m_required
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor263.length++
            if not stor263.length <= stor263.length + 1:
                idx = stor263.length + 1
                while stor263.length > idx:
                    stor263[idx] = 0
                    idx = idx + 1
                    continue 
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            else:
                require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
                stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
                stor262[call.data[0 len calldata.size]].field_0 = 0
                stor262[call.data[0 len calldata.size]].field_256 = 0
                stor262[call.data[0 len calldata.size]].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) {
    if stor261[address(msg.sender)]:
        if not stor262[call.data[0 len calldata.size]].field_0:
            stor262[call.data[0 len calldata.size]].field_0 = m_required
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor263.length++
            if not stor263.length <= stor263.length + 1:
                idx = stor263.length + 1
                while stor263.length > idx:
                    stor263[idx] = 0
                    idx = idx + 1
                    continue 
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            else:
                require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
                stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
                stor262[call.data[0 len calldata.size]].field_0 = 0
                stor262[call.data[0 len calldata.size]].field_256 = 0
                stor262[call.data[0 len calldata.size]].field_512 = 0
                m_dailyLimit = arg1
}

function changeRequirement(uint256 arg1) {
    if stor261[address(msg.sender)]:
        if not stor262[call.data[0 len calldata.size]].field_0:
            stor262[call.data[0 len calldata.size]].field_0 = m_required
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor263.length++
            if not stor263.length <= stor263.length + 1:
                idx = stor263.length + 1
                while stor263.length > idx:
                    stor263[idx] = 0
                    idx = idx + 1
                    continue 
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            else:
                require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
                stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
                stor262[call.data[0 len calldata.size]].field_0 = 0
                stor262[call.data[0 len calldata.size]].field_256 = 0
                stor262[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor263.length:
                        mem[32] = 264
                        address(stor264[stor263[idx]].field_0) = 0
                        stor264[stor263[idx]].field_256 = 0
                        stor264[stor263[idx]].field_512 = 0
                        if 31 < stor264[stor263[idx]][2].length:
                            s = sha3(sha3(stor263[idx], 264) + 2)
                            while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        require idx < stor263.length
                        mem[0] = 263
                        if stor263[idx]:
                            require idx < stor263.length
                            mem[0] = stor263[idx]
                            mem[32] = 262
                            stor262[stor263[idx]].field_0 = 0
                            stor262[stor263[idx]].field_256 = 0
                            stor262[stor263[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor263.length = 0
                    idx = 0
                    while stor263.length > idx:
                        stor263[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) {
    if stor261[address(msg.sender)]:
        if not stor262[call.data[0 len calldata.size]].field_0:
            stor262[call.data[0 len calldata.size]].field_0 = m_required
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor263.length++
            if not stor263.length <= stor263.length + 1:
                idx = stor263.length + 1
                while stor263.length > idx:
                    stor263[idx] = 0
                    idx = idx + 1
                    continue 
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            else:
                require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
                stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
                stor262[call.data[0 len calldata.size]].field_0 = 0
                stor262[call.data[0 len calldata.size]].field_256 = 0
                stor262[call.data[0 len calldata.size]].field_512 = 0
                if stor261[address(arg2)] <= 0:
                    if stor261[address(arg1)]:
                        idx = 0
                        while idx < stor263.length:
                            mem[32] = 264
                            address(stor264[stor263[idx]].field_0) = 0
                            stor264[stor263[idx]].field_256 = 0
                            stor264[stor263[idx]].field_512 = 0
                            if 31 < stor264[stor263[idx]][2].length:
                                s = sha3(sha3(stor263[idx], 264) + 2)
                                while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            require idx < stor263.length
                            mem[0] = 263
                            if stor263[idx]:
                                require idx < stor263.length
                                mem[0] = stor263[idx]
                                mem[32] = 262
                                stor262[stor263[idx]].field_0 = 0
                                stor262[stor263[idx]].field_256 = 0
                                stor262[stor263[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor263.length = 0
                        idx = 0
                        while stor263.length > idx:
                            stor263[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor261[address(arg1)] < 256
                        address(stor5[stor261[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor5[stor261[address(arg1)]].field_160) = 0
                        stor261[address(arg1)] = 0
                        stor261[arg2] = stor261[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function confirm(bytes32 arg1) {
    if not stor261[address(msg.sender)]:
        return 0
    if not stor262[arg1].field_0:
        stor262[arg1].field_0 = m_required
        stor262[arg1].field_256 = 0
        stor263.length++
        if not stor263.length <= stor263.length + 1:
            idx = stor263.length + 1
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
        stor262[arg1].field_512 = stor263.length
        require stor263.length < stor263.length
        stor263[stor263.length] = arg1
    if stor262[arg1].field_256 and 2^stor261[address(msg.sender)] != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor262[arg1].field_0 > 1:
        stor262[arg1].field_0--
        stor262[arg1].field_256 = 2^stor261[address(msg.sender)] or stor262[arg1].field_256
        return 0
    require stor262[arg1].field_512 < stor263.length
    stor263[stor262[arg1].field_512] = 0
    stor262[arg1].field_0 = 0
    stor262[arg1].field_256 = 0
    stor262[arg1].field_512 = 0
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
    if not stor261[address(msg.sender)]:
    if stor262[call.data[0 len calldata.size]].field_0:
        if stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor262[call.data[0 len calldata.size]].field_0 > 1:
            stor262[call.data[0 len calldata.size]].field_0--
            stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
        require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
        stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
        stor262[call.data[0 len calldata.size]].field_0 = 0
        stor262[call.data[0 len calldata.size]].field_256 = 0
        stor262[call.data[0 len calldata.size]].field_512 = 0
        if not stor261[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor261[address(arg1)] < 256
        stor5[stor261[address(arg1)]].field_0 = 0
        stor261[address(arg1)] = 0
        idx = 0
        while idx < stor263.length:
            mem[32] = 264
            address(stor264[stor263[idx]].field_0) = 0
            stor264[stor263[idx]].field_256 = 0
            stor264[stor263[idx]].field_512 = 0
            if 31 < stor264[stor263[idx]][2].length:
                s = sha3(sha3(stor263[idx], 264) + 2)
                while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require idx < stor263.length
            mem[0] = 263
            if stor263[idx]:
                require idx < stor263.length
                mem[0] = stor263[idx]
                mem[32] = 262
                stor262[stor263[idx]].field_0 = 0
                stor262[stor263[idx]].field_256 = 0
                stor262[stor263[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor263.length = 0
        idx = 0
        while stor263.length > idx:
            stor263[idx] = 0
            idx = idx + 1
            continue 
        # nil
    else:
        stor262[call.data[0 len calldata.size]].field_0 = m_required
        stor262[call.data[0 len calldata.size]].field_256 = 0
        stor263.length++
        if not stor263.length > stor263.length + 1:
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
            if stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
            stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
            stor262[call.data[0 len calldata.size]].field_0 = 0
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor262[call.data[0 len calldata.size]].field_512 = 0
            if not stor261[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor261[address(arg1)] < 256
            stor5[stor261[address(arg1)]].field_0 = 0
            stor261[address(arg1)] = 0
            idx = 0
            while idx < stor263.length:
                mem[32] = 264
                address(stor264[stor263[idx]].field_0) = 0
                stor264[stor263[idx]].field_256 = 0
                stor264[stor263[idx]].field_512 = 0
                if 31 < stor264[stor263[idx]][2].length:
                    s = sha3(sha3(stor263[idx], 264) + 2)
                    while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                require idx < stor263.length
                mem[0] = 263
                if stor263[idx]:
                    require idx < stor263.length
                    mem[0] = stor263[idx]
                    mem[32] = 262
                    stor262[stor263[idx]].field_0 = 0
                    stor262[stor263[idx]].field_256 = 0
                    stor262[stor263[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor263.length = 0
            idx = 0
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            idx = stor263.length + 1
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
            if stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
            stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
            stor262[call.data[0 len calldata.size]].field_0 = 0
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor262[call.data[0 len calldata.size]].field_512 = 0
            if not stor261[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor261[address(arg1)] < 256
            stor5[stor261[address(arg1)]].field_0 = 0
            stor261[address(arg1)] = 0
            idx = 0
            while idx < stor263.length:
                mem[32] = 264
                address(stor264[stor263[idx]].field_0) = 0
                stor264[stor263[idx]].field_256 = 0
                stor264[stor263[idx]].field_512 = 0
                if 31 < stor264[stor263[idx]][2].length:
                    s = sha3(sha3(stor263[idx], 264) + 2)
                    while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                require idx < stor263.length
                mem[0] = 263
                if stor263[idx]:
                    require idx < stor263.length
                    mem[0] = stor263[idx]
                    mem[32] = 262
                    stor262[stor263[idx]].field_0 = 0
                    stor262[stor263[idx]].field_256 = 0
                    stor262[stor263[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor263.length = 0
            idx = 0
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if not stor261[address(msg.sender)]:
    if stor262[call.data[0 len calldata.size]].field_0:
        if stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor262[call.data[0 len calldata.size]].field_0 > 1:
            stor262[call.data[0 len calldata.size]].field_0--
            stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
        require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
        stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
        stor262[call.data[0 len calldata.size]].field_0 = 0
        stor262[call.data[0 len calldata.size]].field_256 = 0
        stor262[call.data[0 len calldata.size]].field_512 = 0
        if stor261[address(arg1)] > 0:
        idx = 0
        while idx < stor263.length:
            mem[32] = 264
            address(stor264[stor263[idx]].field_0) = 0
            stor264[stor263[idx]].field_256 = 0
            stor264[stor263[idx]].field_512 = 0
            if 31 < stor264[stor263[idx]][2].length:
                s = sha3(sha3(stor263[idx], 264) + 2)
                while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require idx < stor263.length
            mem[0] = 263
            if stor263[idx]:
                require idx < stor263.length
                mem[0] = stor263[idx]
                mem[32] = 262
                stor262[stor263[idx]].field_0 = 0
                stor262[stor263[idx]].field_256 = 0
                stor262[stor263[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor263.length = 0
        idx = 0
        while stor263.length > idx:
            stor263[idx] = 0
            idx = idx + 1
            continue 
        if m_numOwners >= 250:
            # nil
        else:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(owner[stor1].field_0) = arg1
            Mask(96, 0, owner[stor1].field_160) = 0
            stor261[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
    else:
        stor262[call.data[0 len calldata.size]].field_0 = m_required
        stor262[call.data[0 len calldata.size]].field_256 = 0
        stor263.length++
        if not stor263.length > stor263.length + 1:
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
            if stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
            stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
            stor262[call.data[0 len calldata.size]].field_0 = 0
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor262[call.data[0 len calldata.size]].field_512 = 0
            if stor261[address(arg1)] > 0:
            idx = 0
            while idx < stor263.length:
                mem[32] = 264
                address(stor264[stor263[idx]].field_0) = 0
                stor264[stor263[idx]].field_256 = 0
                stor264[stor263[idx]].field_512 = 0
                if 31 < stor264[stor263[idx]][2].length:
                    s = sha3(sha3(stor263[idx], 264) + 2)
                    while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                require idx < stor263.length
                mem[0] = 263
                if stor263[idx]:
                    require idx < stor263.length
                    mem[0] = stor263[idx]
                    mem[32] = 262
                    stor262[stor263[idx]].field_0 = 0
                    stor262[stor263[idx]].field_256 = 0
                    stor262[stor263[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor263.length = 0
            idx = 0
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor261[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            idx = stor263.length + 1
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
            stor262[call.data[0 len calldata.size]].field_512 = stor263.length
            require stor263.length < stor263.length
            stor263[stor263.length] = sha3(call.data[0 len calldata.size])
            if stor262[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor262[call.data[0 len calldata.size]].field_0 > 1:
                stor262[call.data[0 len calldata.size]].field_0--
                stor262[call.data[0 len calldata.size]].field_256 = 2^stor261[address(msg.sender)] or stor262[call.data[0 len calldata.size]].field_256
            require stor262[call.data[0 len calldata.size]].field_512 < stor263.length
            stor263[stor262[call.data[0 len calldata.size]].field_512] = 0
            stor262[call.data[0 len calldata.size]].field_0 = 0
            stor262[call.data[0 len calldata.size]].field_256 = 0
            stor262[call.data[0 len calldata.size]].field_512 = 0
            if stor261[address(arg1)] > 0:
            idx = 0
            while idx < stor263.length:
                mem[32] = 264
                address(stor264[stor263[idx]].field_0) = 0
                stor264[stor263[idx]].field_256 = 0
                stor264[stor263[idx]].field_512 = 0
                if 31 < stor264[stor263[idx]][2].length:
                    s = sha3(sha3(stor263[idx], 264) + 2)
                    while sha3(sha3(stor263[idx], 264) + 2) + (stor264[stor263[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                require idx < stor263.length
                mem[0] = 263
                if stor263[idx]:
                    require idx < stor263.length
                    mem[0] = stor263[idx]
                    mem[32] = 262
                    stor262[stor263[idx]].field_0 = 0
                    stor262[stor263[idx]].field_256 = 0
                    stor262[stor263[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor263.length = 0
            idx = 0
            while stor263.length > idx:
                stor263[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor261[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(owner[stor1].field_0) = arg1
                    Mask(96, 0, owner[stor1].field_160) = 0
                    stor261[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
