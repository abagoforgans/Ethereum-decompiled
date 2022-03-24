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
    return code.data[367 len 4785]
}



// =====================  Runtime code  =====================


#
#  - multiAccessChangeOwner(address arg1, address arg2)
#
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

function multiAccessGetOwners() payable {
    mem[160] = stor5.length - 1
    idx = 1
    while idx < stor5.length:
        mem[0] = 5
        require idx - 1 < mem[160]
        mem[(32 * idx - 1) + 192] = address(multiAccessOwners[idx])
        idx = idx + 1
        continue 
    mem[(32 * stor5.length - 1) + 192] = 32
    mem[(32 * stor5.length - 1) + 224] = mem[160]
    mem[(32 * stor5.length - 1) + 256 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    return 32, mem[(32 * stor5.length - 1) + 224 len (32 * mem[160]) + 32]
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) payable {
    if stor1[arg1] != 0:
        require stor1[arg1] < stor2.length
        if uint256(stor4[address(arg2)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[arg1])]):
            return bool(stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('param', 'arg1'), ('name', 'stor1', 1))])))[stor4[address(arg2)].field_0 % 32])
        else:
            return 0
    else:
        return 0
}

function multiAccessRevoke(bytes32 arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    if 0 == stor1[arg1]:
        return 0
    require stor1[arg1] < stor2.length
    if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor1[arg1])]):
        return 0
    if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('param', 'arg1'), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
        return 0
    require stor1[arg1] < stor2.length
    require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[arg1])])
    uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[arg1]))]) = !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[arg1]))])
    uint256(stor[code.data[4753 len 32] + (3 * stor1[arg1]) + 1])++
    emit Revoke(msg.sender, arg1);
    return 1
}

function multiAccessSetRecipient(address arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4057[stor1[call.data[0 len calldata.size]]] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[4753 len 32] + 3
            while code.data[4753 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(s)
                while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[s] = 0
                stor2[s] = 0
                s = s + 3
                continue 
        require stor2.length < stor2.length
        stor4057[stor2.length] = multiAccessRequired
        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if stor4057[stor2.length] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]):
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor2.length)])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = (3 * stor2.length) - 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            s = s + 3
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
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4057[stor1[call.data[0 len calldata.size]]] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[4753 len 32] + 3
            while code.data[4753 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(s)
                while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[s] = 0
                stor2[s] = 0
                s = s + 3
                continue 
        require stor2.length < stor2.length
        stor4057[stor2.length] = multiAccessRequired
        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if stor4057[stor2.length] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]):
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor2.length)])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = (3 * stor2.length) - 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            s = s + 3
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    if calldata.size <= 0:
        return 0
    call address(multiAccessRecipientAddress) with:
       funct call.data[0 len 4]
         gas gas_remaining - 25050 wei
        args call.data[4 len calldata.size - 4]
    return bool(ext_call.success)
}

function multiAccessAddOwner(address arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4057[stor1[call.data[0 len calldata.size]]] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[4753 len 32] + 3
            while code.data[4753 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(s)
                while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[s] = 0
                stor2[s] = 0
                s = s + 3
                continue 
        require stor2.length < stor2.length
        stor4057[stor2.length] = multiAccessRequired
        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if stor4057[stor2.length] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]):
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor2.length)])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = (3 * stor2.length) - 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            s = s + 3
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    if uint256(stor4[address(arg1)].field_0) > 0:
        return 0
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
    return 1
}

function multiAccessChangeRequirement(uint256 arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4057[stor1[call.data[0 len calldata.size]]] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[4753 len 32] + 3
            while code.data[4753 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(s)
                while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[s] = 0
                stor2[s] = 0
                s = s + 3
                continue 
        require stor2.length < stor2.length
        stor4057[stor2.length] = multiAccessRequired
        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if stor4057[stor2.length] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]):
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor2.length)])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = (3 * stor2.length) - 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            s = s + 3
            continue 
    mem[0] = sha3(call.data[0 len calldata.size])
    stor1[call.data[0 len calldata.size]] = 0
    if 0 == arg1:
        return 0
    if arg1 > stor5.length - 1:
        return 0
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
                t = sha3(t)
                while sha3(t) + (uint256(stor[t]) + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
                stor1[t] = 0
                stor2[t] = 0
                t = t + 3
                continue 
        idx = idx - 1
        continue 
    emit RequirementChanged(arg1);
    return 1
}

function multiAccessRemoveOwner(address arg1) payable {
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    if stor1[call.data[0 len calldata.size]] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4057[stor1[call.data[0 len calldata.size]]] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + code.data[4753 len 32] + 3
            while code.data[4753 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(s)
                while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[s] = 0
                stor2[s] = 0
                s = s + 3
                continue 
        require stor2.length < stor2.length
        stor4057[stor2.length] = multiAccessRequired
        stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
        stor1[call.data[0 len calldata.size]] = stor2.length
        if stor4057[stor2.length] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]):
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor2.length)])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))])
            return 0
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor2.length < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor2.length < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor2.length
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = (3 * stor2.length) - 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            s = s + 3
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    if not uint256(stor4[address(arg1)].field_0):
        return 0
    if multiAccessRequired >= stor5.length - 1:
        return 0
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
                t = sha3(t)
                while sha3(t) + (uint256(stor[t]) + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
                stor1[t] = 0
                stor2[t] = 0
                t = t + 3
                continue 
        idx = idx - 1
        continue 
    emit OwnerRemoved(arg1);
    return 1
}

function multiAccessCall(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    if uint256(stor4[address(msg.sender)].field_0) <= 0:
        return 0
    mem[ceil32(arg3.length) + 128 len calldata.size] = call.data[0 len calldata.size]
    if stor1[call.data[0 len calldata.size]] != 0:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('data', ('call.data', 0, 'calldatasize')), ('name', 'stor1', 1))])))[stor4[address(msg.sender)].field_0 % 32]:
                return 0
    if stor1[call.data[0 len calldata.size]]:
        require stor1[call.data[0 len calldata.size]] < stor2.length
        if stor4057[stor1[call.data[0 len calldata.size]]] > 1:
            emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1])--
            if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]):
                uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor4[address(msg.sender)].field_0) + 1
                if not uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                    idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                        uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])])
            uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))])
            return 0
        mem[ceil32(arg3.length) + 128] = 1
        emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
        if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
            require stor2.length - 1 < stor2.length
            require stor1[call.data[0 len calldata.size]] < stor2.length
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
            if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                while uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]])]) + 31 / 32 > idx:
                    uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]))]) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
            uint256(stor[code.data[4753 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
            stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor1[call.data[0 len calldata.size]]
        stor2.length--
        if not stor2.length > stor2.length - 1:
            stor1[call.data[0 len calldata.size]] = 0
            mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args arg3[all]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
        else:
            mem[0] = 2
            idx = (3 * stor2.length) - 3
            while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 1]) = 0
                uint256(stor[s + sha3(mem[0]) + 2]) = 0
                s = s + 3
                continue 
            stor1[call.data[0 len calldata.size]] = 0
            mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    else:
        stor2.length++
        if not stor2.length > stor2.length + 1:
            require stor2.length < stor2.length
            stor4057[stor2.length] = multiAccessRequired
            stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
            stor1[call.data[0 len calldata.size]] = stor2.length
            if stor4057[stor2.length] > 1:
                emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1])--
                if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]):
                    uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                    if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                        idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                        while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                            uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                            idx = idx + 1
                            continue 
                    require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor2.length)])
                uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))])
                return 0
            mem[ceil32(arg3.length) + 128] = 1
            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
            if stor2.length < stor2.length - 1:
                require stor2.length - 1 < stor2.length
                require stor2.length < stor2.length
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
                if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                    idx = 0
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                        uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
                stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor2.length
            stor2.length--
            if not stor2.length > stor2.length - 1:
                stor1[call.data[0 len calldata.size]] = 0
                mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
                if not arg3.length % 32:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                        args arg3[all]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                    call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                        args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
            else:
                mem[0] = 2
                idx = (3 * stor2.length) - 3
                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[s + sha3(mem[0]) + 1]) = 0
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    s = s + 3
                    continue 
                stor1[call.data[0 len calldata.size]] = 0
                mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
                if not arg3.length % 32:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                        args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
        else:
            idx = (3 * stor2.length) + code.data[4753 len 32] + 3
            while code.data[4753 len 32] + (3 * stor2.length) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(s)
                while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                stor1[s] = 0
                stor2[s] = 0
                s = s + 3
                continue 
            require stor2.length < stor2.length
            stor4057[stor2.length] = multiAccessRequired
            stor4057[stor2.length] = sha3(call.data[0 len calldata.size])
            stor1[call.data[0 len calldata.size]] = stor2.length
            if stor4057[stor2.length] > 1:
                emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1])--
                if uint256(stor4[address(msg.sender)].field_0) >= uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]):
                    uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor4[address(msg.sender)].field_0) + 1
                    if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) <= uint256(stor4[address(msg.sender)].field_0) + 1:
                        idx = uint256(stor4[address(msg.sender)].field_0) + 32 / 32
                        while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                            uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                            idx = idx + 1
                            continue 
                    require uint256(stor4[address(msg.sender)].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor2.length)])
                uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 256^stor4[address(msg.sender)].field_0 % 32 or !(255 * 256^stor4[address(msg.sender)].field_0 % 32) and uint256(stor[Mask(251, 0, stor4[address(msg.sender)].field_5) + sha3(code.data[4753 len 32] + (3 * stor2.length))])
                return 0
            mem[ceil32(arg3.length) + 128] = 1
            emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
            if stor2.length < stor2.length - 1:
                require stor2.length - 1 < stor2.length
                require stor2.length < stor2.length
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3])
                if not uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]):
                    idx = 0
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32 > idx:
                        uint256(stor[s + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = uint256(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length) - 3)])
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 3]) + 31 / 32
                    while uint256(stor[code.data[4753 len 32] + (3 * stor2.length)]) + 31 / 32 > idx:
                        uint8(stor[idx + sha3(code.data[4753 len 32] + (3 * stor2.length))]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 1]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 2])
                uint256(stor[code.data[4753 len 32] + (3 * stor2.length) + 2]) = uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])
                stor1[uint256(stor[code.data[4753 len 32] + (3 * stor2.length) - 1])] = stor2.length
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = (3 * stor2.length) - 3
                while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[s + sha3(mem[0]) + 1]) = 0
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    s = s + 3
                    continue 
            stor1[call.data[0 len calldata.size]] = 0
            mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    return bool(ext_call.success)
}

function sub_8060830a(?) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = stor2.length - 1
    if 352 < (32 * stor2.length - 1) + 352:
        mem[(32 * stor2.length - 1) + 352] = stor2.length - 1
        if 32 * stor2.length - 1 < 64 * stor2.length - 1:
            mem[(64 * stor2.length - 1) + 384] = -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1
            s = 0
            s = 0
            idx = 0
            while idx < stor2.length - 1:
                require idx + 1 < stor2.length
                mem[0] = 2
                require idx < stor2.length - 1
                mem[(32 * idx) + 352] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
                require idx < mem[(32 * stor2.length - 1) + 352]
                mem[(32 * stor2.length - 1) + (32 * idx) + 384] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 4])
                s = 1
                while s < stor5.length:
                    mem[0] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
                    mem[32] = 1
                    if stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] != 0:
                        mem[32] = 4
                        require stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] < stor2.length
                        mem[0] = 2
                        if uint256(stor4[address(stor5603[s])].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])]):
                            mem[0] = code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('stor', 256, 0, ('add', 5, ('code.data', 4753, 32), ('mul', 3, ('var', 0)))), ('name', 'stor1', 1))])))[stor4[address(stor5603[s])].field_0 % 32]:
                                require s < stor5.length
                                mem[0] = 5
                                require 0 < mem[(64 * stor2.length - 1) + 384]
                                mem[(64 * stor2.length - 1) + 416] = address(multiAccessOwners[s])
                    s = s + 1
                    continue 
                s = s
                s = code.data[4753 len 32] + (3 * idx) + 3
                idx = idx + 1
                continue 
            _msize = max((64 * stor2.length - 1) + 32, max((32 * stor2.length - 1) + (32 * idx), (64 * stor2.length - 1) + 32) + 32, 32 * stor2.length - 1)
            mem[_msize + 384] = 0
            mem[(_msize + 384) + 32] = 96
            mem[(_msize + 384) + 128] = stor2.length - 1
            mem[(_msize + 384) + 160 len 32 * stor2.length - 1] = mem[352 len 32 * stor2.length - 1]
            mem[(_msize + 384) + 64] = (32 * stor2.length - 1) + 128
            _445 = mem[(32 * stor2.length - 1) + 352]
            mem[(32 * stor2.length - 1) + (_msize + 384) + 192 len 32 * mem[(32 * stor2.length - 1) + 352]] = mem[(32 * stor2.length - 1) + 384 len 32 * mem[(32 * stor2.length - 1) + 352]]
            mem[(32 * _445) + (32 * stor2.length - 1) + (_msize + 384) + 192] = 0, None
            return 96, 
                   (32 * stor2.length - 1) + 128,
                   (32 * mem[(32 * stor2.length - 1) + 352]) + (32 * stor2.length - 1) + 160,
                   stor2.length - 1,
                   mem[352 len 32 * stor2.length - 1],
                   mem[(32 * stor2.length - 1) + 352],
                   mem[_msize + (32 * stor2.length - 1) + 576 len 32 * _445],
                   0,
                   None
        mem[(32 * stor2.length - 1) + 384] = -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1
        s = 0
        s = 0
        idx = 0
        while idx < stor2.length - 1:
            require idx + 1 < stor2.length
            mem[0] = 2
            require idx < stor2.length - 1
            mem[(32 * idx) + 352] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
            require idx < mem[(32 * stor2.length - 1) + 352]
            mem[(32 * stor2.length - 1) + (32 * idx) + 384] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 4])
            s = 1
            while s < stor5.length:
                mem[0] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
                mem[32] = 1
                if stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] != 0:
                    mem[32] = 4
                    require stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] < stor2.length
                    mem[0] = 2
                    if uint256(stor4[address(stor5603[s])].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])]):
                        mem[0] = code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])
                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('stor', 256, 0, ('add', 5, ('code.data', 4753, 32), ('mul', 3, ('var', 0)))), ('name', 'stor1', 1))])))[stor4[address(stor5603[s])].field_0 % 32]:
                            require s < stor5.length
                            mem[0] = 5
                            require 0 < mem[(32 * stor2.length - 1) + 384]
                            mem[(32 * stor2.length - 1) + 416] = address(multiAccessOwners[s])
                s = s + 1
                continue 
            s = s
            s = code.data[4753 len 32] + (3 * idx) + 3
            idx = idx + 1
            continue 
        if 32 * idx < 32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1:
            mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 448] = 96
            mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 544] = stor2.length - 1
            mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576 len 32 * stor2.length - 1] = mem[352 len 32 * stor2.length - 1]
            mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 480] = (32 * stor2.length - 1) + 128
            mem[(64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576] = mem[(32 * stor2.length - 1) + 352]
            mem[(64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 608 len 32 * mem[(32 * stor2.length - 1) + 352]] = mem[(32 * stor2.length - 1) + 384 len 32 * mem[(32 * stor2.length - 1) + 352]]
            mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 512] = (32 * mem[(32 * stor2.length - 1) + 352]) + (32 * stor2.length - 1) + 160
            mem[(32 * mem[(32 * stor2.length - 1) + 352]) + (64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 608] = mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]
            mem[(32 * mem[(32 * stor2.length - 1) + 352]) + (64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 640 len 32 * mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]] = mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 448 len 32 * mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]]
            return Array(len=stor2.length - 1, data=mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576 len (32 * mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]) + (32 * mem[(32 * stor2.length - 1) + 352]) + (32 * stor2.length - 1) + 64]), 
                   (32 * stor2.length - 1) + 128,
                   (32 * mem[(32 * stor2.length - 1) + 352]) + (32 * stor2.length - 1) + 160
        mem[(32 * stor2.length - 1) + (32 * idx) + 416] = 0
        mem[(32 * stor2.length - 1) + (32 * idx) + 448] = 96
        mem[(32 * stor2.length - 1) + (32 * idx) + 544] = stor2.length - 1
        mem[(32 * stor2.length - 1) + (32 * idx) + 576 len 32 * stor2.length - 1] = mem[352 len 32 * stor2.length - 1]
        mem[(32 * stor2.length - 1) + (32 * idx) + 480] = (32 * stor2.length - 1) + 128
        mem[(64 * stor2.length - 1) + (32 * idx) + 576] = mem[(32 * stor2.length - 1) + 352]
        mem[(64 * stor2.length - 1) + (32 * idx) + 608 len 32 * mem[(32 * stor2.length - 1) + 352]] = mem[(32 * stor2.length - 1) + 384 len 32 * mem[(32 * stor2.length - 1) + 352]]
        mem[(32 * mem[(32 * stor2.length - 1) + 352]) + (64 * stor2.length - 1) + (32 * idx) + 608] = 0
        mem[(32 * mem[(32 * stor2.length - 1) + 352]) + (64 * stor2.length - 1) + (32 * idx) + 640 len 0] = None
        return Array(len=stor2.length - 1, data=mem[(32 * stor2.length - 1) + (32 * idx) + 576 len (32 * stor2.length - 1) + (32 * mem[(32 * stor2.length - 1) + 352]) + 64]), 
               (32 * stor2.length - 1) + 128,
               (32 * mem[(32 * stor2.length - 1) + 352]) + (32 * stor2.length - 1) + 160
    mem[352] = stor2.length - 1
    if 384 < (32 * stor2.length - 1) + 384:
        mem[(32 * stor2.length - 1) + 384] = -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1
        s = 0
        s = 0
        idx = 0
        while idx < stor2.length - 1:
            require idx + 1 < stor2.length
            mem[0] = 2
            require idx < stor2.length - 1
            mem[(32 * idx) + 352] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
            require idx < mem[352]
            mem[(32 * idx) + 384] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 4])
            s = 1
            while s < stor5.length:
                mem[0] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
                mem[32] = 1
                if stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] != 0:
                    mem[32] = 4
                    require stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] < stor2.length
                    mem[0] = 2
                    if uint256(stor4[address(stor5603[s])].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])]):
                        mem[0] = code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])
                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('stor', 256, 0, ('add', 5, ('code.data', 4753, 32), ('mul', 3, ('var', 0)))), ('name', 'stor1', 1))])))[stor4[address(stor5603[s])].field_0 % 32]:
                            require s < stor5.length
                            mem[0] = 5
                            require 0 < mem[(32 * stor2.length - 1) + 384]
                            mem[(32 * stor2.length - 1) + 416] = address(multiAccessOwners[s])
                s = s + 1
                continue 
            s = s
            s = code.data[4753 len 32] + (3 * idx) + 3
            idx = idx + 1
            continue 
        if msize >= (32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416:
            mem[(max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2.length - 1
            mem[(max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2.length - 1] = mem[352 len 32 * stor2.length - 1]
            mem[(32 * stor2.length - 1) + (max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
            _461 = mem[352]
            mem[(32 * stor2.length - 1) + (max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2.length - 1) + 160
            mem[(32 * _461) + (32 * stor2.length - 1) + (max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
            mem[(32 * _461) + (32 * stor2.length - 1) + (max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
            return 96, 
                   (32 * stor2.length - 1) + 128,
                   (32 * mem[352]) + (32 * stor2.length - 1) + 160,
                   stor2.length - 1,
                   mem[max((32 * stor2.length - 1) - 416, max((32 * stor2.length - 1) + 32, 32 * idx) - 416) + 992 len (32 * _461) + (32 * stor2.length - 1) + 32],
                   0,
                   None
        mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 448] = 96
        mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 544] = stor2.length - 1
        mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576 len 32 * stor2.length - 1] = mem[352 len 32 * stor2.length - 1]
        mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 480] = (32 * stor2.length - 1) + 128
        mem[(64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576] = mem[352]
        mem[(64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
        mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 512] = (32 * mem[352]) + (32 * stor2.length - 1) + 160
        mem[(32 * mem[352]) + (64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 608] = mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]
        mem[(32 * mem[352]) + (64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 640 len 32 * mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]] = mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 448 len 32 * mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]]
        return Array(len=stor2.length - 1, data=mem[352 len 32 * stor2.length - 1], mem[352], mem[(64 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 608 len (32 * mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]) + (32 * mem[352]) + 32]), 
               (32 * stor2.length - 1) + 128,
               (32 * mem[352]) + (32 * stor2.length - 1) + 160
    mem[384] = -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1
    s = 0
    s = 0
    idx = 0
    while idx < stor2.length - 1:
        require idx + 1 < stor2.length
        mem[0] = 2
        require idx < stor2.length - 1
        mem[(32 * idx) + 352] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
        require idx < mem[352]
        mem[(32 * idx) + 384] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 4])
        s = 1
        while s < stor5.length:
            mem[0] = uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])
            mem[32] = 1
            if stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] != 0:
                mem[32] = 4
                require stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])] < stor2.length
                mem[0] = 2
                if uint256(stor4[address(stor5603[s])].field_0) < uint256(stor[code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])]):
                    mem[0] = code.data[4753 len 32] + (3 * stor1[uint256(stor[code.data[4753 len 32] + (3 * idx) + 5])])
                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('name', 'stor4', 4))]) + sha3(code.data[4753 len 32] + (3 * stor[('map', ('stor', 256, 0, ('add', 5, ('code.data', 4753, 32), ('mul', 3, ('var', 0)))), ('name', 'stor1', 1))])))[stor4[address(stor5603[s])].field_0 % 32]:
                        require s < stor5.length
                        mem[0] = 5
                        require 0 < mem[384]
                        mem[416] = address(multiAccessOwners[s])
            s = s + 1
            continue 
        s = s
        s = code.data[4753 len 32] + (3 * idx) + 3
        idx = idx + 1
        continue 
    if msize < (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416:
        mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 448] = 96
        mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 544] = stor2.length - 1
        mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576 len 32 * stor2.length - 1] = mem[352 len 32 * stor2.length - 1]
        mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 480] = (32 * stor2.length - 1) + 128
        mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576] = mem[352]
        mem[(32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
        mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 512] = (32 * mem[352]) + (32 * stor2.length - 1) + 160
        mem[(32 * mem[352]) + (32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 608] = mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]
        mem[(32 * mem[352]) + (32 * stor2.length - 1) + (32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 640 len 32 * mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]] = mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 448 len 32 * mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]]
        return Array(len=stor2.length - 1, data=mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 576 len (32 * mem[(32 * -stor2.length + -stor5.length + (stor2.length * stor5.length) + 1) + 416]) + (32 * mem[352]) + (32 * stor2.length - 1) + 64]), 
               (32 * stor2.length - 1) + 128,
               (32 * mem[352]) + (32 * stor2.length - 1) + 160
    _msize = max(32, 32 * idx)
    mem[_msize + 416] = 0
    mem[64] = (_msize + 416) + 32
    mem[(_msize + 416) + 32] = 96
    mem[(_msize + 416) + 128] = stor2.length - 1
    mem[(_msize + 416) + 160 len 32 * stor2.length - 1] = mem[352 len 32 * stor2.length - 1]
    mem[(_msize + 416) + 64] = (32 * stor2.length - 1) + 128
    mem[(32 * stor2.length - 1) + (_msize + 416) + 160] = mem[352]
    _469 = mem[352]
    mem[(32 * stor2.length - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
    mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2.length - 1) + 160
    mem[(32 * _469) + (32 * stor2.length - 1) + (_msize + 416) + 192] = Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]
    mem[(32 * _469) + (32 * stor2.length - 1) + (_msize + 416) + 224 len 32 * Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]] = mem[(_msize + 416) + 32 len 32 * Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]]
    return memory
      from (_msize + 416) + 32
       len (32 * Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]) + (32 * _469) + (32 * stor2.length - 1) + 192
}



}
