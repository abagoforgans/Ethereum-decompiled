contract main {




// =====================  Runtime code  =====================


address walletAddress;
address addressOfTokenUsedAsReward;
uint256 price;
uint256 tokensSold;
address stor4;
uint256 weiRaised;
mapping of uint256 balances;
uint8 stor7;

function started() {
    return bool(stor7)
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
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

function myBalance() {
    return balances[address(msg.sender)]
}

function stopSale() {
    require msg.sender == walletAddress
    stor7 = 0
}

function startSale() {
    require msg.sender == walletAddress
    stor7 = 1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == walletAddress
    price = arg1
}

function changeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == walletAddress
    walletAddress = arg1
}

function claimTokens() {
    require not stor7
    require balances[address(msg.sender)] > 0
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balances[address(msg.sender)] = 0
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == walletAddress
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokensSold <= ext_call.return_data[0]
    require ext_call.return_data[0] - tokensSold >= arg1
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args walletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require msg.sender
    require stor7
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokensSold + (msg.value * price) >= tokensSold
    tokensSold += msg.value * price
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokensSold <= ext_call.return_data[0]
    require ext_call.return_data[0] - tokensSold >= msg.value * price
    require balances[address(msg.sender)] + (msg.value * price) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value * price
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require stor7
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokensSold + (msg.value * price) >= tokensSold
    tokensSold += msg.value * price
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokensSold <= ext_call.return_data[0]
    require ext_call.return_data[0] - tokensSold >= msg.value * price
    require balances[address(arg1)] + (msg.value * price) >= balances[address(arg1)]
    balances[address(arg1)] += msg.value * price
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
