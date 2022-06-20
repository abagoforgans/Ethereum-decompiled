contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint256 cap;
address owner;
address contributionsAddress;
uint256 minimumContribution;
uint256 rate;
uint256 soldTokens;

function contributions() {
    return contributionsAddress
}

function rate() {
    return rate
}

function cap() {
    return cap
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

function soldTokens() {
    return soldTokens
}

function owner() {
    return owner
}

function minimumContribution() {
    return minimumContribution
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function isOwner() {
    return (msg.sender == owner)
}

function started() {
    return block.timestamp >= openingTime
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function ended() {
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    return weiRaised >= cap
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverERC20(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    stor0++
    require msg.value >= minimumContribution
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, rate * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
    if not msg.value:
        require soldTokens >= soldTokens
    else:
        require rate * msg.value / msg.value == rate
        require (rate * msg.value) + soldTokens >= soldTokens
        soldTokens += rate * msg.value
    if not msg.value:
        require ext_code.size(contributionsAddress)
        call contributionsAddress.addBalance(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, msg.value, 0
    else:
        require rate * msg.value / msg.value == rate
        require ext_code.size(contributionsAddress)
        call contributionsAddress.addBalance(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, msg.value, rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require stor0 + 1 == stor0
}

function buyTokens(address arg1) payable {
    stor0++
    require msg.value >= minimumContribution
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), rate * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    if not msg.value:
        require soldTokens >= soldTokens
    else:
        require rate * msg.value / msg.value == rate
        require (rate * msg.value) + soldTokens >= soldTokens
        soldTokens += rate * msg.value
    if not msg.value:
        require ext_code.size(contributionsAddress)
        call contributionsAddress.addBalance(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), msg.value, 0
    else:
        require rate * msg.value / msg.value == rate
        require ext_code.size(contributionsAddress)
        call contributionsAddress.addBalance(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), msg.value, rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require stor0 + 1 == stor0
}



}
