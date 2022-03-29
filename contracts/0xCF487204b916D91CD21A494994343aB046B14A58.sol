contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;

function _fallback() {
    mem[96 len -3580] = code.data[3928 len -3580]
    mem[64] = -3484
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
    return code.data[348 len 3580]
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
array of struct stor2;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;

function m_numOwners() {
    return m_numOwners
}

function m_required() {
    return m_required
}

function _fallback() payable {
    revert 
}

function isOwner(address arg1) {
    return (stor258[address(arg1)] > 0)
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor258[address(arg2)]:
        if stor259[arg1].field_256 and 2^stor258[address(arg2)]:
            return 1
        else:
            return 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor258[address(msg.sender)]:
        if stor259[arg1].field_256 and 2^stor258[address(msg.sender)] > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function changeRequirement(uint256 arg1) {
    if stor258[address(msg.sender)]:
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
        if not stor259[call.data[0 len calldata.size]][block.number].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
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
        if not stor259[call.data[0 len calldata.size]][block.number].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if stor258[address(arg2)] <= 0:
                    if stor258[address(arg1)]:
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
                        stor2[stor258[address(arg1)]].field_0 = arg2
                        stor2[stor258[address(arg1)]].field_160 = 0
                        stor258[address(arg1)] = 0
                        stor258[address(arg2)] = stor258[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]][block.number].field_0:
        if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
        if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
            stor259[call.data[0 len calldata.size]][block.number].field_0--
            stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
        require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
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
        stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor260.length++
        if not stor260.length > stor260.length + 1:
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
            if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
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
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
            if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
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
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]][block.number].field_0:
        if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
        if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
            stor259[call.data[0 len calldata.size]][block.number].field_0--
            stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
        require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
        stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
        if stor258[address(arg1)] > 0:
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
        if m_numOwners >= 250:
            # nil
        else:
            m_numOwners++
            require m_numOwners < 256
            stor2[stor1].field_0 = arg1
            stor2[stor1].field_160 = 0
            stor258[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
    else:
        stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor260.length++
        if not stor260.length > stor260.length + 1:
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
            if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
            if stor258[address(arg1)] > 0:
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
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners < 256
                stor2[stor1].field_0 = arg1
                stor2[stor1].field_160 = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
            if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
            if stor258[address(arg1)] > 0:
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
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners < 256
                stor2[stor1].field_0 = arg1
                stor2[stor1].field_160 = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners < 256
                    stor2[stor1].field_0 = arg1
                    stor2[stor1].field_160 = 0
                    stor258[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
