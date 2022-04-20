contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
uint8 stor5;

function _fallback() payable {
    stor2 = 40
    stor5 = 0
    require not msg.value
    stor0 = 0xdfd46b7e8af013250a79c15d433d59cfa8829b42
    stor1 = 0x1a7b00404b755ff80126f1d66a90f5aedded25da
    stor3 = stor1
    return code.data[330 len 2301]
}



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

function withdrawTokens(uint256 arg1) {
    require msg.sender == walletAddress
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require stor5
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * price
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require stor5
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * price
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
