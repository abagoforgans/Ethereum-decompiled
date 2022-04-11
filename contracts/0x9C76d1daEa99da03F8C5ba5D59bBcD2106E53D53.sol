contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor7;
address stor9;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    require msg.sender
    stor9 = code.data[2563 len 20]
    require ext_code.size(code.data[2563 len 20])
    call code.data[2563 len 20].0xeefa597b with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require code.data[2519 len 32]
    require code.data[2583 len 32]
    stor7 = code.data[2519 len 32]
    stor2 = code.data[2583 len 32]
    return code.data[316 len 2203]
}



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

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getState() {
    if 0 == lockedAt:
        return 1
    if block.timestamp <= freezeEndsAt:
        return 2
    return 3
}

function getBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function setInvestor(address arg1, uint256 arg2) {
    require owner == msg.sender
    require lockedAt <= 0
    require arg2
    require balances[address(arg1)] <= 0
    balances[address(arg1)] = arg2
    investorCount++
    tokensAllocatedTotal += arg2
    emit Allocated(address(arg1), arg2);
}

function lock() {
    require owner == msg.sender
    require lockedAt <= 0
    require tokensAllocatedTotal == tokensToBeAllocated
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == tokensAllocatedTotal
    lockedAt = block.timestamp
    emit Locked()
}

function recoverFailedLock() {
    require owner == msg.sender
    require lockedAt <= 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function claim() {
    require lockedAt
    require block.timestamp >= freezeEndsAt
    require balances[address(msg.sender)]
    require claimed[address(msg.sender)] <= 0
    claimed[address(msg.sender)] = balances[address(msg.sender)]
    totalClaimed += balances[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, balances[address(msg.sender)]
    require ext_call.success
    emit Distributed(msg.sender, balances[address(msg.sender)]);
}



}
