contract main {




// =====================  Runtime code  =====================


address walletAddress;
address addressOfTokenUsedAsReward;
uint256 price;
address stor3;
uint256 weiRaised;
uint8 stor5;

function started() {
    return bool(stor5)
}

function weiRaised() {
    return weiRaised
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

function stopSale() {
    require msg.sender == walletAddress
    stor5 = 0
}

function startSale() {
    require msg.sender == walletAddress
    stor5 = 1
}

function setPrice(uint256 arg1) {
    require msg.sender == walletAddress
    price = arg1
}

function changeWallet(address arg1) {
    require msg.sender == walletAddress
    walletAddress = arg1
}

function changeTokenReward(address arg1) {
    require msg.sender == walletAddress
    stor3 = arg1
    addressOfTokenUsedAsReward = arg1
}

function withdrawTokens(uint256 arg1) {
    require msg.sender == walletAddress
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args walletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require stor5
    require msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * price / 10^14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value * price / 10^14, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require stor5
    require msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * price / 10^14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value * price / 10^14, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
