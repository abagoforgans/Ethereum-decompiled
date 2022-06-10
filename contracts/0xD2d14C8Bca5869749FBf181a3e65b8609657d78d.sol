contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address tokenAddress;
uint256 tokensToBeAllocated;
uint256 tokensAllocated;
uint256 totalClaimed;
uint256 lockedAt;
uint256 unlockedAt;
uint256 vestingPeriod;
mapping of uint256 allocations;
mapping of uint256 claimed;

function allocations(address arg1) {
    return allocations[arg1]
}

function vestingPeriod() {
    return vestingPeriod
}

function tokensAllocated() {
    return tokensAllocated
}

function unlockedAt() {
    return unlockedAt
}

function owner() {
    return owner
}

function tokensToBeAllocated() {
    return tokensToBeAllocated
}

function lockedAt() {
    return lockedAt
}

function claimed(address arg1) {
    return claimed[arg1]
}

function totalClaimed() {
    return totalClaimed
}

function pendingOwner() {
    return pendingOwner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function reclaimEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlock() {
    require owner == msg.sender
    if 0 >= lockedAt:
        revert with 0, 'Expected vault to be locked'
    if unlockedAt:
        revert with 0, 'Must not be unlocked yet'
    require vestingPeriod + lockedAt >= lockedAt
    if block.timestamp < vestingPeriod + lockedAt:
        revert with 0, 'Lock up must be over'
    unlockedAt = block.timestamp
    emit Unlocked()
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function lock() {
    require owner == msg.sender
    if lockedAt:
        revert with 0, 'Expected vault to be loadable'
    if tokensAllocated != tokensToBeAllocated:
        revert with 0, 'Expected to allocate all tokens'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != tokensAllocated:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Vault must own enough tokens to distribute'
    lockedAt = block.timestamp
    emit Locked()
}

function setAllocation(address arg1, uint256 arg2) {
    require owner == msg.sender
    if lockedAt:
        revert with 0, 'Expected vault to be loadable'
    if not arg1:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Beneficiary of allocation must not be blank'
    if not arg2:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Amount of allocation must not be zero'
    if allocations[address(arg1)]:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 
                    'Allocation amount for this beneficiary is not already set'
    require arg2 + allocations[address(arg1)] >= allocations[address(arg1)]
    allocations[address(arg1)] += arg2
    require arg2 + tokensAllocated >= tokensAllocated
    tokensAllocated += arg2
    emit Allocated(arg2, arg1);
    return 1
}

function transferFor(address arg1) {
    require owner == msg.sender
    if 0 >= unlockedAt:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Expected the vault to be unlocked'
    require claimed[address(arg1)] <= allocations[address(arg1)]
    if allocations[address(arg1)] - claimed[address(arg1)] <= 0:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Tokens to claim must be greater than zero'
    require allocations[address(arg1)] >= claimed[address(arg1)]
    claimed[address(arg1)] = allocations[address(arg1)]
    require allocations[address(arg1)] - claimed[address(arg1)] + totalClaimed >= totalClaimed
    totalClaimed = allocations[address(arg1)] - claimed[address(arg1)] + totalClaimed
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), allocations[address(arg1)] - claimed[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Distributed((allocations[address(arg1)] - claimed[address(arg1)]), arg1);
    return 1
}

function claim() {
    if unlockedAt <= 0:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Expected the vault to be unlocked'
    require claimed[address(msg.sender)] <= allocations[address(msg.sender)]
    if allocations[address(msg.sender)] - claimed[address(msg.sender)] <= 0:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Tokens to claim must be greater than zero'
    require allocations[address(msg.sender)] >= claimed[address(msg.sender)]
    claimed[address(msg.sender)] = allocations[address(msg.sender)]
    require allocations[address(msg.sender)] - claimed[address(msg.sender)] + totalClaimed >= totalClaimed
    totalClaimed = allocations[address(msg.sender)] - claimed[address(msg.sender)] + totalClaimed
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, allocations[address(msg.sender)] - claimed[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Distributed((allocations[address(msg.sender)] - claimed[address(msg.sender)]), msg.sender);
    return 1
}



}
