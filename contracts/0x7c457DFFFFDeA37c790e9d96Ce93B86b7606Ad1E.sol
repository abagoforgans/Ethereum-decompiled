contract main {


// =======================  Init code  ======================


address stor0;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
array of struct stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function _fallback() payable {
    stor8 = 200
    stor9 = 500
    stor11 = 1
    stor12 = 115 * 10^16
    stor13 = 125 * 10^16
    stor14 = 5 * 10^6
    stor15 = 1500 * 10^6
    stor16 = 0
    stor17 = 0
    stor21 = 417924 * 3600
    stor22 = 418620 * 3600
    stor23 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = 0xbdc5bac39dbe132b1e030e898ae3830017d7d969
    stor0 = msg.sender
    stor6 = stor0
    stor5 = 0x983f64a550cd9d733f2829275f94b1a3728fe888
    if stor0 != msg.sender:
        require msg.sender == stor6
    require 288 >= stor8
    require 288 <= stor9
    emit UsdPerEthChanged(stor7, 288);
    stor7 = 288
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = (3 * stor10.length) + 3
        while 3 * stor10.length > idx:
            stor10[idx].field_0 = 0
            stor10[idx].field_256 = 0
            stor10[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor10[stor10.length].field_0 = stor7
    stor10[stor10.length].field_256 = block.timestamp
    stor10[stor10.length].field_512 = msg.sender
    return code.data[1224 len 7368]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pendingOwner;
mapping of struct backers;
mapping of uint256 externalSales;
address tokenAddress;
address beneficiaryAddress;
address notifierAddress;
uint256 usdPerEth;
uint256 usdPerEthMin;
uint256 usdPerEthMax;
array of struct usdPerEthLog;
uint256 minInvestCents;
uint256 tokensPerCents;
uint256 tokensPerCents_gte50kUsd;
uint256 amount50kUsdInCents;
uint256 maxCapInCents;
uint256 totalWeiReceived;
uint256 totalInCents;
uint256 totalTokensSold;
uint256 totalEthSales;
uint256 totalExternalSales;
uint256 startTime;
uint256 endTime;
uint256 finalizedTime;

function notifier() {
    return notifierAddress
}

function maxCapInCents() {
    return maxCapInCents
}

function usdPerEthMin() {
    return usdPerEthMin
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function totalInCents() {
    return totalInCents
}

function usdPerEthMax() {
    return usdPerEthMax
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function usdPerEth() {
    return usdPerEth
}

function totalTokensSold() {
    return totalTokensSold
}

function totalExternalSales() {
    return totalExternalSales
}

function startTime() {
    return startTime
}

function tokensPerCents_gte50kUsd() {
    return tokensPerCents_gte50kUsd
}

function totalWeiReceived() {
    return totalWeiReceived
}

function owner() {
    return owner
}

function amount50kUsdInCents() {
    return amount50kUsdInCents
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function usdPerEthLogSize() {
    return usdPerEthLog.length
}

function externalSales(address arg1, uint256 arg2) {
    return externalSales[arg1][arg2]
}

function minInvestCents() {
    return minInvestCents
}

function usdPerEthLog(uint256 arg1) {
    require arg1 < usdPerEthLog.length
    return usdPerEthLog[arg1].field_0, usdPerEthLog[arg1].field_256, usdPerEthLog[arg1].field_512
}

function tokensPerCents() {
    return tokensPerCents
}

function totalEthSales() {
    return totalEthSales
}

function pendingOwner() {
    return pendingOwner
}

function token() {
    return tokenAddress
}

function finalizedTime() {
    return finalizedTime
}

function isFinalized() {
    return (finalizedTime > 0)
}

function isSaleOver() {
    return (block.timestamp > endTime)
}

function isMaxCapReached() {
    return totalInCents >= maxCapInCents
}

function pause() {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function claimOwnership() {
    if msg.sender == pendingOwner:
        owner = pendingOwner
        pendingOwner = 0
}

function resume() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
}

function totalSales() {
    require totalEthSales + totalExternalSales >= totalEthSales
    return (totalEthSales + totalExternalSales)
}

function isSaleOn() {
    if startTime > block.timestamp:
        return startTime <= block.timestamp
    return block.timestamp <= endTime
}

function setNotifier(address arg1) {
    require msg.sender == owner
    emit NotifierChanged(notifierAddress, arg1);
    notifierAddress = arg1
}

function setBeneficiary(address arg1) {
    require msg.sender == owner
    emit BeneficiaryChanged(beneficiaryAddress, arg1);
    beneficiaryAddress = arg1
}

function weiToCents(uint256 arg1) {
    if arg1:
        require arg1
        require 100 * arg1 * usdPerEth / arg1 == 100 * usdPerEth
    require 100 * arg1 * usdPerEth == (10^18 * 100 * arg1 * usdPerEth / 10^18) + (100 * arg1 * usdPerEth % 10^18)
    return (100 * arg1 * usdPerEth / 10^18)
}

function finalize() {
    require msg.sender == owner
    if totalInCents < maxCapInCents:
        require block.timestamp > endTime
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    finalizedTime = block.timestamp
}

function centsToTokens(uint256 arg1) {
    if arg1 < amount50kUsdInCents:
        if arg1:
            require arg1
            require arg1 * tokensPerCents / arg1 == tokensPerCents
        return (arg1 * tokensPerCents)
    if arg1:
        require arg1
        require arg1 * tokensPerCents_gte50kUsd / arg1 == tokensPerCents_gte50kUsd
    return (arg1 * tokensPerCents_gte50kUsd)
}

function setUsdPerEth(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == notifierAddress
    require arg1 >= usdPerEthMin
    require arg1 <= usdPerEthMax
    emit UsdPerEthChanged(usdPerEth, arg1);
    usdPerEth = arg1
    usdPerEthLog.length++
    if not usdPerEthLog.length <= usdPerEthLog.length + 1:
        idx = (3 * usdPerEthLog.length) + 3
        while 3 * usdPerEthLog.length > idx:
            usdPerEthLog[idx].field_0 = 0
            usdPerEthLog[idx].field_256 = 0
            usdPerEthLog[idx].field_512 = 0
            idx = idx + 3
            continue 
    usdPerEthLog[usdPerEthLog.length].field_0 = usdPerEth
    usdPerEthLog[usdPerEthLog.length].field_256 = block.timestamp
    usdPerEthLog[usdPerEthLog.length].field_512 = msg.sender
}

function externalSale(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor1.field_160)
    if owner != msg.sender:
        require msg.sender == notifierAddress
    require arg1
    require arg2
    require arg3
    require arg4
    require arg4 <= block.timestamp
    require externalSales[address(arg1)][arg4] <= 0
    if arg2:
        require arg2
        require 100 * arg2 / arg2 == 100
    require totalInCents + (100 * arg2) >= totalInCents
    totalInCents += 100 * arg2
    require totalInCents <= maxCapInCents
    if arg3:
        require arg3
        require 10^18 * arg3 / arg3 == 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.sell(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg3
    require ext_call.success
    require ext_call.return_data[0]
    require totalTokensSold + (10^18 * arg3) >= totalTokensSold
    totalTokensSold += 10^18 * arg3
    totalExternalSales++
    externalSales[address(arg1)][arg4] = 10^18 * arg3
    emit ExternalSale(address(arg1), arg2, 10^18 * arg3, arg4);
}

function _fallback() payable {
    require not uint8(stor1.field_160)
    require startTime <= block.timestamp
    require block.timestamp <= endTime
    if msg.value:
        require msg.value
        require 100 * msg.value * usdPerEth / msg.value == 100 * usdPerEth
    require 100 * msg.value * usdPerEth == (10^18 * 100 * msg.value * usdPerEth / 10^18) + (100 * msg.value * usdPerEth % 10^18)
    require 100 * msg.value * usdPerEth / 10^18 >= minInvestCents
    require totalInCents + (100 * msg.value * usdPerEth / 10^18) >= totalInCents
    totalInCents += 100 * msg.value * usdPerEth / 10^18
    require totalInCents <= maxCapInCents
    if 100 * msg.value * usdPerEth / 10^18 < amount50kUsdInCents:
        if 100 * msg.value * usdPerEth / 10^18:
            require 100 * msg.value * usdPerEth / 10^18
            require 100 * msg.value * usdPerEth / 10^18 * tokensPerCents / 100 * msg.value * usdPerEth / 10^18 == tokensPerCents
        require ext_code.size(tokenAddress)
        call tokenAddress.sell(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * msg.value * usdPerEth / 10^18 * tokensPerCents
        require ext_call.success
        require ext_call.return_data[0]
        require totalWeiReceived + msg.value >= totalWeiReceived
        totalWeiReceived += msg.value
        require totalTokensSold + (100 * msg.value * usdPerEth / 10^18 * tokensPerCents) >= totalTokensSold
        totalTokensSold += 100 * msg.value * usdPerEth / 10^18 * tokensPerCents
        totalEthSales++
        require backers[address(msg.sender)].field_256 + (100 * msg.value * usdPerEth / 10^18 * tokensPerCents) >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 += 100 * msg.value * usdPerEth / 10^18 * tokensPerCents
    else:
        if 100 * msg.value * usdPerEth / 10^18:
            require 100 * msg.value * usdPerEth / 10^18
            require 100 * msg.value * usdPerEth / 10^18 * tokensPerCents_gte50kUsd / 100 * msg.value * usdPerEth / 10^18 == tokensPerCents_gte50kUsd
        require ext_code.size(tokenAddress)
        call tokenAddress.sell(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * msg.value * usdPerEth / 10^18 * tokensPerCents_gte50kUsd
        require ext_call.success
        require ext_call.return_data[0]
        require totalWeiReceived + msg.value >= totalWeiReceived
        totalWeiReceived += msg.value
        require totalTokensSold + (100 * msg.value * usdPerEth / 10^18 * tokensPerCents_gte50kUsd) >= totalTokensSold
        totalTokensSold += 100 * msg.value * usdPerEth / 10^18 * tokensPerCents_gte50kUsd
        totalEthSales++
        require backers[address(msg.sender)].field_256 + (100 * msg.value * usdPerEth / 10^18 * tokensPerCents_gte50kUsd) >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 += 100 * msg.value * usdPerEth / 10^18 * tokensPerCents_gte50kUsd
    require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
    backers[address(msg.sender)].field_0 += msg.value
    emit EthReceived(msg.sender, msg.value);
}



}
