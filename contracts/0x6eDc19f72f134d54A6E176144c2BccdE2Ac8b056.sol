contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;

function rate() {
    return rate
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

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sendTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenSending(arg2, arg1);
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require block.timestamp > closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
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

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
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



}
