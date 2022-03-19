contract main {


// =======================  Init code  ======================


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
    return code.data[181 len 2735]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of uint256 stor1;
array of struct stor2;
uint256 required;
mapping of uint256 stor4;
array of uint256 stor5;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of address owners;

function owners(uint256 arg1) payable {
    require arg1 < stor5.length
    return address(owners[arg1])
}

function required() payable {
    return required
}

function isOwner(address arg1) payable {
    return (stor4[address(arg1)] > 0)
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    require stor1[arg1] < stor2.length
    if stor4[address(arg2)] != 0:
        return stor[code.data[2703 len 32] + (3 * stor1[arg1]) + 2] and 2^stor4[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) payable {
    if stor4[address(msg.sender)] != 0:
        require stor1[arg1] < stor2.length
        if 2^stor4[address(msg.sender)] and stor4057[stor1[arg1]] > 0:
            stor[code.data[2703 len 32] + (3 * stor1[arg1]) + 1]++
            stor[code.data[2703 len 32] + (3 * stor1[arg1]) + 2] -= 2^stor4[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function setRecipient(address arg1) payable {
    if 0 == stor4[address(msg.sender)]:
        return 0
    if not stor1[call.data[0 len calldata.size]]:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + 3
            while 3 * stor2.length > idx:
                stor2[idx].field_0 = 0
                stor2[idx].field_256 = 0
                stor2[idx].field_512 = 0
                idx = idx + 1
                continue 
        require stor2.length < stor2.length
        stor[code.data[2703 len 32] + (3 * stor2.length)] = sha3(call.data[0 len calldata.size])
        stor[code.data[2703 len 32] + (3 * stor2.length) + 1] = required
        stor[code.data[2703 len 32] + (3 * stor2.length) + 2] = 0
        stor1[call.data[0 len calldata.size]] = stor2.length
        return 0
    require stor1[call.data[0 len calldata.size]] < stor2.length
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1] > 1:
        stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]--
        stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2] = 2^stor4[address(msg.sender)] or stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]
        return 0
    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
        require stor2.length - 1 < stor2.length
        require stor1[call.data[0 len calldata.size]] < stor2.length
        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor[code.data[2703 len 32] + (3 * stor2.length) - 3]
        stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor[code.data[2703 len 32] + (3 * stor2.length) - 2]
        stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor[code.data[2703 len 32] + (3 * stor2.length) - 1]
        stor1[stor[code.data[2703 len 32] + (3 * stor2.length) - 3]] = stor1[call.data[0 len calldata.size]]
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = (3 * stor2.length) - 3
        while 3 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 1
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if 0 == stor4[address(msg.sender)]:
        return 0
    if not stor1[call.data[0 len calldata.size]]:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = (3 * stor2.length) + 3
            while 3 * stor2.length > idx:
                stor2[idx].field_0 = 0
                stor2[idx].field_256 = 0
                stor2[idx].field_512 = 0
                idx = idx + 1
                continue 
        require stor2.length < stor2.length
        stor[code.data[2703 len 32] + (3 * stor2.length)] = sha3(call.data[0 len calldata.size])
        stor[code.data[2703 len 32] + (3 * stor2.length) + 1] = required
        stor[code.data[2703 len 32] + (3 * stor2.length) + 2] = 0
        stor1[call.data[0 len calldata.size]] = stor2.length
        return 0
    require stor1[call.data[0 len calldata.size]] < stor2.length
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1] > 1:
        stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]--
        stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2] = 2^stor4[address(msg.sender)] or stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]
        return 0
    if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
        require stor2.length - 1 < stor2.length
        require stor1[call.data[0 len calldata.size]] < stor2.length
        stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor[code.data[2703 len 32] + (3 * stor2.length) - 3]
        stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor[code.data[2703 len 32] + (3 * stor2.length) - 2]
        stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor[code.data[2703 len 32] + (3 * stor2.length) - 1]
        stor1[stor[code.data[2703 len 32] + (3 * stor2.length) - 3]] = stor1[call.data[0 len calldata.size]]
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = (3 * stor2.length) - 3
        while 3 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 1
            continue 
    stor1[call.data[0 len calldata.size]] = 0
    if calldata.size <= 0:
        return 0
    call address(stor0) with:
       funct call.data[0 len 4]
         gas gas_remaining - 25050 wei
        args call.data[4 len calldata.size - 4]
    return ext_call.success
}

function changeRequirement(uint256 arg1) payable {
    if stor4[address(msg.sender)] != 0:
        if not stor1[call.data[0 len calldata.size]]:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = (3 * stor2.length) + 3
                while 3 * stor2.length > idx:
                    stor2[idx].field_0 = 0
                    stor2[idx].field_256 = 0
                    stor2[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor2.length < stor2.length
            stor[code.data[2703 len 32] + (3 * stor2.length)] = sha3(call.data[0 len calldata.size])
            stor[code.data[2703 len 32] + (3 * stor2.length) + 1] = required
            stor[code.data[2703 len 32] + (3 * stor2.length) + 2] = 0
            stor1[call.data[0 len calldata.size]] = stor2.length
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1] > 1:
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]--
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2] = 2^stor4[address(msg.sender)] or stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]
            else:
                if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                    require stor2.length - 1 < stor2.length
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor[code.data[2703 len 32] + (3 * stor2.length) - 3]
                    stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor[code.data[2703 len 32] + (3 * stor2.length) - 2]
                    stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor[code.data[2703 len 32] + (3 * stor2.length) - 1]
                    stor1[stor[code.data[2703 len 32] + (3 * stor2.length) - 3]] = stor1[call.data[0 len calldata.size]]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    idx = (3 * stor2.length) - 3
                    while 3 * stor2.length > idx:
                        stor2[idx].field_0 = 0
                        stor2[idx].field_256 = 0
                        stor2[idx].field_512 = 0
                        idx = idx + 1
                        continue 
                stor1[call.data[0 len calldata.size]] = 0
                if arg1 <= stor5.length:
                    required = arg1
                    idx = 0
                    while idx < stor2.length:
                        mem[32] = 1
                        stor1[stor[code.data[2703 len 32] + (3 * idx)]] = 0
                        mem[0] = 2
                        stor[(3 * idx) + code.data[2703 len 32]] = 0
                        stor4057[idx] = 0
                        stor4057[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function addOwner(address arg1) payable {
    if stor4[address(msg.sender)] != 0:
        if not stor1[call.data[0 len calldata.size]]:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = (3 * stor2.length) + 3
                while 3 * stor2.length > idx:
                    stor2[idx].field_0 = 0
                    stor2[idx].field_256 = 0
                    stor2[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor2.length < stor2.length
            stor[code.data[2703 len 32] + (3 * stor2.length)] = sha3(call.data[0 len calldata.size])
            stor[code.data[2703 len 32] + (3 * stor2.length) + 1] = required
            stor[code.data[2703 len 32] + (3 * stor2.length) + 2] = 0
            stor1[call.data[0 len calldata.size]] = stor2.length
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1] > 1:
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]--
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2] = 2^stor4[address(msg.sender)] or stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]
            else:
                if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                    require stor2.length - 1 < stor2.length
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor[code.data[2703 len 32] + (3 * stor2.length) - 3]
                    stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor[code.data[2703 len 32] + (3 * stor2.length) - 2]
                    stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor[code.data[2703 len 32] + (3 * stor2.length) - 1]
                    stor1[stor[code.data[2703 len 32] + (3 * stor2.length) - 3]] = stor1[call.data[0 len calldata.size]]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    idx = (3 * stor2.length) - 3
                    while 3 * stor2.length > idx:
                        stor2[idx].field_0 = 0
                        stor2[idx].field_256 = 0
                        stor2[idx].field_512 = 0
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
                    uint256(owners[stor5.length]) = arg1 or Mask(96, 160, uint256(owners[stor5.length]))
                    stor4[address(arg1)] = stor5.length
                    emit OwnerAdded(arg1);
}

function removeOwner(address arg1) payable {
    if stor4[address(msg.sender)] != 0:
        if not stor1[call.data[0 len calldata.size]]:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = (3 * stor2.length) + 3
                while 3 * stor2.length > idx:
                    stor2[idx].field_0 = 0
                    stor2[idx].field_256 = 0
                    stor2[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor2.length < stor2.length
            stor[code.data[2703 len 32] + (3 * stor2.length)] = sha3(call.data[0 len calldata.size])
            stor[code.data[2703 len 32] + (3 * stor2.length) + 1] = required
            stor[code.data[2703 len 32] + (3 * stor2.length) + 2] = 0
            stor1[call.data[0 len calldata.size]] = stor2.length
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1] > 1:
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]--
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2] = 2^stor4[address(msg.sender)] or stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]
            else:
                if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                    require stor2.length - 1 < stor2.length
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor[code.data[2703 len 32] + (3 * stor2.length) - 3]
                    stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor[code.data[2703 len 32] + (3 * stor2.length) - 2]
                    stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor[code.data[2703 len 32] + (3 * stor2.length) - 1]
                    stor1[stor[code.data[2703 len 32] + (3 * stor2.length) - 3]] = stor1[call.data[0 len calldata.size]]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    idx = (3 * stor2.length) - 3
                    while 3 * stor2.length > idx:
                        stor2[idx].field_0 = 0
                        stor2[idx].field_256 = 0
                        stor2[idx].field_512 = 0
                        idx = idx + 1
                        continue 
                stor1[call.data[0 len calldata.size]] = 0
                if stor4[address(arg1)]:
                    if required <= stor5.length - 1:
                        require stor4[address(arg1)] < stor5.length
                        address(owners[stor4[address(arg1)]]) = 0
                        stor4[address(arg1)] = 0
                        idx = 0
                        while idx < stor2.length:
                            mem[32] = 1
                            stor1[stor[code.data[2703 len 32] + (3 * idx)]] = 0
                            mem[0] = 2
                            stor[(3 * idx) + code.data[2703 len 32]] = 0
                            stor4057[idx] = 0
                            stor4057[idx] = 0
                            idx = idx + 1
                            continue 
                        emit OwnerRemoved(arg1);
}

function changeOwner(address arg1, address arg2) payable {
    if stor4[address(msg.sender)] != 0:
        if not stor1[call.data[0 len calldata.size]]:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = (3 * stor2.length) + 3
                while 3 * stor2.length > idx:
                    stor2[idx].field_0 = 0
                    stor2[idx].field_256 = 0
                    stor2[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor2.length < stor2.length
            stor[code.data[2703 len 32] + (3 * stor2.length)] = sha3(call.data[0 len calldata.size])
            stor[code.data[2703 len 32] + (3 * stor2.length) + 1] = required
            stor[code.data[2703 len 32] + (3 * stor2.length) + 2] = 0
            stor1[call.data[0 len calldata.size]] = stor2.length
        else:
            require stor1[call.data[0 len calldata.size]] < stor2.length
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1] > 1:
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 1]--
                stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2] = 2^stor4[address(msg.sender)] or stor[code.data[2703 len 32] + (3 * stor1[call.data[0 len calldata.size]]) + 2]
            else:
                if stor1[call.data[0 len calldata.size]] < stor2.length - 1:
                    require stor2.length - 1 < stor2.length
                    require stor1[call.data[0 len calldata.size]] < stor2.length
                    stor2[stor1[call.data[0 len calldata.size]]].field_0 = stor[code.data[2703 len 32] + (3 * stor2.length) - 3]
                    stor2[stor1[call.data[0 len calldata.size]]].field_256 = stor[code.data[2703 len 32] + (3 * stor2.length) - 2]
                    stor2[stor1[call.data[0 len calldata.size]]].field_512 = stor[code.data[2703 len 32] + (3 * stor2.length) - 1]
                    stor1[stor[code.data[2703 len 32] + (3 * stor2.length) - 3]] = stor1[call.data[0 len calldata.size]]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    idx = (3 * stor2.length) - 3
                    while 3 * stor2.length > idx:
                        stor2[idx].field_0 = 0
                        stor2[idx].field_256 = 0
                        stor2[idx].field_512 = 0
                        idx = idx + 1
                        continue 
                stor1[call.data[0 len calldata.size]] = 0
                if stor4[address(arg2)] <= 0:
                    if stor4[address(arg1)]:
                        idx = 0
                        while idx < stor2.length:
                            mem[32] = 1
                            stor1[stor[code.data[2703 len 32] + (3 * idx)]] = 0
                            mem[0] = 2
                            stor[(3 * idx) + code.data[2703 len 32]] = 0
                            stor4057[idx] = 0
                            stor4057[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor4[address(arg1)] < stor5.length
                        uint256(owners[stor4[address(arg1)]]) = arg2 or Mask(96, 160, uint256(owners[stor4[address(arg1)]]))
                        stor4[address(arg1)] = 0
                        stor4[arg2] = stor4[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}



}
