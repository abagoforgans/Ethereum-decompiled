contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;

function _fallback() payable {
    stor2 = 1250
    require not msg.value
    require code.data[7891 len 20]
    stor3 = 417336 * 24 * 3600
    stor4 = 1506815999
    create contract with 0 wei
                    code: code.data[4671 len 3208]
    require create.new_address
    stor0 = address(create.new_address)
    stor6 = 8000 * 10^18
    stor1 = code.data[7891 len 20]
    return code.data[239 len 4432]
}



// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 weiRaised;
uint256 cap;

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function endTimestamp() {
    return endTimestamp
}

function startTimestamp() {
    return startTimestamp
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTimestamp:
        return (block.timestamp > endTimestamp)
    return weiRaised >= cap
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require msg.value
    require msg.value + weiRaised <= cap
    require msg.value >= 10^15
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require msg.value
    require msg.value + weiRaised <= cap
    require msg.value >= 10^15
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
