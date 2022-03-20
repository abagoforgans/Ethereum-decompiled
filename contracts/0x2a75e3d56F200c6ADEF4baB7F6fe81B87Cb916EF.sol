contract main {


// =======================  Init code  ======================


array of struct stor2;
uint256 stor3;
mapping of uint256 stor4;
array of uint256 stor5;

function _fallback() payable {
    stor5.length = 2
    if not stor5.length <= 2:
        idx = 2
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    require 1 < stor5.length
    uint256(stor5.field_256) = msg.sender or Mask(96, 160, uint256(stor5.field_256))
    stor4[address(msg.sender)] = 1
    stor3 = 1
    stor2.length = 1
    if not stor2.length <= 1:
        idx = 3
        while 3 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            idx = idx + 1
            continue 
    return code.data[336 len 4385]
}



// =====================  Runtime code  =====================


address multiAccessRecipientAddress;
uint256 stor0;
mapping of uint256 stor1;
array of struct multiAccessHasConfirmed;
uint256 multiAccessRequired;
mapping of uint256 stor4;
array of address multiAccessOwners;

function multiAccessRecipient() payable {
    return address(multiAccessRecipientAddress)
}

function multiAccessOwners(uint256 arg1) payable {
    require arg1 < multiAccessOwners.length
    return address(multiAccessOwners[arg1])
}

function multiAccessRequired() payable {
    return multiAccessRequired
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) payable {
    require stor1[arg1] < multiAccessHasConfirmed.length
    return stor[(3 * stor1[arg1]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(arg2)].field_0
}

function multiAccessIsOwner(address arg1) payable {
    return (stor4[address(arg1)] > 0)
}

function multiAccessRevoke(bytes32 arg1) payable {
    if stor4[address(msg.sender)]:
        require stor1[arg1] < multiAccessHasConfirmed.length
        if stor[(3 * stor1[arg1]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0:
            multiAccessHasConfirmed[stor1[arg1]].field_256++
            stor[(3 * stor1[arg1]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 0
            emit Revoke(msg.sender, arg1);
}

function multiAccessSetRecipient(address arg1) payable {
    if not stor4[address(msg.sender)]:
        return 0
    require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
    if stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0:
        return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
        if multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256--
            stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length - 1:
            require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
            require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
            multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
    else:
        multiAccessHasConfirmed.length++
        if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length + 1:
            idx = (3 * multiAccessHasConfirmed.length) + 3
            while 3 * multiAccessHasConfirmed.length > idx:
                multiAccessHasConfirmed[idx].field_0 = 0
                multiAccessHasConfirmed[idx].field_256 = 0
                idx = idx + 1
                continue 
        require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = sha3(call.data[0 len calldata.size])
        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessRequired
        stor1[call.data[0 len calldata.size]] = multiAccessHasConfirmed.length
        if multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256--
            stor[(3 * multiAccessHasConfirmed.length) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if multiAccessHasConfirmed.length < multiAccessHasConfirmed.length - 1:
            require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
            require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
            multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            stor1[stor2[stor2.length].field_0] = multiAccessHasConfirmed.length
    multiAccessHasConfirmed.length--
    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
        idx = (3 * multiAccessHasConfirmed.length) - 3
        while 3 * multiAccessHasConfirmed.length > idx:
            multiAccessHasConfirmed[idx].field_0 = 0
            multiAccessHasConfirmed[idx].field_256 = 0
            idx = idx + 1
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if not stor4[address(msg.sender)]:
        return 0
    require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
    if stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0:
        return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
        if multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256--
            stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length - 1:
            require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
            require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
            multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
    else:
        multiAccessHasConfirmed.length++
        if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length + 1:
            idx = (3 * multiAccessHasConfirmed.length) + 3
            while 3 * multiAccessHasConfirmed.length > idx:
                multiAccessHasConfirmed[idx].field_0 = 0
                multiAccessHasConfirmed[idx].field_256 = 0
                idx = idx + 1
                continue 
        require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = sha3(call.data[0 len calldata.size])
        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessRequired
        stor1[call.data[0 len calldata.size]] = multiAccessHasConfirmed.length
        if multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256--
            stor[(3 * multiAccessHasConfirmed.length) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if multiAccessHasConfirmed.length < multiAccessHasConfirmed.length - 1:
            require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
            require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
            multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
            stor1[stor2[stor2.length].field_0] = multiAccessHasConfirmed.length
    multiAccessHasConfirmed.length--
    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
        idx = (3 * multiAccessHasConfirmed.length) - 3
        while 3 * multiAccessHasConfirmed.length > idx:
            multiAccessHasConfirmed[idx].field_0 = 0
            multiAccessHasConfirmed[idx].field_256 = 0
            idx = idx + 1
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    if calldata.size <= 0:
        return 0
    call address(multiAccessRecipientAddress) with:
       funct call.data[0 len 4]
         gas gas_remaining - 25050 wei
        args call.data[4 len calldata.size - 4]
    return ext_call.success
}

function multiAccessAddOwner(address arg1) payable {
    if stor4[address(msg.sender)]:
        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
        if not stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256--
                    stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)] <= 0:
                        multiAccessOwners.length++
                        if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                            idx = multiAccessOwners.length + 1
                            while multiAccessOwners.length > idx:
                                uint256(multiAccessOwners[idx]) = 0
                                idx = idx + 1
                                continue 
                        require multiAccessOwners.length < multiAccessOwners.length
                        uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                        stor4[address(arg1)] = multiAccessOwners.length
                        emit OwnerAdded(arg1);
            else:
                multiAccessHasConfirmed.length++
                if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length + 1:
                    idx = (3 * multiAccessHasConfirmed.length) + 3
                    while 3 * multiAccessHasConfirmed.length > idx:
                        multiAccessHasConfirmed[idx].field_0 = 0
                        multiAccessHasConfirmed[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = sha3(call.data[0 len calldata.size])
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256--
                    stor[(3 * multiAccessHasConfirmed.length) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if multiAccessHasConfirmed.length < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = multiAccessHasConfirmed.length
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)] <= 0:
                        multiAccessOwners.length++
                        if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                            idx = multiAccessOwners.length + 1
                            while multiAccessOwners.length > idx:
                                uint256(multiAccessOwners[idx]) = 0
                                idx = idx + 1
                                continue 
                        require multiAccessOwners.length < multiAccessOwners.length
                        uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                        stor4[address(arg1)] = multiAccessOwners.length
                        emit OwnerAdded(arg1);
}

function multiAccessChangeRequirement(uint256 arg1) payable {
    if stor4[address(msg.sender)]:
        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
        if not stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256--
                    stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1:
                        if arg1 <= multiAccessOwners.length - 1:
                            multiAccessRequired = arg1
                            idx = 1
                            while idx < multiAccessHasConfirmed.length:
                                mem[0] = multiAccessHasConfirmed[idx].field_0
                                mem[32] = 1
                                stor1[stor2[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            multiAccessHasConfirmed.length = 1
                            if not multiAccessHasConfirmed.length <= 1:
                                idx = 3
                                while 3 * multiAccessHasConfirmed.length > idx:
                                    multiAccessHasConfirmed[idx].field_0 = 0
                                    multiAccessHasConfirmed[idx].field_256 = 0
                                    idx = idx + 1
                                    continue 
                            emit RequirementChanged(arg1);
            else:
                multiAccessHasConfirmed.length++
                if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length + 1:
                    idx = (3 * multiAccessHasConfirmed.length) + 3
                    while 3 * multiAccessHasConfirmed.length > idx:
                        multiAccessHasConfirmed[idx].field_0 = 0
                        multiAccessHasConfirmed[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = sha3(call.data[0 len calldata.size])
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256--
                    stor[(3 * multiAccessHasConfirmed.length) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if multiAccessHasConfirmed.length < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = multiAccessHasConfirmed.length
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1:
                        if arg1 <= multiAccessOwners.length - 1:
                            multiAccessRequired = arg1
                            idx = 1
                            while idx < multiAccessHasConfirmed.length:
                                mem[0] = multiAccessHasConfirmed[idx].field_0
                                mem[32] = 1
                                stor1[stor2[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            multiAccessHasConfirmed.length = 1
                            if not multiAccessHasConfirmed.length <= 1:
                                idx = 3
                                while 3 * multiAccessHasConfirmed.length > idx:
                                    multiAccessHasConfirmed[idx].field_0 = 0
                                    multiAccessHasConfirmed[idx].field_256 = 0
                                    idx = idx + 1
                                    continue 
                            emit RequirementChanged(arg1);
}

function multiAccessChangeOwner(address arg1, address arg2) payable {
    if stor4[address(msg.sender)]:
        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
        if not stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256--
                    stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg2)] <= 0:
                        if stor4[address(arg1)]:
                            idx = 1
                            while idx < multiAccessHasConfirmed.length:
                                mem[0] = multiAccessHasConfirmed[idx].field_0
                                mem[32] = 1
                                stor1[stor2[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            multiAccessHasConfirmed.length = 1
                            if not multiAccessHasConfirmed.length <= 1:
                                idx = 3
                                while 3 * multiAccessHasConfirmed.length > idx:
                                    multiAccessHasConfirmed[idx].field_0 = 0
                                    multiAccessHasConfirmed[idx].field_256 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(arg1)] < multiAccessOwners.length
                            uint256(multiAccessOwners[stor4[address(arg1)]]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)]]))
                            stor4[address(arg1)] = 0
                            stor4[address(arg2)] = stor4[address(arg1)]
                            emit OwnerChanged(address(arg1), arg2);
            else:
                multiAccessHasConfirmed.length++
                if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length + 1:
                    idx = (3 * multiAccessHasConfirmed.length) + 3
                    while 3 * multiAccessHasConfirmed.length > idx:
                        multiAccessHasConfirmed[idx].field_0 = 0
                        multiAccessHasConfirmed[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = sha3(call.data[0 len calldata.size])
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256--
                    stor[(3 * multiAccessHasConfirmed.length) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if multiAccessHasConfirmed.length < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = multiAccessHasConfirmed.length
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg2)] <= 0:
                        if stor4[address(arg1)]:
                            idx = 1
                            while idx < multiAccessHasConfirmed.length:
                                mem[0] = multiAccessHasConfirmed[idx].field_0
                                mem[32] = 1
                                stor1[stor2[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            multiAccessHasConfirmed.length = 1
                            if not multiAccessHasConfirmed.length <= 1:
                                idx = 3
                                while 3 * multiAccessHasConfirmed.length > idx:
                                    multiAccessHasConfirmed[idx].field_0 = 0
                                    multiAccessHasConfirmed[idx].field_256 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(arg1)] < multiAccessOwners.length
                            uint256(multiAccessOwners[stor4[address(arg1)]]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)]]))
                            stor4[address(arg1)] = 0
                            stor4[address(arg2)] = stor4[address(arg1)]
                            emit OwnerChanged(address(arg1), arg2);
}

function multiAccessRemoveOwner(address arg1) payable {
    if stor4[address(msg.sender)]:
        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
        if not stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256--
                    stor[(3 * stor1[call.data[0 len calldata.size]]) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require stor1[call.data[0 len calldata.size]] < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[stor1[call.data[0 len calldata.size]]].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)]:
                        if multiAccessRequired < multiAccessOwners.length - 1:
                            if stor4[address(arg1)] < multiAccessOwners.length - 1:
                                require multiAccessOwners.length - 1 < multiAccessOwners.length
                                require stor4[address(arg1)] < multiAccessOwners.length
                                address(multiAccessOwners[stor4[address(arg1)]]) = address(multiAccessOwners[multiAccessOwners.length])
                                stor4[address(stor5[stor5.length])] = stor4[address(arg1)]
                            multiAccessOwners.length--
                            if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                idx = multiAccessOwners.length - 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            stor4[address(arg1)] = 0
                            idx = 1
                            while idx < multiAccessHasConfirmed.length:
                                mem[0] = multiAccessHasConfirmed[idx].field_0
                                mem[32] = 1
                                stor1[stor2[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            multiAccessHasConfirmed.length = 1
                            if not multiAccessHasConfirmed.length <= 1:
                                idx = 3
                                while 3 * multiAccessHasConfirmed.length > idx:
                                    multiAccessHasConfirmed[idx].field_0 = 0
                                    multiAccessHasConfirmed[idx].field_256 = 0
                                    idx = idx + 1
                                    continue 
                            emit OwnerRemoved(arg1);
            else:
                multiAccessHasConfirmed.length++
                if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length + 1:
                    idx = (3 * multiAccessHasConfirmed.length) + 3
                    while 3 * multiAccessHasConfirmed.length > idx:
                        multiAccessHasConfirmed[idx].field_0 = 0
                        multiAccessHasConfirmed[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = sha3(call.data[0 len calldata.size])
                multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = multiAccessHasConfirmed.length
                if multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256--
                    stor[(3 * multiAccessHasConfirmed.length) + ('name', 'multiAccessHasConfirmed', 2) + 2][address(msg.sender)].field_0 = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if multiAccessHasConfirmed.length < multiAccessHasConfirmed.length - 1:
                        require multiAccessHasConfirmed.length - 1 < multiAccessHasConfirmed.length
                        require multiAccessHasConfirmed.length < multiAccessHasConfirmed.length
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_256 = multiAccessHasConfirmed[multiAccessHasConfirmed.length].field_0
                        stor1[stor2[stor2.length].field_0] = multiAccessHasConfirmed.length
                    multiAccessHasConfirmed.length--
                    if not multiAccessHasConfirmed.length <= multiAccessHasConfirmed.length - 1:
                        idx = (3 * multiAccessHasConfirmed.length) - 3
                        while 3 * multiAccessHasConfirmed.length > idx:
                            multiAccessHasConfirmed[idx].field_0 = 0
                            multiAccessHasConfirmed[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)]:
                        if multiAccessRequired < multiAccessOwners.length - 1:
                            if stor4[address(arg1)] < multiAccessOwners.length - 1:
                                require multiAccessOwners.length - 1 < multiAccessOwners.length
                                require stor4[address(arg1)] < multiAccessOwners.length
                                address(multiAccessOwners[stor4[address(arg1)]]) = address(multiAccessOwners[multiAccessOwners.length])
                                stor4[address(stor5[stor5.length])] = stor4[address(arg1)]
                            multiAccessOwners.length--
                            if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                idx = multiAccessOwners.length - 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            stor4[address(arg1)] = 0
                            idx = 1
                            while idx < multiAccessHasConfirmed.length:
                                mem[0] = multiAccessHasConfirmed[idx].field_0
                                mem[32] = 1
                                stor1[stor2[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            multiAccessHasConfirmed.length = 1
                            if not multiAccessHasConfirmed.length <= 1:
                                idx = 3
                                while 3 * multiAccessHasConfirmed.length > idx:
                                    multiAccessHasConfirmed[idx].field_0 = 0
                                    multiAccessHasConfirmed[idx].field_256 = 0
                                    idx = idx + 1
                                    continue 
                            emit OwnerRemoved(arg1);
}



}
