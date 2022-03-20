contract main {


// =======================  Init code  ======================


array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;
array of uint256 stor5;
uint256 stor36B6;

function _fallback() payable {
    stor5.length = 2
    if not stor5.length <= 2:
        idx = 2
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    require 1 < stor5.length
    stor36B6 = msg.sender or Mask(96, 160, stor36B6)
    stor4[address(msg.sender)] = 1
    stor3 = 1
    stor2 = 1
    if not stor2 <= 1:
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1
        while (3 * stor2) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[317 len 3181]
}



// =====================  Runtime code  =====================


address multiAccessRecipientAddress;
uint256 stor0;
array of uint256 stor1;
array of struct stor2;
uint256 multiAccessRequired;
mapping of uint256 stor4;
array of uint256 stor5;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699759;
array of address multiAccessOwners;

function multiAccessRecipient() payable {
    return address(multiAccessRecipientAddress)
}

function multiAccessOwners(uint256 arg1) payable {
    require arg1 < stor5.length
    return address(multiAccessOwners[arg1])
}

function multiAccessRequired() payable {
    return multiAccessRequired
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) payable {
    require stor1[arg1] < stor2.length
    return uint8(stor[(3 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(arg2)])
}

function multiAccessIsOwner(address arg1) payable {
    return (stor4[address(arg1)] > 0)
}

function multiAccessRevoke(bytes32 arg1) payable {
    if stor4[address(msg.sender)] != 0:
        require stor1[arg1] < stor2.length
        if uint8(stor[code.data[3149 len 32] + (3 * stor1[arg1]) + 2][address(msg.sender)]):
            uint256(stor[code.data[3149 len 32] + (3 * stor1[arg1]) + 1])++
            uint8(stor[code.data[3149 len 32] + (3 * stor1[arg1]) + 2][address(msg.sender)]) = 0
            emit Revoke(msg.sender, arg1);
}

function multiAccessSetRecipient(address arg1) payable {
    if 0 == stor4[address(msg.sender)]:
        return 0
    require stor1[call.data[0 len calldata.size]] < stor2.length
    if uint8(stor[(3 * stor1[call.data[0 len calldata.size]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]):
        return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(msg.sender)]) = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        idx = 1
        while idx < stor5.length:
            mem[0] = address(multiAccessOwners[idx])
            mem[32] = code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2
            uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(stor5603[idx])]) = 0
            idx = idx + 1
            continue 
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
            uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
            stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[3149 len 32] + 3
            while code.data[3149 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                stor1[idx] = 0
                idx = idx + 1
                continue 
        require stor2.length < stor2.length
        uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = sha3(call.data[0 len calldata.size])
        uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = multiAccessRequired
        stor1[call.data[0 len calldata.size]] = stor2.length
        if uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1])--
            uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(msg.sender)]) = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        idx = 1
        while idx < stor5.length:
            mem[0] = address(multiAccessOwners[idx])
            mem[32] = code.data[3149 len 32] + (3 * stor2.length) + 2
            uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(stor5603[idx])]) = 0
            idx = idx + 1
            continue 
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
            uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
            stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = (3 * stor2.length) - 3
        while 3 * stor2.length > idx:
            uint256(stor2[idx].field_0) = 0
            uint256(stor2[idx].field_256) = 0
            idx = idx + 1
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if 0 == stor4[address(msg.sender)]:
        return 0
    require stor1[call.data[0 len calldata.size]] < stor2.length
    if uint8(stor[(3 * stor1[call.data[0 len calldata.size]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]):
        return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(msg.sender)]) = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        idx = 1
        while idx < stor5.length:
            mem[0] = address(multiAccessOwners[idx])
            mem[32] = code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2
            uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(stor5603[idx])]) = 0
            idx = idx + 1
            continue 
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
            uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
            stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[3149 len 32] + 3
            while code.data[3149 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                stor1[idx] = 0
                idx = idx + 1
                continue 
        require stor2.length < stor2.length
        uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = sha3(call.data[0 len calldata.size])
        uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = multiAccessRequired
        stor1[call.data[0 len calldata.size]] = stor2.length
        if uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1])--
            uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(msg.sender)]) = 1
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        idx = 1
        while idx < stor5.length:
            mem[0] = address(multiAccessOwners[idx])
            mem[32] = code.data[3149 len 32] + (3 * stor2.length) + 2
            uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(stor5603[idx])]) = 0
            idx = idx + 1
            continue 
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
            uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
            stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = (3 * stor2.length) - 3
        while 3 * stor2.length > idx:
            uint256(stor2[idx].field_0) = 0
            uint256(stor2[idx].field_256) = 0
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
    if stor4[address(msg.sender)] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if not uint8(stor[(3 * stor1[call.data[0 len calldata.size]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]):
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
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
                    idx = (3 * stor2.length) + code.data[3149 len 32] + 3
                    while code.data[3149 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        stor1[idx] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = sha3(call.data[0 len calldata.size])
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor2.length) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    call address(multiAccessRecipientAddress) with:
                       funct call.data[0 len 4]
                         gas gas_remaining - 25050 wei
                        args call.data[4 len calldata.size - 4]
}

function multiAccessAddOwner(address arg1) payable {
    if stor4[address(msg.sender)] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if not uint8(stor[(3 * stor1[call.data[0 len calldata.size]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]):
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)] <= 0:
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            idx = stor5.length + 1
                            while stor5.length > idx:
                                stor5[idx] = 0
                                idx = idx + 1
                                continue 
                        require stor5.length < stor5.length
                        uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                        stor4[address(arg1)] = stor5.length
                        emit OwnerAdded(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3149 len 32] + 3
                    while code.data[3149 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        stor1[idx] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = sha3(call.data[0 len calldata.size])
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor2.length) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)] <= 0:
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            idx = stor5.length + 1
                            while stor5.length > idx:
                                stor5[idx] = 0
                                idx = idx + 1
                                continue 
                        require stor5.length < stor5.length
                        uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                        stor4[address(arg1)] = stor5.length
                        emit OwnerAdded(arg1);
}

function multiAccessChangeRequirement(uint256 arg1) payable {
    if stor4[address(msg.sender)] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if not uint8(stor[(3 * stor1[call.data[0 len calldata.size]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]):
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1 != 0:
                        if arg1 <= stor5.length - 1:
                            multiAccessRequired = arg1
                            idx = 1
                            while idx < stor2.length:
                                mem[0] = uint256(stor[code.data[3149 len 32] + (3 * idx)])
                                mem[32] = 1
                                stor1[uint256(stor[code.data[3149 len 32] + (3 * idx)])] = 0
                                idx = idx + 1
                                continue 
                            stor2.length = 1
                            if not stor2.length <= 1:
                                idx = 3
                                while 3 * stor2.length > idx:
                                    uint256(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            emit RequirementChanged(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3149 len 32] + 3
                    while code.data[3149 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        stor1[idx] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = sha3(call.data[0 len calldata.size])
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor2.length) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1 != 0:
                        if arg1 <= stor5.length - 1:
                            multiAccessRequired = arg1
                            idx = 1
                            while idx < stor2.length:
                                mem[0] = uint256(stor[code.data[3149 len 32] + (3 * idx)])
                                mem[32] = 1
                                stor1[uint256(stor[code.data[3149 len 32] + (3 * idx)])] = 0
                                idx = idx + 1
                                continue 
                            stor2.length = 1
                            if not stor2.length <= 1:
                                idx = 3
                                while 3 * stor2.length > idx:
                                    uint256(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            emit RequirementChanged(arg1);
}

function multiAccessChangeOwner(address arg1, address arg2) payable {
    if stor4[address(msg.sender)] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if not uint8(stor[(3 * stor1[call.data[0 len calldata.size]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]):
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg2)] <= 0:
                        if stor4[address(arg1)]:
                            idx = 1
                            while idx < stor2.length:
                                mem[0] = uint256(stor[code.data[3149 len 32] + (3 * idx)])
                                mem[32] = 1
                                stor1[uint256(stor[code.data[3149 len 32] + (3 * idx)])] = 0
                                idx = idx + 1
                                continue 
                            stor2.length = 1
                            if not stor2.length <= 1:
                                idx = 3
                                while 3 * stor2.length > idx:
                                    uint256(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(arg1)] < stor5.length
                            uint256(multiAccessOwners[stor4[address(arg1)]]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)]]))
                            stor4[address(arg1)] = 0
                            stor4[arg2] = stor4[address(arg1)]
                            emit OwnerChanged(address(arg1), arg2);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3149 len 32] + 3
                    while code.data[3149 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        stor1[idx] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = sha3(call.data[0 len calldata.size])
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor2.length) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg2)] <= 0:
                        if stor4[address(arg1)]:
                            idx = 1
                            while idx < stor2.length:
                                mem[0] = uint256(stor[code.data[3149 len 32] + (3 * idx)])
                                mem[32] = 1
                                stor1[uint256(stor[code.data[3149 len 32] + (3 * idx)])] = 0
                                idx = idx + 1
                                continue 
                            stor2.length = 1
                            if not stor2.length <= 1:
                                idx = 3
                                while 3 * stor2.length > idx:
                                    uint256(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor4[address(arg1)] < stor5.length
                            uint256(multiAccessOwners[stor4[address(arg1)]]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[stor4[address(arg1)]]))
                            stor4[address(arg1)] = 0
                            stor4[arg2] = stor4[address(arg1)]
                            emit OwnerChanged(address(arg1), arg2);
}

function multiAccessRemoveOwner(address arg1) payable {
    if stor4[address(msg.sender)] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if not uint8(stor[(3 * stor1[call.data[0 len calldata.size]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]):
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)]:
                        if multiAccessRequired < stor5.length - 1:
                            if stor4[address(arg1)] < stor5.length - 1:
                                require stor5.length - 1 < stor5.length
                                require stor4[address(arg1)] < stor5.length
                                address(multiAccessOwners[stor4[address(arg1)]]) = stor36B6[stor5.length]
                                stor4[stor36B6[stor5.length]] = stor4[address(arg1)]
                            stor5.length--
                            if not stor5.length <= stor5.length - 1:
                                idx = stor5.length - 1
                                while stor5.length > idx:
                                    stor5[idx] = 0
                                    idx = idx + 1
                                    continue 
                            stor4[address(arg1)] = 0
                            idx = 1
                            while idx < stor2.length:
                                mem[0] = uint256(stor[code.data[3149 len 32] + (3 * idx)])
                                mem[32] = 1
                                stor1[uint256(stor[code.data[3149 len 32] + (3 * idx)])] = 0
                                idx = idx + 1
                                continue 
                            stor2.length = 1
                            if not stor2.length <= 1:
                                idx = 3
                                while 3 * stor2.length > idx:
                                    uint256(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            emit OwnerRemoved(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3149 len 32] + 3
                    while code.data[3149 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        stor1[idx] = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = sha3(call.data[0 len calldata.size])
                uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = multiAccessRequired
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1])--
                    uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(msg.sender)]) = 1
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    idx = 1
                    while idx < stor5.length:
                        mem[0] = address(multiAccessOwners[idx])
                        mem[32] = code.data[3149 len 32] + (3 * stor2.length) + 2
                        uint8(stor[code.data[3149 len 32] + (3 * stor2.length) + 2][address(stor5603[idx])]) = 0
                        idx = idx + 1
                        continue 
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])
                        uint256(stor[code.data[3149 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 2])
                        stor1[uint256(stor[code.data[3149 len 32] + (3 * stor2.length) - 3])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) - 3
                        while 3 * stor2.length > idx:
                            uint256(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if stor4[address(arg1)]:
                        if multiAccessRequired < stor5.length - 1:
                            if stor4[address(arg1)] < stor5.length - 1:
                                require stor5.length - 1 < stor5.length
                                require stor4[address(arg1)] < stor5.length
                                address(multiAccessOwners[stor4[address(arg1)]]) = stor36B6[stor5.length]
                                stor4[stor36B6[stor5.length]] = stor4[address(arg1)]
                            stor5.length--
                            if not stor5.length <= stor5.length - 1:
                                idx = stor5.length - 1
                                while stor5.length > idx:
                                    stor5[idx] = 0
                                    idx = idx + 1
                                    continue 
                            stor4[address(arg1)] = 0
                            idx = 1
                            while idx < stor2.length:
                                mem[0] = uint256(stor[code.data[3149 len 32] + (3 * idx)])
                                mem[32] = 1
                                stor1[uint256(stor[code.data[3149 len 32] + (3 * idx)])] = 0
                                idx = idx + 1
                                continue 
                            stor2.length = 1
                            if not stor2.length <= 1:
                                idx = 3
                                while 3 * stor2.length > idx:
                                    uint256(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            emit OwnerRemoved(arg1);
}



}
