contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
uint256 stor4;
mapping of uint256 stor5;
array of uint256 stor6;
uint256 storF652;

function _fallback() payable {
    stor6.length = 2
    if not stor6.length <= 2:
        idx = 2
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    require 1 < stor6.length
    storF652 = msg.sender or Mask(96, 160, storF652)
    stor5[address(msg.sender)] = 1
    stor4 = 1
    stor2[0] = 1
    if not stor2[0] <= 1:
        idx = 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c32
        while (3 * stor2[0]) + 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f > idx:
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
    return code.data[407 len 5943]
}



// =====================  Runtime code  =====================


#
#  - multiAccessRemoveOwnerD(address arg1, address arg2)
#
mapping of uint8 stor0;
address multiAccessRecipientAddress;
uint256 stor1;
array of struct stor2;
uint256 stor3;
uint256 multiAccessRequired;
mapping of struct stor5;
array of uint256 stor6;

function multiAccessRecipient() payable {
    return address(multiAccessRecipientAddress)
}

function multiAccessOwners(uint256 arg1) payable {
    require arg1 < stor6.length
    return address(stor[code.data[5911 len 32] + arg1])
}

function multiAccessRequired() payable {
    return multiAccessRequired
}

function senderDelegates(address arg1, address arg2) payable {
    return bool(uint8(stor0[arg1][arg2]))
}

function multiAccessIsOwner(address arg1) payable {
    return (uint256(stor5[address(arg1)].field_0) > 0)
}

function setDelegate(address arg1, bool arg2) payable {
    uint256(stor0[address(msg.sender)][address(arg1)]) = arg2 or Mask(248, 8, uint256(stor0[address(msg.sender)][address(arg1)]))
    return 1
}

function multiAccessChangeRequirement(uint256 arg1) payable {
    call this.address.0x6d522b19 with:
         gas gas_remaining - 25050 wei
        args arg1, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function multiAccessRemoveOwner(address arg1) payable {
    call this.address.0x5a74dee5 with:
         gas gas_remaining - 25050 wei
        args address(arg1), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function multiAccessSetRecipient(address arg1) payable {
    call this.address.0x7429f1eb with:
         gas gas_remaining - 25050 wei
        args address(arg1), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function multiAccessChangeOwner(address arg1, address arg2) payable {
    call this.address.0x6c494843 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function multiAccessAddOwner(address arg1) payable {
    call this.address.multiAccessAddOwnerD(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function multiAccessCall(address arg1, uint256 arg2, bytes arg3) payable {
    call this.address.0x8b9726c1 with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    call this.address.0x8b9726c1 with:
         gas gas_remaining - 25050 wei
        args address(multiAccessRecipientAddress), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function multiAccessGetOwners() payable {
    mem[160] = stor6.length - 1
    idx = 1
    while idx < stor6.length:
        mem[0] = 6
        require idx - 1 < mem[160]
        mem[(32 * idx - 1) + 192] = address(stor[idx + code.data[5911 len 32]])
        idx = idx + 1
        continue 
    mem[(32 * stor6.length - 1) + 192] = 32
    mem[(32 * stor6.length - 1) + 224] = mem[160]
    mem[(32 * stor6.length - 1) + 256 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    return 32, mem[(32 * stor6.length - 1) + 224 len (32 * mem[160]) + 32]
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) payable {
    if uint256(stor2[stor3][1][arg1].field_0):
        require uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0):
            return bool(stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32])
        else:
            return 0
    else:
        return 0
}

function multiAccessRevokeD(bytes32 arg1, address arg2) payable {
    if arg2 != msg.sender:
        if msg.sender != this.address:
            if not uint8(stor0[address(arg2)][address(msg.sender)]):
                return 0
    if uint256(stor5[address(arg2)].field_0) <= 0:
        return 0
    if not uint256(stor2[stor3][1][arg1].field_0):
        return 0
    require uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0)
    if uint256(stor5[address(arg2)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0):
        return 0
    if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
        return 0
    require uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0)
    require uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0)
    uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) and !(255 * 256^stor5[address(arg2)].field_0 % 32)
    uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_256)++
    if multiAccessRequired == uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_256) + 1:
        if uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0) - 1:
            require uint256(stor2[stor3].field_0) - 1 < uint256(stor2[stor3].field_0)
            require uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0)
            uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
                idx = 0
                while uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0) + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][arg1].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                    uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][arg1].field_0)) + s].field_0) = uint256(stor[idx + sha3((3 * uint256(stor2[stor3].field_0)) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32
                while uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0) + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][arg1].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_256) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_512) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor2[stor3][1][uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)].field_0) = uint256(stor2[stor3][1][arg1].field_0)
        uint256(stor2[stor3].field_0)--
        if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) - 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * uint256(stor2[stor3].field_0)) - 3
            while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
        uint256(stor2[stor3][1][arg1].field_0) = 0
    emit Revoke(address(arg2), arg1);
    return 1
}

function multiAccessRevoke(bytes32 arg1) payable {
    if msg.sender != msg.sender:
        if msg.sender != this.address:
            if not uint8(stor0[address(msg.sender)][address(msg.sender)]):
                return 0
    if uint256(stor5[address(msg.sender)].field_0) <= 0:
        return 0
    if not uint256(stor2[stor3][1][arg1].field_0):
        return 0
    require uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0)
    if uint256(stor5[address(msg.sender)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0):
        return 0
    if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(msg.sender)].field_0 % 32]:
        return 0
    require uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0)
    require uint256(stor5[address(msg.sender)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0)
    uint256(stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = uint256(stor[Mask(251, 0, stor5[address(msg.sender)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) and !(255 * 256^stor5[address(msg.sender)].field_0 % 32)
    uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_256)++
    if multiAccessRequired == uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_256) + 1:
        if uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0) - 1:
            require uint256(stor2[stor3].field_0) - 1 < uint256(stor2[stor3].field_0)
            require uint256(stor2[stor3][1][arg1].field_0) < uint256(stor2[stor3].field_0)
            uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
                idx = 0
                while uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0) + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][arg1].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                    uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][arg1].field_0)) + s].field_0) = uint256(stor[idx + sha3((3 * uint256(stor2[stor3].field_0)) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32
                while uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_0) + 31 / 32 > idx:
                    uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][arg1].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_256) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor2[stor3][uint256(stor2[stor3][1][arg1].field_0)].field_512) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor2[stor3][1][uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)].field_0) = uint256(stor2[stor3][1][arg1].field_0)
        uint256(stor2[stor3].field_0)--
        if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) - 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * uint256(stor2[stor3].field_0)) - 3
            while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
        uint256(stor2[stor3][1][arg1].field_0) = 0
    emit Revoke(msg.sender, arg1);
    return 1
}

function multiAccessSetRecipientD(address arg1, address arg2) payable {
    if arg2 != msg.sender:
        if msg.sender != this.address:
            if not uint8(stor0[address(arg2)][address(msg.sender)]):
                return 0
    if uint256(stor5[address(arg2)].field_0) <= 0:
        return 0
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0):
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
                return 0
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0):
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256) > 1:
            emit Confirmation(0, arg2, sha3(uint32(call.func_hash), arg1));
            uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256)--
            if uint256(stor5[address(arg2)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) = uint256(stor5[address(arg2)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) <= uint256(stor5[address(arg2)].field_0) + 1:
                    idx = uint256(stor5[address(arg2)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    else:
        uint256(stor2[stor3].field_0)++
        if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * uint256(stor2[stor3].field_0)) + 3
            while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) = multiAccessRequired
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_512) = sha3(uint32(call.func_hash), arg1)
        uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) = uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) > 1:
            emit Confirmation(0, arg2, sha3(uint32(call.func_hash), arg1));
            uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256)--
            if uint256(stor5[address(arg2)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) = uint256(stor5[address(arg2)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) <= uint256(stor5[address(arg2)].field_0) + 1:
                    idx = uint256(stor5[address(arg2)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    emit Confirmation(1, arg2, sha3(uint32(call.func_hash), arg1));
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0) - 1:
        require uint256(stor2[stor3].field_0) - 1 < uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + s].field_0) = uint256(stor[idx + sha3((3 * uint256(stor2[stor3].field_0)) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32
            while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_512) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][1][uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)].field_0) = uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)
    uint256(stor2[stor3].field_0)--
    if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * uint256(stor2[stor3].field_0)) - 3
        while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
    uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) = 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function multiAccessCallD(address arg1, uint256 arg2, bytes arg3, address arg4) payable {
    if arg4 != msg.sender:
        if msg.sender != this.address:
            if not uint8(stor0[address(arg4)][address(msg.sender)]):
                return 0
    if uint256(stor5[address(arg4)].field_0) <= 0:
        return 0
    if uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0):
        require uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor5[address(arg4)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg4')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('sha3', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg4)].field_0 % 32]:
                return 0
    if uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0):
        require uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_256) > 1:
            emit Confirmation(0, arg4, sha3(uint32(call.func_hash), arg1, arg2, arg3[all]));
            uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_256)--
            if uint256(stor5[address(arg4)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0) = uint256(stor5[address(arg4)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0) <= uint256(stor5[address(arg4)].field_0) + 1:
                    idx = uint256(stor5[address(arg4)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg4)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('sha3', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg4)].field_0 % 32 or !(255 * 256^stor5[address(arg4)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('sha3', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'), ('param', 'arg2'), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3'))))), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    else:
        uint256(stor2[stor3].field_0)++
        if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * uint256(stor2[stor3].field_0)) + 3
            while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) = multiAccessRequired
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_512) = sha3(uint32(call.func_hash), arg1, arg2, arg3[all])
        uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0) = uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) > 1:
            emit Confirmation(0, arg4, sha3(uint32(call.func_hash), arg1, arg2, arg3[all]));
            uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256)--
            if uint256(stor5[address(arg4)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) = uint256(stor5[address(arg4)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) <= uint256(stor5[address(arg4)].field_0) + 1:
                    idx = uint256(stor5[address(arg4)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg4)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg4)].field_0 % 32 or !(255 * 256^stor5[address(arg4)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg4)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    emit Confirmation(1, arg4, sha3(uint32(call.func_hash), arg1, arg2, arg3[all]));
    if uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0) < uint256(stor2[stor3].field_0) - 1:
        require uint256(stor2[stor3].field_0) - 1 < uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)) + s].field_0) = uint256(stor[idx + sha3((3 * uint256(stor2[stor3].field_0)) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32
            while uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_256) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)].field_512) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][1][uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)].field_0) = uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0)
    uint256(stor2[stor3].field_0)--
    if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * uint256(stor2[stor3].field_0)) - 3
        while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
    uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2, arg3[all])].field_0) = 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34050 wei
        args arg3[all]
    return bool(ext_call.success)
}

function multiAccessAddOwnerD(address arg1, address arg2) payable {
    if arg2 != msg.sender:
        if msg.sender != this.address:
            if not uint8(stor0[address(arg2)][address(msg.sender)]):
                return 0
    if uint256(stor5[address(arg2)].field_0) <= 0:
        return 0
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0):
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
                return 0
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0):
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256) > 1:
            emit Confirmation(0, arg2, sha3(uint32(call.func_hash), arg1));
            uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256)--
            if uint256(stor5[address(arg2)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) = uint256(stor5[address(arg2)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) <= uint256(stor5[address(arg2)].field_0) + 1:
                    idx = uint256(stor5[address(arg2)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    else:
        uint256(stor2[stor3].field_0)++
        if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * uint256(stor2[stor3].field_0)) + 3
            while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) = multiAccessRequired
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_512) = sha3(uint32(call.func_hash), arg1)
        uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) = uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) > 1:
            emit Confirmation(0, arg2, sha3(uint32(call.func_hash), arg1));
            uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256)--
            if uint256(stor5[address(arg2)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) = uint256(stor5[address(arg2)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) <= uint256(stor5[address(arg2)].field_0) + 1:
                    idx = uint256(stor5[address(arg2)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    emit Confirmation(1, arg2, sha3(uint32(call.func_hash), arg1));
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0) - 1:
        require uint256(stor2[stor3].field_0) - 1 < uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + s].field_0) = uint256(stor[idx + sha3((3 * uint256(stor2[stor3].field_0)) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32
            while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_512) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][1][uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)].field_0) = uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)
    uint256(stor2[stor3].field_0)--
    if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * uint256(stor2[stor3].field_0)) - 3
        while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
    uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) = 0
    if uint256(stor5[address(arg1)].field_0) > 0:
        return 0
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    require stor6.length < stor6.length
    uint256(stor[stor6.length + code.data[5911 len 32]]) = arg1 or Mask(96, 160, uint256(stor[stor6.length + code.data[5911 len 32]]))
    uint256(stor5[address(arg1)].field_0) = stor6.length
    emit OwnerAdded(arg1);
    return 1
}

function multiAccessChangeOwnerD(address arg1, address arg2, address arg3) payable {
    if arg3 != msg.sender:
        if msg.sender != this.address:
            if not uint8(stor0[address(arg3)][address(msg.sender)]):
                return 0
    if uint256(stor5[address(arg3)].field_0) <= 0:
        return 0
    if uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0):
        require uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor5[address(arg3)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg3')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('sha3', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg3)].field_0 % 32]:
                return 0
    if uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0):
        require uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_256) > 1:
            emit Confirmation(0, arg3, sha3(uint32(call.func_hash), arg1, arg2));
            uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_256)--
            if uint256(stor5[address(arg3)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0) = uint256(stor5[address(arg3)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0) <= uint256(stor5[address(arg3)].field_0) + 1:
                    idx = uint256(stor5[address(arg3)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg3)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('sha3', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg3)].field_0 % 32 or !(255 * 256^stor5[address(arg3)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('sha3', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'), ('param', 'arg2')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    else:
        uint256(stor2[stor3].field_0)++
        if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * uint256(stor2[stor3].field_0)) + 3
            while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) = multiAccessRequired
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_512) = sha3(uint32(call.func_hash), arg1, arg2)
        uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0) = uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) > 1:
            emit Confirmation(0, arg3, sha3(uint32(call.func_hash), arg1, arg2));
            uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256)--
            if uint256(stor5[address(arg3)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) = uint256(stor5[address(arg3)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) <= uint256(stor5[address(arg3)].field_0) + 1:
                    idx = uint256(stor5[address(arg3)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg3)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg3)].field_0 % 32 or !(255 * 256^stor5[address(arg3)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg3)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    emit Confirmation(1, arg3, sha3(uint32(call.func_hash), arg1, arg2));
    if uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0) < uint256(stor2[stor3].field_0) - 1:
        require uint256(stor2[stor3].field_0) - 1 < uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)) + s].field_0) = uint256(stor[idx + sha3((3 * uint256(stor2[stor3].field_0)) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32
            while uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_256) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)].field_512) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][1][uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)].field_0) = uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0)
    uint256(stor2[stor3].field_0)--
    if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * uint256(stor2[stor3].field_0)) - 3
        while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
    uint256(stor2[stor3][1][sha3(uint32(call.func_hash), arg1, arg2)].field_0) = 0
    if uint256(stor5[address(arg2)].field_0) > 0:
        return 0
    if not uint256(stor5[address(arg1)].field_0):
        return 0
    require uint256(stor5[address(arg1)].field_0) < stor6.length
    uint256(stor[uint256(stor5[address(arg1)].field_0) + code.data[5911 len 32]]) = arg2 or Mask(96, 160, uint256(stor[uint256(stor5[address(arg1)].field_0) + code.data[5911 len 32]]))
    uint256(stor5[address(arg1)].field_0) = 0
    uint256(stor5[arg2].field_0) = uint256(stor5[address(arg1)].field_0)
    stor3++
    uint256(stor2[stor3 + 1].field_0)++
    if not uint256(stor2[stor3 + 1].field_0) <= uint256(stor2[stor3 + 1].field_0) + 1:
        mem[0] = sha3(stor3 + 1, 2)
        idx = (3 * uint256(stor2[stor3 + 1].field_0)) + 3
        while sha3(sha3(stor3 + 1, 2)) + (3 * uint256(stor2[stor3 + 1].field_0)) > idx + sha3(mem[0]):
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
    emit OwnerChanged(address(arg1), arg2);
    return 1
}

function multiAccessChangeRequirementD(uint256 arg1, address arg2) payable {
    if arg2 != msg.sender:
        if msg.sender != this.address:
            if not uint8(stor0[address(arg2)][address(msg.sender)]):
                return 0
    if uint256(stor5[address(arg2)].field_0) <= 0:
        return 0
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0):
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0):
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor5', 5))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor2', 2))))[stor5[address(arg2)].field_0 % 32]:
                return 0
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0):
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256) > 1:
            emit Confirmation(0, arg2, sha3(uint32(call.func_hash), arg1));
            uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256)--
            if uint256(stor5[address(arg2)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) = uint256(stor5[address(arg2)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) <= uint256(stor5[address(arg2)].field_0) + 1:
                    idx = uint256(stor5[address(arg2)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1')), ('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    else:
        uint256(stor2[stor3].field_0)++
        if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) + 1:
            mem[0] = sha3(stor3, 2)
            idx = (3 * uint256(stor2[stor3].field_0)) + 3
            while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) = multiAccessRequired
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_512) = sha3(uint32(call.func_hash), arg1)
        uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) = uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3].field_0) < uint256(stor2[stor3].field_0)
        if uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256) > 1:
            emit Confirmation(0, arg2, sha3(uint32(call.func_hash), arg1));
            uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_256)--
            if uint256(stor5[address(arg2)].field_0) >= uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
                uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) = uint256(stor5[address(arg2)].field_0) + 1
                if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) <= uint256(stor5[address(arg2)].field_0) + 1:
                    idx = uint256(stor5[address(arg2)].field_0) + 32 / 32
                    while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                        uint256(stor2[stor3][(3 * uint256(stor2[stor3].field_0)) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor5[address(arg2)].field_0) < uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
            uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0) = 256^stor5[address(arg2)].field_0 % 32 or !(255 * 256^stor5[address(arg2)].field_0 % 32) and uint256(stor[Mask(251, 0, stor5[address(arg2)].field_5) + ('array', ('mul', 3, ('type', 256, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))))), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)))].field_0)
            return 0
    emit Confirmation(1, arg2, sha3(uint32(call.func_hash), arg1));
    if uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0) - 1:
        require uint256(stor2[stor3].field_0) - 1 < uint256(stor2[stor3].field_0)
        require uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) < uint256(stor2[stor3].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        if not uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0):
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32 > idx:
                uint256(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + s].field_0) = uint256(stor[idx + sha3((3 * uint256(stor2[stor3].field_0)) + ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor2', 2)) - 3)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0) + 31 / 32
            while uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_0) + 31 / 32 > idx:
                uint8(stor2[stor3][(3 * uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_256) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)].field_512) = uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)
        uint256(stor2[stor3][1][uint256(stor2[stor3][uint256(stor2[stor3].field_0)].field_0)].field_0) = uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0)
    uint256(stor2[stor3].field_0)--
    if not uint256(stor2[stor3].field_0) <= uint256(stor2[stor3].field_0) - 1:
        mem[0] = sha3(stor3, 2)
        idx = (3 * uint256(stor2[stor3].field_0)) - 3
        while sha3(sha3(stor3, 2)) + (3 * uint256(stor2[stor3].field_0)) > idx + sha3(mem[0]):
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
    uint256(stor2[stor3][1][('map', ('mask_shl', 32, 0, 0, ('cd', 0)), ('param', 'arg1'))].field_0) = 0
    if 0 == arg1:
        return 0
    if arg1 > stor6.length - 1:
        return 0
    multiAccessRequired = arg1
    stor3++
    uint256(stor2[stor3 + 1].field_0)++
    if not uint256(stor2[stor3 + 1].field_0) <= uint256(stor2[stor3 + 1].field_0) + 1:
        mem[0] = sha3(stor3 + 1, 2)
        idx = (3 * uint256(stor2[stor3 + 1].field_0)) + 3
        while sha3(sha3(stor3 + 1, 2)) + (3 * uint256(stor2[stor3 + 1].field_0)) > idx + sha3(mem[0]):
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
    emit RequirementChanged(arg1);
    return 1
}



}
