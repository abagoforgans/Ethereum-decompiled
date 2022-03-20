contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
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
    stor2.length = 1
    if not stor2.length <= 1:
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1
        while (3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            stor[idx] = 0
            mem[0] = idx
            s = sha3(s)
            while sha3(s) + (stor[s] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor1[s] = 0
            stor2[s] = 0
            s = s + 3
            continue 
    return code.data[367 len 3611]
}



// =====================  Runtime code  =====================


address multiAccessRecipientAddress;
uint256 stor0;
array of uint256 stor1;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699759;
array of uint256 stor2;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
uint256 multiAccessRequired;
array of address multiAccessOwners;
mapping of struct stor4;
array of uint256 stor5;

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

function multiAccessIsOwner(address arg1) payable {
    return (uint256(stor4[address(arg1)].field_0) > 0)
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) payable {
    if stor1[arg1] != 0:
        require stor1[arg1] < stor2.length
        if uint256(stor4[address(arg2)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[arg1])]):
            return stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('param', 'arg1'), ('name', 'stor1', 1))])))[stor4[address(arg2)].field_0 % 32]
        else:
            return 0
    else:
        return 0
}

function multiAccessRevoke(bytes32 arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) > 0:
        if stor1[arg1] != 0:
            require stor1[arg1] < stor2.length
            if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[arg1])]):
                if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('param', 'arg1'), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                    require stor1[arg1] < stor2.length
                    require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[arg1])])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[arg1]))]) = !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[arg1]))])
                    uint256(stor[code.data[3579 len 32] + (3 * stor1[arg1]) + 1])++
                    emit Revoke(msg.sender, arg1);
}

function multiAccessSetRecipient(address arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[3579 len 32] + 3
            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[idx] = 0
                stor2[idx] = 0
                idx = idx + 3
                continue 
        require stor2.length < stor2.length
        stor4057[stor2.length] = multiAccessRequired
        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
        while code.data[3579 len 32] + (3 * stor2.length) > idx:
            uint256(stor[idx]) = 0
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor1[idx] = 0
            stor2[idx] = 0
            idx = idx + 3
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[3579 len 32] + 3
            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[idx] = 0
                stor2[idx] = 0
                idx = idx + 3
                continue 
        require stor2.length < stor2.length
        stor4057[stor2.length] = multiAccessRequired
        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
        while code.data[3579 len 32] + (3 * stor2.length) > idx:
            uint256(stor[idx]) = 0
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor1[idx] = 0
            stor2[idx] = 0
            idx = idx + 3
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
    if uint256(stor4[address(msg.sender)].field_0) > 0:
        if 0 == stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    call address(multiAccessRecipientAddress) with:
                       funct call.data[0 len 4]
                         gas gas_remaining - 25050 wei
                        args call.data[4 len calldata.size - 4]
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                    while code.data[3579 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor1[idx] = 0
                        stor2[idx] = 0
                        idx = idx + 3
                        continue 
                require stor2.length < stor2.length
                stor4057[stor2.length] = multiAccessRequired
                stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    call address(multiAccessRecipientAddress) with:
                       funct call.data[0 len 4]
                         gas gas_remaining - 25050 wei
                        args call.data[4 len calldata.size - 4]
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        call address(multiAccessRecipientAddress) with:
                           funct call.data[0 len 4]
                             gas gas_remaining - 25050 wei
                            args call.data[4 len calldata.size - 4]
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    require stor2.length < stor2.length
                    stor4057[stor2.length] = multiAccessRequired
                    stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        call address(multiAccessRecipientAddress) with:
                           funct call.data[0 len 4]
                             gas gas_remaining - 25050 wei
                            args call.data[4 len calldata.size - 4]
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            call address(multiAccessRecipientAddress) with:
                               funct call.data[0 len 4]
                                 gas gas_remaining - 25050 wei
                                args call.data[4 len calldata.size - 4]
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        require stor2.length < stor2.length
                        stor4057[stor2.length] = multiAccessRequired
                        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            call address(multiAccessRecipientAddress) with:
                               funct call.data[0 len 4]
                                 gas gas_remaining - 25050 wei
                                args call.data[4 len calldata.size - 4]
}

function multiAccessAddOwner(address arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) > 0:
        if 0 == stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if uint256(stor4[address(arg1)].field_0) <= 0:
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            idx = stor5.length + 1
                            while stor5.length > idx:
                                stor5[idx] = 0
                                idx = idx + 1
                                continue 
                        require stor5.length < stor5.length
                        uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                        uint256(stor4[address(arg1)].field_0) = stor5.length
                        emit OwnerAdded(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                    while code.data[3579 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor1[idx] = 0
                        stor2[idx] = 0
                        idx = idx + 3
                        continue 
                require stor2.length < stor2.length
                stor4057[stor2.length] = multiAccessRequired
                stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if uint256(stor4[address(arg1)].field_0) <= 0:
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            idx = stor5.length + 1
                            while stor5.length > idx:
                                stor5[idx] = 0
                                idx = idx + 1
                                continue 
                        require stor5.length < stor5.length
                        uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                        uint256(stor4[address(arg1)].field_0) = stor5.length
                        emit OwnerAdded(arg1);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if uint256(stor4[address(arg1)].field_0) <= 0:
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                idx = stor5.length + 1
                                while stor5.length > idx:
                                    stor5[idx] = 0
                                    idx = idx + 1
                                    continue 
                            require stor5.length < stor5.length
                            uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                            uint256(stor4[address(arg1)].field_0) = stor5.length
                            emit OwnerAdded(arg1);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    require stor2.length < stor2.length
                    stor4057[stor2.length] = multiAccessRequired
                    stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if uint256(stor4[address(arg1)].field_0) <= 0:
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                idx = stor5.length + 1
                                while stor5.length > idx:
                                    stor5[idx] = 0
                                    idx = idx + 1
                                    continue 
                            require stor5.length < stor5.length
                            uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                            uint256(stor4[address(arg1)].field_0) = stor5.length
                            emit OwnerAdded(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if uint256(stor4[address(arg1)].field_0) <= 0:
                                stor5.length++
                                if not stor5.length <= stor5.length + 1:
                                    idx = stor5.length + 1
                                    while stor5.length > idx:
                                        stor5[idx] = 0
                                        idx = idx + 1
                                        continue 
                                require stor5.length < stor5.length
                                uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                                uint256(stor4[address(arg1)].field_0) = stor5.length
                                emit OwnerAdded(arg1);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        require stor2.length < stor2.length
                        stor4057[stor2.length] = multiAccessRequired
                        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if uint256(stor4[address(arg1)].field_0) <= 0:
                                stor5.length++
                                if not stor5.length <= stor5.length + 1:
                                    idx = stor5.length + 1
                                    while stor5.length > idx:
                                        stor5[idx] = 0
                                        idx = idx + 1
                                        continue 
                                require stor5.length < stor5.length
                                uint256(multiAccessOwners[stor5.length]) = arg1 or Mask(96, 160, uint256(multiAccessOwners[stor5.length]))
                                uint256(stor4[address(arg1)].field_0) = stor5.length
                                emit OwnerAdded(arg1);
}

function multiAccessChangeRequirement(uint256 arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) > 0:
        if 0 == stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    mem[0] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1 != 0:
                        if arg1 <= stor5.length - 1:
                            multiAccessRequired = arg1
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor4057[idx]
                                mem[32] = 1
                                stor1[stor4057[idx]] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s] = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                            emit RequirementChanged(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                    while code.data[3579 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor1[idx] = 0
                        stor2[idx] = 0
                        idx = idx + 3
                        continue 
                require stor2.length < stor2.length
                stor4057[stor2.length] = multiAccessRequired
                stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    mem[0] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = 0
                    if arg1 != 0:
                        if arg1 <= stor5.length - 1:
                            multiAccessRequired = arg1
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor4057[idx]
                                mem[32] = 1
                                stor1[stor4057[idx]] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s] = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                            emit RequirementChanged(arg1);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        mem[0] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = 0
                        if arg1 != 0:
                            if arg1 <= stor5.length - 1:
                                multiAccessRequired = arg1
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor4057[idx]
                                    mem[32] = 1
                                    stor1[stor4057[idx]] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s] = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit RequirementChanged(arg1);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    require stor2.length < stor2.length
                    stor4057[stor2.length] = multiAccessRequired
                    stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        mem[0] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = 0
                        if arg1 != 0:
                            if arg1 <= stor5.length - 1:
                                multiAccessRequired = arg1
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor4057[idx]
                                    mem[32] = 1
                                    stor1[stor4057[idx]] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s] = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit RequirementChanged(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            mem[0] = sha3(call.data[0 len calldata.size])
                            stor1[call.data[0 len calldata.size]] = 0
                            if arg1 != 0:
                                if arg1 <= stor5.length - 1:
                                    multiAccessRequired = arg1
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor4057[idx]
                                        mem[32] = 1
                                        stor1[stor4057[idx]] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                uint256(stor[s]) = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s] = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit RequirementChanged(arg1);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        require stor2.length < stor2.length
                        stor4057[stor2.length] = multiAccessRequired
                        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            mem[0] = sha3(call.data[0 len calldata.size])
                            stor1[call.data[0 len calldata.size]] = 0
                            if arg1 != 0:
                                if arg1 <= stor5.length - 1:
                                    multiAccessRequired = arg1
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor4057[idx]
                                        mem[32] = 1
                                        stor1[stor4057[idx]] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                uint256(stor[s]) = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s] = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit RequirementChanged(arg1);
}

function multiAccessChangeOwner(address arg1, address arg2) payable {
    if uint256(stor4[address(msg.sender)].field_0) > 0:
        if 0 == stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if uint256(stor4[address(arg2)].field_0) <= 0:
                        mem[0] = arg1
                        if uint256(stor4[address(arg1)].field_0):
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor4057[idx]
                                mem[32] = 1
                                stor1[stor4057[idx]] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s] = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                            require uint256(stor4[address(arg1)].field_0) < stor5.length
                            uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]))
                            uint256(stor4[address(arg1)].field_0) = 0
                            uint256(stor4[arg2].field_0) = uint256(stor4[address(arg1)].field_0)
                            emit OwnerChanged(address(arg1), arg2);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                    while code.data[3579 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor1[idx] = 0
                        stor2[idx] = 0
                        idx = idx + 3
                        continue 
                require stor2.length < stor2.length
                stor4057[stor2.length] = multiAccessRequired
                stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if uint256(stor4[address(arg2)].field_0) <= 0:
                        mem[0] = arg1
                        if uint256(stor4[address(arg1)].field_0):
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor4057[idx]
                                mem[32] = 1
                                stor1[stor4057[idx]] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s] = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                            require uint256(stor4[address(arg1)].field_0) < stor5.length
                            uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]))
                            uint256(stor4[address(arg1)].field_0) = 0
                            uint256(stor4[arg2].field_0) = uint256(stor4[address(arg1)].field_0)
                            emit OwnerChanged(address(arg1), arg2);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if uint256(stor4[address(arg2)].field_0) <= 0:
                            mem[0] = arg1
                            if uint256(stor4[address(arg1)].field_0):
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor4057[idx]
                                    mem[32] = 1
                                    stor1[stor4057[idx]] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s] = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                                require uint256(stor4[address(arg1)].field_0) < stor5.length
                                uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]))
                                uint256(stor4[address(arg1)].field_0) = 0
                                uint256(stor4[arg2].field_0) = uint256(stor4[address(arg1)].field_0)
                                emit OwnerChanged(address(arg1), arg2);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    require stor2.length < stor2.length
                    stor4057[stor2.length] = multiAccessRequired
                    stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if uint256(stor4[address(arg2)].field_0) <= 0:
                            mem[0] = arg1
                            if uint256(stor4[address(arg1)].field_0):
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor4057[idx]
                                    mem[32] = 1
                                    stor1[stor4057[idx]] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s] = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                                require uint256(stor4[address(arg1)].field_0) < stor5.length
                                uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]))
                                uint256(stor4[address(arg1)].field_0) = 0
                                uint256(stor4[arg2].field_0) = uint256(stor4[address(arg1)].field_0)
                                emit OwnerChanged(address(arg1), arg2);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if uint256(stor4[address(arg2)].field_0) <= 0:
                                mem[0] = arg1
                                if uint256(stor4[address(arg1)].field_0):
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor4057[idx]
                                        mem[32] = 1
                                        stor1[stor4057[idx]] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                uint256(stor[s]) = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s] = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    require uint256(stor4[address(arg1)].field_0) < stor5.length
                                    uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]))
                                    uint256(stor4[address(arg1)].field_0) = 0
                                    uint256(stor4[arg2].field_0) = uint256(stor4[address(arg1)].field_0)
                                    emit OwnerChanged(address(arg1), arg2);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        require stor2.length < stor2.length
                        stor4057[stor2.length] = multiAccessRequired
                        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if uint256(stor4[address(arg2)].field_0) <= 0:
                                mem[0] = arg1
                                if uint256(stor4[address(arg1)].field_0):
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor4057[idx]
                                        mem[32] = 1
                                        stor1[stor4057[idx]] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                uint256(stor[s]) = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s] = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    require uint256(stor4[address(arg1)].field_0) < stor5.length
                                    uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = arg2 or Mask(96, 160, uint256(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]))
                                    uint256(stor4[address(arg1)].field_0) = 0
                                    uint256(stor4[arg2].field_0) = uint256(stor4[address(arg1)].field_0)
                                    emit OwnerChanged(address(arg1), arg2);
}

function multiAccessRemoveOwner(address arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) > 0:
        if 0 == stor1[call.data[0 len calldata.size]]:
            if stor1[call.data[0 len calldata.size]]:
                require stor1[call.data[0 len calldata.size]] < stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if uint256(stor4[address(arg1)].field_0):
                        if multiAccessRequired < stor5.length - 1:
                            if uint256(stor4[address(arg1)].field_0) < stor5.length - 1:
                                require stor5.length - 1 < stor5.length
                                require uint256(stor4[address(arg1)].field_0) < stor5.length
                                address(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = stor36B6[stor5.length]
                                uint256(stor4[stor36B6[stor5.length]].field_0) = uint256(stor4[address(arg1)].field_0)
                            stor5.length--
                            if not stor5.length <= stor5.length - 1:
                                idx = stor5.length - 1
                                while stor5.length > idx:
                                    stor5[idx] = 0
                                    idx = idx + 1
                                    continue 
                            mem[0] = arg1
                            uint256(stor4[address(arg1)].field_0) = 0
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor4057[idx]
                                mem[32] = 1
                                stor1[stor4057[idx]] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s] = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                            emit OwnerRemoved(arg1);
            else:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                    while code.data[3579 len 32] + (3 * stor2.length) > idx:
                        uint256(stor[idx]) = 0
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor1[idx] = 0
                        stor2[idx] = 0
                        idx = idx + 3
                        continue 
                require stor2.length < stor2.length
                stor4057[stor2.length] = multiAccessRequired
                stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                stor1[call.data[0 len calldata.size]] = stor2.length
                if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                    emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                    uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                            idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                else:
                    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                    if stor2.length < stor2.length - 1:
                        require stor2.length - 1 < stor2.length
                        require stor2.length < stor2.length
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                        if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                            while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                        stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    stor1[call.data[0 len calldata.size]] = 0
                    if uint256(stor4[address(arg1)].field_0):
                        if multiAccessRequired < stor5.length - 1:
                            if uint256(stor4[address(arg1)].field_0) < stor5.length - 1:
                                require stor5.length - 1 < stor5.length
                                require uint256(stor4[address(arg1)].field_0) < stor5.length
                                address(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = stor36B6[stor5.length]
                                uint256(stor4[stor36B6[stor5.length]].field_0) = uint256(stor4[address(arg1)].field_0)
                            stor5.length--
                            if not stor5.length <= stor5.length - 1:
                                idx = stor5.length - 1
                                while stor5.length > idx:
                                    stor5[idx] = 0
                                    idx = idx + 1
                                    continue 
                            mem[0] = arg1
                            uint256(stor4[address(arg1)].field_0) = 0
                            idx = stor2.length - 1
                            while idx > 0:
                                require idx < stor2.length
                                mem[0] = stor4057[idx]
                                mem[32] = 1
                                stor1[stor4057[idx]] = 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (3 * stor2.length) - 3
                                    while sha3(2) + (3 * stor2.length) > s:
                                        uint256(stor[s]) = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        stor1[s] = 0
                                        stor2[s] = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                            emit OwnerRemoved(arg1);
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                if stor1[call.data[0 len calldata.size]]:
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor1[call.data[0 len calldata.size]] < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if uint256(stor4[address(arg1)].field_0):
                            if multiAccessRequired < stor5.length - 1:
                                if uint256(stor4[address(arg1)].field_0) < stor5.length - 1:
                                    require stor5.length - 1 < stor5.length
                                    require uint256(stor4[address(arg1)].field_0) < stor5.length
                                    address(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = stor36B6[stor5.length]
                                    uint256(stor4[stor36B6[stor5.length]].field_0) = uint256(stor4[address(arg1)].field_0)
                                stor5.length--
                                if not stor5.length <= stor5.length - 1:
                                    idx = stor5.length - 1
                                    while stor5.length > idx:
                                        stor5[idx] = 0
                                        idx = idx + 1
                                        continue 
                                mem[0] = arg1
                                uint256(stor4[address(arg1)].field_0) = 0
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor4057[idx]
                                    mem[32] = 1
                                    stor1[stor4057[idx]] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s] = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit OwnerRemoved(arg1);
                else:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                        while code.data[3579 len 32] + (3 * stor2.length) > idx:
                            uint256(stor[idx]) = 0
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor1[idx] = 0
                            stor2[idx] = 0
                            idx = idx + 3
                            continue 
                    require stor2.length < stor2.length
                    stor4057[stor2.length] = multiAccessRequired
                    stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                    stor1[call.data[0 len calldata.size]] = stor2.length
                    if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                        uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                        if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                        uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                    else:
                        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor2.length < stor2.length - 1:
                            require stor2.length - 1 < stor2.length
                            require stor2.length < stor2.length
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                            if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                    uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                    uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                            stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        stor1[call.data[0 len calldata.size]] = 0
                        if uint256(stor4[address(arg1)].field_0):
                            if multiAccessRequired < stor5.length - 1:
                                if uint256(stor4[address(arg1)].field_0) < stor5.length - 1:
                                    require stor5.length - 1 < stor5.length
                                    require uint256(stor4[address(arg1)].field_0) < stor5.length
                                    address(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = stor36B6[stor5.length]
                                    uint256(stor4[stor36B6[stor5.length]].field_0) = uint256(stor4[address(arg1)].field_0)
                                stor5.length--
                                if not stor5.length <= stor5.length - 1:
                                    idx = stor5.length - 1
                                    while stor5.length > idx:
                                        stor5[idx] = 0
                                        idx = idx + 1
                                        continue 
                                mem[0] = arg1
                                uint256(stor4[address(arg1)].field_0) = 0
                                idx = stor2.length - 1
                                while idx > 0:
                                    require idx < stor2.length
                                    mem[0] = stor4057[idx]
                                    mem[32] = 1
                                    stor1[stor4057[idx]] = 0
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (3 * stor2.length) - 3
                                        while sha3(2) + (3 * stor2.length) > s:
                                            uint256(stor[s]) = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            stor1[s] = 0
                                            stor2[s] = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                                emit OwnerRemoved(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[3579 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                    if stor1[call.data[0 len calldata.size]]:
                        require stor1[call.data[0 len calldata.size]] < stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor1[call.data[0 len calldata.size]] < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if uint256(stor4[address(arg1)].field_0):
                                if multiAccessRequired < stor5.length - 1:
                                    if uint256(stor4[address(arg1)].field_0) < stor5.length - 1:
                                        require stor5.length - 1 < stor5.length
                                        require uint256(stor4[address(arg1)].field_0) < stor5.length
                                        address(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = stor36B6[stor5.length]
                                        uint256(stor4[stor36B6[stor5.length]].field_0) = uint256(stor4[address(arg1)].field_0)
                                    stor5.length--
                                    if not stor5.length <= stor5.length - 1:
                                        idx = stor5.length - 1
                                        while stor5.length > idx:
                                            stor5[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    mem[0] = arg1
                                    uint256(stor4[address(arg1)].field_0) = 0
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor4057[idx]
                                        mem[32] = 1
                                        stor1[stor4057[idx]] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                uint256(stor[s]) = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s] = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit OwnerRemoved(arg1);
                    else:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = (3 * stor2.length) + code.data[3579 len 32] + 3
                            while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                uint256(stor[idx]) = 0
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor1[idx] = 0
                                stor2[idx] = 0
                                idx = idx + 3
                                continue 
                        require stor2.length < stor2.length
                        stor4057[stor2.length] = multiAccessRequired
                        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
                        stor1[call.data[0 len calldata.size]] = stor2.length
                        if uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) > 1:
                            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                            uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1])--
                            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]):
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[3579 len 32] + (3 * stor2.length)])
                            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[3579 len 32] + (3 * stor2.length))])
                        else:
                            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor2.length < stor2.length - 1:
                                require stor2.length - 1 < stor2.length
                                require stor2.length < stor2.length
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3])
                                if not uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]):
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                                        uint256(stor[s + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length) - 3)])
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                                    while uint256(stor[code.data[3579 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                                        uint8(stor[idx + sha3(code.data[3579 len 32] + (3 * stor2.length))]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 2])
                                uint256(stor[code.data[3579 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])
                                stor1[uint256(stor[code.data[3579 len 32] + (3 * stor2.length) - 1])] = stor2.length
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                idx = (3 * stor2.length) + code.data[3579 len 32] - 3
                                while code.data[3579 len 32] + (3 * stor2.length) > idx:
                                    uint256(stor[idx]) = 0
                                    mem[0] = idx
                                    s = sha3(idx)
                                    while sha3(idx) + (uint256(stor[idx]) + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor1[idx] = 0
                                    stor2[idx] = 0
                                    idx = idx + 3
                                    continue 
                            stor1[call.data[0 len calldata.size]] = 0
                            if uint256(stor4[address(arg1)].field_0):
                                if multiAccessRequired < stor5.length - 1:
                                    if uint256(stor4[address(arg1)].field_0) < stor5.length - 1:
                                        require stor5.length - 1 < stor5.length
                                        require uint256(stor4[address(arg1)].field_0) < stor5.length
                                        address(multiAccessOwners[uint256(stor4[address(arg1)].field_0)]) = stor36B6[stor5.length]
                                        uint256(stor4[stor36B6[stor5.length]].field_0) = uint256(stor4[address(arg1)].field_0)
                                    stor5.length--
                                    if not stor5.length <= stor5.length - 1:
                                        idx = stor5.length - 1
                                        while stor5.length > idx:
                                            stor5[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    mem[0] = arg1
                                    uint256(stor4[address(arg1)].field_0) = 0
                                    idx = stor2.length - 1
                                    while idx > 0:
                                        require idx < stor2.length
                                        mem[0] = stor4057[idx]
                                        mem[32] = 1
                                        stor1[stor4057[idx]] = 0
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (3 * stor2.length) - 3
                                            while sha3(2) + (3 * stor2.length) > s:
                                                uint256(stor[s]) = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (uint256(stor[s]) + 31 / 32) > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s] = 0
                                                stor2[s] = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                    emit OwnerRemoved(arg1);
}



}
