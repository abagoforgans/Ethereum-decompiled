contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address kycAdminAddress;
uint256 hardCap;
uint256 tokensAllocated;
uint256 openingTime;
uint256 closingTime;
uint256 duration;
mapping of uint8 stor11;
mapping of uint256 balances;

function duration() {
    return duration
}

function balances(address arg1) {
    return balances[arg1]
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function approvals(address arg1) {
    return bool(stor11[arg1])
}

function tokensAllocated() {
    return tokensAllocated
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function kycAdmin() {
    return kycAdminAddress
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function setClosingTime(uint256 arg1) {
    require msg.sender == owner
    closingTime = arg1
}

function setKycAdmin(address arg1) {
    require msg.sender == owner
    kycAdminAddress = arg1
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

function refuseAddress(address arg1) {
    require msg.sender == kycAdminAddress
    stor11[address(arg1)] = 0
    emit KycRefused(0, arg1, kycAdminAddress);
}

function approveAddress(address arg1) {
    require msg.sender == kycAdminAddress
    stor11[address(arg1)] = 1
    emit KycApproved(1, arg1, kycAdminAddress);
}

function startDistribution() {
    require msg.sender == owner
    require not openingTime
    openingTime = block.timestamp
    require openingTime + duration >= openingTime
    closingTime = openingTime + duration
}

function rewardManual(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require arg1
    require tokensAllocated + arg2 >= tokensAllocated
    tokensAllocated += arg2
    require tokensAllocated <= hardCap
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdrawTokens() {
    require block.timestamp > closingTime
    require balances[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args walletAddress, msg.sender, balances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdrawTokensFor(address arg1) {
    require block.timestamp > closingTime
    require balances[address(arg1)] > 0
    balances[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args walletAddress, address(arg1), balances[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function buyTokens() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.value > 0
    require bool(stor11[address(msg.sender)]) == 1
    if not msg.value:
        require tokensAllocated >= tokensAllocated
        require tokensAllocated <= hardCap
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require tokensAllocated + (msg.value * rate) >= tokensAllocated
        tokensAllocated += msg.value * rate
        require tokensAllocated <= hardCap
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balances[address(msg.sender)] + (msg.value * rate) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value * rate
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.value > 0
    require bool(stor11[address(msg.sender)]) == 1
    if not msg.value:
        require tokensAllocated >= tokensAllocated
        require tokensAllocated <= hardCap
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require tokensAllocated + (msg.value * rate) >= tokensAllocated
        tokensAllocated += msg.value * rate
        require tokensAllocated <= hardCap
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balances[address(msg.sender)] + (msg.value * rate) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value * rate
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
