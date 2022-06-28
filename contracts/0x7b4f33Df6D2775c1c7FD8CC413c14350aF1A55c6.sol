contract main {




// =====================  Runtime code  =====================


address owner;
uint256 investorCount;
uint256 tokensToBeAllocated;
uint256 totalClaimed;
uint256 tokensAllocatedTotal;
mapping of uint256 balances;
mapping of uint256 claimed;
uint256 freezeEndsAt;
uint256 lockedAt;
address tokenAddress;

function tokensAllocatedTotal() {
    return tokensAllocatedTotal
}

function balances(address arg1) {
    return balances[arg1]
}

function freezeEndsAt() {
    return freezeEndsAt
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

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function getState() {
    if not lockedAt:
        return 1
    if block.timestamp <= freezeEndsAt:
        return 2
    return 3
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getCurrentlyClaimableAmount(address arg1) {
    if block.timestamp >= freezeEndsAt:
        return (balances[address(arg1)] - claimed[address(arg1)])
    else:
        return 0
}

function setInvestor(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not lockedAt
    require arg2 > 0
    require not balances[address(arg1)]
    balances[address(arg1)] = arg2
    investorCount++
    tokensAllocatedTotal += arg2
    emit Allocated(address(arg1), arg2);
}

function getBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function lock() {
    require msg.sender == owner
    require not lockedAt
    require tokensAllocatedTotal <= tokensToBeAllocated
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= tokensToBeAllocated
    lockedAt = block.timestamp
    emit Locked()
}

function recoverFailedLock() {
    require msg.sender == owner
    require not lockedAt
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claim() {
    require lockedAt
    require block.timestamp > freezeEndsAt
    require balances[address(msg.sender)] > 0
    require block.timestamp >= freezeEndsAt
    require balances[address(msg.sender)] - claimed[address(msg.sender)] > 0
    claimed[address(msg.sender)] = balances[address(msg.sender)]
    totalClaimed = totalClaimed + balances[address(msg.sender)] - claimed[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balances[address(msg.sender)] - claimed[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Distributed(msg.sender, balances[address(msg.sender)] - claimed[address(msg.sender)]);
}

function tokensToBeReturned(address arg1) {
    if arg1 != tokenAddress:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x20968e8d2c18813aea28fc329e49b1254295b3e4)
    delegate 0x20968e8d2c18813aea28fc329e49b1254295b3e4.minus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], tokensAllocatedTotal
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function recoverTokens(address arg1) {
    require msg.sender == owner
    if arg1 != tokenAddress:
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
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x20968e8d2c18813aea28fc329e49b1254295b3e4)
        delegate 0x20968e8d2c18813aea28fc329e49b1254295b3e4.minus(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], tokensAllocatedTotal
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
