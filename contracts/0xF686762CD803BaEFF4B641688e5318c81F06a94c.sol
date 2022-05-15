contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address owner;
uint256 restrictedPercent;
address restrictedAddress;
uint256 soldTokens;
uint256 hardCap;
uint256 totalTokenSupply;

function totalTokenSupply() {
    return totalTokenSupply
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function restrictedPercent() {
    return restrictedPercent
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor6.field_168))
}

function soldTokens() {
    return soldTokens
}

function restricted() {
    return restrictedAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function setWalletAddress(address arg1) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    walletAddress = arg1
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require arg1 > 0
    rate = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor6.field_168)
    Mask(88, 0, stor6.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor6.field_168)
    Mask(88, 0, stor6.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setHardCap(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require arg1 >= 0
    require arg1 <= totalTokenSupply
    hardCap = arg1
}

function setSalePeriod(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require arg1 > 0
    require arg2 > arg1
    startTime = arg1
    endTime = arg2
}

function addPrecommitment(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require arg2 > 0
    require soldTokens + arg2 >= soldTokens
    require soldTokens + arg2 <= totalTokenSupply
    require soldTokens + arg2 >= soldTokens
    soldTokens += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require block.timestamp > endTime
    require soldTokens <= totalTokenSupply
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), totalTokenSupply - soldTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args restrictedAddress, totalTokenSupply - soldTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor6.field_168)
    require arg1
    require not uint8(stor6.field_160)
    if not msg.value:
        require soldTokens >= soldTokens
        if block.timestamp < startTime:
            require block.timestamp >= startTime
        else:
            require block.timestamp <= endTime
        require msg.value
        require soldTokens <= hardCap
        require soldTokens <= totalTokenSupply
        require soldTokens >= soldTokens
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require soldTokens + (msg.value * rate) >= soldTokens
        if block.timestamp < startTime:
            require block.timestamp >= startTime
        else:
            require block.timestamp <= endTime
        require msg.value
        require soldTokens + (msg.value * rate) <= hardCap
        require soldTokens + (msg.value * rate) <= totalTokenSupply
        require soldTokens + (msg.value * rate) >= soldTokens
        soldTokens += msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not uint8(stor6.field_168)
    require msg.sender
    require not uint8(stor6.field_160)
    if not msg.value:
        require soldTokens >= soldTokens
        if block.timestamp < startTime:
            require block.timestamp >= startTime
        else:
            require block.timestamp <= endTime
        require msg.value
        require soldTokens <= hardCap
        require soldTokens <= totalTokenSupply
        require soldTokens >= soldTokens
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require soldTokens + (msg.value * rate) >= soldTokens
        if block.timestamp < startTime:
            require block.timestamp >= startTime
        else:
            require block.timestamp <= endTime
        require msg.value
        require soldTokens + (msg.value * rate) <= hardCap
        require soldTokens + (msg.value * rate) <= totalTokenSupply
        require soldTokens + (msg.value * rate) >= soldTokens
        soldTokens += msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
