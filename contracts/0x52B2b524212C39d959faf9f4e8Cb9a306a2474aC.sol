contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 stor8;
uint256 goal;
address stor10;
mapping of uint256 balanceOf;
address owner;

function rate() {
    return rate
}

function cap() {
    return cap
}

function goal() {
    return goal
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function finalized() {
    return bool(stor8)
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

function goalReached() {
    return weiRaised >= goal
}

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund(address arg1) {
    require calldata.size - 4 >= 32
    require stor8
    require weiRaised < goal
    require ext_code.size(stor10)
    call stor10.0x51cff8d9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require stor8
    require weiRaised >= goal
    require block.timestamp > closingTime
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function finalize() {
    require not stor8
    require block.timestamp > closingTime
    stor8 = 1
    require ext_code.size(stor10)
    if weiRaised < goal:
        call stor10.enableRefunds() with:
             gas gas_remaining wei
    else:
        call stor10.close() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor10)
        call stor10.beneficiaryWithdraw() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CrowdsaleFinalized()
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(arg1)] + (msg.value * rate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value * rate
        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
    require ext_code.size(stor10)
    call stor10.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function _fallback() payable {
    stor0++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * rate
        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
    require ext_code.size(stor10)
    call stor10.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}



}
