contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
address stor7;
uint256 stor8;

function _fallback() {
    require code.data[1655 len 32] >= block.timestamp
    require code.data[1687 len 32] >= code.data[1655 len 32]
    require code.data[1719 len 32] > 0
    require code.data[1763 len 20]
    stor0 = 0x9b3e946e1a8ea0112b147af4e6e020752f2446bc
    stor1 = code.data[1655 len 32]
    stor2 = code.data[1687 len 32]
    stor4 = code.data[1719 len 32]
    stor3 = code.data[1763 len 20]
    require code.data[1783 len 32] > 0
    stor6 = code.data[1783 len 32]
    stor7 = msg.sender
    stor8 = code.data[1815 len 32]
    return code.data[314 len 1341]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
address owner;
uint256 minimum;

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

function wallet() {
    return walletAddress
}

function minimum() {
    return minimum
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

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferTokenOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    require msg.value >= minimum
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
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

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    require msg.value >= minimum
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
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



}
