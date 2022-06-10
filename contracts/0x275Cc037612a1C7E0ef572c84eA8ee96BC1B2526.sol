contract main {




// =====================  Runtime code  =====================


uint256 ownersGeneration;
uint256 howManyOwnersDecide;
array of struct owners;
array of uint256 allOperations;
address stor4;
uint256 stor5;
mapping of uint256 ownersIndices;
mapping of uint256 allOperationsIndicies;
mapping of uint256 votesMaskByOperation;
mapping of uint256 votesCountByOperation;
address tokenAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function allOperationsCount() {
    return allOperations.length
}

function howManyOwnersDecide() {
    return howManyOwnersDecide
}

function allOperations(uint256 arg1) {
    require arg1 < allOperations.length
    return allOperations[arg1]
}

function votesMaskByOperation(bytes32 arg1) {
    return votesMaskByOperation[arg1]
}

function votesCountByOperation(bytes32 arg1) {
    return votesCountByOperation[arg1]
}

function ownersGeneration() {
    return ownersGeneration
}

function ownersCount() {
    return owners.length
}

function ownersIndices(address arg1) {
    return ownersIndices[arg1]
}

function allOperationsIndicies(bytes32 arg1) {
    return allOperationsIndicies[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (ownersIndices[address(arg1)] > 0)
}

function pause() {
    if stor4 == msg.sender:
        if 1 > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x8456cb59 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, 1, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == 1:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x8456cb59 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function resume() {
    if stor4 == msg.sender:
        if 1 > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3f4ba83a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, 1, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == 1:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x3f4ba83a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function freezeAccount(address arg1) {
    if stor4 == msg.sender:
        if 1 > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = 1
        require arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xf26c159f with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, 1, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == 1:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = 1
            require arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf26c159f with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function unFreezeAccount(address arg1) {
    if stor4 == msg.sender:
        if 1 > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = 1
        require arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x53cc2fae with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, 1, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == 1:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = 1
            require arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x53cc2fae with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function burn(uint256 arg1) {
    if stor4 == msg.sender:
        if howManyOwnersDecide > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = howManyOwnersDecide
        require arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining wei
            args (10^18 * arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == howManyOwnersDecide:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = howManyOwnersDecide
            require arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args (10^18 * arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function transferTokens(address arg1, uint256 arg2) {
    if stor4 == msg.sender:
        if howManyOwnersDecide > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = howManyOwnersDecide
        require arg1
        require arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 10^18 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == howManyOwnersDecide:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = howManyOwnersDecide
            require arg1
            require arg2
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 10^18 * arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function airdrop(address[] arg1, uint256[] arg2) {
    if stor4 == msg.sender:
        if howManyOwnersDecide > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = howManyOwnersDecide
        require arg1.length
        require arg2.length
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            mem[100] = address(cd[((32 * idx) + arg1 + 36)])
            mem[132] = 10^18 * cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)]), 10^18 * cd[((32 * idx) + arg2 + 36)]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == howManyOwnersDecide:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = howManyOwnersDecide
            require arg1.length
            require arg2.length
            require arg1.length == arg2.length
            idx = 0
            while idx < arg1.length:
                require idx < arg2.length
                mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                mem[132] = 10^18 * cd[((32 * idx) + arg2 + 36)]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg1 + 36)]), 10^18 * cd[((32 * idx) + arg2 + 36)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function cancelPending(bytes32 arg1) {
    if stor4 == msg.sender:
        if 1 > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = 1
        if not votesMaskByOperation[arg1] or not 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
        votesMaskByOperation[arg1] = votesMaskByOperation[arg1] and !2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[arg1]--
        emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
        if not votesCountByOperation[arg1] - 1:
            if allOperationsIndicies[arg1] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[arg1] < allOperations.length
                allOperations[stor7[arg1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
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
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, 1, owners.length, msg.sender);
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] == 1:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not stor4:
                stor4 = msg.sender
                stor5 = 1
            if not votesMaskByOperation[arg1] or not 2^(ownersIndices[address(msg.sender)] - 1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
            votesMaskByOperation[arg1] = votesMaskByOperation[arg1] and !2^(ownersIndices[address(msg.sender)] - 1)
            votesCountByOperation[arg1]--
            emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
            if not votesCountByOperation[arg1] - 1:
                if allOperationsIndicies[arg1] < allOperations.length - 1:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[arg1] < allOperations.length
                    allOperations[stor7[arg1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor3[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
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
            if not stor4:
                stor4 = 0
                stor5 = 0
}

function transferOwnershipWithHowMany(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor4 == msg.sender:
        if howManyOwnersDecide > stor5:
            revert with 0, 'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor4:
            stor4 = msg.sender
            stor5 = howManyOwnersDecide
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
            mem[32] = 6
            ownersIndices[stor2[idx].field_0] = 0
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
            mem[32] = 6
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
        if not stor4:
            stor4 = 0
            stor5 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0, 'checkHowManyOwners: msg.sender is not an owner'
        mem[(32 * arg1.length) + 128 len calldata.size] = call.data[0 len calldata.size]
        mem[(32 * arg1.length) + calldata.size + 128] = ownersGeneration
        if votesMaskByOperation[call.data[0 len calldata.size]][stor0] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = votesMaskByOperation[call.data[0 len calldata.size]][stor0] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 != 1:
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if votesCountByOperation[call.data[0 len calldata.size]][stor0] == howManyOwnersDecide:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor0] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor4:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                            mem[32] = 6
                            ownersIndices[stor2[idx].field_0] = 0
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
                            mem[32] = 6
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor4:
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            mem[(32 * arg1.length) + 128] = 128
                            if not owners.length:
                                mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var40001 = floor32(arg1.length)
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
                        else:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
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
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                    allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor4:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                            mem[32] = 6
                            ownersIndices[stor2[idx].field_0] = 0
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
                            mem[32] = 6
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor4:
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            mem[(32 * arg1.length) + 128] = 128
                            if not owners.length:
                                mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var44001 = floor32(arg1.length)
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
                        else:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
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
                if not stor4:
                    stor4 = 0
                    stor5 = 0
        else:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if votesCountByOperation[call.data[0 len calldata.size]][stor0] == howManyOwnersDecide:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor0] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor4:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                            mem[32] = 6
                            ownersIndices[stor2[idx].field_0] = 0
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
                            mem[32] = 6
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor4:
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            mem[(32 * arg1.length) + 128] = 128
                            if not owners.length:
                                mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var41001 = floor32(arg1.length)
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
                        else:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
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
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length
                    allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not stor4:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                            mem[32] = 6
                            ownersIndices[stor2[idx].field_0] = 0
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
                            mem[32] = 6
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor0] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if stor4:
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            mem[(32 * arg1.length) + 128] = 128
                            if not owners.length:
                                mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var45001 = floor32(arg1.length)
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
                        else:
                            stor4 = msg.sender
                            stor5 = howManyOwnersDecide
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
                                mem[32] = 6
                                ownersIndices[stor2[idx].field_0] = 0
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
                                mem[32] = 6
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
                if not stor4:
                    stor4 = 0
                    stor5 = 0
}



}
