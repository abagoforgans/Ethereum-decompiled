contract main {




// =====================  Runtime code  =====================


const ONE_HUNDRED_PERCENT = 100


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
mapping of uint8 stor7;
uint8 paused;
uint256 cap;
uint256 bonusMultiplier;
address sub_d196d3a1Address;

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor7[address(arg1)])
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(paused)
}

function bonusMultiplier() {
    return bonusMultiplier
}

function openingTime() {
    return openingTime
}

function sub_d196d3a1(?) {
    return sub_d196d3a1Address
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

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function unpause() {
    require msg.sender
    require stor7[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor7[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor7[address(msg.sender)]
    require arg1
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function _fallback() payable {
    stor0++
    require not paused
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require ext_code.size(sub_d196d3a1Address)
    staticcall sub_d196d3a1Address.0xeb91d37e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require rate > 0
        require rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0 / rate, msg.sender, msg.sender);
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * msg.value / ext_call.return_data[0] == msg.value
        if not ext_call.return_data[0] * msg.value:
            require rate > 0
            require rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0 / rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, 0 / rate, msg.sender, msg.sender);
        else:
            require ext_call.return_data[0] * msg.value
            require ext_call.return_data[0] * msg.value * bonusMultiplier / ext_call.return_data[0] * msg.value == bonusMultiplier
            require rate > 0
            require rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] * msg.value * bonusMultiplier / 100 / rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, ext_call.return_data[0] * msg.value * bonusMultiplier / 100 / rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require not paused
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require ext_code.size(sub_d196d3a1Address)
    staticcall sub_d196d3a1Address.0xeb91d37e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require rate > 0
        require rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0 / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0 / rate, msg.sender, arg1);
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * msg.value / ext_call.return_data[0] == msg.value
        if not ext_call.return_data[0] * msg.value:
            require rate > 0
            require rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 0 / rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, 0 / rate, msg.sender, arg1);
        else:
            require ext_call.return_data[0] * msg.value
            require ext_call.return_data[0] * msg.value * bonusMultiplier / ext_call.return_data[0] * msg.value == bonusMultiplier
            require rate > 0
            require rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] * msg.value * bonusMultiplier / 100 / rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, ext_call.return_data[0] * msg.value * bonusMultiplier / 100 / rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}



}
