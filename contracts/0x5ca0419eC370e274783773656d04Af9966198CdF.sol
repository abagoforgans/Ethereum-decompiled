contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    require code.data[3493 len 32] >= block.timestamp
    require code.data[3525 len 32] >= code.data[3493 len 32]
    require code.data[3569 len 20]
    stor1 = code.data[3601 len 20]
    stor2 = code.data[3493 len 32]
    stor3 = code.data[3525 len 32]
    stor5 = 14000
    stor6 = 210000000 * 10^18
    stor4 = code.data[3569 len 20]
    return code.data[414 len 3079]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 cap;
uint256 weiRaised;
uint256 tokensSold;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return tokensSold >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawAll(address arg1) {
    require msg.sender == owner
    require arg1
    if block.timestamp <= endTime:
        require tokensSold >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if block.timestamp < startTime:
        require block.timestamp >= startTime
        if not msg.value:
            require msg.value
            require msg.value
            require msg.value * rate / msg.value == rate
        else:
            require msg.value >= 10^18
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
    else:
        require block.timestamp <= endTime
        if not msg.value:
            require msg.value
            require msg.value
            require msg.value * rate / msg.value == rate
        else:
            require msg.value >= 10^18
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
    require tokensSold + (msg.value * rate) >= tokensSold
    require tokensSold + (msg.value * rate) <= cap
    require tokensSold + (msg.value * rate) >= tokensSold
    tokensSold += msg.value * rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp < startTime:
        require block.timestamp >= startTime
        if not msg.value:
            require msg.value
            require msg.value
            require msg.value * rate / msg.value == rate
        else:
            require msg.value >= 10^18
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
    else:
        require block.timestamp <= endTime
        if not msg.value:
            require msg.value
            require msg.value
            require msg.value * rate / msg.value == rate
        else:
            require msg.value >= 10^18
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
    require tokensSold + (msg.value * rate) >= tokensSold
    require tokensSold + (msg.value * rate) <= cap
    require tokensSold + (msg.value * rate) >= tokensSold
    tokensSold += msg.value * rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
