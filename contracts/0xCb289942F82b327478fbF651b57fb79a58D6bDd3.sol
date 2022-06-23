contract main {




// =====================  Runtime code  =====================


address owner;
address managerAddress;
address tokenAddress;
address walletAddress;
uint256 price;
uint256 weiRaised;
uint256 tokenSold;
uint256 sub_a4351862;
uint256 sub_65462bec;
uint256 openingTime;
uint256 closingTime;
uint8 sub_b236da8a;

function weiRaised() {
    return weiRaised
}

function manager() {
    return managerAddress
}

function closingTime() {
    return closingTime
}

function tokenSold() {
    return tokenSold
}

function wallet() {
    return walletAddress
}

function sub_65462bec(?) {
    return sub_65462bec
}

function owner() {
    return owner
}

function price() {
    return price
}

function sub_a4351862(?) {
    return sub_a4351862
}

function sub_b236da8a(?) {
    return sub_b236da8a
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function sub_d111a402(?) {
    return (tokenSold - sub_65462bec)
}

function sub_ddd442ed(?) {
    return (weiRaised - sub_a4351862)
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    price = arg1
}

function setManager(address arg1) {
    require msg.sender == owner
    require arg1
    managerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateTime(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > block.timestamp
    openingTime = arg1
    closingTime = arg2
}

function sub_cc1cee8f(?) {
    require msg.sender == owner
    require arg3 > 0
    require arg2 > block.timestamp
    openingTime = arg1
    closingTime = arg2
    price = arg3
    sub_b236da8a = uint8(sub_b236da8a + 1)
    sub_a4351862 = weiRaised
    sub_65462bec = tokenSold
    return uint8(sub_b236da8a + 1)
}

function allocate(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tokenSold += arg2
    emit TokenAllocate(arg2, arg1);
}

function _fallback() payable {
    require ext_code.size(managerAddress)
    call managerAddress.isWhitelisted(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.value
    require block.timestamp >= openingTime
    require block.timestamp < closingTime
    require ext_code.size(managerAddress)
    call managerAddress.ethusd() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * ext_call.return_data[0] / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tokenSold += msg.value * ext_call.return_data[0] / price
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / price, msg.sender, msg.sender);
}

function buyTokens(address arg1) payable {
    require ext_code.size(managerAddress)
    call managerAddress.isWhitelisted(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.value
    require block.timestamp >= openingTime
    require block.timestamp < closingTime
    require ext_code.size(managerAddress)
    call managerAddress.ethusd() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * ext_call.return_data[0] / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tokenSold += msg.value * ext_call.return_data[0] / price
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / price, msg.sender, arg1);
}



}
