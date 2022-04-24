contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor1 = 420108 * 3600
    stor2 = 420756 * 3600
    stor3 = 0x56e4e5d451df045827e214fe10bbf99d730d9683
    stor4 = 0x8c0988711e60cff153359ab6cfc8d45565c6ce79
    stor5 = 0xedf5c34dde2573f162ccfeede99eec6acf1c2cb
    stor6 = 0xcbdc5ee000f77f3bcc0efef0dc47d38911cbd45b
    stor7 = 800
    stor8 = 2 * 10^18 * 3600
    require not msg.value
    stor0 = 0xd6682db9106e0cfb530b697ca0ecdc8f5597cd15
    return code.data[490 len 2509]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address wallet1Address;
address wallet2Address;
address wallet3Address;
address wallet4Address;
uint256 rate;
uint256 cap;
uint256 weiRaised;

function wallet2() {
    return wallet2Address
}

function wallet1() {
    return wallet1Address
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function wallet3() {
    return wallet3Address
}

function weiRaised() {
    return weiRaised
}

function wallet4() {
    return wallet4Address
}

function startTime() {
    return startTime
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised < cap
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value <= cap:
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x4d6804c2 with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
        call wallet1Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call wallet2Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet3Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet4Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
    else:
        require cap <= weiRaised + msg.value
        require weiRaised + msg.value - cap <= msg.value
        call arg1 with:
           value weiRaised + msg.value - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if -weiRaised + cap:
            require -weiRaised + cap
            require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
        require cap >= weiRaised
        weiRaised = cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x4d6804c2 with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), (-1 * weiRaised * rate) + (cap * rate)
        require ext_call.success
        emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, arg1);
        call wallet1Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call wallet2Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet3Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet4Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised < cap
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value <= cap:
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x4d6804c2 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.sender, msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        call wallet1Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call wallet2Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet3Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet4Address with:
           value msg.value / 4 wei
             gas 2300 * is_zero(value) wei
    else:
        require cap <= weiRaised + msg.value
        require weiRaised + msg.value - cap <= msg.value
        call msg.sender with:
           value weiRaised + msg.value - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if -weiRaised + cap:
            require -weiRaised + cap
            require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
        require cap >= weiRaised
        weiRaised = cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x4d6804c2 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.sender, (-1 * weiRaised * rate) + (cap * rate)
        require ext_call.success
        emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, msg.sender);
        call wallet1Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call wallet2Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet3Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
        call wallet4Address with:
           value -weiRaised + cap / 4 wei
             gas 2300 * is_zero(value) wei
}



}
