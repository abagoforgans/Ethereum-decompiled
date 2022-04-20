contract main {


// =======================  Init code  ======================


uint256 stor15;

function _fallback() {
    mem[96 len -2769] = code.data[3158 len -2769]
    mem[64] = -2673
    _8 = mem[288]
    mem[-2637] = mem[108 len 20]
    mem[-2573] = mem[160]
    mem[-2541] = mem[192]
    mem[-2509] = mem[224]
    mem[-2477] = mem[287 len 1]
    mem[-2445] = mem[332 len 20]
    mem[-2413] = mem[mem[128] + 96]
    _12 = mem[mem[128] + 96]
    mem[-2381 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0x7de64c89 with:
         gas gas_remaining - 710 wei
        args 0, mem[-2637], 256, mem[-2573 len (32 * _12) + 192]
    require delegate.return_code
    stor15 = _8
    return code.data[389 len 2769]
}



// =====================  Runtime code  =====================


address owner;
uint256 capAmount;
uint256 startTime;
uint256 endTime;
uint256 exchangeRate;
uint256 ethRaised;
uint256 stor7;
array of uint256 stor8;
uint8 percentBurn; offset 16
mapping of uint256 stor10;
mapping of uint256 contribution;
mapping of uint256 tokenPurchase;
mapping of uint256 leftoverWei;
uint256 discountEndTime;

function getContribution(address arg1) {
    return contribution[address(arg1)]
}

function getEthRaised() {
    return ethRaised
}

function discountEndTime() {
    return discountEndTime
}

function getLeftoverWei(address arg1) {
    return leftoverWei[address(arg1)]
}

function getEndTime() {
    return endTime
}

function getOwner() {
    return owner
}

function getPercentBurn() {
    return percentBurn
}

function getStartTime() {
    return startTime
}

function getCapAmount() {
    return capAmount
}

function getExchangeRate() {
    return exchangeRate
}

function getTokenPurchase(address arg1) {
    return tokenPurchase[address(arg1)]
}

function getTokensSold() {
    return (stor7 - tokenPurchase[stor0])
}

function getSaleData() {
    if block.timestamp <= discountEndTime:
        return 65
    return 75
}

function getTokensPerEth() {
    if block.timestamp <= discountEndTime:
        return 440
    return 382
}

function setTokens() {
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0x112c1e90 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function crowdsaleEnded() {
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0xacfb985 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function withdrawTokens() {
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0x7b84bfb5 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function crowdsaleActive() {
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0xaae1288a with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function withdrawOwnerEth() {
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0x8e7a5336 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function withdrawLeftoverWei() {
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0xeb40c0d6 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function setTokenExchangeRate(uint256 arg1) {
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0xd99083f3 with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function _fallback() payable {
    require 0 < stor8.length
    if block.timestamp <= discountEndTime:
        if msg.value >= 15035 * 10^15:
            stor10[stor8] = 43
        else:
            stor10[stor8] = 65
    else:
        if msg.value >= 1748 * 10^16:
            stor10[stor8] = 50
        else:
            stor10[stor8] = 75
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0xe1f0a45a with:
         gas gas_remaining - 710 wei
        args 0, msg.value
    require delegate.return_code
}

function sendPurchase() payable {
    require 0 < stor8.length
    if block.timestamp <= discountEndTime:
        if msg.value >= 15035 * 10^15:
            stor10[stor8] = 43
        else:
            stor10[stor8] = 65
    else:
        if msg.value >= 1748 * 10^16:
            stor10[stor8] = 50
        else:
            stor10[stor8] = 75
    require ext_code.size(0xf0d145598e099e487ad71e70bf8845c116f982d5)
    delegate 0xf0d145598e099e487ad71e70bf8845c116f982d5.0xe1f0a45a with:
         gas gas_remaining - 710 wei
        args 0, msg.value
    require delegate.return_code
    return bool(delegate.return_data[0])
}



}
