contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor7; offset 8

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 10^14
    stor2 = 5 * 10^10
    require not msg.value
    address(stor0.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[12549 len 3731]
    require create.new_address
    stor3 = address(create.new_address)
    stor7 = code.data[16292 len 20]
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args code.data[16292 len 20], 10000 * 10^18
    require ext_call.success
    return code.data[553 len 11996]
}



// =====================  Runtime code  =====================


const totalSupply = 1000000 * 10^18

const tokensForCharity = 10^18

const preSaleCap = 100000 * 10^18

const tokensForBounty = 10^18

const tokensForPartners = 10^18

const initialICOCap = (250 * 10^18 * 3600)

const tokensForDevteam = 9997 * 10^18

const tokensForFounder = (25 * 10^18 * 3600)


uint8 stor0; offset 160
address owner;
uint256 minContribAmount;
uint256 maxGasPrice;
address tokenAddress;
address vestingAddress;
uint256 startTime;
uint256 endTime;
uint8 stor7;
address stor7;
address multisignWalletAddress; offset 8
uint256 weiRaised;
uint256 soldPreSaleTokens;
uint256 sentPreSaleTokens;
uint256 icoCap;
uint256 icoSoldTokens;
uint8 stor13;

function soldPreSaleTokens() {
    return soldPreSaleTokens
}

function endTime() {
    return endTime
}

function maxGasPrice() {
    return maxGasPrice
}

function weiRaised() {
    return weiRaised
}

function icoSoldTokens() {
    return icoSoldTokens
}

function vesting() {
    return vestingAddress
}

function icoEnded() {
    return bool(stor13)
}

function minContribAmount() {
    return minContribAmount
}

function paused() {
    return bool(stor0)
}

function sentPreSaleTokens() {
    return sentPreSaleTokens
}

function multisignWallet() {
    return multisignWalletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function icoEnabled() {
    return bool(uint8(stor7.field_0))
}

function icoCap() {
    return icoCap
}

function token() {
    return tokenAddress
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function hasEnded() {
    if stor13:
        return bool(stor13)
    if icoSoldTokens >= icoCap:
        return icoSoldTokens >= icoCap
    return (block.timestamp > endTime)
}

function setSoldPreSaleTokens(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor7.field_0)
    require arg1 <= 100000 * 10^18
    soldPreSaleTokens = arg1
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setMultisignWallet(address arg1) {
    require owner == msg.sender
    if uint8(stor7.field_0):
        require block.timestamp < startTime
    require arg1
    multisignWalletAddress = arg1
}

function setContributionDates(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor7.field_0)
    require arg1 >= block.timestamp
    require arg2 >= arg1
    startTime = arg1
    endTime = arg2
}

function enableTokenTransferability() {
    require owner == msg.sender
    require tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function disableTokenTransferability() {
    require owner == msg.sender
    require tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function delegateVestingContractOwner(address arg1) {
    require owner == msg.sender
    require ext_code.size(vestingAddress)
    call vestingAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function enableICO() {
    require owner == msg.sender
    require startTime >= block.timestamp
    require multisignWalletAddress
    uint8(stor7.field_0) = 1
    require soldPreSaleTokens <= 1000000 * 10^18
    icoCap = -soldPreSaleTokens + 1000000 * 10^18
}

function endIco() {
    require owner == msg.sender
    require not stor13
    stor13 = 1
    require icoSoldTokens <= icoCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor7.field_0), icoCap - icoSoldTokens
    require ext_call.success
}

function transferPreSaleTokens(uint256 arg1, address arg2) {
    require owner == msg.sender
    require soldPreSaleTokens > 0
    require arg1 + sentPreSaleTokens >= sentPreSaleTokens
    require arg1 + sentPreSaleTokens <= soldPreSaleTokens
    sentPreSaleTokens += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
}

function getRate() {
    require block.timestamp >= startTime
    require startTime + (48 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (48 * 24 * 3600):
        require startTime + (96 * 24 * 3600) >= startTime
        if block.timestamp >= startTime + (96 * 24 * 3600):
            require startTime + (120 * 24 * 3600) >= startTime
            if block.timestamp >= startTime + (120 * 24 * 3600):
                if block.timestamp >= endTime:
                    return 0
    return 333
}

function createVestingForFounder(address arg1) {
    require owner == msg.sender
    require not vestingAddress
    create contract with 0 wei
                    code: code.data[5724 len 2498], tokenAddress
    require create.new_address
    vestingAddress = address(create.new_address)
    require block.timestamp + (24 * 3600) >= block.timestamp
    require ext_code.size(address(create.new_address))
    call address(create.new_address).createVestingByDurationAndSplits(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining - 710 wei
        args 0, 0, 25 * 10^18 * 3600, block.timestamp + (24 * 3600), 4368 * 24 * 3600, 4
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 25 * 10^18 * 3600
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require msg.value >= minContribAmount
    require not stor13
    require uint8(stor7.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    require startTime + (48 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (48 * 24 * 3600):
        require startTime + (96 * 24 * 3600) >= startTime
        if block.timestamp >= startTime + (96 * 24 * 3600):
            require startTime + (120 * 24 * 3600) >= startTime
            if block.timestamp >= startTime + (120 * 24 * 3600):
                require block.timestamp < endTime
    if msg.value:
        require msg.value
        require 333 * msg.value / msg.value == 333
    require (333 * msg.value) + icoSoldTokens >= icoSoldTokens
    if (333 * msg.value) + icoSoldTokens <= icoCap:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 333 * msg.value
        require ext_call.success
        icoSoldTokens += 333 * msg.value
        emit TokenPurchase(msg.value, 333 * msg.value, msg.sender, arg1);
        call multisignWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require icoCap - icoSoldTokens / 333 <= msg.value
        require (icoCap - icoSoldTokens / 333) + weiRaised >= weiRaised
        weiRaised += icoCap - icoSoldTokens / 333
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), icoCap - icoSoldTokens
        require ext_call.success
        icoSoldTokens = icoCap
        if msg.value - (icoCap - icoSoldTokens / 333) <= 0:
            emit TokenPurchase(icoCap - icoSoldTokens / 333, icoCap - icoSoldTokens, msg.sender, arg1);
            call multisignWalletAddress with:
               value icoCap - icoSoldTokens / 333 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            call msg.sender with:
               value msg.value - (icoCap - icoSoldTokens / 333) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokenPurchase(icoCap - icoSoldTokens / 333, icoCap - icoSoldTokens, msg.sender, arg1);
            call multisignWalletAddress with:
               value icoCap - icoSoldTokens / 333 wei
                 gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require msg.value >= minContribAmount
    require not stor13
    require uint8(stor7.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    require startTime + (48 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (48 * 24 * 3600):
        require startTime + (96 * 24 * 3600) >= startTime
        if block.timestamp >= startTime + (96 * 24 * 3600):
            require startTime + (120 * 24 * 3600) >= startTime
            if block.timestamp >= startTime + (120 * 24 * 3600):
                require block.timestamp < endTime
    if msg.value:
        require msg.value
        require 333 * msg.value / msg.value == 333
    require (333 * msg.value) + icoSoldTokens >= icoSoldTokens
    if (333 * msg.value) + icoSoldTokens <= icoCap:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 333 * msg.value
        require ext_call.success
        icoSoldTokens += 333 * msg.value
        emit TokenPurchase(msg.value, 333 * msg.value, msg.sender, msg.sender);
        call multisignWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require icoCap - icoSoldTokens / 333 <= msg.value
        require (icoCap - icoSoldTokens / 333) + weiRaised >= weiRaised
        weiRaised += icoCap - icoSoldTokens / 333
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, icoCap - icoSoldTokens
        require ext_call.success
        icoSoldTokens = icoCap
        if msg.value - (icoCap - icoSoldTokens / 333) <= 0:
            emit TokenPurchase(icoCap - icoSoldTokens / 333, icoCap - icoSoldTokens, msg.sender, msg.sender);
            call multisignWalletAddress with:
               value icoCap - icoSoldTokens / 333 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            call msg.sender with:
               value msg.value - (icoCap - icoSoldTokens / 333) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokenPurchase(icoCap - icoSoldTokens / 333, icoCap - icoSoldTokens, msg.sender, msg.sender);
            call multisignWalletAddress with:
               value icoCap - icoSoldTokens / 333 wei
                 gas 2300 * is_zero(value) wei
}



}
