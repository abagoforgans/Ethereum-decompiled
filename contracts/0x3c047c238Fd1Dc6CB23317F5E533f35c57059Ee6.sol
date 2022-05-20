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
    require walletAddress == msg.sender
    stor5 = 0
}

function startSale() {
    require walletAddress == msg.sender
    stor5 = 1
}

function setPrice(uint256 arg1) {
    require walletAddress == msg.sender
    price = arg1
}

function changeWallet(address arg1) {
    require walletAddress == msg.sender
    walletAddress = arg1
}

function changeTokenReward(address arg1) {
    require walletAddress == msg.sender
    stor3 = arg1
    addressOfTokenUsedAsReward = arg1
}

function withdrawTokens(uint256 arg1) {
    require walletAddress == msg.sender
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
    if 'ILOVEICOBUFFER' != 0:
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, msg.value * price, msg.sender, msg.sender);
    else:
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 2015 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 2015 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1, bytes32 arg2) payable {
    require arg1
    require stor5
    require msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor3)
    if arg2 != 'ILOVEICOBUFFER':
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), msg.value * price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, msg.value * price, msg.sender, arg1);
    else:
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 2015 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 2015 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
