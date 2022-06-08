contract main {




// =====================  Runtime code  =====================


#
#  - setCaps(address[] arg1, uint256[] arg2)
#  - deliverBonusTokens(address[] arg1)
#
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
mapping of uint8 stor7;
mapping of uint256 contribution;
mapping of uint256 cap;
mapping of uint256 lockedTokens;
uint256 stor11;

function getContribution(address arg1) {
    return contribution[address(arg1)]
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function isCapper(address arg1) {
    require arg1
    return bool(stor7[address(arg1)])
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

function getLockedTokens(address arg1) {
    return lockedTokens[address(arg1)]
}

function getCap(address arg1) {
    return cap[address(arg1)]
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

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceCapper() {
    require msg.sender
    stor7[address(msg.sender)] = 0
}

function setCap(address arg1, uint256 arg2) {
    require msg.sender
    require stor7[address(msg.sender)]
    cap[address(arg1)] = arg2
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function addCapper(address arg1) {
    require msg.sender
    require stor7[address(msg.sender)]
    require arg1
    stor7[address(arg1)] = 1
    emit CapperAdded(arg1);
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require msg.value + contribution[address(arg1)] >= contribution[address(arg1)]
    if msg.value + contribution[address(arg1)] > cap[address(arg1)]:
        revert with 0, 'Contribution cap exceeded.'
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        if block.timestamp <= stor11:
            if block.timestamp > stor11:
                require 0 <= (rate * msg.value / 5) + (rate * msg.value)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                if (rate * msg.value / 5) + (rate * msg.value) > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (rate * msg.value / 5) + (rate * msg.value)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                    require (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(arg1)] >= lockedTokens[address(arg1)]
                    lockedTokens[address(arg1)] = (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(arg1)]
            else:
                if not (rate * msg.value / 5) + (rate * msg.value) / 6:
                    require 0 <= (rate * msg.value / 5) + (rate * msg.value)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if (rate * msg.value / 5) + (rate * msg.value) > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (rate * msg.value / 5) + (rate * msg.value)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(arg1)] >= lockedTokens[address(arg1)]
                        lockedTokens[address(arg1)] = (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(arg1)]
                else:
                    require 5 * (rate * msg.value / 5) + (rate * msg.value) / 6 / (rate * msg.value / 5) + (rate * msg.value) / 6 == 5
                    require 5 * (rate * msg.value / 5) + (rate * msg.value) / 6 <= (rate * msg.value / 5) + (rate * msg.value)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 5 * (rate * msg.value / 5) + (rate * msg.value) / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6) > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6) + lockedTokens[address(arg1)] >= lockedTokens[address(arg1)]
                        lockedTokens[address(arg1)] = (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6) + lockedTokens[address(arg1)]
            emit TokensPurchased(msg.value, (rate * msg.value / 5) + (rate * msg.value), msg.sender, arg1);
        else:
            if block.timestamp > stor11:
                require 0 <= rate * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                if rate * msg.value > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), rate * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                    require (rate * msg.value) + lockedTokens[address(arg1)] >= lockedTokens[address(arg1)]
                    lockedTokens[address(arg1)] += rate * msg.value
            else:
                if not rate * msg.value / 6:
                    require 0 <= rate * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if rate * msg.value > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), rate * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value) + lockedTokens[address(arg1)] >= lockedTokens[address(arg1)]
                        lockedTokens[address(arg1)] += rate * msg.value
                else:
                    require 5 * rate * msg.value / 6 / rate * msg.value / 6 == 5
                    require 5 * rate * msg.value / 6 <= rate * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 5 * rate * msg.value / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if (rate * msg.value) - (5 * rate * msg.value / 6) > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (rate * msg.value) - (5 * rate * msg.value / 6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value) - (5 * rate * msg.value / 6) + lockedTokens[address(arg1)] >= lockedTokens[address(arg1)]
                        lockedTokens[address(arg1)] = (rate * msg.value) - (5 * rate * msg.value / 6) + lockedTokens[address(arg1)]
            emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    require msg.value + contribution[address(arg1)] >= contribution[address(arg1)]
    contribution[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
    if msg.value + contribution[address(msg.sender)] > cap[address(msg.sender)]:
        revert with 0, 'Contribution cap exceeded.'
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        if block.timestamp <= stor11:
            if block.timestamp > stor11:
                require 0 <= (rate * msg.value / 5) + (rate * msg.value)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                if (rate * msg.value / 5) + (rate * msg.value) > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (rate * msg.value / 5) + (rate * msg.value)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                    require (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(msg.sender)] >= lockedTokens[address(msg.sender)]
                    lockedTokens[address(msg.sender)] = (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(msg.sender)]
            else:
                if not (rate * msg.value / 5) + (rate * msg.value) / 6:
                    require 0 <= (rate * msg.value / 5) + (rate * msg.value)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if (rate * msg.value / 5) + (rate * msg.value) > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (rate * msg.value / 5) + (rate * msg.value)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(msg.sender)] >= lockedTokens[address(msg.sender)]
                        lockedTokens[address(msg.sender)] = (rate * msg.value / 5) + (rate * msg.value) + lockedTokens[address(msg.sender)]
                else:
                    require 5 * (rate * msg.value / 5) + (rate * msg.value) / 6 / (rate * msg.value / 5) + (rate * msg.value) / 6 == 5
                    require 5 * (rate * msg.value / 5) + (rate * msg.value) / 6 <= (rate * msg.value / 5) + (rate * msg.value)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 5 * (rate * msg.value / 5) + (rate * msg.value) / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6) > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6) + lockedTokens[address(msg.sender)] >= lockedTokens[address(msg.sender)]
                        lockedTokens[address(msg.sender)] = (rate * msg.value / 5) + (rate * msg.value) - (5 * (rate * msg.value / 5) + (rate * msg.value) / 6) + lockedTokens[address(msg.sender)]
            emit TokensPurchased(msg.value, (rate * msg.value / 5) + (rate * msg.value), msg.sender, msg.sender);
        else:
            if block.timestamp > stor11:
                require 0 <= rate * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                if rate * msg.value > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), rate * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                    require (rate * msg.value) + lockedTokens[address(msg.sender)] >= lockedTokens[address(msg.sender)]
                    lockedTokens[address(msg.sender)] += rate * msg.value
            else:
                if not rate * msg.value / 6:
                    require 0 <= rate * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if rate * msg.value > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), rate * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value) + lockedTokens[address(msg.sender)] >= lockedTokens[address(msg.sender)]
                        lockedTokens[address(msg.sender)] += rate * msg.value
                else:
                    require 5 * rate * msg.value / 6 / rate * msg.value / 6 == 5
                    require 5 * rate * msg.value / 6 <= rate * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 5 * rate * msg.value / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to beneficiary.'
                    if (rate * msg.value) - (5 * rate * msg.value / 6) > 0:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (rate * msg.value) - (5 * rate * msg.value / 6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Could not mint tokens to self for lockup.'
                        require (rate * msg.value) - (5 * rate * msg.value / 6) + lockedTokens[address(msg.sender)] >= lockedTokens[address(msg.sender)]
                        lockedTokens[address(msg.sender)] = (rate * msg.value) - (5 * rate * msg.value / 6) + lockedTokens[address(msg.sender)]
            emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
    contribution[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
