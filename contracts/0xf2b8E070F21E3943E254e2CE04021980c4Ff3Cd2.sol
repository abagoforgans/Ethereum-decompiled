contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint256 initialRate;
uint256 finalRate;
uint8 finalized;
uint256 goal;
address stor12;
mapping of uint256 balanceOf;
address owner;
uint256 minimumInvestmentWei;

function finalRate() {
    return finalRate
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

function initialRate() {
    return initialRate
}

function finalized() {
    return bool(finalized)
}

function openingTime() {
    return openingTime
}

function minimumInvestmentWei() {
    return minimumInvestmentWei
}

function token() {
    return tokenAddress
}

function rate() {
    revert
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
    require finalized
    require weiRaised < goal
    require ext_code.size(stor12)
    call stor12.withdraw(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require finalized
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
    require not finalized
    require block.timestamp > closingTime
    finalized = 1
    require ext_code.size(stor12)
    if weiRaised < goal:
        call stor12.enableRefunds() with:
             gas gas_remaining wei
    else:
        call stor12.close() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        call stor12.beneficiaryWithdraw() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CrowdsaleFinalized()
}

function getCurrentRate() {
    if block.timestamp < openingTime:
        return 0
    if block.timestamp > closingTime:
        return 0
    require openingTime <= block.timestamp
    require openingTime <= closingTime
    require finalRate <= initialRate
    if not block.timestamp - openingTime:
        require closingTime - openingTime > 0
        require closingTime - openingTime
        require 0 / closingTime - openingTime <= initialRate
        return (initialRate - (0 / closingTime - openingTime))
    require block.timestamp - openingTime
    require (initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / block.timestamp - openingTime == initialRate - finalRate
    require closingTime - openingTime > 0
    require closingTime - openingTime
    require (initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime <= initialRate
    return (initialRate - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime))
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
    require msg.value >= minimumInvestmentWei
    if block.timestamp < openingTime:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        if block.timestamp > closingTime:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
        else:
            require openingTime <= block.timestamp
            require openingTime <= closingTime
            require finalRate <= initialRate
            if not block.timestamp - openingTime:
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require 0 / closingTime - openingTime <= initialRate
                if not initialRate - (0 / closingTime - openingTime):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                else:
                    require initialRate - (0 / closingTime - openingTime)
                    require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(arg1)] + (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value)
                    emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value), msg.sender, arg1);
            else:
                require block.timestamp - openingTime
                require (initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / block.timestamp - openingTime == initialRate - finalRate
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require (initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime <= initialRate
                if not initialRate - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                else:
                    require initialRate - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime)
                    require (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value) / initialRate - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime) == msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(arg1)] + (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value)
                    emit TokensPurchased(msg.value, (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value), msg.sender, arg1);
    require ext_code.size(stor12)
    call stor12.deposit(address arg1) with:
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
    require msg.value >= minimumInvestmentWei
    if block.timestamp < openingTime:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        if block.timestamp > closingTime:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
        else:
            require openingTime <= block.timestamp
            require openingTime <= closingTime
            require finalRate <= initialRate
            if not block.timestamp - openingTime:
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require 0 / closingTime - openingTime <= initialRate
                if not initialRate - (0 / closingTime - openingTime):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                else:
                    require initialRate - (0 / closingTime - openingTime)
                    require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(msg.sender)] + (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value)
                    emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value), msg.sender, msg.sender);
            else:
                require block.timestamp - openingTime
                require (initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / block.timestamp - openingTime == initialRate - finalRate
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require (initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime <= initialRate
                if not initialRate - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                else:
                    require initialRate - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime)
                    require (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value) / initialRate - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime) == msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require balanceOf[address(msg.sender)] + (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value)
                    emit TokensPurchased(msg.value, (initialRate * msg.value) - ((initialRate * block.timestamp) - (finalRate * block.timestamp) - (initialRate * openingTime) + (finalRate * openingTime) / closingTime - openingTime * msg.value), msg.sender, msg.sender);
    require ext_code.size(stor12)
    call stor12.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}



}
