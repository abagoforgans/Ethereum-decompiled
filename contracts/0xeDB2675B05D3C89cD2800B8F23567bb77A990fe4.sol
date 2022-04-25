contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor5;
uint8 stor8;

function _fallback() payable {
    stor2 = 300
    stor8 = 0
    require not msg.value
    stor0 = 0xc076b054ef62acce747175f698fc3dbec9b7a36f
    stor1 = 0xd62e9252f1615f5c1133f060cf091acb4b0faa2b
    stor5 = stor1
    return code.data[331 len 3113]
}



// =====================  Runtime code  =====================


address walletAddress;
address addressOfTokenUsedAsReward;
uint256 price;
uint256 minBuy;
uint256 maxBuy;
address stor5;
uint256 startTime;
uint256 weiRaised;
uint8 stor8;

function started() {
    return bool(stor8)
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function maxBuy() {
    return maxBuy
}

function minBuy() {
    return minBuy
}

function startTime() {
    return startTime
}

function addressOfTokenUsedAsReward() {
    return addressOfTokenUsedAsReward
}

function price() {
    return price
}

function stopSale() {
    require msg.sender == walletAddress
    stor8 = 0
}

function setPrice(uint256 arg1) {
    require msg.sender == walletAddress
    price = arg1
}

function setMinBuy(uint256 arg1) {
    require msg.sender == walletAddress
    minBuy = arg1
}

function setMaxBuy(uint256 arg1) {
    require msg.sender == walletAddress
    maxBuy = arg1
}

function changeTokenReward(address arg1) {
    require msg.sender == walletAddress
    stor5 = arg1
}

function changeWallet(address arg1) {
    require msg.sender == walletAddress
    walletAddress = arg1
}

function startSale(uint256 arg1) {
    require msg.sender == walletAddress
    startTime = block.timestamp + (60 * arg1)
    stor8 = 1
}

function withdrawTokens(uint256 arg1) {
    require msg.sender == walletAddress
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require stor8
    require block.timestamp >= startTime
    require msg.value
    if minBuy:
        require msg.value * price >= 10^18 * minBuy
    if maxBuy:
        require msg.value * price <= 10^18 * maxBuy
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
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
    require stor8
    require block.timestamp >= startTime
    require msg.value
    if minBuy:
        require msg.value * price >= 10^18 * minBuy
    if maxBuy:
        require msg.value * price <= 10^18 * maxBuy
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * price
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
