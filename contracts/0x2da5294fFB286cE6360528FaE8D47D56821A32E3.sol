contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 stor7;
mapping of uint8 stor8;
uint256 stor9;
mapping of uint256 contribution;
mapping of uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

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
    return bool(stor8[address(arg1)])
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

function finalized() {
    return bool(stor7)
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

function isWhitelisted(address arg1) {
    return not not stor11[address(arg1)]
}

function renounceCapper() {
    require msg.sender
    stor8[address(msg.sender)] = 0
}

function finalize() {
    require not stor7
    require block.timestamp > closingTime
    emit CrowdsaleFinalized()
    stor7 = 1
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function addCapper(address arg1) {
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    stor8[address(arg1)] = 1
    emit CapperAdded(arg1);
}

function tierStartTime(uint256 arg1) {
    if arg1 == 2:
        return stor13
    if arg1 == 3:
        return stor14
    if arg1 != 4:
        return 0
    return stor15
}

function bonusRate() {
    if stor13 > block.timestamp:
        return (6 * stor12 / 5)
    if stor14 > block.timestamp:
        return (11 * stor12 / 10)
    if stor15 <= block.timestamp:
        return stor12
    return (21 * stor12 / 20)
}

function updateWhitelist(address arg1, uint8 arg2) {
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    if arg2 != 1:
        stor11[address(arg1)] = 0
    else:
        stor11[address(arg1)] = stor9
    emit WhitelistUpdated(arg2, arg1);
    return 1
}

function updateWhitelistAddresses(address[] arg1, uint8 arg2) {
    require msg.sender
    require stor8[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 11
        if arg2 != 1:
            stor11[address(cd[((32 * idx) + arg1 + 36)])] = 0
        else:
            stor11[address(cd[((32 * idx) + arg1 + 36)])] = stor9
        mem[96] = arg2
        emit WhitelistUpdated(arg2, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require contribution[address(arg1)] + msg.value >= contribution[address(arg1)]
    require contribution[address(arg1)] + msg.value <= stor11[address(arg1)]
    if stor13 > block.timestamp:
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
        else:
            require msg.value
            require msg.value * 6 * stor12 / 5 / msg.value == 6 * stor12 / 5
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), msg.value * 6 * stor12 / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, msg.value * 6 * stor12 / 5, msg.sender, arg1);
    else:
        if stor14 > block.timestamp:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
            else:
                require msg.value
                require msg.value * 11 * stor12 / 10 / msg.value == 11 * stor12 / 10
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * 11 * stor12 / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, msg.value * 11 * stor12 / 10, msg.sender, arg1);
        else:
            if stor15 <= block.timestamp:
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                else:
                    require msg.value
                    require msg.value * stor12 / msg.value == stor12
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), msg.value * stor12
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, msg.value * stor12, msg.sender, arg1);
            else:
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                else:
                    require msg.value
                    require msg.value * 21 * stor12 / 20 / msg.value == 21 * stor12 / 20
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), msg.value * 21 * stor12 / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, msg.value * 21 * stor12 / 20, msg.sender, arg1);
    require contribution[address(arg1)] + msg.value >= contribution[address(arg1)]
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
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require contribution[address(msg.sender)] + msg.value >= contribution[address(msg.sender)]
    require contribution[address(msg.sender)] + msg.value <= stor11[address(msg.sender)]
    if stor13 > block.timestamp:
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
        else:
            require msg.value
            require msg.value * 6 * stor12 / 5 / msg.value == 6 * stor12 / 5
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, msg.value * 6 * stor12 / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, msg.value * 6 * stor12 / 5, msg.sender, msg.sender);
    else:
        if stor14 > block.timestamp:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value * 11 * stor12 / 10 / msg.value == 11 * stor12 / 10
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * 11 * stor12 / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, msg.value * 11 * stor12 / 10, msg.sender, msg.sender);
        else:
            if stor15 <= block.timestamp:
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * stor12 / msg.value == stor12
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, msg.value * stor12
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, msg.value * stor12, msg.sender, msg.sender);
            else:
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * 21 * stor12 / 20 / msg.value == 21 * stor12 / 20
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, msg.value * 21 * stor12 / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, msg.value * 21 * stor12 / 20, msg.sender, msg.sender);
    require contribution[address(msg.sender)] + msg.value >= contribution[address(msg.sender)]
    contribution[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
