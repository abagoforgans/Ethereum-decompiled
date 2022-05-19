contract main {




// =====================  Runtime code  =====================


const maximumPurchase = 10 * 10^18

const minimumPurchase = 10^17


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address necashTokenAddress;
uint256 startTime;
uint256 weiRaised;
uint256 tokensSold;
uint8 stor5;
address walletAddress; offset 8
uint256 maxGasPrice;
uint256 tokenPerEth;
array of uint256 rates;
mapping of uint256 contributors;

function tokenPerEth() {
    return tokenPerEth
}

function contributors(address arg1) {
    return contributors[arg1]
}

function maxGasPrice() {
    return maxGasPrice
}

function weiRaised() {
    return weiRaised
}

function necashToken() {
    return necashTokenAddress
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function finalized() {
    return bool(stor5)
}

function rates(uint256 arg1) {
    require arg1 < 4
    return rates[arg1]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeTokenPrice(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    tokenPerEth = arg1
}

function changeMaxGasprice(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    maxGasPrice = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function endSale() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require not stor5
    stor5 = 1
    emit Finalized(tokensSold, weiRaised);
}

function buyTokens() payable {
    require not uint8(stor0.field_160)
    require block.timestamp >= startTime
    require msg.value >= 10^17
    require msg.value <= 10 * 10^18
    require block.gasprice <= maxGasPrice
    if not msg.value:
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 <= ext_call.return_data[0]
        require contributors[address(msg.sender)] + msg.value >= contributors[address(msg.sender)]
        contributors[address(msg.sender)] += msg.value
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require tokensSold >= tokensSold
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Purchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * tokenPerEth / msg.value == tokenPerEth
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.value * tokenPerEth <= ext_call.return_data[0]
        require contributors[address(msg.sender)] + msg.value >= contributors[address(msg.sender)]
        contributors[address(msg.sender)] += msg.value
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * tokenPerEth
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require tokensSold + (msg.value * tokenPerEth) >= tokensSold
        tokensSold += msg.value * tokenPerEth
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Purchase(msg.value, msg.value * tokenPerEth, msg.sender);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp >= startTime
    require msg.value >= 10^17
    require msg.value <= 10 * 10^18
    require block.gasprice <= maxGasPrice
    if not msg.value:
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 <= ext_call.return_data[0]
        require contributors[address(msg.sender)] + msg.value >= contributors[address(msg.sender)]
        contributors[address(msg.sender)] += msg.value
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require tokensSold >= tokensSold
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Purchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * tokenPerEth / msg.value == tokenPerEth
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.value * tokenPerEth <= ext_call.return_data[0]
        require contributors[address(msg.sender)] + msg.value >= contributors[address(msg.sender)]
        contributors[address(msg.sender)] += msg.value
        require ext_code.size(necashTokenAddress)
        call necashTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * tokenPerEth
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require tokensSold + (msg.value * tokenPerEth) >= tokensSold
        tokensSold += msg.value * tokenPerEth
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Purchase(msg.value, msg.value * tokenPerEth, msg.sender);
}



}
