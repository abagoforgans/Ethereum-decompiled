contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint128 stor4; offset 160
address stor4;
array of struct stor5;
mapping of uint256 stor259;

function _fallback() payable {
    mem[96 len -2599] = code.data[2859 len -2599]
    mem[64] = -2503
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
        stor5[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor5[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 259
        stor259[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    stor1 = mem[160]
    return code.data[260 len 2599]
}



// =====================  Runtime code  =====================


uint256 sub_5e59b39d;
uint256 sub_6c1a5f85;
uint256 m_numOwners;
array of struct stor3;
array of struct stor4;
mapping of uint256 stor259;
mapping of struct stor260;
array of uint256 stor261;
address walletAddress;
uint256 stor262;
array of uint256 stor39344831440919775760473342295582518284578257124288186221050705286102524724851;

function m_numOwners() payable {
    return m_numOwners
}

function wallet() payable {
    return address(walletAddress)
}

function sub_5e59b39d(?) payable {
    return sub_5e59b39d
}

function sub_6c1a5f85(?) payable {
    return sub_6c1a5f85
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    return (stor259[address(arg1)] > 0)
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor259[address(arg2)] != 0:
        return 2^stor259[address(arg2)] and stor260[arg1].field_256 != 0
    else:
        return 0
}

function sub_7f0d50f0(?) payable {
    if stor259[address(msg.sender)] > 0:
        call address(walletAddress).0xbd1a1f9c with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg1
        require ext_call.success
}

function revoke(bytes32 arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if 2^stor259[address(msg.sender)] and stor260[arg1].field_256 > 0:
            stor260[arg1].field_0++
            stor260[arg1].field_256 -= 2^stor259[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function setWallet(address arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if stor56FC[idx]:
                        require idx < stor261.length
                        mem[0] = stor56FC[idx]
                        mem[32] = 260
                        stor260[stor56FC[idx]].field_0 = 0
                        stor260[stor56FC[idx]].field_256 = 0
                        stor260[stor56FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                uint256(stor262) = arg1 or Mask(96, 160, uint256(stor262))
}

function sub_16ce5d54(?) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    if arg2 <= arg1:
                        sub_5e59b39d = arg1
                        sub_6c1a5f85 = arg2
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if stor56FC[idx]:
                                require idx < stor261.length
                                mem[0] = stor56FC[idx]
                                mem[32] = 260
                                stor260[stor56FC[idx]].field_0 = 0
                                stor260[stor56FC[idx]].field_256 = 0
                                stor260[stor56FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        emit RequirementChanged(arg1, arg2);
}

function changeOwner(address arg1, address arg2) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if stor259[address(arg2)] <= 0:
                    if stor259[address(arg1)]:
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if stor56FC[idx]:
                                require idx < stor261.length
                                mem[0] = stor56FC[idx]
                                mem[32] = 260
                                stor260[stor56FC[idx]].field_0 = 0
                                stor260[stor56FC[idx]].field_256 = 0
                                stor260[stor56FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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

function removeOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 > 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if not stor259[address(arg1)]:
        if sub_5e59b39d > m_numOwners - 1:
        require stor259[address(arg1)] < 256
        stor3[stor259[address(arg1)]].field_0 = 0
        stor259[address(arg1)] = 0
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if stor56FC[idx]:
                require idx < stor261.length
                mem[0] = stor56FC[idx]
                mem[32] = 260
                stor260[stor56FC[idx]].field_0 = 0
                stor260[stor56FC[idx]].field_256 = 0
                stor260[stor56FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        # nil
    else:
        stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 > 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if stor259[address(arg1)] > 0:
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if stor56FC[idx]:
                require idx < stor261.length
                mem[0] = stor56FC[idx]
                mem[32] = 260
                stor260[stor56FC[idx]].field_0 = 0
                stor260[stor56FC[idx]].field_256 = 0
                stor260[stor56FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
        stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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



}
