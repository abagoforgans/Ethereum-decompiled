contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint128 stor6; offset 160
address stor6;
mapping of uint256 stor261;

function _fallback() payable {
    stor4 = 1
    address(stor6.field_0) = msg.sender
    Mask(96, 0, stor6.field_160) = 0
    stor261[address(msg.sender)] = 1
    stor3 = 1
    return code.data[146 len 3761]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of struct stor1;
array of uint256 stor2;
uint256 required;
uint256 numOwners;
array of struct stor5;
mapping of uint256 stor261;

function numOwners() payable {
    return numOwners
}

function required() payable {
    return required
}

function isOwner(address arg1) payable {
    return (stor261[address(arg1)] > 0)
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor261[address(arg2)]:
        return not not stor1[arg1].field_256 and 2^stor261[address(arg2)]
    else:
        return 0
}

function revoke(bytes32 arg1) payable {
    if stor261[address(msg.sender)]:
        if stor1[arg1].field_256 and 2^stor261[address(msg.sender)] > 0:
            stor1[arg1].field_0++
            stor1[arg1].field_256 -= 2^stor261[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function setRecipient(address arg1) payable {
    if not stor261[address(msg.sender)]:
        return 0
    if not stor1[call.data[0 len calldata.size]].field_0:
        stor1[call.data[0 len calldata.size]].field_0 = required
        stor1[call.data[0 len calldata.size]].field_256 = 0
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        stor1[call.data[0 len calldata.size]].field_512 = stor2.length
        require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
        stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
    if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
        return 0
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor1[call.data[0 len calldata.size]].field_0 > 1:
        stor1[call.data[0 len calldata.size]].field_0--
        stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
        return 0
    require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
    stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
    stor1[call.data[0 len calldata.size]].field_0 = 0
    stor1[call.data[0 len calldata.size]].field_256 = 0
    stor1[call.data[0 len calldata.size]].field_512 = 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if not stor261[address(msg.sender)]:
        return 0
    if not stor1[call.data[0 len calldata.size]].field_0:
        stor1[call.data[0 len calldata.size]].field_0 = required
        stor1[call.data[0 len calldata.size]].field_256 = 0
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        stor1[call.data[0 len calldata.size]].field_512 = stor2.length
        require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
        stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
    if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
        return 0
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor1[call.data[0 len calldata.size]].field_0 > 1:
        stor1[call.data[0 len calldata.size]].field_0--
        stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
        return 0
    require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
    stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
    stor1[call.data[0 len calldata.size]].field_0 = 0
    stor1[call.data[0 len calldata.size]].field_256 = 0
    stor1[call.data[0 len calldata.size]].field_512 = 0
    if calldata.size <= 0:
        return 0
    call address(stor0) with:
       funct call.data[0 len 4]
         gas gas_remaining - 25050 wei
        args call.data[4 len calldata.size - 4]
    return ext_call.success
}

function changeRequirement(uint256 arg1) payable {
    if stor261[address(msg.sender)]:
        if not stor1[call.data[0 len calldata.size]].field_0:
            stor1[call.data[0 len calldata.size]].field_0 = required
            stor1[call.data[0 len calldata.size]].field_256 = 0
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            stor1[call.data[0 len calldata.size]].field_512 = stor2.length
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
        if not stor1[call.data[0 len calldata.size]].field_256 or not 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor1[call.data[0 len calldata.size]].field_0 > 1:
                stor1[call.data[0 len calldata.size]].field_0--
                stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
            else:
                require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
                stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
                stor1[call.data[0 len calldata.size]].field_0 = 0
                stor1[call.data[0 len calldata.size]].field_256 = 0
                stor1[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= numOwners:
                    required = arg1
                    idx = 0
                    while idx < stor2.length:
                        mem[0] = 2
                        if stor2[idx]:
                            require idx < stor2.length
                            mem[0] = stor2[idx]
                            mem[32] = 1
                            stor1[stor2[idx]].field_0 = 0
                            stor1[stor2[idx]].field_256 = 0
                            stor1[stor2[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor2.length = 0
                    idx = 0
                    while stor2.length > idx:
                        stor2[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) payable {
    if stor261[address(msg.sender)]:
        if not stor1[call.data[0 len calldata.size]].field_0:
            stor1[call.data[0 len calldata.size]].field_0 = required
            stor1[call.data[0 len calldata.size]].field_256 = 0
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            stor1[call.data[0 len calldata.size]].field_512 = stor2.length
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
        if not stor1[call.data[0 len calldata.size]].field_256 or not 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor1[call.data[0 len calldata.size]].field_0 > 1:
                stor1[call.data[0 len calldata.size]].field_0--
                stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
            else:
                require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
                stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
                stor1[call.data[0 len calldata.size]].field_0 = 0
                stor1[call.data[0 len calldata.size]].field_256 = 0
                stor1[call.data[0 len calldata.size]].field_512 = 0
                if stor261[address(arg2)] <= 0:
                    if stor261[address(arg1)]:
                        idx = 0
                        while idx < stor2.length:
                            mem[0] = 2
                            if stor2[idx]:
                                require idx < stor2.length
                                mem[0] = stor2[idx]
                                mem[32] = 1
                                stor1[stor2[idx]].field_0 = 0
                                stor1[stor2[idx]].field_256 = 0
                                stor1[stor2[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor2.length = 0
                        idx = 0
                        while stor2.length > idx:
                            stor2[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor261[address(arg1)] < 256
                        stor5[stor261[address(arg1)]].field_0 = arg2
                        stor5[stor261[address(arg1)]].field_160 = 0
                        stor261[address(arg1)] = 0
                        stor261[address(arg2)] = stor261[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) payable {
    if not stor261[address(msg.sender)]:
    if stor1[call.data[0 len calldata.size]].field_0:
        if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]].field_0 > 1:
            stor1[call.data[0 len calldata.size]].field_0--
            stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
        require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
        stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
        stor1[call.data[0 len calldata.size]].field_0 = 0
        stor1[call.data[0 len calldata.size]].field_256 = 0
        stor1[call.data[0 len calldata.size]].field_512 = 0
        if not stor261[address(arg1)]:
        if required > numOwners - 1:
        require stor261[address(arg1)] < 256
        stor5[stor261[address(arg1)]].field_0 = 0
        stor261[address(arg1)] = 0
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if stor2[idx]:
                require idx < stor2.length
                mem[0] = stor2[idx]
                mem[32] = 1
                stor1[stor2[idx]].field_0 = 0
                stor1[stor2[idx]].field_256 = 0
                stor1[stor2[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor2.length = 0
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
        # nil
    else:
        stor1[call.data[0 len calldata.size]].field_0 = required
        stor1[call.data[0 len calldata.size]].field_256 = 0
        stor2.length++
        if not stor2.length > stor2.length + 1:
            stor1[call.data[0 len calldata.size]].field_512 = stor2.length
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor1[call.data[0 len calldata.size]].field_0 > 1:
                stor1[call.data[0 len calldata.size]].field_0--
                stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
            stor1[call.data[0 len calldata.size]].field_0 = 0
            stor1[call.data[0 len calldata.size]].field_256 = 0
            stor1[call.data[0 len calldata.size]].field_512 = 0
            if not stor261[address(arg1)]:
            if required > numOwners - 1:
            require stor261[address(arg1)] < 256
            stor5[stor261[address(arg1)]].field_0 = 0
            stor261[address(arg1)] = 0
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                if stor2[idx]:
                    require idx < stor2.length
                    mem[0] = stor2[idx]
                    mem[32] = 1
                    stor1[stor2[idx]].field_0 = 0
                    stor1[stor2[idx]].field_256 = 0
                    stor1[stor2[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor2.length = 0
            idx = 0
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            stor1[call.data[0 len calldata.size]].field_512 = stor2.length
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor1[call.data[0 len calldata.size]].field_0 > 1:
                stor1[call.data[0 len calldata.size]].field_0--
                stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
            stor1[call.data[0 len calldata.size]].field_0 = 0
            stor1[call.data[0 len calldata.size]].field_256 = 0
            stor1[call.data[0 len calldata.size]].field_512 = 0
            if not stor261[address(arg1)]:
            if required > numOwners - 1:
            require stor261[address(arg1)] < 256
            stor5[stor261[address(arg1)]].field_0 = 0
            stor261[address(arg1)] = 0
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                if stor2[idx]:
                    require idx < stor2.length
                    mem[0] = stor2[idx]
                    mem[32] = 1
                    stor1[stor2[idx]].field_0 = 0
                    stor1[stor2[idx]].field_256 = 0
                    stor1[stor2[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor2.length = 0
            idx = 0
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            if 1 < numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if not stor261[address(msg.sender)]:
    if stor1[call.data[0 len calldata.size]].field_0:
        if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]].field_0 > 1:
            stor1[call.data[0 len calldata.size]].field_0--
            stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
        require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
        stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
        stor1[call.data[0 len calldata.size]].field_0 = 0
        stor1[call.data[0 len calldata.size]].field_256 = 0
        stor1[call.data[0 len calldata.size]].field_512 = 0
        if stor261[address(arg1)] > 0:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if stor2[idx]:
                require idx < stor2.length
                mem[0] = stor2[idx]
                mem[32] = 1
                stor1[stor2[idx]].field_0 = 0
                stor1[stor2[idx]].field_256 = 0
                stor1[stor2[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor2.length = 0
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
        if numOwners >= 250:
            # nil
        else:
            numOwners++
            require numOwners < 256
            stor5[stor4].field_0 = arg1
            stor5[stor4].field_160 = 0
            stor261[address(arg1)] = numOwners
            emit OwnerAdded(arg1);
    else:
        stor1[call.data[0 len calldata.size]].field_0 = required
        stor1[call.data[0 len calldata.size]].field_256 = 0
        stor2.length++
        if not stor2.length > stor2.length + 1:
            stor1[call.data[0 len calldata.size]].field_512 = stor2.length
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor1[call.data[0 len calldata.size]].field_0 > 1:
                stor1[call.data[0 len calldata.size]].field_0--
                stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
            stor1[call.data[0 len calldata.size]].field_0 = 0
            stor1[call.data[0 len calldata.size]].field_256 = 0
            stor1[call.data[0 len calldata.size]].field_512 = 0
            if stor261[address(arg1)] > 0:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                if stor2[idx]:
                    require idx < stor2.length
                    mem[0] = stor2[idx]
                    mem[32] = 1
                    stor1[stor2[idx]].field_0 = 0
                    stor1[stor2[idx]].field_256 = 0
                    stor1[stor2[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor2.length = 0
            idx = 0
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            if numOwners >= 250:
                # nil
            else:
                numOwners++
                require numOwners < 256
                stor5[stor4].field_0 = arg1
                stor5[stor4].field_160 = 0
                stor261[address(arg1)] = numOwners
                emit OwnerAdded(arg1);
        else:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            stor1[call.data[0 len calldata.size]].field_512 = stor2.length
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = sha3(call.data[0 len calldata.size])
            if stor1[call.data[0 len calldata.size]].field_256 and 2^stor261[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor1[call.data[0 len calldata.size]].field_0 > 1:
                stor1[call.data[0 len calldata.size]].field_0--
                stor1[call.data[0 len calldata.size]].field_256 = stor1[call.data[0 len calldata.size]].field_256 or 2^stor261[address(msg.sender)]
            require stor1[call.data[0 len calldata.size]].field_512 < stor2.length
            stor2[stor1[call.data[0 len calldata.size]].field_512] = 0
            stor1[call.data[0 len calldata.size]].field_0 = 0
            stor1[call.data[0 len calldata.size]].field_256 = 0
            stor1[call.data[0 len calldata.size]].field_512 = 0
            if stor261[address(arg1)] > 0:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                if stor2[idx]:
                    require idx < stor2.length
                    mem[0] = stor2[idx]
                    mem[32] = 1
                    stor1[stor2[idx]].field_0 = 0
                    stor1[stor2[idx]].field_256 = 0
                    stor1[stor2[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor2.length = 0
            idx = 0
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            if numOwners < 250:
                numOwners++
                require numOwners < 256
                stor5[stor4].field_0 = arg1
                stor5[stor4].field_160 = 0
                stor261[address(arg1)] = numOwners
                emit OwnerAdded(arg1);
            if 1 < numOwners:
                # nil
            else:
                if numOwners < 250:
                    numOwners++
                    require numOwners < 256
                    stor5[stor4].field_0 = arg1
                    stor5[stor4].field_160 = 0
                    stor261[address(arg1)] = numOwners
                    emit OwnerAdded(arg1);
}



}
