contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address adminAddress;
address thisContractAddress;
address tokenContractAddress;
address tokenBurnAddress;
address ethRaisedAddress;
uint256 preIcoPhaseCountdown;
uint256 icoPhaseCountdown;
uint256 postIcoPhaseCountdown;
uint8 stor9;
uint256 tokenSalePausedTime;
uint256 tokenSaleResumedTime;
uint256 tokenSalePausedDuration;
uint256 amountRaised;
uint256 maxEthRaised;
uint256 maximumRaised;
uint256 openingTime;
uint256 closingTime;
uint256 rate;
uint256 minSpend;
uint256 maxSpend;

function timeComplete() {
    return closingTime
}

function tokenSaleIsPaused() {
    return bool(stor9)
}

function thisContractAddress() {
    return thisContractAddress
}

function ethRaisedAddress() {
    return ethRaisedAddress
}

function rate() {
    return rate
}

function tokenBurnAddress() {
    return tokenBurnAddress
}

function maxWeiRaised() {
    return maximumRaised
}

function maxSpend() {
    return maxSpend
}

function weiRaised() {
    return amountRaised
}

function icoPhaseCountdown() {
    return icoPhaseCountdown
}

function minSpend() {
    return minSpend
}

function tokenSalePausedDuration() {
    return tokenSalePausedDuration
}

function closingTime() {
    return closingTime
}

function amountRaised() {
    return amountRaised
}

function tokenContractAddress() {
    return tokenContractAddress
}

function tokenSalePausedTime() {
    return tokenSalePausedTime
}

function tokenSaleResumedTime() {
    return tokenSaleResumedTime
}

function preIcoPhaseCountdown() {
    return preIcoPhaseCountdown
}

function openingTime() {
    return openingTime
}

function postIcoPhaseCountdown() {
    return postIcoPhaseCountdown
}

function maxEthRaised() {
    return maxEthRaised
}

function maximumRaised() {
    return maximumRaised
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function tokenSaleHasFinished() {
    return (block.timestamp > closingTime)
}

function pauseTokenSale() {
    require msg.sender == adminAddress
    require block.timestamp <= closingTime
    require not stor9
    stor9 = 1
    tokenSalePausedTime = block.timestamp
    emit SalePaused(Array(len=26, data='token sale has been paused'), block.timestamp);
}

function delayOpeningTime(uint256 arg1) {
    require msg.sender == adminAddress
    openingTime = arg1
    require arg1 + (168 * 24 * 3600) >= arg1
    closingTime = arg1 + (168 * 24 * 3600)
    preIcoPhaseCountdown = openingTime
    icoPhaseCountdown = arg1 + (168 * 24 * 3600)
    postIcoPhaseCountdown = arg1 + (504 * 24 * 3600)
}

function tokenSaleTokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args thisContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAnyAddressTokenBalance(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function resumeTokenSale() {
    require msg.sender == adminAddress
    require 1 == bool(stor9)
    tokenSaleResumedTime = block.timestamp
    require tokenSalePausedTime <= block.timestamp
    tokenSalePausedDuration = block.timestamp - tokenSalePausedTime
    require block.timestamp - tokenSalePausedTime + closingTime >= closingTime
    closingTime = block.timestamp - tokenSalePausedTime + closingTime
    postIcoPhaseCountdown = block.timestamp + -tokenSalePausedTime + closingTime + (336 * 24 * 3600)
    stor9 = 0
    emit SaleResumed(Array(len=26, data='token sale has now resumed'), block.timestamp);
}

function burnUnsoldTokens() {
    require not stor9
    require 1 == block.timestamp > closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args thisContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args tokenBurnAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensBurned(string arg1, uint256 arg2):
                      0xa9059cbb00000000000000000000000000000000000000000000000000000000,
                      block.timestamp,
                      33,
                      'tokens sent to TokenBurn contrac',
                      't',
}

function _fallback() payable {
    require openingTime <= block.timestamp
    require block.timestamp < closingTime
    require msg.value >= minSpend
    require msg.value <= maxSpend
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args thisContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require not stor9
    require msg.sender
    require msg.value
    require rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args thisContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value / rate <= ext_call.return_data[0]
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value / rate, msg.sender, msg.sender);
    call ethRaisedAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require openingTime <= block.timestamp
    require block.timestamp < closingTime
    require msg.value >= minSpend
    require msg.value <= maxSpend
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args thisContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require not stor9
    require arg1
    require msg.value
    require rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args thisContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value / rate <= ext_call.return_data[0]
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value / rate, msg.sender, arg1);
    call ethRaisedAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
