contract main {




// =====================  Runtime code  =====================


address walletAddress;
address addressOfTokenUsedAsReward;
uint256 price;
uint256 bonusPercent;
uint256 referralBonusPercent;
address stor5;
mapping of uint256 bonuses;
mapping of uint256 bonusUnlockTime;
uint256 weiRaised;
uint256 tokensSold;
uint8 stor10;

function bonuses(address arg1) {
    return bonuses[arg1]
}

function started() {
    return bool(stor10)
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

function addressOfTokenUsedAsReward() {
    return addressOfTokenUsedAsReward
}

function price() {
    return price
}

function bonusUnlockTime(address arg1) {
    return bonusUnlockTime[arg1]
}

function bonusPercent() {
    return bonusPercent
}

function referralBonusPercent() {
    return referralBonusPercent
}

function stopSale() {
    require msg.sender == walletAddress
    stor10 = 0
}

function startSale() {
    require msg.sender == walletAddress
    stor10 = 1
}

function setPrice(uint256 arg1) {
    require msg.sender == walletAddress
    price = arg1
}

function changeWallet(address arg1) {
    require msg.sender == walletAddress
    walletAddress = arg1
}

function setBonusPercent(uint256 arg1) {
    require msg.sender == walletAddress
    bonusPercent = arg1
}

function setReferralBonusPercent(uint256 arg1) {
    require msg.sender == walletAddress
    referralBonusPercent = arg1
}

function changeTokenReward(address arg1) {
    require msg.sender == walletAddress
    stor5 = arg1
    addressOfTokenUsedAsReward = arg1
}

function withdrawTokens(uint256 arg1) {
    require msg.sender == walletAddress
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args walletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBonus() {
    require bonuses[address(msg.sender)] > 0
    require bonusUnlockTime[address(msg.sender)]
    require block.timestamp > bonusUnlockTime[address(msg.sender)]
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, bonuses[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bonuses[address(msg.sender)] = 0
}

function _fallback() payable {
    require msg.sender
    require stor10
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    if msg.value * price:
        require msg.value * price
        require msg.value * price * bonusPercent / msg.value * price == bonusPercent
    if msg.value * price:
        require msg.value * price
        require msg.value * price * referralBonusPercent / msg.value * price == referralBonusPercent
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require tokensSold + (msg.value * price) >= tokensSold
    tokensSold += msg.value * price
    require bonuses[address(msg.sender)] + (msg.value * price * bonusPercent / 100) >= bonuses[address(msg.sender)]
    bonuses[address(msg.sender)] += msg.value * price * bonusPercent / 100
    require block.timestamp + (4320 * 24 * 3600) >= block.timestamp
    bonusUnlockTime[address(msg.sender)] = block.timestamp + (4320 * 24 * 3600)
    require tokensSold + (msg.value * price * bonusPercent / 100) >= tokensSold
    tokensSold += msg.value * price * bonusPercent / 100
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1, address arg2) payable {
    require arg1
    require stor10
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    if msg.value * price:
        require msg.value * price
        require msg.value * price * bonusPercent / msg.value * price == bonusPercent
    if msg.value * price:
        require msg.value * price
        require msg.value * price * referralBonusPercent / msg.value * price == referralBonusPercent
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require tokensSold + (msg.value * price) >= tokensSold
    tokensSold += msg.value * price
    require bonuses[address(arg1)] + (msg.value * price * bonusPercent / 100) >= bonuses[address(arg1)]
    bonuses[address(arg1)] += msg.value * price * bonusPercent / 100
    require block.timestamp + (4320 * 24 * 3600) >= block.timestamp
    bonusUnlockTime[address(arg1)] = block.timestamp + (4320 * 24 * 3600)
    require tokensSold + (msg.value * price * bonusPercent / 100) >= tokensSold
    tokensSold += msg.value * price * bonusPercent / 100
    if arg2:
        require bonuses[address(arg2)] + (msg.value * price * referralBonusPercent / 100) >= bonuses[address(arg2)]
        bonuses[address(arg2)] += msg.value * price * referralBonusPercent / 100
        require block.timestamp + (4320 * 24 * 3600) >= block.timestamp
        bonusUnlockTime[address(arg2)] = block.timestamp + (4320 * 24 * 3600)
        require tokensSold + (msg.value * price * referralBonusPercent / 100) >= tokensSold
        tokensSold += msg.value * price * referralBonusPercent / 100
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
