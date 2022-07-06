contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 ownersGeneration;
uint256 howManyOwnersDecide;
array of struct owners;
array of uint256 allOperations;
address stor10;
uint256 stor11;
mapping of uint256 ownersIndices;
mapping of uint256 allOperationsIndicies;
mapping of uint256 votesMaskByOperation;
mapping of uint256 votesCountByOperation;
address operatorAddress;
uint256 sub_2a37eeae;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return owners[arg1].field_0
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function allOperationsCount() {
    return allOperations.length
}

function sub_2a37eeae(?) {
    return sub_2a37eeae
}

function howManyOwnersDecide() {
    return howManyOwnersDecide
}

function decimals() {
    return decimals
}

function allOperations(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allOperations.length
    return allOperations[arg1]
}

function votesMaskByOperation(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return votesMaskByOperation[arg1]
}

function operator() {
    return operatorAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function votesCountByOperation(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return votesCountByOperation[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ownersGeneration() {
    return ownersGeneration
}

function ownersCount() {
    return owners.length
}

function ownersIndices(address arg1) {
    require calldata.size - 4 >= 32
    return ownersIndices[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function allOperationsIndicies(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return allOperationsIndicies[arg1]
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (ownersIndices[address(arg1)] > 0)
}

function sub_d99fcd66(?) {
    if not operatorAddress:
        revert with 0, 'Forbidden'
    if operatorAddress != msg.sender:
        revert with 0, 'Forbidden'
    operatorAddress = 0
    emit 0x3955e721 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not operatorAddress:
        revert with 0, 'Forbidden'
    if operatorAddress != msg.sender:
        revert with 0, 'Forbidden'
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not operatorAddress:
        revert with 0, 'Forbidden'
    if operatorAddress != msg.sender:
        revert with 0, 'Forbidden'
    if sub_2a37eeae < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient available for minting'
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    require arg2 <= sub_2a37eeae
    sub_2a37eeae -= arg2
    return 1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 == msg.sender:
        if howManyOwnersDecide > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if stor10:
            operatorAddress = arg1
            emit OperatorSet(arg1);
        else:
            stor10 = msg.sender
            stor11 = howManyOwnersDecide
            operatorAddress = arg1
            emit OperatorSet(arg1);
            stor10 = 0
            stor11 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor6] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = votesMaskByOperation[call.data[0 len calldata.size]][stor6] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor6]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] == howManyOwnersDecide:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length
                allOperations[stor13[call.data[0 len calldata.size]][stor6]] = allOperations[allOperations.length]
                allOperationsIndicies[stor9[allOperationsIndicies[call.data[0 len calldata.size]][stor6]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor6]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if stor10:
                operatorAddress = arg1
                emit OperatorSet(arg1);
            else:
                stor10 = msg.sender
                stor11 = howManyOwnersDecide
                operatorAddress = arg1
                emit OperatorSet(arg1);
                stor10 = 0
                stor11 = 0
}

function sub_007ddef1(?) {
    require calldata.size - 4 >= 32
    if stor10 == msg.sender:
        if howManyOwnersDecide > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor10:
            stor10 = msg.sender
            stor11 = howManyOwnersDecide
        if arg1 <= 0:
            revert with 0, 'Amount below zero'
        require sub_2a37eeae + arg1 >= sub_2a37eeae
        sub_2a37eeae += arg1
        if not stor10:
            stor10 = 0
            stor11 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor6] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = votesMaskByOperation[call.data[0 len calldata.size]][stor6] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor6]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] == howManyOwnersDecide:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length
                allOperations[stor13[call.data[0 len calldata.size]][stor6]] = allOperations[allOperations.length]
                allOperationsIndicies[stor9[allOperationsIndicies[call.data[0 len calldata.size]][stor6]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor6]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if not stor10:
                stor10 = msg.sender
                stor11 = howManyOwnersDecide
            if arg1 <= 0:
                revert with 0, 'Amount below zero'
            require sub_2a37eeae + arg1 >= sub_2a37eeae
            sub_2a37eeae += arg1
            if not stor10:
                stor10 = 0
                stor11 = 0
}

function cancelPending(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if stor10 == msg.sender:
        if 1 > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor10:
            stor10 = msg.sender
            stor11 = 1
        if not votesMaskByOperation[arg1] or not 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
        votesMaskByOperation[arg1] = votesMaskByOperation[arg1] and !2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[arg1]--
        emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
        if not votesCountByOperation[arg1] - 1:
            if allOperationsIndicies[arg1] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[arg1] < allOperations.length
                allOperations[stor13[arg1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor9[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[arg1] = 0
            votesCountByOperation[arg1] = 0
            allOperationsIndicies[arg1] = 0
            emit OperationCancelled(arg1, msg.sender);
        if not stor10:
            stor10 = 0
            stor11 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor6] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = votesMaskByOperation[call.data[0 len calldata.size]][stor6] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor6]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1, 1, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] == 1:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length
                allOperations[stor13[call.data[0 len calldata.size]][stor6]] = allOperations[allOperations.length]
                allOperationsIndicies[stor9[allOperationsIndicies[call.data[0 len calldata.size]][stor6]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor6]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not stor10:
                stor10 = msg.sender
                stor11 = 1
            if not votesMaskByOperation[arg1] or not 2^(ownersIndices[address(msg.sender)] - 1):
                revert with 0, 'cancelPending: operation not found for this user'
            votesMaskByOperation[arg1] = votesMaskByOperation[arg1] and !2^(ownersIndices[address(msg.sender)] - 1)
            votesCountByOperation[arg1]--
            emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
            if not votesCountByOperation[arg1] - 1:
                if allOperationsIndicies[arg1] < allOperations.length - 1:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[arg1] < allOperations.length
                    allOperations[stor13[arg1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor9[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
                allOperations.length--
                if allOperations.length > allOperations.length - 1:
                    idx = allOperations.length - 1
                    while allOperations.length > idx:
                        allOperations[idx] = 0
                        idx = idx + 1
                        continue 
                votesMaskByOperation[arg1] = 0
                votesCountByOperation[arg1] = 0
                allOperationsIndicies[arg1] = 0
                emit OperationCancelled(arg1, msg.sender);
            if not stor10:
                stor10 = 0
                stor11 = 0
}

function transferOwnershipWithHowMany(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor10 == msg.sender:
        if howManyOwnersDecide > stor11:
            revert with 0, 'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor10:
            stor10 = msg.sender
            stor11 = howManyOwnersDecide
        if arg1.length <= 0:
            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
        if arg1.length > 256:
            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
        if arg2 <= 0:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
        if arg2 > arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
        idx = 0
        while idx < owners.length:
            mem[0] = owners[idx].field_0
            mem[32] = 12
            ownersIndices[stor8[idx].field_0] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
            require idx < arg1.length
            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 12
            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
            idx = idx + 1
            continue 
        mem[(32 * arg1.length) + 128] = 128
        if not owners.length:
            mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                      128,
                                      howManyOwnersDecide,
                                      160,
                                      arg2,
                                      owners.length,
                                      arg1.length,
                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                      mem[(32 * arg1.length) + floor32(arg1.length) + 320 len (32 * arg1.length) - floor32(arg1.length)],
        else:
            mem[(32 * arg1.length) + 288] = address(owners.field_0)
            idx = (32 * arg1.length) + 288
            s = 0
            while (32 * arg1.length) + (32 * owners.length) + 288 > idx + 32:
                mem[idx + 32] = owners[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * arg1.length) + (32 * owners.length) + 288] = arg1.length
            mem[(32 * arg1.length) + (32 * owners.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + 288 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * owners.length) + floor32(arg1.length) + 320 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
        owners.length = arg1.length
        if not arg1.length:
            idx = 0
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                owners[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        howManyOwnersDecide = arg2
        allOperations.length = 0
        if allOperations.length > 0:
            idx = 0
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
        ownersGeneration++
        if not stor10:
            stor10 = 0
            stor11 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0, 'checkHowManyOwners: msg.sender is not an owner'
        mem[(32 * arg1.length) + 128] = calldata.size + 32
        if votesMaskByOperation[call.data[0 len calldata.size]][stor6] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = votesMaskByOperation[call.data[0 len calldata.size]][stor6] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor6]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1 != 1:
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if votesCountByOperation[call.data[0 len calldata.size]][stor6] == howManyOwnersDecide:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor6] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg2,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var44001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var45001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length
                    allOperations[stor13[call.data[0 len calldata.size]][stor6]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor9[allOperationsIndicies[call.data[0 len calldata.size]][stor6]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor6]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg2,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var48001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var49001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                owners.length = arg1.length
                if not arg1.length:
                    idx = 0
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * arg1.length) + 128 > idx:
                        owners[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                howManyOwnersDecide = arg2
                allOperations.length = 0
                if allOperations.length > 0:
                    idx = 0
                    while allOperations.length > idx:
                        allOperations[idx] = 0
                        idx = idx + 1
                        continue 
                ownersGeneration++
                if not stor10:
                    stor10 = 0
                    stor11 = 0
        else:
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if votesCountByOperation[call.data[0 len calldata.size]][stor6] == howManyOwnersDecide:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor6] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg2,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var45001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var46001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length
                    allOperations[stor13[call.data[0 len calldata.size]][stor6]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor9[allOperationsIndicies[call.data[0 len calldata.size]][stor6]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor6]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg2,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var49001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var50001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg2,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
                owners.length = arg1.length
                if not arg1.length:
                    idx = 0
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * arg1.length) + 128 > idx:
                        owners[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                howManyOwnersDecide = arg2
                allOperations.length = 0
                if allOperations.length > 0:
                    idx = 0
                    while allOperations.length > idx:
                        allOperations[idx] = 0
                        idx = idx + 1
                        continue 
                ownersGeneration++
                if not stor10:
                    stor10 = 0
                    stor11 = 0
}

function transferOwnership(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor10 == msg.sender:
        if howManyOwnersDecide > stor11:
            revert with 0, 'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor10:
            stor10 = msg.sender
            stor11 = howManyOwnersDecide
        if arg1.length <= 0:
            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
        if arg1.length > 256:
            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
        if arg1.length <= 0:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
        if arg1.length > arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
        idx = 0
        while idx < owners.length:
            mem[0] = owners[idx].field_0
            mem[32] = 12
            ownersIndices[stor8[idx].field_0] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
            require idx < arg1.length
            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 12
            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
            idx = idx + 1
            continue 
        mem[(32 * arg1.length) + 128] = 128
        if not owners.length:
            mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                      128,
                                      howManyOwnersDecide,
                                      160,
                                      arg1.length,
                                      owners.length,
                                      arg1.length,
                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                      mem[(32 * arg1.length) + floor32(arg1.length) + 320 len (32 * arg1.length) - floor32(arg1.length)],
        else:
            mem[(32 * arg1.length) + 288] = address(owners.field_0)
            idx = (32 * arg1.length) + 288
            s = 0
            while (32 * arg1.length) + (32 * owners.length) + 288 > idx + 32:
                mem[idx + 32] = owners[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * arg1.length) + (32 * owners.length) + 288] = arg1.length
            mem[(32 * arg1.length) + (32 * owners.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + 288 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * owners.length) + floor32(arg1.length) + 320 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
        owners.length = arg1.length
        if not arg1.length:
            idx = 0
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                owners[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        howManyOwnersDecide = arg1.length
        allOperations.length = 0
        if allOperations.length > 0:
            idx = 0
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
        ownersGeneration++
        if not stor10:
            stor10 = 0
            stor11 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0, 'checkHowManyOwners: msg.sender is not an owner'
        mem[(32 * arg1.length) + 128] = calldata.size + 32
        if votesMaskByOperation[call.data[0 len calldata.size]][stor6] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = votesMaskByOperation[call.data[0 len calldata.size]][stor6] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor6]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1 != 1:
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if votesCountByOperation[call.data[0 len calldata.size]][stor6] == howManyOwnersDecide:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor6] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg1.length,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var45001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var46001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length
                    allOperations[stor13[call.data[0 len calldata.size]][stor6]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor9[allOperationsIndicies[call.data[0 len calldata.size]][stor6]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor6]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg1.length,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var49001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var50001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                owners.length = arg1.length
                if not arg1.length:
                    idx = 0
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * arg1.length) + 128 > idx:
                        owners[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                howManyOwnersDecide = arg1.length
                allOperations.length = 0
                if allOperations.length > 0:
                    idx = 0
                    while allOperations.length > idx:
                        allOperations[idx] = 0
                        idx = idx + 1
                        continue 
                ownersGeneration++
                if not stor10:
                    stor10 = 0
                    stor11 = 0
        else:
            allOperationsIndicies[call.data[0 len calldata.size]][stor6] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor6] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if votesCountByOperation[call.data[0 len calldata.size]][stor6] == howManyOwnersDecide:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor6] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg1.length,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var46001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var47001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor6] < allOperations.length
                    allOperations[stor13[call.data[0 len calldata.size]][stor6]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor9[allOperationsIndicies[call.data[0 len calldata.size]][stor6]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor6]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor10:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                        if arg1.length > 256:
                            revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 12
                            ownersIndices[stor8[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 12
                            ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                            idx = idx + 1
                            continue 
                        if not owners.length:
                            mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                      128,
                                                      howManyOwnersDecide,
                                                      160,
                                                      arg1.length,
                                                      owners.length,
                                                      arg1.length,
                                                      call.data[arg1 + 36 len floor32(arg1.length)],
                                                      mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                        else:
                            mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                            idx = (32 * arg1.length) + calldata.size + 352
                            s = 0
                            while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                mem[idx + 32] = owners[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                            mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor6] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor6] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor6] = 0
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor10:
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var50001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                        else:
                            stor10 = msg.sender
                            stor11 = howManyOwnersDecide
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: owners array is empty'
                            if arg1.length > 256:
                                revert with 0, 'transferOwnershipWithHowMany: owners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 12
                                ownersIndices[stor8[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: owners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 12
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            if not owners.length:
                                mem[(32 * arg1.length) + calldata.size + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var51001 = floor32(arg1.length)
                                emit OwnershipTransferred(address[] arg1, uint256 arg2, address[] arg3, uint256 arg4):
                                                          128,
                                                          howManyOwnersDecide,
                                                          160,
                                                          arg1.length,
                                                          owners.length,
                                                          arg1.length,
                                                          call.data[arg1 + 36 len floor32(arg1.length)],
                                                          mem[(32 * arg1.length) + calldata.size + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)],
                            else:
                                mem[(32 * arg1.length) + calldata.size + 352] = address(owners.field_0)
                                idx = (32 * arg1.length) + calldata.size + 352
                                s = 0
                                while (32 * arg1.length) + calldata.size + (32 * owners.length) + 352 > idx + 32:
                                    mem[idx + 32] = owners[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 352] = arg1.length
                                mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                emit OwnershipTransferred(Array(len=owners.length, data=mem[(32 * arg1.length) + calldata.size + 352 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + calldata.size + (32 * owners.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
                owners.length = arg1.length
                if not arg1.length:
                    idx = 0
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * arg1.length) + 128 > idx:
                        owners[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                    while owners.length > idx:
                        owners[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                howManyOwnersDecide = arg1.length
                allOperations.length = 0
                if allOperations.length > 0:
                    idx = 0
                    while allOperations.length > idx:
                        allOperations[idx] = 0
                        idx = idx + 1
                        continue 
                ownersGeneration++
                if not stor10:
                    stor10 = 0
                    stor11 = 0
}



}
