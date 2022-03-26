contract main {


// =======================  Init code  ======================


mapping of uint256 stor2;
uint256 stor4;
mapping of uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    stor6.length = 2
    if not stor6.length <= 2:
        idx = 2
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    require 1 < stor6.length
    address(stor6.field_256) = msg.sender
    stor5[address(msg.sender)] = 1
    stor4 = 1
    stor2[0] = 1
    if not stor2[0] <= 1:
        mem[0] = 0xac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b
        idx = 3
        while sha3(0xac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b) + (3 * stor2[0]) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    return code.data[345 len 6136]
}



// =====================  Runtime code  =====================


#
#  - multiAccessRemoveOwnerD(address arg1, address arg2)
#
mapping of uint8 stor0;
address multiAccessRecipientAddress;
array of struct stor2;
uint256 stor3;
uint256 multiAccessRequired;
mapping of struct stor5;
array of struct multiAccessOwners;

function multiAccessRecipient() {
    return multiAccessRecipientAddress
}

function multiAccessOwners(uint256 arg1) {
    require arg1 < multiAccessOwners.length
    return address(multiAccessOwners[arg1].field_0)
}

function multiAccessRequired() {
    return multiAccessRequired
}

function senderDelegates(address arg1, address arg2) {
    return bool(stor0[arg1][arg2])
}

function multiAccessIsOwner(address arg1) {
    return (stor5[address(arg1)].field_0 > 0)
}

function setDelegate(address arg1, bool arg2) {
    stor0[address(msg.sender)][address(arg1)] = uint8(arg2)
    return 1
}

function multiAccessGetOwners() {
    mem[160] = multiAccessOwners.length - 1
    idx = 1
    while idx < multiAccessOwners.length:
        mem[0] = 6
        require idx - 1 < mem[160]
        mem[(32 * idx - 1) + 192] = address(multiAccessOwners[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * multiAccessOwners.length - 1) + 192] = 32
    mem[(32 * multiAccessOwners.length - 1) + 224] = mem[160]
    mem[(32 * multiAccessOwners.length - 1) + 256 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    return 32, mem[(32 * multiAccessOwners.length - 1) + 224 len (32 * mem[160]) + 32]
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) {
    if stor2[stor3][1][arg1].field_0:
        require stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0
        if stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][arg1].field_0].field_0:
            return bool(stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32])
        else:
            return 0
    else:
        return 0
}

function multiAccessRevokeD(bytes32 arg1, address arg2) {
    if arg2 != msg.sender:
        if not stor0[address(arg2)][address(msg.sender)]:
            return 0
    if stor5[address(arg2)].field_0 <= 0:
        return 0
    if not stor2[stor3][1][arg1].field_0:
        return 0
    require stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0
    if stor5[address(arg2)].field_0 >= stor2[stor3][stor2[stor3][1][arg1].field_0].field_0:
        return 0
    if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
        return 0
    require stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0
    require stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][arg1].field_0].field_0
    stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 and !(255 * 256^stor5[address(arg2)].field_0 % 32)
    stor2[stor3][stor2[stor3][1][arg1].field_0].field_256++
    if multiAccessRequired == stor2[stor3][stor2[stor3][1][arg1].field_0].field_256 + 1:
        if stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0 - 1:
            require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
            require stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3][1][arg1].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
            if not stor2[stor3][stor2[stor3].field_0].field_0:
                idx = 0
                while stor2[stor3][stor2[stor3][1][arg1].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][arg1].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                    stor2[stor3][(3 * stor2[stor3][1][arg1].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                while stor2[stor3][stor2[stor3][1][arg1].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][arg1].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor3][stor2[stor3][1][arg1].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][stor2[stor3][1][arg1].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][arg1].field_0
        stor2[stor3].field_0--
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) - 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        stor2[stor3][1][arg1].field_0 = 0
    emit Revoke(address(arg2), arg1);
    return 1
}

function multiAccessRevoke(bytes32 arg1) {
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if not stor2[stor3][1][arg1].field_0:
        return 0
    require stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0
    if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][arg1].field_0].field_0:
        return 0
    if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
        return 0
    require stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0
    require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][arg1].field_0].field_0
    stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 and !(255 * 256^stor5[address(msg.sender)].field_0 % 32)
    stor2[stor3][stor2[stor3][1][arg1].field_0].field_256++
    if multiAccessRequired == stor2[stor3][stor2[stor3][1][arg1].field_0].field_256 + 1:
        if stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0 - 1:
            require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
            require stor2[stor3][1][arg1].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3][1][arg1].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
            if not stor2[stor3][stor2[stor3].field_0].field_0:
                idx = 0
                while stor2[stor3][stor2[stor3][1][arg1].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][arg1].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                    stor2[stor3][(3 * stor2[stor3][1][arg1].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                while stor2[stor3][stor2[stor3][1][arg1].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][arg1].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor3][stor2[stor3][1][arg1].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][stor2[stor3][1][arg1].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][arg1].field_0
        stor2[stor3].field_0--
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) - 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        stor2[stor3][1][arg1].field_0 = 0
    emit Revoke(msg.sender, arg1);
    return 1
}

function multiAccessSetRecipientD(address arg1, address arg2) {
    if arg2 != msg.sender:
        if not stor0[address(arg2)][address(msg.sender)]:
            return 0
    if stor5[address(arg2)].field_0 <= 0:
        return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
                return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 > 1:
            emit Confirmation(0, arg2, sha3(0, arg1));
            stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256--
            if stor5[address(arg2)].field_0 >= stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
                stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor5[address(arg2)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 <= stor5[address(arg2)].field_0 + 1:
                    idx = stor5[address(arg2)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1)
        stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, arg2, sha3(0, arg1));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(arg2)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(arg2)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(arg2)].field_0 + 1:
                    idx = stor5[address(arg2)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, arg2, sha3(0, arg1));
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = 0
    multiAccessRecipientAddress = arg1
    return 1
}

function multiAccessSetRecipient(address arg1) {
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
                return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
                stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1)
        stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, msg.sender, sha3(0, arg1));
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = 0
    multiAccessRecipientAddress = arg1
    return 1
}

function multiAccessAddOwnerD(address arg1, address arg2) {
    if arg2 != msg.sender:
        if not stor0[address(arg2)][address(msg.sender)]:
            return 0
    if stor5[address(arg2)].field_0 <= 0:
        return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
                return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 > 1:
            emit Confirmation(0, arg2, sha3(0, arg1));
            stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256--
            if stor5[address(arg2)].field_0 >= stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
                stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor5[address(arg2)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 <= stor5[address(arg2)].field_0 + 1:
                    idx = stor5[address(arg2)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1)
        stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, arg2, sha3(0, arg1));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(arg2)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(arg2)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(arg2)].field_0 + 1:
                    idx = stor5[address(arg2)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, arg2, sha3(0, arg1));
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = 0
    if stor5[address(arg1)].field_0 > 0:
        return 0
    multiAccessOwners.length++
    if not multiAccessOwners.length <= multiAccessOwners.length + 1:
        idx = multiAccessOwners.length + 1
        while multiAccessOwners.length > idx:
            multiAccessOwners[idx].field_0 = 0
            idx = idx + 1
            continue 
    require multiAccessOwners.length < multiAccessOwners.length
    address(multiAccessOwners[multiAccessOwners.length].field_0) = arg1
    stor5[address(arg1)].field_0 = multiAccessOwners.length
    emit OwnerAdded(arg1);
    return 1
}

function multiAccessAddOwner(address arg1) {
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
                return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
                stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1)
        stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, msg.sender, sha3(0, arg1));
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = 0
    if stor5[address(arg1)].field_0 > 0:
        return 0
    multiAccessOwners.length++
    if not multiAccessOwners.length <= multiAccessOwners.length + 1:
        idx = multiAccessOwners.length + 1
        while multiAccessOwners.length > idx:
            multiAccessOwners[idx].field_0 = 0
            idx = idx + 1
            continue 
    require multiAccessOwners.length < multiAccessOwners.length
    address(multiAccessOwners[multiAccessOwners.length].field_0) = arg1
    stor5[address(arg1)].field_0 = multiAccessOwners.length
    emit OwnerAdded(arg1);
    return 1
}

function multiAccessChangeRequirementD(uint256 arg1, address arg2) {
    if arg2 != msg.sender:
        if not stor0[address(arg2)][address(msg.sender)]:
            return 0
    if stor5[address(arg2)].field_0 <= 0:
        return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
                return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 > 1:
            emit Confirmation(0, arg2, sha3(0, arg1));
            stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256--
            if stor5[address(arg2)].field_0 >= stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
                stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor5[address(arg2)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 <= stor5[address(arg2)].field_0 + 1:
                    idx = stor5[address(arg2)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1)
        stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, arg2, sha3(0, arg1));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(arg2)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(arg2)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(arg2)].field_0 + 1:
                    idx = stor5[address(arg2)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg2)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, arg2, sha3(0, arg1));
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = 0
    if not arg1:
        return 0
    if arg1 > multiAccessOwners.length - 1:
        return 0
    multiAccessRequired = arg1
    stor3++
    stor2[stor3 + 1].field_0++
    if not stor2[stor3 + 1].field_0 <= stor2[stor3 + 1].field_0 + 1:
        mem[0] = sha3(stor3 + 1, 2)
        idx = (3 * stor2[stor3 + 1].field_0) + 3
        while sha3(sha3(stor3 + 1, 2)) + (3 * stor2[stor3 + 1].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    emit RequirementChanged(arg1);
    return 1
}

function multiAccessChangeOwnerD(address arg1, address arg2, address arg3) {
    if arg3 != msg.sender:
        if not stor0[address(arg3)][address(msg.sender)]:
            return 0
    if stor5[address(arg3)].field_0 <= 0:
        return 0
    if stor2[stor3][1][sha3(0, arg1, arg2)].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0
        if stor5[address(arg3)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg3')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg3)].field_0 % 32]:
                return 0
    if stor2[stor3][1][sha3(0, arg1, arg2)].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_256 > 1:
            emit Confirmation(0, arg3, sha3(0, arg1, arg2));
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_256--
            if stor5[address(arg3)].field_0 >= stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0:
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 = stor5[address(arg3)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 <= stor5[address(arg3)].field_0 + 1:
                    idx = stor5[address(arg3)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg3)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg3)].field_0 % 32 or !(255 * 256^stor5[address(arg3)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1, arg2)
        stor2[stor3][1][sha3(0, arg1, arg2)].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, arg3, sha3(0, arg1, arg2));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(arg3)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(arg3)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(arg3)].field_0 + 1:
                    idx = stor5[address(arg3)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg3)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg3)].field_0 % 32 or !(255 * 256^stor5[address(arg3)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, arg3, sha3(0, arg1, arg2));
    if stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2)].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][sha3(0, arg1, arg2)].field_0 = 0
    if stor5[address(arg2)].field_0 > 0:
        return 0
    if not stor5[address(arg1)].field_0:
        return 0
    require stor5[address(arg1)].field_0 < multiAccessOwners.length
    address(multiAccessOwners[stor5[address(arg1)].field_0].field_0) = arg2
    stor5[address(arg1)].field_0 = 0
    stor5[arg2].field_0 = stor5[address(arg1)].field_0
    stor3++
    stor2[stor3 + 1].field_0++
    if not stor2[stor3 + 1].field_0 <= stor2[stor3 + 1].field_0 + 1:
        mem[0] = sha3(stor3 + 1, 2)
        idx = (3 * stor2[stor3 + 1].field_0) + 3
        while sha3(sha3(stor3 + 1, 2)) + (3 * stor2[stor3 + 1].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    emit OwnerChanged(address(arg1), arg2);
    return 1
}

function multiAccessChangeRequirement(uint256 arg1) {
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
                return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
                stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1)
        stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, msg.sender, sha3(0, arg1));
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = 0
    if not arg1:
        return 0
    if arg1 > multiAccessOwners.length - 1:
        return 0
    multiAccessRequired = arg1
    stor3++
    stor2[stor3 + 1].field_0++
    if not stor2[stor3 + 1].field_0 <= stor2[stor3 + 1].field_0 + 1:
        mem[0] = sha3(stor3 + 1, 2)
        idx = (3 * stor2[stor3 + 1].field_0) + 3
        while sha3(sha3(stor3 + 1, 2)) + (3 * stor2[stor3 + 1].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    emit RequirementChanged(arg1);
    return 1
}

function multiAccessChangeOwner(address arg1, address arg2) {
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if stor2[stor3][1][sha3(0, arg1, arg2)].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0
        if stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
                return 0
    if stor2[stor3][1][sha3(0, arg1, arg2)].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1, arg2));
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0:
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1, arg2)
        stor2[stor3][1][sha3(0, arg1, arg2)].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1, arg2));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, msg.sender, sha3(0, arg1, arg2));
    if stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][sha3(0, arg1, arg2)].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2)].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2)].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2)].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][sha3(0, arg1, arg2)].field_0 = 0
    if stor5[address(arg2)].field_0 > 0:
        return 0
    if not stor5[address(arg1)].field_0:
        return 0
    require stor5[address(arg1)].field_0 < multiAccessOwners.length
    address(multiAccessOwners[stor5[address(arg1)].field_0].field_0) = arg2
    stor5[address(arg1)].field_0 = 0
    stor5[arg2].field_0 = stor5[address(arg1)].field_0
    stor3++
    stor2[stor3 + 1].field_0++
    if not stor2[stor3 + 1].field_0 <= stor2[stor3 + 1].field_0 + 1:
        mem[0] = sha3(stor3 + 1, 2)
        idx = (3 * stor2[stor3 + 1].field_0) + 3
        while sha3(sha3(stor3 + 1, 2)) + (3 * stor2[stor3 + 1].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    emit OwnerChanged(address(arg1), arg2);
    return 1
}

function multiAccessRemoveOwner(address arg1) {
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
                return 0
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0:
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0:
                stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('map', 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 <= stor2[stor3].field_0 + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
        require stor2[stor3].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1)
        stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = stor2[stor3].field_0
        require stor2[stor3].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1));
            stor2[stor3][stor2[stor3].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
    emit Confirmation(1, msg.sender, sha3(0, arg1));
    if stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0 - 1:
        require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
        require stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 < stor2[stor3].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
        if not stor2[stor3][stor2[stor3].field_0].field_0:
            idx = 0
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
            while stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_0 + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
        stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0
    stor2[stor3].field_0--
    if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * stor2[stor3].field_0) - 3
        while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    stor2[stor3][1][('map', 0, ('param', 'arg1'))].field_0 = 0
    if not stor5[address(arg1)].field_0:
        return 0
    if multiAccessRequired >= multiAccessOwners.length - 1:
        return 0
    if stor5[address(arg1)].field_0 < multiAccessOwners.length - 1:
        require multiAccessOwners.length - 1 < multiAccessOwners.length
        require stor5[address(arg1)].field_0 < multiAccessOwners.length
        uint64(multiAccessOwners[stor5[address(arg1)].field_0].field_0) = uint64(multiAccessOwners[multiAccessOwners.length].field_0)
        Mask(96, 0, multiAccessOwners[stor5[address(arg1)].field_0].field_64) = 0
        stor5[address(stor6[stor6.length].field_0)].field_0 = stor5[address(arg1)].field_0
    multiAccessOwners.length--
    if not multiAccessOwners.length <= multiAccessOwners.length - 1:
        idx = multiAccessOwners.length - 1
        while multiAccessOwners.length > idx:
            multiAccessOwners[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[address(arg1)].field_0 = 0
    stor3++
    stor2[stor3 + 1].field_0++
    if not stor2[stor3 + 1].field_0 <= stor2[stor3 + 1].field_0 + 1:
        mem[0] = sha3(stor3 + 1, 2)
        idx = (3 * stor2[stor3 + 1].field_0) + 3
        while sha3(sha3(stor3 + 1, 2)) + (3 * stor2[stor3 + 1].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    emit OwnerRemoved(arg1);
    return 1
}

function multiAccessCallD(address arg1, uint256 arg2, bytes arg3, address arg4) {
    mem[128 len arg3.length] = arg3[all]
    if arg4 != msg.sender:
        if not stor0[address(arg4)][address(msg.sender)]:
            return 0
    mem[ceil32(arg3.length) + 149] = arg2
    mem[ceil32(arg3.length) + 181 len arg3.length] = arg3[all]
    if stor5[address(arg4)].field_0 <= 0:
        return 0
    if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
        if stor5[address(arg4)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg4')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg4)].field_0 % 32]:
                return 0
    if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 > 1:
            emit Confirmation(0, arg4, sha3(0, arg1, arg2, arg3[all]));
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256--
            if stor5[address(arg4)].field_0 >= stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0:
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor5[address(arg4)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 <= stor5[address(arg4)].field_0 + 1:
                    idx = stor5[address(arg4)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(arg4)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0
            stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg4)].field_0 % 32 or !(255 * 256^stor5[address(arg4)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
        mem[ceil32(arg3.length) + 128] = 1
        emit Confirmation(1, arg4, sha3(0, arg1, arg2, arg3[all]));
        if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0 - 1:
            require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
            require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
            if not stor2[stor3][stor2[stor3].field_0].field_0:
                idx = 0
                while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                    stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0
        stor2[stor3].field_0--
        if not stor2[stor3].field_0 > stor2[stor3].field_0 - 1:
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) - 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 > stor2[stor3].field_0 + 1:
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1, arg2, arg3[all])
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = stor2[stor3].field_0
            require stor2[stor3].field_0 < stor2[stor3].field_0
            if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
                emit Confirmation(0, arg4, sha3(0, arg1, arg2, arg3[all]));
                stor2[stor3][stor2[stor3].field_0].field_256--
                if stor5[address(arg4)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                    stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(arg4)].field_0 + 1
                    if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(arg4)].field_0 + 1:
                        idx = stor5[address(arg4)].field_0 + 32 / 32
                        while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                            stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor5[address(arg4)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
                stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg4)].field_0 % 32 or !(255 * 256^stor5[address(arg4)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
                return 0
            mem[ceil32(arg3.length) + 128] = 1
            emit Confirmation(1, arg4, sha3(0, arg1, arg2, arg3[all]));
            if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0 - 1:
                require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
                require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
                if not stor2[stor3][stor2[stor3].field_0].field_0:
                    idx = 0
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0
            stor2[stor3].field_0--
            if not stor2[stor3].field_0 > stor2[stor3].field_0 - 1:
                stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
                mem[0] = sha3(stor3, 2)
                idx = (3 * stor2[stor3].field_0) - 3
                while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    stor[s + sha3(mem[0]) + 1] = 0
                    stor[s + sha3(mem[0]) + 2] = 0
                    s = s + 3
                    continue 
                stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1, arg2, arg3[all])
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = stor2[stor3].field_0
            require stor2[stor3].field_0 < stor2[stor3].field_0
            if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
                emit Confirmation(0, arg4, sha3(0, arg1, arg2, arg3[all]));
                stor2[stor3][stor2[stor3].field_0].field_256--
                if stor5[address(arg4)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                    stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(arg4)].field_0 + 1
                    if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(arg4)].field_0 + 1:
                        idx = stor5[address(arg4)].field_0 + 32 / 32
                        while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                            stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor5[address(arg4)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
                stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(arg4)].field_0 % 32 or !(255 * 256^stor5[address(arg4)].field_0 % 32) and stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
                return 0
            mem[ceil32(arg3.length) + 128] = 1
            emit Confirmation(1, arg4, sha3(0, arg1, arg2, arg3[all]));
            if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0 - 1:
                require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
                require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
                if not stor2[stor3][stor2[stor3].field_0].field_0:
                    idx = 0
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0
            stor2[stor3].field_0--
            if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
                mem[0] = sha3(stor3, 2)
                idx = (3 * stor2[stor3].field_0) - 3
                while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    stor[s + sha3(mem[0]) + 1] = 0
                    stor[s + sha3(mem[0]) + 2] = 0
                    s = s + 3
                    continue 
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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

function multiAccessCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    mem[ceil32(arg3.length) + 149] = arg2
    mem[ceil32(arg3.length) + 181 len arg3.length] = arg3[all]
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
        if stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
                return 0
    if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0:
        require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, arg1, arg2, arg3[all]));
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0:
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
        mem[ceil32(arg3.length) + 128] = 1
        emit Confirmation(1, msg.sender, sha3(0, arg1, arg2, arg3[all]));
        if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0 - 1:
            require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
            require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
            if not stor2[stor3][stor2[stor3].field_0].field_0:
                idx = 0
                while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                    stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0
        stor2[stor3].field_0--
        if not stor2[stor3].field_0 > stor2[stor3].field_0 - 1:
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) - 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 > stor2[stor3].field_0 + 1:
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1, arg2, arg3[all])
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = stor2[stor3].field_0
            require stor2[stor3].field_0 < stor2[stor3].field_0
            if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
                emit Confirmation(0, msg.sender, sha3(0, arg1, arg2, arg3[all]));
                stor2[stor3][stor2[stor3].field_0].field_256--
                if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                    stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                    if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                        idx = stor5[address(msg.sender)].field_0 + 32 / 32
                        while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                            stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
                stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
                return 0
            mem[ceil32(arg3.length) + 128] = 1
            emit Confirmation(1, msg.sender, sha3(0, arg1, arg2, arg3[all]));
            if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0 - 1:
                require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
                require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
                if not stor2[stor3][stor2[stor3].field_0].field_0:
                    idx = 0
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0
            stor2[stor3].field_0--
            if not stor2[stor3].field_0 > stor2[stor3].field_0 - 1:
                stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
                mem[0] = sha3(stor3, 2)
                idx = (3 * stor2[stor3].field_0) - 3
                while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    stor[s + sha3(mem[0]) + 1] = 0
                    stor[s + sha3(mem[0]) + 2] = 0
                    s = s + 3
                    continue 
                stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, arg1, arg2, arg3[all])
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = stor2[stor3].field_0
            require stor2[stor3].field_0 < stor2[stor3].field_0
            if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
                emit Confirmation(0, msg.sender, sha3(0, arg1, arg2, arg3[all]));
                stor2[stor3][stor2[stor3].field_0].field_256--
                if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                    stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                    if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                        idx = stor5[address(msg.sender)].field_0 + 32 / 32
                        while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                            stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
                stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
                return 0
            mem[ceil32(arg3.length) + 128] = 1
            emit Confirmation(1, msg.sender, sha3(0, arg1, arg2, arg3[all]));
            if stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0 - 1:
                require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
                require stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 < stor2[stor3].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
                if not stor2[stor3][stor2[stor3].field_0].field_0:
                    idx = 0
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0
            stor2[stor3].field_0--
            if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
                mem[0] = sha3(stor3, 2)
                idx = (3 * stor2[stor3].field_0) - 3
                while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    stor[s + sha3(mem[0]) + 1] = 0
                    stor[s + sha3(mem[0]) + 2] = 0
                    s = s + 3
                    continue 
            stor2[stor3][1][sha3(0, arg1, arg2, arg3[all])].field_0 = 0
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

function _fallback() {
    if msg.sender != msg.sender:
        if not stor0[address(msg.sender)][address(msg.sender)]:
            return 0
    mem[ceil32(calldata.size) + 149] = msg.value
    mem[ceil32(calldata.size) + 181 len calldata.size] = call.data[0 len calldata.size]
    if stor5[address(msg.sender)].field_0 <= 0:
        return 0
    if stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0:
        require stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0
        if stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('sha3', 0, ('stor', 160, 0, ('name', 'stor1', 1)), 'callvalue', ('call.data', 0, 'calldatasize')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
                return 0
    if stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0:
        require stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0
        if stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size]));
            stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_256--
            if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0:
                stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                if not stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                    idx = stor5[address(msg.sender)].field_0 + 32 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0
            stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('stor', ('name', 'stor1', 1)), 'callvalue', ('call.data', 0, 'calldatasize')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('sha3', 0, ('stor', ('name', 'stor1', 1)), 'callvalue', ('call.data', 0, 'calldatasize')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
            return 0
        mem[ceil32(calldata.size) + 128] = 1
        emit Confirmation(1, msg.sender, sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size]));
        if stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0 - 1:
            require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
            require stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
            if not stor2[stor3][stor2[stor3].field_0].field_0:
                idx = 0
                while stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                    stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                while stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
            stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0
        stor2[stor3].field_0--
        if not stor2[stor3].field_0 > stor2[stor3].field_0 - 1:
            stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 = 0
            mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
            if not calldata.size % 32:
                call multiAccessRecipientAddress with:
                   funct call.data[0 len 4]
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args call.data[4 len calldata.size - 4]
            else:
                mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
                call multiAccessRecipientAddress with:
                   funct call.data[0 len 4]
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
        else:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) - 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
            stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 = 0
            mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
            if not calldata.size % 32:
                call multiAccessRecipientAddress with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args call.data[4 len calldata.size - 4]
            else:
                mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
                call multiAccessRecipientAddress with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
    else:
        stor2[stor3].field_0++
        if not stor2[stor3].field_0 > stor2[stor3].field_0 + 1:
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size])
            stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 = stor2[stor3].field_0
            require stor2[stor3].field_0 < stor2[stor3].field_0
            if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
                emit Confirmation(0, msg.sender, sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size]));
                stor2[stor3][stor2[stor3].field_0].field_256--
                if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                    stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                    if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                        idx = stor5[address(msg.sender)].field_0 + 32 / 32
                        while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                            stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
                stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
                return 0
            mem[ceil32(calldata.size) + 128] = 1
            emit Confirmation(1, msg.sender, sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size]));
            if stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0 - 1:
                require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
                require stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
                if not stor2[stor3][stor2[stor3].field_0].field_0:
                    idx = 0
                    while stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0
            stor2[stor3].field_0--
            if not stor2[stor3].field_0 > stor2[stor3].field_0 - 1:
                stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 = 0
                mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
                if not calldata.size % 32:
                    call multiAccessRecipientAddress with:
                       funct call.data[0 len 4]
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                        args call.data[4 len calldata.size - 4]
                else:
                    mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
                    call multiAccessRecipientAddress with:
                       funct call.data[0 len 4]
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                        args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
            else:
                mem[0] = sha3(stor3, 2)
                idx = (3 * stor2[stor3].field_0) - 3
                while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    stor[s + sha3(mem[0]) + 1] = 0
                    stor[s + sha3(mem[0]) + 2] = 0
                    s = s + 3
                    continue 
                stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 = 0
                mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
                if not calldata.size % 32:
                    call multiAccessRecipientAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                        args call.data[4 len calldata.size - 4]
                else:
                    mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
                    call multiAccessRecipientAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                        args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
        else:
            mem[0] = sha3(stor3, 2)
            idx = (3 * stor2[stor3].field_0) + 3
            while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 1] = 0
                stor[s + sha3(mem[0]) + 2] = 0
                s = s + 3
                continue 
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_256 = multiAccessRequired
            require stor2[stor3].field_0 < stor2[stor3].field_0
            stor2[stor3][stor2[stor3].field_0].field_512 = sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size])
            stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 = stor2[stor3].field_0
            require stor2[stor3].field_0 < stor2[stor3].field_0
            if stor2[stor3][stor2[stor3].field_0].field_256 > 1:
                emit Confirmation(0, msg.sender, sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size]));
                stor2[stor3][stor2[stor3].field_0].field_256--
                if stor5[address(msg.sender)].field_0 >= stor2[stor3][stor2[stor3].field_0].field_0:
                    stor2[stor3][stor2[stor3].field_0].field_0 = stor5[address(msg.sender)].field_0 + 1
                    if not stor2[stor3][stor2[stor3].field_0].field_0 <= stor5[address(msg.sender)].field_0 + 1:
                        idx = stor5[address(msg.sender)].field_0 + 32 / 32
                        while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                            stor2[stor3][(3 * stor2[stor3].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor5[address(msg.sender)].field_0 < stor2[stor3][stor2[stor3].field_0].field_0
                stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0 = 256^stor5[address(msg.sender)].field_0 % 32 or !(255 * 256^stor5[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0
                return 0
            mem[ceil32(calldata.size) + 128] = 1
            emit Confirmation(1, msg.sender, sha3(0, multiAccessRecipientAddress, msg.value, call.data[0 len calldata.size]));
            if stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0 - 1:
                require stor2[stor3].field_0 - 1 < stor2[stor3].field_0
                require stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 < stor2[stor3].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 = stor2[stor3][stor2[stor3].field_0].field_0
                if not stor2[stor3][stor2[stor3].field_0].field_0:
                    idx = 0
                    while stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32 > idx:
                        stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + s].field_0 = stor[idx + sha3((3 * stor2[stor3].field_0) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor3][stor2[stor3].field_0].field_0 + 31 / 32
                    while stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_0 + 31 / 32 > idx:
                        uint8(stor2[stor3][(3 * stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_256 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0].field_512 = stor2[stor3][stor2[stor3].field_0].field_0
                stor2[stor3][1][stor2[stor3][stor2[stor3].field_0].field_0].field_0 = stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0
            stor2[stor3].field_0--
            if not stor2[stor3].field_0 <= stor2[stor3].field_0 - 1:
                mem[0] = sha3(stor3, 2)
                idx = (3 * stor2[stor3].field_0) - 3
                while sha3(sha3(stor3, 2)) + (3 * stor2[stor3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    stor[s + sha3(mem[0]) + 1] = 0
                    stor[s + sha3(mem[0]) + 2] = 0
                    s = s + 3
                    continue 
            stor2[stor3][1][sha3(0, stor1, msg.value, call.data[0 len calldata.size])].field_0 = 0
            mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
            if not calldata.size % 32:
                call multiAccessRecipientAddress with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args call.data[4 len calldata.size - 4]
            else:
                mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
                call multiAccessRecipientAddress with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
    return ext_call.success
}

function sub_8060830a(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = stor2[stor3].field_0 - 1
    if stor2[stor3].field_0 - 1:
        if 352 < (32 * stor2[stor3].field_0 - 1) + 352:
            mem[(32 * stor2[stor3].field_0 - 1) + 352] = stor2[stor3].field_0 - 1
            if not stor2[stor3].field_0 - 1:
                if 32 * stor2[stor3].field_0 - 1 >= 64 * stor2[stor3].field_0 - 1:
                    mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        s = var29003
                        s = var29004
                        idx = var29005
                        while idx < stor2[stor3].field_0 - 1:
                            require idx + 1 < stor2[stor3].field_0
                            require idx < stor2[stor3].field_0 - 1
                            mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                            require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                            s = 1
                            while s < multiAccessOwners.length:
                                if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                    require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                    if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                            require s < multiAccessOwners.length
                                            require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                            mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                                mem[0] = stor3
                                mem[32] = 2
                                s = s + 1
                                continue 
                            mem[0] = stor3
                            mem[32] = 2
                            s = s
                            s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                            idx = idx + 1
                            continue 
                    else:
                        s = var30003
                        s = var30004
                        idx = var30005
                        while idx < stor2[stor3].field_0 - 1:
                            require idx + 1 < stor2[stor3].field_0
                            require idx < stor2[stor3].field_0 - 1
                            mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                            require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                            s = 1
                            while s < multiAccessOwners.length:
                                if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                    require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                    if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                            require s < multiAccessOwners.length
                                            require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                            mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                                mem[0] = stor3
                                mem[32] = 2
                                s = s + 1
                                continue 
                            mem[0] = stor3
                            mem[32] = 2
                            s = s
                            s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                            idx = idx + 1
                            continue 
                    if 32 * idx < 32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                        mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                        mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                        mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                        mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                        return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                               (32 * stor2[stor3].field_0 - 1) + 128,
                               (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 416] = 0
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448] = 96
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 544] = stor2[stor3].field_0 - 1
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                    mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608] = 0
                    mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 640 len 0] = None
                    return memory
                      from (32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448
                       len (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 192
                mem[(64 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    s = var28003
                    s = var28004
                    idx = var28005
                    while idx < stor2[stor3].field_0 - 1:
                        require idx + 1 < stor2[stor3].field_0
                        require idx < stor2[stor3].field_0 - 1
                        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                        require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                        s = 1
                        while s < multiAccessOwners.length:
                            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                        require s < multiAccessOwners.length
                                        require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                                        mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                            mem[0] = stor3
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = stor3
                        mem[32] = 2
                        s = s
                        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                        idx = idx + 1
                        continue 
                    _msize = max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32)
                    mem[_msize + 416] = 0
                    mem[(_msize + 416) + 32] = 96
                    mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
                    mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
                    mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    _4228 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                    mem[(_msize + 416) + 96] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * _4228) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
                    mem[(32 * _4228) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
                    return 96, 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                           stor2[stor3].field_0 - 1,
                           mem[_msize + 576 len (32 * _4228) + (32 * stor2[stor3].field_0 - 1) + 32],
                           0,
                           None
                s = var29003
                s = var29004
                idx = var29005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                _msize = max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32)
                mem[_msize + 416] = 0
                mem[(_msize + 416) + 32] = 96
                mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
                mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                _5912 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                mem[(_msize + 416) + 96] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * _5912) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
                mem[(32 * _5912) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
                return 96, 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                       stor2[stor3].field_0 - 1,
                       mem[_msize + 576 len (32 * _5912) + (32 * stor2[stor3].field_0 - 1) + 32],
                       0,
                       None
            if 32 * stor2[stor3].field_0 - 1 >= 64 * stor2[stor3].field_0 - 1:
                mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    s = var30003
                    s = var30004
                    idx = var30005
                    while idx < stor2[stor3].field_0 - 1:
                        require idx + 1 < stor2[stor3].field_0
                        require idx < stor2[stor3].field_0 - 1
                        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                        require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                        s = 1
                        while s < multiAccessOwners.length:
                            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                        require s < multiAccessOwners.length
                                        require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                        mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                            mem[0] = stor3
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = stor3
                        mem[32] = 2
                        s = s
                        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                        idx = idx + 1
                        continue 
                else:
                    s = var31003
                    s = var31004
                    idx = var31005
                    while idx < stor2[stor3].field_0 - 1:
                        require idx + 1 < stor2[stor3].field_0
                        require idx < stor2[stor3].field_0 - 1
                        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                        require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                        s = 1
                        while s < multiAccessOwners.length:
                            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                        require s < multiAccessOwners.length
                                        require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                        mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                            mem[0] = stor3
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = stor3
                        mem[32] = 2
                        s = s
                        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                        idx = idx + 1
                        continue 
                if 32 * idx < 32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                    mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                    mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                    return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 416] = 0
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448] = 96
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 544] = stor2[stor3].field_0 - 1
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608] = 0
                mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 640 len 0] = None
                return memory
                  from (32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448
                   len (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 192
            mem[(64 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                s = var30003
                s = var30004
                idx = var30005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                _msize = max((64 * stor2[stor3].field_0 - 1) + 32, max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32) + 32, 32 * stor2[stor3].field_0 - 1)
                mem[_msize + 384] = 0
                mem[(_msize + 384) + 32] = 96
                mem[(_msize + 384) + 128] = stor2[stor3].field_0 - 1
                mem[(_msize + 384) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(_msize + 384) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 384) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                _6736 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 384) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                mem[(32 * _6736) + (32 * stor2[stor3].field_0 - 1) + (_msize + 384) + 192] = 0, None
                return 96, 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                       stor2[stor3].field_0 - 1,
                       mem[_msize + -_msize + 352 len (32 * stor2[stor3].field_0 - 1) - _msize + _msize],
                       mem[(32 * stor2[stor3].field_0 - 1) + 352],
                       mem[_msize + (32 * stor2[stor3].field_0 - 1) + 576 len (32 * _6736) + _msize - _msize],
                       0,
                       None
            s = var29003
            s = var29004
            idx = var29005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                                mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            _msize = max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32)
            mem[_msize + 416] = 0
            mem[(_msize + 416) + 32] = 96
            mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
            mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
            _5928 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
            mem[(_msize + 416) + 96] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * _5928) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
            mem[(32 * _5928) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
            return 96, 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                   stor2[stor3].field_0 - 1,
                   mem[_msize + 576 len (32 * _5928) + (32 * stor2[stor3].field_0 - 1) + 32],
                   0,
                   None
        mem[352] = stor2[stor3].field_0 - 1
        if not stor2[stor3].field_0 - 1:
            if 384 < (32 * stor2[stor3].field_0 - 1) + 384:
                mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    s = var29003
                    s = var29004
                    idx = var29005
                    while idx < stor2[stor3].field_0 - 1:
                        require idx + 1 < stor2[stor3].field_0
                        require idx < stor2[stor3].field_0 - 1
                        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                        require idx < mem[352]
                        mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                        s = 1
                        while s < multiAccessOwners.length:
                            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                        require s < multiAccessOwners.length
                                        require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                        mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                            mem[0] = stor3
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = stor3
                        mem[32] = 2
                        s = s
                        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                        idx = idx + 1
                        continue 
                    if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                        mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                        mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                        mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                        _4278 = mem[352]
                        mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                        mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                        mem[(32 * _4278) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                        mem[(32 * _4278) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                        return 96, 
                               (32 * stor2[stor3].field_0 - 1) + 128,
                               (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                               stor2[stor3].field_0 - 1,
                               mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _4278) + (32 * stor2[stor3].field_0 - 1) + 32],
                               0,
                               None
                else:
                    s = var30003
                    s = var30004
                    idx = var30005
                    while idx < stor2[stor3].field_0 - 1:
                        require idx + 1 < stor2[stor3].field_0
                        require idx < stor2[stor3].field_0 - 1
                        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                        require idx < mem[352]
                        mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                        s = 1
                        while s < multiAccessOwners.length:
                            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                        require s < multiAccessOwners.length
                                        require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                        mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                            mem[0] = stor3
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = stor3
                        mem[32] = 2
                        s = s
                        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                        idx = idx + 1
                        continue 
                    if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                        mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                        mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                        mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                        _5960 = mem[352]
                        mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                        mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                        mem[(32 * _5960) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                        mem[(32 * _5960) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                        return 96, 
                               (32 * stor2[stor3].field_0 - 1) + 128,
                               (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                               stor2[stor3].field_0 - 1,
                               mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _5960) + (32 * stor2[stor3].field_0 - 1) + 32],
                               0,
                               None
                ('lt', 'msize', ('add', 416, ('mask_shl', 251, 0, 5, ('add', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('mask_shl', 251, 0, 5, ('add', -115792089237316195423570985008687907853269984665640564039457584007913129639935, ('mul', -1, ('stor', ('length', ('name', 'multiAccessOwners', 6)))), ('mul', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('mul', ('stor', ('length', ('name', 'multiAccessOwners', 6))), ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))))
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                return Array(len=stor2[stor3].field_0 - 1, data=mem[352 len 32 * stor2[stor3].field_0 - 1], mem[352], mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + 32]), 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                s = var30003
                s = var30004
                idx = var30005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[352]
                    mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[384]
                                    mem[416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                    mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                    mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                    mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                    mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                    mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                    return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                _msize = max(32, 32 * idx)
                mem[_msize + 416] = 0
                mem[(_msize + 416) + 32] = 96
                mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
                mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
                _4294 = mem[352]
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * _4294) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
                mem[(32 * _4294) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
                return 96, 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                       stor2[stor3].field_0 - 1,
                       mem[_msize + 576 len (32 * _4294) + (32 * stor2[stor3].field_0 - 1) + 32],
                       0,
                       None
            s = var31003
            s = var31004
            idx = var31005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[352]
                mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[384]
                                mem[416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            _msize = max(32, 32 * idx)
            mem[_msize + 416] = 0
            mem[(_msize + 416) + 32] = 96
            mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
            mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
            _5968 = mem[352]
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * _5968) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
            mem[(32 * _5968) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
            return 96, 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                   stor2[stor3].field_0 - 1,
                   mem[_msize + 576 len (32 * _5968) + (32 * stor2[stor3].field_0 - 1) + 32],
                   0,
                   None
        if 384 < (32 * stor2[stor3].field_0 - 1) + 384:
            mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                s = var30003
                s = var30004
                idx = var30005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[352]
                    mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                    _5976 = mem[352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * _5976) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                    mem[(32 * _5976) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                    return 96, 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                           stor2[stor3].field_0 - 1,
                           mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _5976) + (32 * stor2[stor3].field_0 - 1) + 32],
                           0,
                           None
            else:
                s = var31003
                s = var31004
                idx = var31005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[352]
                    mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                    _6752 = mem[352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * _6752) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                    mem[(32 * _6752) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                    return 96, 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                           stor2[stor3].field_0 - 1,
                           mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _6752) + (32 * stor2[stor3].field_0 - 1) + 32],
                           0,
                           None
            ('lt', 'msize', ('add', 416, ('mask_shl', 251, 0, 5, ('add', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('mask_shl', 251, 0, 5, ('add', -115792089237316195423570985008687907853269984665640564039457584007913129639935, ('mul', -1, ('stor', ('length', ('name', 'multiAccessOwners', 6)))), ('mul', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('mul', ('stor', ('length', ('name', 'multiAccessOwners', 6))), ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))))
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
            mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
            mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
            return Array(len=stor2[stor3].field_0 - 1, data=mem[352 len 32 * stor2[stor3].field_0 - 1], mem[352], mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + 32]), 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            s = var31003
            s = var31004
            idx = var31005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[352]
                mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[384]
                                mem[416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            _msize = max(32, 32 * idx)
            mem[_msize + 416] = 0
            mem[(_msize + 416) + 32] = 96
            mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
            mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
            _5992 = mem[352]
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * _5992) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
            mem[(32 * _5992) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
            return 96, 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                   stor2[stor3].field_0 - 1,
                   mem[_msize + 576 len (32 * _5992) + (32 * stor2[stor3].field_0 - 1) + 32],
                   0,
                   None
        s = var32003
        s = var32004
        idx = var32005
        while idx < stor2[stor3].field_0 - 1:
            require idx + 1 < stor2[stor3].field_0
            require idx < stor2[stor3].field_0 - 1
            mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
            require idx < mem[352]
            mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
            s = 1
            while s < multiAccessOwners.length:
                if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                    require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                    if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                            require s < multiAccessOwners.length
                            require 0 < mem[384]
                            mem[416] = address(multiAccessOwners[s].field_0)
                mem[0] = stor3
                mem[32] = 2
                s = s + 1
                continue 
            mem[0] = stor3
            mem[32] = 2
            s = s
            s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
            idx = idx + 1
            continue 
        if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
            mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
            return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        _msize = max(32, 32 * idx)
        mem[_msize + 416] = 0
        mem[(_msize + 416) + 32] = 96
        mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
        mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
        mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
        _6760 = mem[352]
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
        mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[(32 * _6760) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
        mem[(32 * _6760) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
        return 96, 
               (32 * stor2[stor3].field_0 - 1) + 128,
               (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
               stor2[stor3].field_0 - 1,
               mem[_msize + 576 len (32 * _6760) + (32 * stor2[stor3].field_0 - 1) + 32],
               0,
               None
    if 352 < (32 * stor2[stor3].field_0 - 1) + 352:
        mem[(32 * stor2[stor3].field_0 - 1) + 352] = stor2[stor3].field_0 - 1
        if not stor2[stor3].field_0 - 1:
            if 32 * stor2[stor3].field_0 - 1 >= 64 * stor2[stor3].field_0 - 1:
                mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    s = var28003
                    s = var28004
                    idx = var28005
                    while idx < stor2[stor3].field_0 - 1:
                        require idx + 1 < stor2[stor3].field_0
                        require idx < stor2[stor3].field_0 - 1
                        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                        require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                        s = 1
                        while s < multiAccessOwners.length:
                            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                        require s < multiAccessOwners.length
                                        require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                        mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                            mem[0] = stor3
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = stor3
                        mem[32] = 2
                        s = s
                        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                        idx = idx + 1
                        continue 
                else:
                    s = var29003
                    s = var29004
                    idx = var29005
                    while idx < stor2[stor3].field_0 - 1:
                        require idx + 1 < stor2[stor3].field_0
                        require idx < stor2[stor3].field_0 - 1
                        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                        require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                        mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                        s = 1
                        while s < multiAccessOwners.length:
                            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                        require s < multiAccessOwners.length
                                        require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                        mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                            mem[0] = stor3
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = stor3
                        mem[32] = 2
                        s = s
                        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                        idx = idx + 1
                        continue 
                if 32 * idx < 32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                    mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                    mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                    return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 416] = 0
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448] = 96
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 544] = stor2[stor3].field_0 - 1
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608] = 0
                mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 640 len 0] = None
                return memory
                  from (32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448
                   len (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 192
            mem[(64 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                s = var27003
                s = var27004
                idx = var27005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                _msize = max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32)
                mem[_msize + 416] = 0
                mem[(_msize + 416) + 32] = 96
                mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
                mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                _1996 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                mem[(_msize + 416) + 96] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * _1996) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
                mem[(32 * _1996) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
                return 96, 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                       stor2[stor3].field_0 - 1,
                       mem[_msize + 576 len (32 * _1996) + (32 * stor2[stor3].field_0 - 1) + 32],
                       0,
                       None
            s = var28003
            s = var28004
            idx = var28005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                                mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            _msize = max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32)
            mem[_msize + 416] = 0
            mem[(_msize + 416) + 32] = 96
            mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
            mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
            _4132 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
            mem[(_msize + 416) + 96] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * _4132) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
            mem[(32 * _4132) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
            return 96, 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                   stor2[stor3].field_0 - 1,
                   mem[_msize + 576 len (32 * _4132) + (32 * stor2[stor3].field_0 - 1) + 32],
                   0,
                   None
        if 32 * stor2[stor3].field_0 - 1 >= 64 * stor2[stor3].field_0 - 1:
            mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                s = var29003
                s = var29004
                idx = var29005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
            else:
                s = var30003
                s = var30004
                idx = var30005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
            if 32 * idx < 32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 416] = 0
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448] = 96
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 544] = stor2[stor3].field_0 - 1
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 576] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
            mem[(64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 512] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 608] = 0
            mem[(32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (64 * stor2[stor3].field_0 - 1) + (32 * idx) + 640 len 0] = None
            return memory
              from (32 * stor2[stor3].field_0 - 1) + (32 * idx) + 448
               len (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 192
        mem[(64 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            s = var28003
            s = var28004
            idx = var28005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                                mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            _msize = max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32)
            mem[_msize + 416] = 0
            mem[(_msize + 416) + 32] = 96
            mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
            mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
            _4148 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
            mem[(_msize + 416) + 96] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * _4148) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
            mem[(32 * _4148) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
            return 96, 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                   stor2[stor3].field_0 - 1,
                   mem[_msize + 576 len (32 * _4148) + (32 * stor2[stor3].field_0 - 1) + 32],
                   0,
                   None
        s = var29003
        s = var29004
        idx = var29005
        while idx < stor2[stor3].field_0 - 1:
            require idx + 1 < stor2[stor3].field_0
            require idx < stor2[stor3].field_0 - 1
            mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
            require idx < mem[(32 * stor2[stor3].field_0 - 1) + 352]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * idx) + 384] = stor2[stor3][idx].field_1024
            s = 1
            while s < multiAccessOwners.length:
                if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                    require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                    if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                            require s < multiAccessOwners.length
                            require 0 < mem[(64 * stor2[stor3].field_0 - 1) + 384]
                            mem[(64 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                mem[0] = stor3
                mem[32] = 2
                s = s + 1
                continue 
            mem[0] = stor3
            mem[32] = 2
            s = s
            s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
            idx = idx + 1
            continue 
        _msize = max((32 * stor2[stor3].field_0 - 1) + (32 * idx), (64 * stor2[stor3].field_0 - 1) + 32)
        mem[_msize + 416] = 0
        mem[(_msize + 416) + 32] = 96
        mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
        mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
        mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[(32 * stor2[stor3].field_0 - 1) + 352]
        _5880 = mem[(32 * stor2[stor3].field_0 - 1) + 352]
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]] = mem[(32 * stor2[stor3].field_0 - 1) + 384 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]]
        mem[(_msize + 416) + 96] = (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[(32 * _5880) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
        mem[(32 * _5880) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
        return 96, 
               (32 * stor2[stor3].field_0 - 1) + 128,
               (32 * mem[(32 * stor2[stor3].field_0 - 1) + 352]) + (32 * stor2[stor3].field_0 - 1) + 160,
               stor2[stor3].field_0 - 1,
               mem[_msize + 576 len (32 * _5880) + (32 * stor2[stor3].field_0 - 1) + 32],
               0,
               None
    mem[352] = stor2[stor3].field_0 - 1
    if stor2[stor3].field_0 - 1:
        if 384 < (32 * stor2[stor3].field_0 - 1) + 384:
            mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                s = var29003
                s = var29004
                idx = var29005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[352]
                    mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                    _4196 = mem[352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * _4196) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                    mem[(32 * _4196) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                    return 96, 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                           stor2[stor3].field_0 - 1,
                           mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _4196) + (32 * stor2[stor3].field_0 - 1) + 32],
                           0,
                           None
            else:
                s = var30003
                s = var30004
                idx = var30005
                while idx < stor2[stor3].field_0 - 1:
                    require idx + 1 < stor2[stor3].field_0
                    require idx < stor2[stor3].field_0 - 1
                    mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                    require idx < mem[352]
                    mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                    s = 1
                    while s < multiAccessOwners.length:
                        if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                            require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                            if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                                if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                    require s < multiAccessOwners.length
                                    require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                    mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                        mem[0] = stor3
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = stor3
                    mem[32] = 2
                    s = s
                    s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                    idx = idx + 1
                    continue 
                if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                    _5896 = mem[352]
                    mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                    mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                    mem[(32 * _5896) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                    mem[(32 * _5896) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                    return 96, 
                           (32 * stor2[stor3].field_0 - 1) + 128,
                           (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                           stor2[stor3].field_0 - 1,
                           mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _5896) + (32 * stor2[stor3].field_0 - 1) + 32],
                           0,
                           None
            ('lt', 'msize', ('add', 416, ('mask_shl', 251, 0, 5, ('add', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('mask_shl', 251, 0, 5, ('add', -115792089237316195423570985008687907853269984665640564039457584007913129639935, ('mul', -1, ('stor', ('length', ('name', 'multiAccessOwners', 6)))), ('mul', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('mul', ('stor', ('length', ('name', 'multiAccessOwners', 6))), ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))))
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
            mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
            mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
            return Array(len=stor2[stor3].field_0 - 1, data=mem[352 len 32 * stor2[stor3].field_0 - 1], mem[352], mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + 32]), 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            s = var30003
            s = var30004
            idx = var30005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[352]
                mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[384]
                                mem[416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
                mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
                mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
                return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            _msize = max(32, 32 * idx)
            mem[_msize + 416] = 0
            mem[(_msize + 416) + 32] = 96
            mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
            mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
            _4212 = mem[352]
            mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * _4212) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
            mem[(32 * _4212) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
            return 96, 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                   stor2[stor3].field_0 - 1,
                   mem[_msize + 576 len (32 * _4212) + (32 * stor2[stor3].field_0 - 1) + 32],
                   0,
                   None
        s = var31003
        s = var31004
        idx = var31005
        while idx < stor2[stor3].field_0 - 1:
            require idx + 1 < stor2[stor3].field_0
            require idx < stor2[stor3].field_0 - 1
            mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
            require idx < mem[352]
            mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
            s = 1
            while s < multiAccessOwners.length:
                if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                    require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                    if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                            require s < multiAccessOwners.length
                            require 0 < mem[384]
                            mem[416] = address(multiAccessOwners[s].field_0)
                mem[0] = stor3
                mem[32] = 2
                s = s + 1
                continue 
            mem[0] = stor3
            mem[32] = 2
            s = s
            s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
            idx = idx + 1
            continue 
        if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
            mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
            return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        _msize = max(32, 32 * idx)
        mem[_msize + 416] = 0
        mem[(_msize + 416) + 32] = 96
        mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
        mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
        mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
        _5904 = mem[352]
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
        mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[(32 * _5904) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
        mem[(32 * _5904) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
        return 96, 
               (32 * stor2[stor3].field_0 - 1) + 128,
               (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
               stor2[stor3].field_0 - 1,
               mem[_msize + 576 len (32 * _5904) + (32 * stor2[stor3].field_0 - 1) + 32],
               0,
               None
    if 384 < (32 * stor2[stor3].field_0 - 1) + 384:
        mem[(32 * stor2[stor3].field_0 - 1) + 384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            s = var28003
            s = var28004
            idx = var28005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[352]
                mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                _2046 = mem[352]
                mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * _2046) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                mem[(32 * _2046) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                return 96, 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                       stor2[stor3].field_0 - 1,
                       mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _2046) + (32 * stor2[stor3].field_0 - 1) + 32],
                       0,
                       None
        else:
            s = var29003
            s = var29004
            idx = var29005
            while idx < stor2[stor3].field_0 - 1:
                require idx + 1 < stor2[stor3].field_0
                require idx < stor2[stor3].field_0 - 1
                mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
                require idx < mem[352]
                mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
                s = 1
                while s < multiAccessOwners.length:
                    if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                        require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                        if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                            if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                                require s < multiAccessOwners.length
                                require 0 < mem[(32 * stor2[stor3].field_0 - 1) + 384]
                                mem[(32 * stor2[stor3].field_0 - 1) + 416] = address(multiAccessOwners[s].field_0)
                    mem[0] = stor3
                    mem[32] = 2
                    s = s + 1
                    continue 
                mem[0] = stor3
                mem[32] = 2
                s = s
                s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
                idx = idx + 1
                continue 
            if msize >= (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
                mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 128] = stor2[stor3].field_0 - 1
                mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
                mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 160] = mem[352]
                _4180 = mem[352]
                mem[(32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
                mem[(max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
                mem[(32 * _4180) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 192] = 0, None
                mem[(32 * _4180) + (32 * stor2[stor3].field_0 - 1) + (max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 832) + 224 len 0] = None
                return 96, 
                       (32 * stor2[stor3].field_0 - 1) + 128,
                       (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
                       stor2[stor3].field_0 - 1,
                       mem[max((32 * stor2[stor3].field_0 - 1) - 416, max((32 * stor2[stor3].field_0 - 1) + 32, 32 * idx) - 416) + 992 len (32 * _4180) + (32 * stor2[stor3].field_0 - 1) + 32],
                       0,
                       None
        ('lt', 'msize', ('add', 416, ('mask_shl', 251, 0, 5, ('add', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('mask_shl', 251, 0, 5, ('add', -115792089237316195423570985008687907853269984665640564039457584007913129639935, ('mul', -1, ('stor', ('length', ('name', 'multiAccessOwners', 6)))), ('mul', -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2))))), ('mul', ('stor', ('length', ('name', 'multiAccessOwners', 6))), ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))))
        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
        mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
        mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
        mem[(32 * mem[352]) + (64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
        return Array(len=stor2[stor3].field_0 - 1, data=mem[352 len 32 * stor2[stor3].field_0 - 1], mem[352], mem[(64 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len (32 * mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + 32]), 
               (32 * stor2[stor3].field_0 - 1) + 128,
               (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
    mem[384] = -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        s = var30003
        s = var30004
        idx = var30005
        while idx < stor2[stor3].field_0 - 1:
            require idx + 1 < stor2[stor3].field_0
            require idx < stor2[stor3].field_0 - 1
            mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
            require idx < mem[352]
            mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
            s = 1
            while s < multiAccessOwners.length:
                if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                    require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                    if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                        if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                            require s < multiAccessOwners.length
                            require 0 < mem[384]
                            mem[416] = address(multiAccessOwners[s].field_0)
                mem[0] = stor3
                mem[32] = 2
                s = s + 1
                continue 
            mem[0] = stor3
            mem[32] = 2
            s = s
            s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
            idx = idx + 1
            continue 
        if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
            mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
            mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
            mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
            mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
            return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
                   (32 * stor2[stor3].field_0 - 1) + 128,
                   (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        _msize = max(32, 32 * idx)
        mem[_msize + 416] = 0
        mem[(_msize + 416) + 32] = 96
        mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
        mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
        mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
        _4188 = mem[352]
        mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
        mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[(32 * _4188) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = 0, None
        mem[(32 * _4188) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 0] = None
        return 96, 
               (32 * stor2[stor3].field_0 - 1) + 128,
               (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160,
               stor2[stor3].field_0 - 1,
               mem[_msize + 576 len (32 * _4188) + (32 * stor2[stor3].field_0 - 1) + 32],
               0,
               None
    mem[0] = stor3
    mem[32] = 2
    s = var29003
    s = var29004
    idx = var29005
    while idx < stor2[stor3].field_0 - 1:
        require idx + 1 < stor2[stor3].field_0
        require idx < stor2[stor3].field_0 - 1
        mem[(32 * idx) + 352] = stor2[stor3][idx].field_1280
        require idx < mem[352]
        mem[(32 * idx) + 384] = stor2[stor3][idx].field_1024
        s = 1
        while s < multiAccessOwners.length:
            if stor2[stor3][1][stor2[stor3][idx].field_1280].field_0:
                require stor2[stor3][1][stor2[stor3][idx].field_1280].field_0 < stor2[stor3].field_0
                if stor5[address(stor6[s].field_0)].field_0 < stor2[stor3][stor2[stor3][1][stor2[stor3][idx].field_1280].field_0].field_0:
                    if stor(floor32(stor[('map', ('stor', 160, 0, ('array', ('var', 1), ('name', 'stor6', 6))), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('stor', 256, 1280, ('array', ('mul', 3, ('var', 0)), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(stor6[s].field_0)].field_0 % 32]:
                        require s < multiAccessOwners.length
                        require 0 < mem[384]
                        mem[416] = address(multiAccessOwners[s].field_0)
            mem[0] = stor3
            mem[32] = 2
            s = s + 1
            continue 
        mem[0] = stor3
        mem[32] = 2
        s = s
        s = (3 * idx) + sha3(sha3(stor3, 2)) + 3
        idx = idx + 1
        continue 
    if msize < (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416:
        mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448] = 96
        mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 544] = stor2[stor3].field_0 - 1
        mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
        mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 480] = (32 * stor2[stor3].field_0 - 1) + 128
        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576] = mem[352]
        mem[(32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
        mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 512] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
        mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 608] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]
        mem[(32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + (32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 640 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]] = mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 448 len 32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]]
        return Array(len=stor2[stor3].field_0 - 1, data=mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 576 len (32 * mem[(32 * -multiAccessOwners.length + -stor2[stor3].field_0 + (multiAccessOwners.length * stor2[stor3].field_0) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) + 416]) + (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 64]), 
               (32 * stor2[stor3].field_0 - 1) + 128,
               (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
    _msize = max(32, 32 * idx)
    mem[_msize + 416] = 0
    mem[64] = (_msize + 416) + 32
    mem[(_msize + 416) + 32] = 96
    mem[(_msize + 416) + 128] = stor2[stor3].field_0 - 1
    mem[(_msize + 416) + 160 len 32 * stor2[stor3].field_0 - 1] = mem[352 len 32 * stor2[stor3].field_0 - 1]
    mem[(_msize + 416) + 64] = (32 * stor2[stor3].field_0 - 1) + 128
    mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 160] = mem[352]
    _2062 = mem[352]
    mem[(32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192 len 32 * mem[352]] = mem[384 len 32 * mem[352]]
    mem[(_msize + 416) + 96] = (32 * mem[352]) + (32 * stor2[stor3].field_0 - 1) + 160
    mem[(32 * _2062) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 192] = Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]
    mem[(32 * _2062) + (32 * stor2[stor3].field_0 - 1) + (_msize + 416) + 224 len 32 * Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]] = mem[(_msize + 416) + 32 len 32 * Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]]
    return memory
      from (_msize + 416) + 32
       len (32 * Mask(8 * -(_msize + 416) + (_msize + 416) + 32, 0, 0), mem[(_msize + 416) + 32 len -(_msize + 416) + (_msize + 416)]) + (32 * _2062) + (32 * stor2[stor3].field_0 - 1) + 192
}



}
