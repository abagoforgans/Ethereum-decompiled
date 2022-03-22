contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;

function _fallback() payable {
    mem[96 len -2227] = code.data[2457 len -2227]
    mem[64] = -2131
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
    return code.data[230 len 2227]
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
array of struct stor2;
array of struct stor3;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;
array of uint256 stor39033267475292642084872825510053998399368313337831540862045504298715950416634;

function m_numOwners() payable {
    return m_numOwners
}

function m_required() payable {
    return m_required
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    return (stor258[address(arg1)] > 0)
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
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length > stor260.length + 1:
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
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length > stor260.length + 1:
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



}
