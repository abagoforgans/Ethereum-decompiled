contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 paused; offset 8
uint256 stor5; offset 8
uint256 howManyOwnersDecide;
array of address owners;
array of uint256 allOperations;
address stor9;
uint256 stor10;
mapping of uint256 ownersIndices;
mapping of uint256 allOperationsIndicies;
mapping of uint256 votesMaskByOperation;
mapping of uint256 votesCountByOperation;
mapping of uint8 stor15;
mapping of uint8 stor16;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1]
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

function howManyOwnersDecide() {
    return howManyOwnersDecide
}

function decimals() {
    return decimals
}

function allOperations(uint256 arg1) {
    require arg1 < allOperations.length
    return allOperations[arg1]
}

function governanceContracts(address arg1) {
    return bool(stor15[arg1])
}

function votesMaskByOperation(bytes32 arg1) {
    return votesMaskByOperation[arg1]
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function votesCountByOperation(bytes32 arg1) {
    return votesCountByOperation[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ownersCount() {
    return owners.length
}

function ownersIndices(address arg1) {
    return ownersIndices[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function allOperationsIndicies(bytes32 arg1) {
    return allOperationsIndicies[arg1]
}

function blacklist(address arg1) {
    return bool(stor16[arg1])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (ownersIndices[address(arg1)] > 0)
}

function approve(address arg1, uint256 arg2) {
    require not paused
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveForOtherContracts(address arg1, address arg2, uint256 arg3) {
    require stor15[address(msg.sender)]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function addAddressToBlacklist(address arg1) {
    require stor15[address(msg.sender)]
    if stor16[address(arg1)]:
        return 0
    stor16[address(arg1)] = 1
    emit BlacklistedAddressAdded(arg1);
    return 1
}

function removeAddressFromBlacklist(address arg1) {
    require stor15[address(msg.sender)]
    if not stor16[address(arg1)]:
        return 0
    stor16[address(arg1)] = 0
    emit BlacklistedAddressRemoved(arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor15[address(msg.sender)]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not paused
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not paused
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    require not stor16[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require not stor16[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require stor15[address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = arg2
    require not paused
    require not stor16[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}

function addAddressToGovernanceContract(address arg1) {
    if stor9 == msg.sender:
        if howManyOwnersDecide > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[(2 * floor32(calldata.size)) + 160 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        _308 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], votesCountByOperation[_308] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_308, votesCountByOperation[_308] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[_308] != howManyOwnersDecide:
            return 0
        if allOperationsIndicies[_308] < allOperations.length - 1:
            require allOperations.length - 1 < allOperations.length
            require allOperationsIndicies[_308] < allOperations.length
            allOperations[stor12[_308]] = allOperations[allOperations.length]
            allOperationsIndicies[stor8[allOperationsIndicies[_308]]] = allOperationsIndicies[_308]
        allOperations.length--
        if allOperations.length > allOperations.length - 1:
            idx = allOperations.length - 1
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
        votesMaskByOperation[_308] = 0
        votesCountByOperation[_308] = 0
        allOperationsIndicies[_308] = 0
        emit OperationPerformed(_308, howManyOwnersDecide, owners.length, msg.sender);
    if not stor9:
        stor9 = msg.sender
        stor10 = howManyOwnersDecide
    if stor15[address(arg1)]:
        if not stor9:
            stor9 = 0
            stor10 = 0
            return 0
        else:
            return 0
    stor15[address(arg1)] = 1
    emit GovernanceContractAdded(arg1);
    if not stor9:
        stor9 = 0
        stor10 = 0
    return 1
}

function removeAddressFromGovernanceContract(address arg1) {
    if stor9 == msg.sender:
        if howManyOwnersDecide > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[(2 * floor32(calldata.size)) + 160 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        _308 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], votesCountByOperation[_308] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_308, votesCountByOperation[_308] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[_308] != howManyOwnersDecide:
            return 0
        if allOperationsIndicies[_308] < allOperations.length - 1:
            require allOperations.length - 1 < allOperations.length
            require allOperationsIndicies[_308] < allOperations.length
            allOperations[stor12[_308]] = allOperations[allOperations.length]
            allOperationsIndicies[stor8[allOperationsIndicies[_308]]] = allOperationsIndicies[_308]
        allOperations.length--
        if allOperations.length > allOperations.length - 1:
            idx = allOperations.length - 1
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
        votesMaskByOperation[_308] = 0
        votesCountByOperation[_308] = 0
        allOperationsIndicies[_308] = 0
        emit OperationPerformed(_308, howManyOwnersDecide, owners.length, msg.sender);
    if not stor9:
        stor9 = msg.sender
        stor10 = howManyOwnersDecide
    if not stor15[address(arg1)]:
        if not stor9:
            stor9 = 0
            stor10 = 0
            return 0
        else:
            return 0
    stor15[address(arg1)] = 0
    emit GovernanceContractRemoved(arg1);
    if not stor9:
        stor9 = 0
        stor10 = 0
    return 1
}

function unpause() {
    if stor9 == msg.sender:
        if howManyOwnersDecide > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor9:
            stor9 = msg.sender
            stor10 = howManyOwnersDecide
        require paused
        stor5 = 0
        emit Unpause()
        if not stor9:
            stor9 = 0
            stor10 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[(2 * floor32(calldata.size)) + 160 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        _124 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], votesCountByOperation[_124] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_124, votesCountByOperation[_124] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[_124] == howManyOwnersDecide:
            if allOperationsIndicies[_124] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_124] < allOperations.length
                allOperations[stor12[_124]] = allOperations[allOperations.length]
                allOperationsIndicies[stor8[allOperationsIndicies[_124]]] = allOperationsIndicies[_124]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_124] = 0
            votesCountByOperation[_124] = 0
            allOperationsIndicies[_124] = 0
            emit OperationPerformed(_124, howManyOwnersDecide, owners.length, msg.sender);
            if not stor9:
                stor9 = msg.sender
                stor10 = howManyOwnersDecide
            require paused
            stor5 = 0
            emit Unpause()
            if not stor9:
                stor9 = 0
                stor10 = 0
}

function pause() {
    if stor9 == msg.sender:
        if howManyOwnersDecide > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor9:
            stor9 = msg.sender
            stor10 = howManyOwnersDecide
        require not paused
        stor5 = 1
        emit Pause()
        if not stor9:
            stor9 = 0
            stor10 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[(2 * floor32(calldata.size)) + 160 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        _124 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], votesCountByOperation[_124] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_124, votesCountByOperation[_124] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[_124] == howManyOwnersDecide:
            if allOperationsIndicies[_124] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_124] < allOperations.length
                allOperations[stor12[_124]] = allOperations[allOperations.length]
                allOperationsIndicies[stor8[allOperationsIndicies[_124]]] = allOperationsIndicies[_124]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_124] = 0
            votesCountByOperation[_124] = 0
            allOperationsIndicies[_124] = 0
            emit OperationPerformed(_124, howManyOwnersDecide, owners.length, msg.sender);
            if not stor9:
                stor9 = msg.sender
                stor10 = howManyOwnersDecide
            require not paused
            stor5 = 1
            emit Pause()
            if not stor9:
                stor9 = 0
                stor10 = 0
}

function transferOwnership(address arg1, address arg2) {
    if stor9 == msg.sender:
        if howManyOwnersDecide > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor9:
            stor9 = msg.sender
            stor10 = howManyOwnersDecide
        require arg1
        idx = 0
        while idx < owners.length:
            mem[0] = 7
            if arg2 != owners[idx]:
                idx = idx + 1
                continue 
            require idx < owners.length
            owners[idx] = arg1
            ownersIndices[address(arg1)] = ownersIndices[address(arg2)]
            ownersIndices[address(arg2)] = 0
            emit OwnershipTransferred(arg2, arg1);
            if not stor9:
                stor9 = 0
                stor10 = 0
        emit OwnershipTransferred(arg2, arg1);
        if not stor9:
            stor9 = 0
            stor10 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[(2 * floor32(calldata.size)) + 160 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        _250 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], votesCountByOperation[_250] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_250, votesCountByOperation[_250] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if votesCountByOperation[_250] == howManyOwnersDecide:
            if allOperationsIndicies[_250] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_250] < allOperations.length
                allOperations[stor12[_250]] = allOperations[allOperations.length]
                allOperationsIndicies[stor8[allOperationsIndicies[_250]]] = allOperationsIndicies[_250]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_250] = 0
            votesCountByOperation[_250] = 0
            allOperationsIndicies[_250] = 0
            emit OperationPerformed(_250, howManyOwnersDecide, owners.length, msg.sender);
            if not stor9:
                stor9 = msg.sender
                stor10 = howManyOwnersDecide
            require arg1
            idx = 0
            while idx < owners.length:
                mem[0] = 7
                if arg2 != owners[idx]:
                    idx = idx + 1
                    continue 
                require idx < owners.length
                owners[idx] = arg1
                ownersIndices[address(arg1)] = ownersIndices[address(arg2)]
                ownersIndices[address(arg2)] = 0
                emit OwnershipTransferred(arg2, arg1);
                if not stor9:
                    stor9 = 0
                    stor10 = 0
            emit OwnershipTransferred(arg2, arg1);
            if not stor9:
                stor9 = 0
                stor10 = 0
}

function cancelPending(bytes32 arg1) {
    if stor9 == msg.sender:
        if 1 > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not stor9:
            stor9 = msg.sender
            stor10 = 1
        if not votesMaskByOperation[arg1] or not 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
        votesMaskByOperation[arg1] = votesMaskByOperation[arg1] and !2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[arg1]--
        emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
        if not votesCountByOperation[arg1] - 1:
            if allOperationsIndicies[arg1] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[arg1] < allOperations.length
                allOperations[stor12[arg1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor8[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
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
        if not stor9:
            stor9 = 0
            stor10 = 0
    else:
        if ownersIndices[address(msg.sender)] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[(2 * floor32(calldata.size)) + 160 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        _736 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] and 2^(ownersIndices[address(msg.sender)] - 1):
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] or 2^(ownersIndices[address(msg.sender)] - 1)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], votesCountByOperation[_736] + 1, 1, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], 1, owners.length, msg.sender);
            emit OperationUpvoted(_736, votesCountByOperation[_736] + 1, 1, owners.length, msg.sender);
        if votesCountByOperation[_736] == 1:
            if allOperationsIndicies[_736] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_736] < allOperations.length
                allOperations[stor12[_736]] = allOperations[allOperations.length]
                allOperationsIndicies[stor8[allOperationsIndicies[_736]]] = allOperationsIndicies[_736]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_736] = 0
            votesCountByOperation[_736] = 0
            allOperationsIndicies[_736] = 0
            emit OperationPerformed(_736, 1, owners.length, msg.sender);
            if not stor9:
                stor9 = msg.sender
                stor10 = 1
            if not votesMaskByOperation[arg1] or not 2^(ownersIndices[address(msg.sender)] - 1):
                revert with 0, 'cancelPending: operation not found for this user'
            votesMaskByOperation[arg1] = votesMaskByOperation[arg1] and !2^(ownersIndices[address(msg.sender)] - 1)
            votesCountByOperation[arg1]--
            emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
            if not votesCountByOperation[arg1] - 1:
                if allOperationsIndicies[arg1] < allOperations.length - 1:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[arg1] < allOperations.length
                    allOperations[stor12[arg1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor8[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
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
            if not stor9:
                stor9 = 0
                stor10 = 0
}



}
