contract main {




// =====================  Runtime code  =====================


#
#  - confirmParties()
#
address owner;
uint256 ownersGeneration;
uint256 howManyOwnersDecide;
array of struct owners;
array of uint256 allOperations;
address stor5;
uint256 stor5;
uint256 stor6;
mapping of uint256 ownersIndices;
mapping of uint256 allOperationsIndicies;
mapping of uint256 votesMaskByOperation;
mapping of uint256 votesCountByOperation;
uint8 status;
uint256 stor12;
array of struct stor13;
array of address stor14;
mapping of uint8 stor15;
mapping of address stor16;
mapping of struct stor17;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function status() {
    require status <= 3
    return status
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

function owner() {
    return owner
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

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (ownersIndices[address(arg1)] > 0)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeParty(uint256 arg1) {
    require msg.sender == owner
    require status <= 3
    if status:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to remove parties in the current status'
    if arg1 >= stor14.length:
        revert with 0, 'Participant does not exist'
    stor15[address(stor14[arg1])] = 0
    require stor14.length - 1 < stor14.length
    require arg1 < stor14.length
    address(stor14[arg1]) = address(stor14[stor14.length])
    stor14.length--
    if stor14.length > stor14.length - 1:
        idx = stor14.length - 1
        while stor14.length > idx:
            uint256(stor14[idx]) = 0
            idx = idx + 1
            continue 
    stor17[stor16[address(stor14[arg1])]].field_0 = 0
    stor17[stor16[address(stor14[arg1])]].field_256 = 0
    stor17[stor16[address(stor14[arg1])]].field_512 = 0
    stor17[stor16[address(stor14[arg1])]].field_768 = 0
    stor17[stor16[address(stor14[arg1])]].field_1024 = 0
    stor17[stor16[address(stor14[arg1])]].field_1280 = 0
    stor17[stor16[address(stor14[arg1])]].field_1536 = 0
    stor17[stor16[address(stor14[arg1])]].field_1792 = 0
    stor16[address(stor14[arg1])] = 0
    emit RemoveParty(address(stor14[arg1]));
}

function addParty(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require status <= 3
    if status:
        revert with 0, 'Unable to add new parties in the current status'
    if not arg1:
        revert with 0, '_participant is invalid address'
    if not arg2:
        revert with 0, '_token is invalid address'
    if arg3 <= 0:
        revert with 0, '_tokensForSwap must be positive'
    if arg4 <= 0:
        revert with 0, '_tokensFee must be positive'
    require arg4 + arg3 >= arg3
    if arg5 != arg4 + arg3:
        revert with 0, 'token amounts inconsistency'
    if stor15[address(arg1)]:
        revert with 0, 'Unable to add the same party multiple times'
    stor15[address(arg1)] = 1
    stor14.length++
    address(stor14[stor14.length]) = arg1
    stor17[address(arg2)].field_0 = arg1
    stor17[address(arg2)].field_256 = arg2
    stor17[address(arg2)].field_512 = arg3
    stor17[address(arg2)].field_768 = 0
    stor17[address(arg2)].field_1024 = arg4
    stor17[address(arg2)].field_1280 = 0
    stor17[address(arg2)].field_1536 = arg5
    stor17[address(arg2)].field_1792 = 0
    stor16[address(arg1)] = arg2
    emit AddParty(arg1 << 192, address(arg2), arg5);
}

function reclaim() {
    if bool(stor15[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only swap participants allowed to call the method'
    require status <= 3
    if status != 2:
        require status <= 3
        if status != 3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to reclaim in the current status'
    require ext_code.size(stor17[stor16[msg.sender]].field_256)
    call stor17[stor16[msg.sender]].field_256.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor17[stor16[msg.sender]].field_1792 <= stor17[stor16[msg.sender]].field_1536
    require stor17[stor16[msg.sender]].field_1536 - stor17[stor16[msg.sender]].field_1792 <= ext_call.return_data[0]
    require status <= 3
    require ext_code.size(stor17[stor16[msg.sender]].field_256)
    if status != 3:
        call stor17[stor16[msg.sender]].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args stor17[stor16[msg.sender]].field_0, ext_call.return_data[0] - stor17[stor16[msg.sender]].field_1536 + stor17[stor16[msg.sender]].field_1792
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit Reclaim(stor17[stor16[msg.sender]].field_0, stor17[stor16[msg.sender]].field_256, ext_call.return_data[0] - stor17[stor16[msg.sender]].field_1536 + stor17[stor16[msg.sender]].field_1792);
    else:
        call stor17[stor16[msg.sender]].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args stor17[stor16[msg.sender]].field_0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit Reclaim(stor17[stor16[msg.sender]].field_0, stor17[stor16[msg.sender]].field_256, ext_call.return_data[0]);
}

function cancelSwap() {
    require status <= 3
    if status != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to cancel swap in the current status'
    if msg.sender == address(stor5):
        if howManyOwnersDecide > stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor5):
            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
            stor6 = howManyOwnersDecide
        require status <= 3
        emit StatusUpdate(status, 3);
        status = 3
        if not address(stor5):
            address(stor5) = 0
            stor6 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len calldata.size]][stor1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len calldata.size]][stor1]
        votesCountByOperation[call.data[0 len calldata.size]][stor1]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor1] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide == votesCountByOperation[call.data[0 len calldata.size]][stor1]:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length
                allOperations[stor8[call.data[0 len calldata.size]][stor1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor4[allOperationsIndicies[call.data[0 len calldata.size]][stor1]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor1]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if not address(stor5):
                uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                stor6 = howManyOwnersDecide
            require status <= 3
            emit StatusUpdate(status, 3);
            status = 3
            if not address(stor5):
                address(stor5) = 0
                stor6 = 0
}

function confirmSwap() {
    require status <= 3
    if status != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to confirm in the current status'
    mem[64] = 352
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    s = 96
    s = 0
    idx = 0
    while idx < stor14.length:
        mem[0] = stor16[address(stor14[idx])]
        mem[32] = 17
        _165 = mem[64]
        mem[64] = mem[64] + 256
        mem[_165] = stor17[stor16[address(stor14[idx])]].field_0
        mem[_165 + 32] = stor17[stor16[address(stor14[idx])]].field_256
        mem[_165 + 64] = stor17[stor16[address(stor14[idx])]].field_512
        mem[_165 + 96] = stor17[stor16[address(stor14[idx])]].field_768
        mem[_165 + 128] = stor17[stor16[address(stor14[idx])]].field_1024
        mem[_165 + 160] = stor17[stor16[address(stor14[idx])]].field_1280
        mem[_165 + 192] = stor17[stor16[address(stor14[idx])]].field_1536
        mem[_165 + 224] = stor17[stor16[address(stor14[idx])]].field_1792
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor17[stor16[address(stor14[idx])]].field_256)
        call stor17[stor16[address(stor14[idx])]].field_256.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor17[stor16[address(stor14[idx])]].field_1536:
            revert with 0, 'Unable to confirm swap before all parties have deposited tokens'
        s = _165
        s = stor16[address(stor14[idx])]
        idx = idx + 1
        continue 
    if msg.sender == address(stor5):
        if howManyOwnersDecide > stor6:
            revert with 0, 'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor5):
            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
            stor6 = howManyOwnersDecide
        require status <= 3
        emit StatusUpdate(status, 2);
        status = 2
        stor12 = block.timestamp
        emit StartLockup(block.timestamp);
        if not address(stor5):
            address(stor5) = 0
            stor6 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0, 'checkHowManyOwners: msg.sender is not an owner'
        _171 = mem[64]
        mem[mem[64] len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + mem[64]] = ownersGeneration
        _173 = sha3(mem[mem[64] len calldata.size + _171 + -mem[64] + 32])
        mem[0] = sha3(mem[mem[64] len calldata.size + _171 + -mem[64] + 32])
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[mem[0]]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[_173] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[_173]
        votesCountByOperation[_173]++
        if votesCountByOperation[_173] + 1 == 1:
            allOperationsIndicies[_173] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = _173
            emit OperationCreated(_173, howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(_173, votesCountByOperation[_173] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide == votesCountByOperation[_173]:
            if allOperationsIndicies[_173] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_173] < allOperations.length
                allOperations[stor8[_173]] = allOperations[allOperations.length]
                allOperationsIndicies[stor4[allOperationsIndicies[_173]]] = allOperationsIndicies[_173]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_173] = 0
            votesCountByOperation[_173] = 0
            allOperationsIndicies[_173] = 0
            emit OperationPerformed(_173, howManyOwnersDecide, owners.length, msg.sender);
            if not address(stor5):
                uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                stor6 = howManyOwnersDecide
            require status <= 3
            emit StatusUpdate(status, 2);
            status = 2
            stor12 = block.timestamp
            emit StartLockup(block.timestamp);
            if not address(stor5):
                address(stor5) = 0
                stor6 = 0
}

function cancelPending(bytes32 arg1) {
    if msg.sender == address(stor5):
        if 1 > stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor5):
            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
            stor6 = 1
        if not 2^(ownersIndices[msg.sender] - 1) or not votesMaskByOperation[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
        votesMaskByOperation[arg1] = !2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[arg1]
        votesCountByOperation[arg1]--
        emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
        if not votesCountByOperation[arg1] - 1:
            if allOperationsIndicies[arg1] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[arg1] < allOperations.length
                allOperations[stor8[arg1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor4[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
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
        if not address(stor5):
            address(stor5) = 0
            stor6 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len calldata.size]][stor1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len calldata.size]][stor1]
        votesCountByOperation[call.data[0 len calldata.size]][stor1]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor1] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1, 1, owners.length, msg.sender);
        if 1 == votesCountByOperation[call.data[0 len calldata.size]][stor1]:
            if allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length
                allOperations[stor8[call.data[0 len calldata.size]][stor1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor4[allOperationsIndicies[call.data[0 len calldata.size]][stor1]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor1]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not address(stor5):
                uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                stor6 = 1
            if not 2^(ownersIndices[msg.sender] - 1) or not votesMaskByOperation[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
            votesMaskByOperation[arg1] = !2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[arg1]
            votesCountByOperation[arg1]--
            emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
            if not votesCountByOperation[arg1] - 1:
                if allOperationsIndicies[arg1] < allOperations.length - 1:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[arg1] < allOperations.length
                    allOperations[stor8[arg1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor4[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
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
            if not address(stor5):
                address(stor5) = 0
                stor6 = 0
}

function withdrawFee() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require status <= 3
    if status != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to withdraw fee in the current status'
    if not stor12:
        revert with 0, 'Lockup has not been started'
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < stor14.length:
        mem[0] = stor16[address(stor14[idx])]
        mem[32] = 17
        _39 = mem[64]
        mem[64] = mem[64] + 256
        mem[_39] = stor17[stor16[address(stor14[idx])]].field_0
        mem[_39 + 32] = stor17[stor16[address(stor14[idx])]].field_256
        mem[_39 + 64] = stor17[stor16[address(stor14[idx])]].field_512
        mem[_39 + 96] = stor17[stor16[address(stor14[idx])]].field_768
        mem[_39 + 128] = stor17[stor16[address(stor14[idx])]].field_1024
        mem[_39 + 160] = stor17[stor16[address(stor14[idx])]].field_1280
        mem[_39 + 192] = stor17[stor16[address(stor14[idx])]].field_1536
        mem[_39 + 224] = stor17[stor16[address(stor14[idx])]].field_1792
        t = 0
        t = 0
        s = stor13.length
        while s > 0:
            require s - 1 < stor13.length
            mem[0] = 13
            require stor13[s - 1].field_0 + stor12 >= stor12
            if block.timestamp < stor13[s - 1].field_0 + stor12:
                t = stor13[s - 1].field_0 + stor12
                t = (2 * s - 1) + sha3(13)
                s = s - 1
                continue 
            if not stor17[stor16[address(stor14[idx])]].field_1024:
                require stor17[stor16[address(stor14[idx])]].field_1280 <= 0
                mem[mem[64] + 36] = -stor17[stor16[address(stor14[idx])]].field_1280
                require ext_code.size(stor17[stor16[address(stor14[idx])]].field_256)
                call stor17[stor16[address(stor14[idx])]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -stor17[stor16[address(stor14[idx])]].field_1280
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[mem[64]] = stor17[stor16[address(stor14[idx])]].field_256
                mem[mem[64] + 32] = -stor17[stor16[address(stor14[idx])]].field_1280
                emit WithdrawFee(stor17[stor16[address(stor14[idx])]].field_256, -stor17[stor16[address(stor14[idx])]].field_1280);
                require 0 >= stor17[stor16[address(stor14[idx])]].field_1280
                stor17[stor16[address(stor14[idx])]].field_1280 = 0
                require -stor17[stor16[address(stor14[idx])]].field_1280 + stor17[stor16[address(stor14[idx])]].field_1792 >= stor17[stor16[address(stor14[idx])]].field_1792
                stor17[stor16[address(stor14[idx])]].field_1792 -= stor17[stor16[address(stor14[idx])]].field_1280
                s = -stor17[stor16[address(stor14[idx])]].field_1280
                s = sha3(stor16[address(stor14[idx])], 17)
                s = stor16[address(stor14[idx])]
                idx = idx + 1
                continue 
            require stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / stor17[stor16[address(stor14[idx])]].field_1024 == stor13[s - 1].field_256
            require stor17[stor16[address(stor14[idx])]].field_1280 <= stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100
            mem[mem[64] + 36] = (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100) - stor17[stor16[address(stor14[idx])]].field_1280
            require ext_code.size(stor17[stor16[address(stor14[idx])]].field_256)
            call stor17[stor16[address(stor14[idx])]].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100) - stor17[stor16[address(stor14[idx])]].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[mem[64]] = stor17[stor16[address(stor14[idx])]].field_256
            mem[mem[64] + 32] = (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100) - stor17[stor16[address(stor14[idx])]].field_1280
            emit WithdrawFee(stor17[stor16[address(stor14[idx])]].field_256, (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100) - stor17[stor16[address(stor14[idx])]].field_1280);
            require stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100 >= stor17[stor16[address(stor14[idx])]].field_1280
            stor17[stor16[address(stor14[idx])]].field_1280 = stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100
            require (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100) - stor17[stor16[address(stor14[idx])]].field_1280 + stor17[stor16[address(stor14[idx])]].field_1792 >= stor17[stor16[address(stor14[idx])]].field_1792
            stor17[stor16[address(stor14[idx])]].field_1792 = (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100) - stor17[stor16[address(stor14[idx])]].field_1280 + stor17[stor16[address(stor14[idx])]].field_1792
            s = (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_1024 / 100) - stor17[stor16[address(stor14[idx])]].field_1280
            s = sha3(stor16[address(stor14[idx])], 17)
            s = stor16[address(stor14[idx])]
            idx = idx + 1
            continue 
        if stor17[stor16[address(stor14[idx])]].field_1024:
            require not 0 / stor17[stor16[address(stor14[idx])]].field_1024
        require stor17[stor16[address(stor14[idx])]].field_1280 <= 0
        mem[mem[64] + 36] = -stor17[stor16[address(stor14[idx])]].field_1280
        require ext_code.size(stor17[stor16[address(stor14[idx])]].field_256)
        call stor17[stor16[address(stor14[idx])]].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, -stor17[stor16[address(stor14[idx])]].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[mem[64]] = stor17[stor16[address(stor14[idx])]].field_256
        mem[mem[64] + 32] = -stor17[stor16[address(stor14[idx])]].field_1280
        emit WithdrawFee(stor17[stor16[address(stor14[idx])]].field_256, -stor17[stor16[address(stor14[idx])]].field_1280);
        require 0 >= stor17[stor16[address(stor14[idx])]].field_1280
        stor17[stor16[address(stor14[idx])]].field_1280 = 0
        require -stor17[stor16[address(stor14[idx])]].field_1280 + stor17[stor16[address(stor14[idx])]].field_1792 >= stor17[stor16[address(stor14[idx])]].field_1792
        stor17[stor16[address(stor14[idx])]].field_1792 -= stor17[stor16[address(stor14[idx])]].field_1280
        s = -stor17[stor16[address(stor14[idx])]].field_1280
        s = sha3(stor16[address(stor14[idx])], 17)
        s = stor16[address(stor14[idx])]
        idx = idx + 1
        continue 
}

function withdraw() payable {
    mem[64] = 96
    require not msg.value
    if bool(stor15[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only swap participants allowed to call the method'
    require status <= 3
    if status != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to withdraw tokens in the current status'
    if not stor12:
        revert with 0, 'Lockup has not been started'
    s = 0
    s = 0
    idx = 0
    while idx < stor14.length:
        mem[0] = stor16[address(stor14[idx])]
        mem[32] = 17
        if stor17[stor16[address(stor14[idx])]].field_0 != msg.sender:
            _42 = mem[64]
            mem[64] = mem[64] + 256
            mem[_42] = stor17[stor16[address(stor14[idx])]].field_0
            mem[_42 + 32] = stor17[stor16[address(stor14[idx])]].field_256
            mem[_42 + 64] = stor17[stor16[address(stor14[idx])]].field_512
            mem[_42 + 96] = stor17[stor16[address(stor14[idx])]].field_768
            mem[_42 + 128] = stor17[stor16[address(stor14[idx])]].field_1024
            mem[_42 + 160] = stor17[stor16[address(stor14[idx])]].field_1280
            mem[_42 + 192] = stor17[stor16[address(stor14[idx])]].field_1536
            mem[_42 + 224] = stor17[stor16[address(stor14[idx])]].field_1792
            t = 0
            t = 0
            s = stor13.length
            while s > 0:
                require s - 1 < stor13.length
                mem[0] = 13
                require stor13[s - 1].field_0 + stor12 >= stor12
                if block.timestamp < stor13[s - 1].field_0 + stor12:
                    t = stor13[s - 1].field_0 + stor12
                    t = (2 * s - 1) + sha3(13)
                    s = s - 1
                    continue 
                if not stor17[stor16[address(stor14[idx])]].field_512:
                    require stor17[stor16[address(stor14[idx])]].field_768 <= 0
                    require stor14.length - 1
                    require ext_code.size(stor17[stor16[address(stor14[idx])]].field_256)
                    call stor17[stor16[address(stor14[idx])]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = stor17[stor16[address(stor14[idx])]].field_256
                    mem[mem[64] + 64] = -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                    emit Withdraw(msg.sender, stor17[stor16[address(stor14[idx])]].field_256, -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1);
                    require (-stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1) + stor17[stor16[address(stor14[idx])]].field_768 >= stor17[stor16[address(stor14[idx])]].field_768
                    stor17[stor16[address(stor14[idx])]].field_768 += -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                    require (-stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1) + stor17[stor16[address(stor14[idx])]].field_1792 >= stor17[stor16[address(stor14[idx])]].field_1792
                    stor17[stor16[address(stor14[idx])]].field_1792 += -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                else:
                    require stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / stor17[stor16[address(stor14[idx])]].field_512 == stor13[s - 1].field_256
                    require stor17[stor16[address(stor14[idx])]].field_768 <= stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100
                    require stor14.length - 1
                    require ext_code.size(stor17[stor16[address(stor14[idx])]].field_256)
                    call stor17[stor16[address(stor14[idx])]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100) - stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = stor17[stor16[address(stor14[idx])]].field_256
                    mem[mem[64] + 64] = (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100) - stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                    emit Withdraw(msg.sender, stor17[stor16[address(stor14[idx])]].field_256, (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100) - stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1);
                    require ((stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100) - stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1) + stor17[stor16[address(stor14[idx])]].field_768 >= stor17[stor16[address(stor14[idx])]].field_768
                    stor17[stor16[address(stor14[idx])]].field_768 += (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100) - stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                    require ((stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100) - stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1) + stor17[stor16[address(stor14[idx])]].field_1792 >= stor17[stor16[address(stor14[idx])]].field_1792
                    stor17[stor16[address(stor14[idx])]].field_1792 += (stor13[s - 1].field_256 * stor17[stor16[address(stor14[idx])]].field_512 / 100) - stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
                s = sha3(stor16[address(stor14[idx])], 17)
                s = stor16[address(stor14[idx])]
                idx = idx + 1
                continue 
            if stor17[stor16[address(stor14[idx])]].field_512:
                require not 0 / stor17[stor16[address(stor14[idx])]].field_512
            require stor17[stor16[address(stor14[idx])]].field_768 <= 0
            require stor14.length - 1
            require ext_code.size(stor17[stor16[address(stor14[idx])]].field_256)
            call stor17[stor16[address(stor14[idx])]].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = stor17[stor16[address(stor14[idx])]].field_256
            mem[mem[64] + 64] = -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
            emit Withdraw(msg.sender, stor17[stor16[address(stor14[idx])]].field_256, -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1);
            require (-stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1) + stor17[stor16[address(stor14[idx])]].field_768 >= stor17[stor16[address(stor14[idx])]].field_768
            stor17[stor16[address(stor14[idx])]].field_768 += -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
            require (-stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1) + stor17[stor16[address(stor14[idx])]].field_1792 >= stor17[stor16[address(stor14[idx])]].field_1792
            stor17[stor16[address(stor14[idx])]].field_1792 += -stor17[stor16[address(stor14[idx])]].field_768 / stor14.length - 1
        s = sha3(stor16[address(stor14[idx])], 17)
        s = stor16[address(stor14[idx])]
        idx = idx + 1
        continue 
}

function transferOwnershipWithHowMany(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == address(stor5):
        if howManyOwnersDecide > stor6:
            revert with 0, 'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor5):
            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
            stor6 = howManyOwnersDecide
        if 0 >= arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
        if 256 < arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
        if arg2 <= 0:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
        if arg2 > arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
        idx = 0
        while idx < owners.length:
            mem[0] = owners[idx].field_0
            mem[32] = 7
            ownersIndices[stor3[idx].field_0] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
            require idx < arg1.length
            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
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
        if not address(stor5):
            address(stor5) = 0
            stor6 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0, 'checkHowManyOwners: msg.sender is not an owner'
        mem[(32 * arg1.length) + 128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + (32 * arg1.length) + 128] = ownersGeneration
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len calldata.size]][stor1]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len calldata.size]][stor1]
        votesCountByOperation[call.data[0 len calldata.size]][stor1]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1 != 1:
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if howManyOwnersDecide == votesCountByOperation[call.data[0 len calldata.size]][stor1]:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor1] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            mem[(32 * arg1.length) + 128] = 128
                            if not owners.length:
                                mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var39001 = floor32(arg1.length)
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
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length
                    allOperations[stor8[call.data[0 len calldata.size]][stor1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor4[allOperationsIndicies[call.data[0 len calldata.size]][stor1]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor1]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
                                ownersIndices[mem[(32 * idx) + 140 len 20]] = idx + 1
                                idx = idx + 1
                                continue 
                            mem[(32 * arg1.length) + 128] = 128
                            if not owners.length:
                                mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                var43001 = floor32(arg1.length)
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
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                if not address(stor5):
                    address(stor5) = 0
                    stor6 = 0
        else:
            allOperationsIndicies[call.data[0 len calldata.size]][stor1] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if howManyOwnersDecide == votesCountByOperation[call.data[0 len calldata.size]][stor1]:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor1] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length
                    allOperations[stor8[call.data[0 len calldata.size]][stor1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor4[allOperationsIndicies[call.data[0 len calldata.size]][stor1]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor1]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg2 <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg2 > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg2 <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg2 > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                if not address(stor5):
                    address(stor5) = 0
                    stor6 = 0
}

function transferOwnership(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == address(stor5):
        if howManyOwnersDecide > stor6:
            revert with 0, 'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor5):
            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
            stor6 = howManyOwnersDecide
        if 0 >= arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
        if 256 < arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
        if arg1.length <= 0:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
        if arg1.length > arg1.length:
            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
        idx = 0
        while idx < owners.length:
            mem[0] = owners[idx].field_0
            mem[32] = 7
            ownersIndices[stor3[idx].field_0] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
            require idx < arg1.length
            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
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
        if not address(stor5):
            address(stor5) = 0
            stor6 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0, 'checkHowManyOwners: msg.sender is not an owner'
        mem[(32 * arg1.length) + 128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + (32 * arg1.length) + 128] = ownersGeneration
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len calldata.size]][stor1]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len calldata.size]][stor1]
        votesCountByOperation[call.data[0 len calldata.size]][stor1]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1 != 1:
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if howManyOwnersDecide == votesCountByOperation[call.data[0 len calldata.size]][stor1]:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor1] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                        else:
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length
                    allOperations[stor8[call.data[0 len calldata.size]][stor1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor4[allOperationsIndicies[call.data[0 len calldata.size]][stor1]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor1]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                        else:
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                if not address(stor5):
                    address(stor5) = 0
                    stor6 = 0
        else:
            allOperationsIndicies[call.data[0 len calldata.size]][stor1] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor1] + 1, howManyOwnersDecide, owners.length, msg.sender);
            if howManyOwnersDecide == votesCountByOperation[call.data[0 len calldata.size]][stor1]:
                if allOperationsIndicies[call.data[0 len calldata.size]][stor1] >= allOperations.length - 1:
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                        else:
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                else:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[call.data[0 len calldata.size]][stor1] < allOperations.length
                    allOperations[stor8[call.data[0 len calldata.size]][stor1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor4[allOperationsIndicies[call.data[0 len calldata.size]][stor1]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor1]
                    allOperations.length--
                    if allOperations.length <= allOperations.length - 1:
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if not address(stor5):
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                        if 0 >= arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                        if 256 < arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                        if arg1.length <= 0:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                        if arg1.length > arg1.length:
                            revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                        idx = 0
                        while idx < owners.length:
                            mem[0] = owners[idx].field_0
                            mem[32] = 7
                            ownersIndices[stor3[idx].field_0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg1.length:
                            require idx < arg1.length
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                            require idx < arg1.length
                            if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                            require idx < arg1.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
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
                    else:
                        idx = allOperations.length - 1
                        while allOperations.length > idx:
                            allOperations[idx] = 0
                            idx = idx + 1
                            continue 
                        votesMaskByOperation[call.data[0 len calldata.size]][stor1] = 0
                        votesCountByOperation[call.data[0 len calldata.size]][stor1] = 0
                        allOperationsIndicies[call.data[0 len calldata.size]][stor1] = 0
                        mem[(32 * arg1.length) + 128] = sha3(call.data[0 len calldata.size], ownersGeneration)
                        emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
                        if address(stor5):
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                        else:
                            uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                            stor6 = howManyOwnersDecide
                            if 0 >= arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners array is empty'
                            if 256 < arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: oners count is greater then 256'
                            if arg1.length <= 0:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
                            if arg1.length > arg1.length:
                                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
                            idx = 0
                            while idx < owners.length:
                                mem[0] = owners[idx].field_0
                                mem[32] = 7
                                ownersIndices[stor3[idx].field_0] = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg1.length
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains zero'
                                require idx < arg1.length
                                if ownersIndices[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'transferOwnershipWithHowMany: oners array contains duplicates'
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 7
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
                if not address(stor5):
                    address(stor5) = 0
                    stor6 = 0
}



}
