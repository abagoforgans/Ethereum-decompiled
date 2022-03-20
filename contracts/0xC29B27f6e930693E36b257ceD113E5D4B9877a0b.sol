contract main {


// =======================  Init code  ======================


uint256 stor2;
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
    stor2 = 1
    if not stor2 <= 1:
        mem[0] = 2
        idx = 3
        while sha3(2) + (3 * stor2) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 1
            continue 
    return code.data[411 len 5087]
}



// =====================  Runtime code  =====================


address multiAccessRecipientAddress;
uint256 stor0;
array of uint256 stor1;
array of struct stor2;
uint256 multiAccessRequired;
mapping of struct stor4;
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

function multiAccessIsOwner(address arg1) payable {
    return (stor4[address(arg1)].field_0 > 0)
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) payable {
    if stor1[arg1]:
        require stor1[arg1] < stor2.length
        if stor4[address(arg2)].field_0 < stor2[stor1[arg1]].field_0:
            return stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(arg2)].field_0 % 32]
        else:
            return 0
    else:
        return 0
}

function multiAccessRevoke(bytes32 arg1) payable {
    if stor4[address(msg.sender)].field_0 > 0:
        if stor1[arg1]:
            require stor1[arg1] < stor2.length
            if stor4[address(msg.sender)].field_0 < stor2[stor1[arg1]].field_0:
                if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                    require stor1[arg1] < stor2.length
                    require stor4[address(msg.sender)].field_0 < stor2[stor1[arg1]].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                    stor2[stor1[arg1]].field_256++
                    emit Revoke(msg.sender, arg1);
}

function multiAccessSetRecipient(address arg1) payable {
    if stor4[address(msg.sender)].field_0 <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            stor2[stor1[call.data[0 len calldata.size]]].field_256--
            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
            if not stor2[stor2.length].field_0:
                idx = 0
                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
            stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            mem[0] = 2
            idx = (3 * stor2.length) + 3
            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor[idx + sha3(mem[0]) + 1] = 0
                stor[idx + sha3(mem[0]) + 2] = 0
                idx = idx + 1
                continue 
        require stor2.length < stor2.length
        stor2[stor2.length].field_256 = multiAccessRequired
        stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if stor2[stor2.length].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            stor2[stor2.length].field_256--
            if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                        stor2[(3 * stor2.length) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            stor2[stor2.length].field_0 = stor2[stor2.length].field_0
            if not stor2[stor2.length].field_0:
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor2.length].field_256 = stor2[stor2.length].field_0
            stor2[stor2.length].field_512 = stor2[stor2.length].field_0
            stor1[stor2[stor2.length].field_0] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = (3 * stor2.length) - 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 1
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if stor4[address(msg.sender)].field_0 <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            stor2[stor1[call.data[0 len calldata.size]]].field_256--
            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
            if not stor2[stor2.length].field_0:
                idx = 0
                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
            stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            mem[0] = 2
            idx = (3 * stor2.length) + 3
            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor[idx + sha3(mem[0]) + 1] = 0
                stor[idx + sha3(mem[0]) + 2] = 0
                idx = idx + 1
                continue 
        require stor2.length < stor2.length
        stor2[stor2.length].field_256 = multiAccessRequired
        stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if stor2[stor2.length].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            stor2[stor2.length].field_256--
            if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                        stor2[(3 * stor2.length) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            stor2[stor2.length].field_0 = stor2[stor2.length].field_0
            if not stor2[stor2.length].field_0:
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor2.length].field_256 = stor2[stor2.length].field_0
            stor2[stor2.length].field_512 = stor2[stor2.length].field_0
            stor1[stor2[stor2.length].field_0] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = (3 * stor2.length) - 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
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

function sub_80b7c129(?) payable {
    if stor4[address(msg.sender)].field_0 > 0:
        if not stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor1[call.data[0 len calldata.size]]].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                        stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    call address(multiAccessRecipientAddress) with:
                       funct call.data[0 len 4]
                         gas gas_remaining - 25050 wei
                        args call.data[4 len calldata.size - 4]
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    mem[0] = 2
                    idx = (3 * stor2.length) + 3
                    while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                stor2[stor2.length].field_256 = multiAccessRequired
                stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if stor2[stor2.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor2.length].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                        stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                        stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    call address(multiAccessRecipientAddress) with:
                       funct call.data[0 len 4]
                         gas gas_remaining - 25050 wei
                        args call.data[4 len calldata.size - 4]
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor1[call.data[0 len calldata.size]]].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                            stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        call address(multiAccessRecipientAddress) with:
                           funct call.data[0 len 4]
                             gas gas_remaining - 25050 wei
                            args call.data[4 len calldata.size - 4]
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) + 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_256 = multiAccessRequired
                    stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if stor2[stor2.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor2.length].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                            stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                            stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        call address(multiAccessRecipientAddress) with:
                           funct call.data[0 len 4]
                             gas gas_remaining - 25050 wei
                            args call.data[4 len calldata.size - 4]
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor1[call.data[0 len calldata.size]]].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                                stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            call address(multiAccessRecipientAddress) with:
                               funct call.data[0 len 4]
                                 gas gas_remaining - 25050 wei
                                args call.data[4 len calldata.size - 4]
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) + 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_256 = multiAccessRequired
                        stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if stor2[stor2.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor2.length].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                                stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                                stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            call address(multiAccessRecipientAddress) with:
                               funct call.data[0 len 4]
                                 gas gas_remaining - 25050 wei
                                args call.data[4 len calldata.size - 4]
}

function multiAccessAddOwner(address arg1) payable {
    if stor4[address(msg.sender)].field_0 > 0:
        if not stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor1[call.data[0 len calldata.size]]].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                        stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)].field_0 <= 0:
                        multiAccessOwners.length++
                        if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                            idx = multiAccessOwners.length + 1
                            while multiAccessOwners.length > idx:
                                uint256(multiAccessOwners[idx]) = 0
                                idx = idx + 1
                                continue 
                        require multiAccessOwners.length < multiAccessOwners.length
                        uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                        stor4[address(arg1)].field_0 = multiAccessOwners.length
                        emit OwnerAdded(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    mem[0] = 2
                    idx = (3 * stor2.length) + 3
                    while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                stor2[stor2.length].field_256 = multiAccessRequired
                stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if stor2[stor2.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor2.length].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                        stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                        stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)].field_0 <= 0:
                        multiAccessOwners.length++
                        if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                            idx = multiAccessOwners.length + 1
                            while multiAccessOwners.length > idx:
                                uint256(multiAccessOwners[idx]) = 0
                                idx = idx + 1
                                continue 
                        require multiAccessOwners.length < multiAccessOwners.length
                        uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                        stor4[address(arg1)].field_0 = multiAccessOwners.length
                        emit OwnerAdded(arg1);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor1[call.data[0 len calldata.size]]].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                            stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if stor4[address(arg1)].field_0 <= 0:
                            multiAccessOwners.length++
                            if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                idx = multiAccessOwners.length + 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            require multiAccessOwners.length < multiAccessOwners.length
                            uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                            stor4[address(arg1)].field_0 = multiAccessOwners.length
                            emit OwnerAdded(arg1);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) + 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_256 = multiAccessRequired
                    stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if stor2[stor2.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor2.length].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                            stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                            stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if stor4[address(arg1)].field_0 <= 0:
                            multiAccessOwners.length++
                            if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                idx = multiAccessOwners.length + 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            require multiAccessOwners.length < multiAccessOwners.length
                            uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                            stor4[address(arg1)].field_0 = multiAccessOwners.length
                            emit OwnerAdded(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor1[call.data[0 len calldata.size]]].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                                stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if stor4[address(arg1)].field_0 <= 0:
                                multiAccessOwners.length++
                                if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                    idx = multiAccessOwners.length + 1
                                    while multiAccessOwners.length > idx:
                                        uint256(multiAccessOwners[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                require multiAccessOwners.length < multiAccessOwners.length
                                uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                                stor4[address(arg1)].field_0 = multiAccessOwners.length
                                emit OwnerAdded(arg1);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) + 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_256 = multiAccessRequired
                        stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if stor2[stor2.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor2.length].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                                stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                                stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if stor4[address(arg1)].field_0 <= 0:
                                multiAccessOwners.length++
                                if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                    idx = multiAccessOwners.length + 1
                                    while multiAccessOwners.length > idx:
                                        uint256(multiAccessOwners[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                require multiAccessOwners.length < multiAccessOwners.length
                                uint256(multiAccessOwners[multiAccessOwners.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[multiAccessOwners.length]))
                                stor4[address(arg1)].field_0 = multiAccessOwners.length
                                emit OwnerAdded(arg1);
}

function multiAccessChangeRequirement(uint256 arg1) payable {
    if stor4[address(msg.sender)].field_0 > 0:
        if not stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor1[call.data[0 len calldata.size]]].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                        stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    mem[0] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1:
                        if arg1 <= multiAccessOwners.length - 1:
                            multiAccessRequired = arg1
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor2[idx].field_512
                                mem[32] = 1
                                stor1[stor2[idx].field_512] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                idx = idx - 1
                                continue 
                            emit RequirementChanged(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    mem[0] = 2
                    idx = (3 * stor2.length) + 3
                    while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                stor2[stor2.length].field_256 = multiAccessRequired
                stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if stor2[stor2.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor2.length].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                        stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                        stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    mem[0] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1:
                        if arg1 <= multiAccessOwners.length - 1:
                            multiAccessRequired = arg1
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor2[idx].field_512
                                mem[32] = 1
                                stor1[stor2[idx].field_512] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                idx = idx - 1
                                continue 
                            emit RequirementChanged(arg1);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor1[call.data[0 len calldata.size]]].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                            stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        mem[0] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = 0
                        if arg1:
                            if arg1 <= multiAccessOwners.length - 1:
                                multiAccessRequired = arg1
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor2[idx].field_512
                                    mem[32] = 1
                                    stor1[stor2[idx].field_512] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit RequirementChanged(arg1);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) + 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_256 = multiAccessRequired
                    stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if stor2[stor2.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor2.length].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                            stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                            stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        mem[0] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = 0
                        if arg1:
                            if arg1 <= multiAccessOwners.length - 1:
                                multiAccessRequired = arg1
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor2[idx].field_512
                                    mem[32] = 1
                                    stor1[stor2[idx].field_512] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit RequirementChanged(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor1[call.data[0 len calldata.size]]].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                                stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            mem[0] = sha3(call.data[0 len calldata.size])
                            stor1[call.data[0 len calldata.size]] = 0
                            if arg1:
                                if arg1 <= multiAccessOwners.length - 1:
                                    multiAccessRequired = arg1
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor2[idx].field_512
                                        mem[32] = 1
                                        stor1[stor2[idx].field_512] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit RequirementChanged(arg1);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) + 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_256 = multiAccessRequired
                        stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if stor2[stor2.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor2.length].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                                stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                                stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            mem[0] = sha3(call.data[0 len calldata.size])
                            stor1[call.data[0 len calldata.size]] = 0
                            if arg1:
                                if arg1 <= multiAccessOwners.length - 1:
                                    multiAccessRequired = arg1
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor2[idx].field_512
                                        mem[32] = 1
                                        stor1[stor2[idx].field_512] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit RequirementChanged(arg1);
}

function multiAccessChangeOwner(address arg1, address arg2) payable {
    if stor4[address(msg.sender)].field_0 > 0:
        if not stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor1[call.data[0 len calldata.size]]].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                        stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg2)].field_0 <= 0:
                        mem[0] = arg1
                        if stor4[address(arg1)].field_0:
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor2[idx].field_512
                                mem[32] = 1
                                stor1[stor2[idx].field_512] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                idx = idx - 1
                                continue 
                            require stor4[address(arg1)].field_0 < multiAccessOwners.length
                            uint256(multiAccessOwners[stor4[address(arg1)].field_0]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)].field_0]))
                            stor4[address(arg1)].field_0 = 0
                            stor4[address(arg2)].field_0 = stor4[address(arg1)].field_0
                            emit OwnerChanged(address(arg1), arg2);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    mem[0] = 2
                    idx = (3 * stor2.length) + 3
                    while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                stor2[stor2.length].field_256 = multiAccessRequired
                stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if stor2[stor2.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor2.length].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                        stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                        stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg2)].field_0 <= 0:
                        mem[0] = arg1
                        if stor4[address(arg1)].field_0:
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor2[idx].field_512
                                mem[32] = 1
                                stor1[stor2[idx].field_512] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                idx = idx - 1
                                continue 
                            require stor4[address(arg1)].field_0 < multiAccessOwners.length
                            uint256(multiAccessOwners[stor4[address(arg1)].field_0]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)].field_0]))
                            stor4[address(arg1)].field_0 = 0
                            stor4[address(arg2)].field_0 = stor4[address(arg1)].field_0
                            emit OwnerChanged(address(arg1), arg2);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor1[call.data[0 len calldata.size]]].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                            stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if stor4[address(arg2)].field_0 <= 0:
                            mem[0] = arg1
                            if stor4[address(arg1)].field_0:
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor2[idx].field_512
                                    mem[32] = 1
                                    stor1[stor2[idx].field_512] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    idx = idx - 1
                                    continue 
                                require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                uint256(multiAccessOwners[stor4[address(arg1)].field_0]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)].field_0]))
                                stor4[address(arg1)].field_0 = 0
                                stor4[address(arg2)].field_0 = stor4[address(arg1)].field_0
                                emit OwnerChanged(address(arg1), arg2);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) + 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_256 = multiAccessRequired
                    stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if stor2[stor2.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor2.length].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                            stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                            stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if stor4[address(arg2)].field_0 <= 0:
                            mem[0] = arg1
                            if stor4[address(arg1)].field_0:
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor2[idx].field_512
                                    mem[32] = 1
                                    stor1[stor2[idx].field_512] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    idx = idx - 1
                                    continue 
                                require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                uint256(multiAccessOwners[stor4[address(arg1)].field_0]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)].field_0]))
                                stor4[address(arg1)].field_0 = 0
                                stor4[address(arg2)].field_0 = stor4[address(arg1)].field_0
                                emit OwnerChanged(address(arg1), arg2);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor1[call.data[0 len calldata.size]]].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                                stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if stor4[address(arg2)].field_0 <= 0:
                                mem[0] = arg1
                                if stor4[address(arg1)].field_0:
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor2[idx].field_512
                                        mem[32] = 1
                                        stor1[stor2[idx].field_512] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                    uint256(multiAccessOwners[stor4[address(arg1)].field_0]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)].field_0]))
                                    stor4[address(arg1)].field_0 = 0
                                    stor4[address(arg2)].field_0 = stor4[address(arg1)].field_0
                                    emit OwnerChanged(address(arg1), arg2);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) + 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_256 = multiAccessRequired
                        stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if stor2[stor2.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor2.length].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                                stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                                stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if stor4[address(arg2)].field_0 <= 0:
                                mem[0] = arg1
                                if stor4[address(arg1)].field_0:
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor2[idx].field_512
                                        mem[32] = 1
                                        stor1[stor2[idx].field_512] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                    uint256(multiAccessOwners[stor4[address(arg1)].field_0]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)].field_0]))
                                    stor4[address(arg1)].field_0 = 0
                                    stor4[address(arg2)].field_0 = stor4[address(arg1)].field_0
                                    emit OwnerChanged(address(arg1), arg2);
}

function multiAccessRemoveOwner(address arg1) payable {
    if stor4[address(msg.sender)].field_0 > 0:
        if not stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor1[call.data[0 len calldata.size]]].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                        stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)].field_0:
                        if multiAccessRequired < multiAccessOwners.length - 1:
                            if stor4[address(arg1)].field_0 < multiAccessOwners.length - 1:
                                require multiAccessOwners.length - 1 < multiAccessOwners.length
                                require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                address(multiAccessOwners[stor4[address(arg1)].field_0]) = address(multiAccessOwners[multiAccessOwners.length])
                                stor4[address(stor5[stor5.length])].field_0 = stor4[address(arg1)].field_0
                            multiAccessOwners.length--
                            if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                idx = multiAccessOwners.length - 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            mem[0] = arg1
                            stor4[address(arg1)].field_0 = 0
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor2[idx].field_512
                                mem[32] = 1
                                stor1[stor2[idx].field_512] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                idx = idx - 1
                                continue 
                            emit OwnerRemoved(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    mem[0] = 2
                    idx = (3 * stor2.length) + 3
                    while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                stor2[stor2.length].field_256 = multiAccessRequired
                stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if stor2[stor2.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    stor2[stor2.length].field_256--
                    if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                        stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                        if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                            idx = stor4[address(msg.sender)].field_0 + 32 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                    stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                        if not stor2[stor2.length].field_0:
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor2[stor2.length].field_0 + 31 / 32
                            while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                        stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                        stor1[stor2[stor2.length].field_0] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) - 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)].field_0:
                        if multiAccessRequired < multiAccessOwners.length - 1:
                            if stor4[address(arg1)].field_0 < multiAccessOwners.length - 1:
                                require multiAccessOwners.length - 1 < multiAccessOwners.length
                                require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                address(multiAccessOwners[stor4[address(arg1)].field_0]) = address(multiAccessOwners[multiAccessOwners.length])
                                stor4[address(stor5[stor5.length])].field_0 = stor4[address(arg1)].field_0
                            multiAccessOwners.length--
                            if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                idx = multiAccessOwners.length - 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            mem[0] = arg1
                            stor4[address(arg1)].field_0 = 0
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor2[idx].field_512
                                mem[32] = 1
                                stor1[stor2[idx].field_512] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                idx = idx - 1
                                continue 
                            emit OwnerRemoved(arg1);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor1[call.data[0 len calldata.size]]].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                            stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if stor4[address(arg1)].field_0:
                            if multiAccessRequired < multiAccessOwners.length - 1:
                                if stor4[address(arg1)].field_0 < multiAccessOwners.length - 1:
                                    require multiAccessOwners.length - 1 < multiAccessOwners.length
                                    require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                    address(multiAccessOwners[stor4[address(arg1)].field_0]) = address(multiAccessOwners[multiAccessOwners.length])
                                    stor4[address(stor5[stor5.length])].field_0 = stor4[address(arg1)].field_0
                                multiAccessOwners.length--
                                if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                    idx = multiAccessOwners.length - 1
                                    while multiAccessOwners.length > idx:
                                        uint256(multiAccessOwners[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                mem[0] = arg1
                                stor4[address(arg1)].field_0 = 0
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor2[idx].field_512
                                    mem[32] = 1
                                    stor1[stor2[idx].field_512] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit OwnerRemoved(arg1);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        mem[0] = 2
                        idx = (3 * stor2.length) + 3
                        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_256 = multiAccessRequired
                    stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if stor2[stor2.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        stor2[stor2.length].field_256--
                        if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                            stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                            if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                        stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                            if not stor2[stor2.length].field_0:
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor2[stor2.length].field_0 + 31 / 32
                                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                    uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                            stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                            stor1[stor2[stor2.length].field_0] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) - 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if stor4[address(arg1)].field_0:
                            if multiAccessRequired < multiAccessOwners.length - 1:
                                if stor4[address(arg1)].field_0 < multiAccessOwners.length - 1:
                                    require multiAccessOwners.length - 1 < multiAccessOwners.length
                                    require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                    address(multiAccessOwners[stor4[address(arg1)].field_0]) = address(multiAccessOwners[multiAccessOwners.length])
                                    stor4[address(stor5[stor5.length])].field_0 = stor4[address(arg1)].field_0
                                multiAccessOwners.length--
                                if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                    idx = multiAccessOwners.length - 1
                                    while multiAccessOwners.length > idx:
                                        uint256(multiAccessOwners[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                mem[0] = arg1
                                stor4[address(arg1)].field_0 = 0
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor2[idx].field_512
                                    mem[32] = 1
                                    stor1[stor2[idx].field_512] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit OwnerRemoved(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2)))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if stor2[stor1[call.data[0 len calldata.size]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor1[call.data[0 len calldata.size]]].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor1[call.data[0 len calldata.size]]].field_0:
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor1[call.data[0 len calldata.size]]].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor1[call.data[0 len calldata.size]]].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor1[call.data[0 len calldata.size]]) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor1[call.data[0 len calldata.size]]].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor1[call.data[0 len calldata.size]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor2[stor2.length].field_0
                                stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if stor4[address(arg1)].field_0:
                                if multiAccessRequired < multiAccessOwners.length - 1:
                                    if stor4[address(arg1)].field_0 < multiAccessOwners.length - 1:
                                        require multiAccessOwners.length - 1 < multiAccessOwners.length
                                        require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                        address(multiAccessOwners[stor4[address(arg1)].field_0]) = address(multiAccessOwners[multiAccessOwners.length])
                                        stor4[address(stor5[stor5.length])].field_0 = stor4[address(arg1)].field_0
                                    multiAccessOwners.length--
                                    if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                        idx = multiAccessOwners.length - 1
                                        while multiAccessOwners.length > idx:
                                            uint256(multiAccessOwners[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    mem[0] = arg1
                                    stor4[address(arg1)].field_0 = 0
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor2[idx].field_512
                                        mem[32] = 1
                                        stor1[stor2[idx].field_512] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit OwnerRemoved(arg1);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            mem[0] = 2
                            idx = (3 * stor2.length) + 3
                            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_256 = multiAccessRequired
                        stor2[stor2.length].field_512 = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if stor2[stor2.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            stor2[stor2.length].field_256--
                            if stor4[address(msg.sender)].field_0 >= stor2[stor2.length].field_0:
                                stor2[stor2.length].field_0 = stor4[address(msg.sender)].field_0 + 1
                                if not stor2[stor2.length].field_0 <= stor4[address(msg.sender)].field_0 + 1:
                                    idx = stor4[address(msg.sender)].field_0 + 32 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor4[address(msg.sender)].field_0 < stor2[stor2.length].field_0
                            stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0 = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor2', 2)))), ('name', 'stor2', 2))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = stor2[stor2.length].field_0
                                if not stor2[stor2.length].field_0:
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        stor2[(3 * stor2.length) + s].field_0 = stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor2[stor2.length].field_0 + 31 / 32
                                    while stor2[stor2.length].field_0 + 31 / 32 > idx:
                                        uint8(stor2[(3 * stor2.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor2[stor2.length].field_256 = stor2[stor2.length].field_0
                                stor2[stor2.length].field_512 = stor2[stor2.length].field_0
                                stor1[stor2[stor2.length].field_0] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                idx = (3 * stor2.length) - 3
                                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 1
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if stor4[address(arg1)].field_0:
                                if multiAccessRequired < multiAccessOwners.length - 1:
                                    if stor4[address(arg1)].field_0 < multiAccessOwners.length - 1:
                                        require multiAccessOwners.length - 1 < multiAccessOwners.length
                                        require stor4[address(arg1)].field_0 < multiAccessOwners.length
                                        address(multiAccessOwners[stor4[address(arg1)].field_0]) = address(multiAccessOwners[multiAccessOwners.length])
                                        stor4[address(stor5[stor5.length])].field_0 = stor4[address(arg1)].field_0
                                    multiAccessOwners.length--
                                    if not multiAccessOwners.length <= multiAccessOwners.length - 1:
                                        idx = multiAccessOwners.length - 1
                                        while multiAccessOwners.length > idx:
                                            uint256(multiAccessOwners[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    mem[0] = arg1
                                    stor4[address(arg1)].field_0 = 0
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor2[idx].field_512
                                        mem[32] = 1
                                        stor1[stor2[idx].field_512] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit OwnerRemoved(arg1);
}



}
