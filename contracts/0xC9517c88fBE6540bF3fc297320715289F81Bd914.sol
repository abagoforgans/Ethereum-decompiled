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

function _fallback() payable {
    mem[96 len -4102] = code.data[4379 len -4102]
    mem[64] = -4006
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
    stor261 = mem[160]
    stor263 = block.timestamp / 24 * 3600
    return code.data[277 len 4102]
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
uint256 stor262;
uint256 stor263;
mapping of struct stor264;
array of uint256 stor39033267475292642084872825510053998399368313337831540862045504298715950416634;

function m_numOwners() payable {
    return m_numOwners
}

function m_required() payable {
    return m_required
}

function m_dailyLimit() payable {
    return m_dailyLimit
}

function kill(address arg1) payable {
    if 0 == stor258[address(msg.sender)]:
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
        stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
    if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor259[call.data[0 len calldata.size]].field_0 > 1:
        stor259[call.data[0 len calldata.size]].field_0--
        stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
    require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
    stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
    stor259[call.data[0 len calldata.size]].field_0 = 0
    stor259[call.data[0 len calldata.size]].field_256 = 0
    stor259[call.data[0 len calldata.size]].field_512 = 0
    selfdestruct(arg1)
}

function isOwner(address arg1) payable {
    return (stor258[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor258[address(arg2)] != 0:
        return 2^stor258[address(arg2)] and stor259[arg1].field_256 != 0
    else:
        return 0
}

function revoke(bytes32 arg1) payable {
    if stor258[address(msg.sender)] != 0:
        if 2^stor258[address(msg.sender)] and stor259[arg1].field_256 > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function resetSpentToday() payable {
    if stor258[address(msg.sender)] != 0:
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
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                stor262 = 0
}

function setDailyLimit(uint256 arg1) payable {
    if stor258[address(msg.sender)] != 0:
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
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                m_dailyLimit = arg1
}

function confirm(bytes32 arg1) payable {
    if 0 == stor258[address(msg.sender)]:
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
        stor564C[stor260.length] = arg1
    if 2^stor258[address(msg.sender)] and stor259[arg1].field_256 != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor259[arg1].field_0 > 1:
        stor259[arg1].field_0--
        stor259[arg1].field_256 = 2^stor258[address(msg.sender)] or stor259[arg1].field_256
        return 0
    require stor259[arg1].field_512 < stor260.length
    stor564C[stor259[arg1].field_512] = 0
    stor259[arg1].field_0 = 0
    stor259[arg1].field_256 = 0
    stor259[arg1].field_512 = 0
    if not address(stor264[arg1].field_0):
        return 0
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
    mem[288] = stor264[arg1][2].field_0
    idx = 288
    s = 0
    while stor264[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor264[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit MultiTransact(msg.sender, arg1, stor264[arg1].field_256, address(stor264[arg1].field_0), Array(len=stor264[arg1][2].length, data=mem[288 len stor264[arg1][2].length + (floor32(stor264[arg1][2].length - 1) + -stor264[arg1][2].length + 32 % 32)]));
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

function changeRequirement(uint256 arg1) payable {
    if stor258[address(msg.sender)] != 0:
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
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = stor564C[idx]
                        mem[32] = 264
                        address(stor264[stor564C[idx]].field_0) = 0
                        stor264[stor564C[idx]].field_256 = 0
                        stor264[stor564C[idx]].field_512 = 0
                        if 31 < stor264[stor564C[idx]][2].length:
                            mem[0] = sha3(stor564C[idx], 264) + 2
                            s = sha3(sha3(stor564C[idx], 264) + 2)
                            while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = 260
                        if stor564C[idx]:
                            require idx < stor260.length
                            mem[0] = stor564C[idx]
                            mem[32] = 259
                            stor259[stor564C[idx]].field_0 = 0
                            stor259[stor564C[idx]].field_256 = 0
                            stor259[stor564C[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor260.length = 0
                    idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
                    while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) payable {
    if stor258[address(msg.sender)] != 0:
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
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if stor258[address(arg2)] <= 0:
                    if stor258[address(arg1)]:
                        idx = 0
                        while idx < stor260.length:
                            mem[0] = stor564C[idx]
                            mem[32] = 264
                            address(stor264[stor564C[idx]].field_0) = 0
                            stor264[stor564C[idx]].field_256 = 0
                            stor264[stor564C[idx]].field_512 = 0
                            if 31 < stor264[stor564C[idx]][2].length:
                                mem[0] = sha3(stor564C[idx], 264) + 2
                                s = sha3(sha3(stor564C[idx], 264) + 2)
                                while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor260.length:
                            mem[0] = 260
                            if stor564C[idx]:
                                require idx < stor260.length
                                mem[0] = stor564C[idx]
                                mem[32] = 259
                                stor259[stor564C[idx]].field_0 = 0
                                stor259[stor564C[idx]].field_256 = 0
                                stor259[stor564C[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor260.length = 0
                        idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
                        while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
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
    if 0 == stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
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
            mem[0] = stor564C[idx]
            mem[32] = 264
            address(stor264[stor564C[idx]].field_0) = 0
            stor264[stor564C[idx]].field_256 = 0
            stor264[stor564C[idx]].field_512 = 0
            if 31 < stor264[stor564C[idx]][2].length:
                mem[0] = sha3(stor564C[idx], 264) + 2
                s = sha3(sha3(stor564C[idx], 264) + 2)
                while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor564C[idx]:
                require idx < stor260.length
                mem[0] = stor564C[idx]
                mem[32] = 259
                stor259[stor564C[idx]].field_0 = 0
                stor259[stor564C[idx]].field_256 = 0
                stor259[stor564C[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
        while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
            stor[idx] = 0
            idx = idx + 1
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
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
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
                mem[0] = stor564C[idx]
                mem[32] = 264
                address(stor264[stor564C[idx]].field_0) = 0
                stor264[stor564C[idx]].field_256 = 0
                stor264[stor564C[idx]].field_512 = 0
                if 31 < stor264[stor564C[idx]][2].length:
                    mem[0] = sha3(stor564C[idx], 264) + 2
                    s = sha3(sha3(stor564C[idx], 264) + 2)
                    while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor564C[idx]:
                    require idx < stor260.length
                    mem[0] = stor564C[idx]
                    mem[32] = 259
                    stor259[stor564C[idx]].field_0 = 0
                    stor259[stor564C[idx]].field_256 = 0
                    stor259[stor564C[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
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
                mem[0] = stor564C[idx]
                mem[32] = 264
                address(stor264[stor564C[idx]].field_0) = 0
                stor264[stor564C[idx]].field_256 = 0
                stor264[stor564C[idx]].field_512 = 0
                if 31 < stor264[stor564C[idx]][2].length:
                    mem[0] = sha3(stor564C[idx], 264) + 2
                    s = sha3(sha3(stor564C[idx], 264) + 2)
                    while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor564C[idx]:
                    require idx < stor260.length
                    mem[0] = stor564C[idx]
                    mem[32] = 259
                    stor259[stor564C[idx]].field_0 = 0
                    stor259[stor564C[idx]].field_256 = 0
                    stor259[stor564C[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if 0 == stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if stor258[address(arg1)] > 0:
        idx = 0
        while idx < stor260.length:
            mem[0] = stor564C[idx]
            mem[32] = 264
            address(stor264[stor564C[idx]].field_0) = 0
            stor264[stor564C[idx]].field_256 = 0
            stor264[stor564C[idx]].field_512 = 0
            if 31 < stor264[stor564C[idx]][2].length:
                mem[0] = sha3(stor564C[idx], 264) + 2
                s = sha3(sha3(stor564C[idx], 264) + 2)
                while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor564C[idx]:
                require idx < stor260.length
                mem[0] = stor564C[idx]
                mem[32] = 259
                stor259[stor564C[idx]].field_0 = 0
                stor259[stor564C[idx]].field_256 = 0
                stor259[stor564C[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
        while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
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
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor564C[idx]
                mem[32] = 264
                address(stor264[stor564C[idx]].field_0) = 0
                stor264[stor564C[idx]].field_256 = 0
                stor264[stor564C[idx]].field_512 = 0
                if 31 < stor264[stor564C[idx]][2].length:
                    mem[0] = sha3(stor564C[idx], 264) + 2
                    s = sha3(sha3(stor564C[idx], 264) + 2)
                    while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor564C[idx]:
                    require idx < stor260.length
                    mem[0] = stor564C[idx]
                    mem[32] = 259
                    stor259[stor564C[idx]].field_0 = 0
                    stor259[stor564C[idx]].field_256 = 0
                    stor259[stor564C[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
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
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor564C[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor564C[idx]
                mem[32] = 264
                address(stor264[stor564C[idx]].field_0) = 0
                stor264[stor564C[idx]].field_256 = 0
                stor264[stor564C[idx]].field_512 = 0
                if 31 < stor264[stor564C[idx]][2].length:
                    mem[0] = sha3(stor564C[idx], 264) + 2
                    s = sha3(sha3(stor564C[idx], 264) + 2)
                    while sha3(sha3(stor564C[idx], 264) + 2) + (stor264[stor564C[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor564C[idx]:
                    require idx < stor260.length
                    mem[0] = stor564C[idx]
                    mem[32] = 259
                    stor259[stor564C[idx]].field_0 = 0
                    stor259[stor564C[idx]].field_256 = 0
                    stor259[stor564C[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa
            while stor260.length + 0x564c0be60200faa20559308cb7b5a1bb3255c16cb1cab91f525b5ae7a03d02fa > idx:
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
    if stor258[address(msg.sender)] <= 0:
        return 0
    if stor258[address(msg.sender)] > 0:
        if block.timestamp / 24 * 3600 > stor263:
            stor262 = 0
            stor263 = block.timestamp / 24 * 3600
        if arg2 + stor262 >= stor262:
            if arg2 + stor262 <= m_dailyLimit:
                stor262 += arg2
                if not arg3.length:
                    emit SingleTransact(address(msg.sender), arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                        args arg3[all]
                    return 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = block.number
    if 0 == stor258[address(msg.sender)]:
        if not address(stor264[call.data[0 len calldata.size]][block.number].field_0):
            stor264[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor264[call.data[0 len calldata.size]][block.number].field_0)
            stor264[call.data[0 len calldata.size]][block.number].field_256 = arg2
            stor264[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor264[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor264[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                stor264[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
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
            require stor260.length < stor260.length
            stor564C[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
        if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]][block.number].field_256 != 0:
            if not address(stor264[call.data[0 len calldata.size]][block.number].field_0):
                stor264[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor264[call.data[0 len calldata.size]][block.number].field_0)
                stor264[call.data[0 len calldata.size]][block.number].field_256 = arg2
                stor264[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor264[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor264[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                    stor264[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        else:
            mem[128] = sha3(call.data[0 len calldata.size], block.number)
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]][block.number].field_256
                if not address(stor264[call.data[0 len calldata.size]][block.number].field_0):
                    stor264[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor264[call.data[0 len calldata.size]][block.number].field_0)
                    stor264[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    stor264[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor264[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor264[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                        stor264[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor564C[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if not address(stor264[call.data[0 len calldata.size]][block.number].field_0):
                    if not address(stor264[call.data[0 len calldata.size]][block.number].field_0):
                        stor264[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor264[call.data[0 len calldata.size]][block.number].field_0)
                        stor264[call.data[0 len calldata.size]][block.number].field_256 = arg2
                        stor264[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                        s = 0
                        idx = arg3 + 36
                        while arg3 + arg3.length + 36 > idx:
                            stor264[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg3.length + 31) >> 5
                        while stor264[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor264[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                else:
                    mem[96] = stor264[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 96
                    s = 0
                    while stor264[call.data[0 len calldata.size]][block.number][2].length + 96 > idx + 32:
                        mem[idx + 32] = stor264[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(stor264[call.data[0 len calldata.size]][block.number].field_0).mem[96 len 4] with:
                       value stor264[call.data[0 len calldata.size]][block.number].field_256 wei
                         gas gas_remaining - 34050 wei
                        args mem[100 len stor264[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor264[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor264[call.data[0 len calldata.size]][block.number][2].length + 32 % 32) - 4]
                    mem[288] = stor264[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 288
                    s = 0
                    while stor264[call.data[0 len calldata.size]][block.number][2].length + 288 > idx + 32:
                        mem[idx + 32] = stor264[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit MultiTransact(msg.sender, sha3(call.data[0 len calldata.size], block.number), stor264[call.data[0 len calldata.size]][block.number].field_256, address(stor264[call.data[0 len calldata.size]][block.number].field_0), Array(len=stor264[call.data[0 len calldata.size]][block.number][2].length, data=mem[288 len stor264[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor264[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor264[call.data[0 len calldata.size]][block.number][2].length + 32 % 32)]));
                    address(stor264[call.data[0 len calldata.size]][block.number].field_0) = 0
                    stor264[call.data[0 len calldata.size]][block.number].field_256 = 0
                    stor264[call.data[0 len calldata.size]][block.number].field_512 = 0
                    if 31 < stor264[call.data[0 len calldata.size]][block.number][2].length:
                        idx = 0
                        while stor264[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor264[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
    return sha3(call.data[0 len calldata.size], block.number)
}



}
