contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor4; offset 8
uint256 stor6;
uint8 stor12;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor6 = 0
    stor12 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[10999 len 20]
    create contract with 0 wei
                    code: code.data[7717 len 3270]
    require create.new_address
    stor1 = address(create.new_address)
    stor4 = code.data[10999 len 20]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args code.data[10999 len 20], 1250000 * 10^18 * 3600
    require ext_call.success
    return code.data[429 len 7288]
}



// =====================  Runtime code  =====================


const totalSupply = 15000000000 * 10^18

const tokenDecimals = 18

const preSaleCap = 1000 * 10^18

const minContribAmount = 10^16

const initialICOCap = 10500000000 * 10^18

const tokensForTeam = (1250000 * 10^18 * 3600)

const RATE_FOR_WEEK1 = 800000

const RATE_NO_DISCOUNT = 700000

const RATE_FOR_WEEK2 = 750000


uint8 stor0; offset 160
address owner;
address tokenAddress;
uint64 stor2;
uint256 stor2; offset 64
uint256 startTime;
uint64 stor3;
uint256 stor3; offset 64
uint256 endTime;
uint8 stor4;
address stor4;
address multisignWalletAddress; offset 8
uint256 weiRaised;
uint256 investorCount;
mapping of uint256 investedAmountOf;
uint256 soldPreSaleTokens;
uint256 sentPreSaleTokens;
uint256 icoCap;
uint256 icoSoldTokens;
uint8 icoEnded;

function soldPreSaleTokens() {
    return soldPreSaleTokens
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function icoSoldTokens() {
    return icoSoldTokens
}

function icoEnded() {
    return bool(icoEnded)
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
    return bool(uint8(stor4.field_0))
}

function investorCount() {
    return investorCount
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSoldPreSaleTokens(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor4.field_0)
    require arg1 <= 1000 * 10^18
    soldPreSaleTokens = arg1
}

function hasEnded() {
    if icoEnded:
        return bool(icoEnded)
    if icoSoldTokens >= icoCap:
        return icoSoldTokens >= icoCap
    return (block.timestamp > endTime)
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function enableICO() {
    require owner == msg.sender
    uint8(stor4.field_0) = 1
    require soldPreSaleTokens <= 10500000000 * 10^18
    icoCap = -soldPreSaleTokens + 10500000000 * 10^18
}

function setMultisignWallet(address arg1) {
    require owner == msg.sender
    if uint8(stor4.field_0):
        require block.timestamp < startTime
    require arg1
    multisignWalletAddress = arg1
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

function setContributionDates(uint64 arg1, uint64 arg2) {
    require owner == msg.sender
    require not uint8(stor4.field_0)
    require arg1 >= block.timestamp
    require arg2 >= arg1
    uint64(stor2.field_0) = arg1
    Mask(192, 0, stor2.field_64) = 0
    uint64(stor3.field_0) = arg2
    Mask(192, 0, stor3.field_64) = 0
}

function endIco() {
    require owner == msg.sender
    require not icoEnded
    icoEnded = 1
    require icoSoldTokens <= icoCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor4.field_0), icoCap - icoSoldTokens
    require ext_call.success
}

function getRate() {
    require block.timestamp >= startTime
    require startTime + (1008 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (1008 * 24 * 3600):
        return 800000
    require startTime + (672 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (672 * 24 * 3600):
        return 750000
    if block.timestamp >= endTime:
        return 0
    return 700000
}

function purchaseTokens(address arg1) payable {
    require not stor0
    require arg1
    require not icoEnded
    require uint8(stor4.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= 10^16
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    require startTime + (1008 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (1008 * 24 * 3600):
        if msg.value:
            require msg.value
            require 800000 * msg.value / msg.value == 800000
        require (800000 * msg.value) + icoSoldTokens >= icoSoldTokens
        if (800000 * msg.value) + icoSoldTokens <= icoCap:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 800000 * msg.value
            require ext_call.success
            icoSoldTokens += 800000 * msg.value
            if not investedAmountOf[address(arg1)]:
                investorCount++
            emit TokenPurchase(msg.value, 800000 * msg.value, msg.sender, arg1);
        else:
            require icoSoldTokens <= icoCap
            require icoCap - icoSoldTokens / 800000 <= msg.value
            require (icoCap - icoSoldTokens / 800000) + weiRaised >= weiRaised
            weiRaised += icoCap - icoSoldTokens / 800000
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), icoCap - icoSoldTokens
            require ext_call.success
            icoSoldTokens = icoCap
            if msg.value - (icoCap - icoSoldTokens / 800000) > 0:
                call msg.sender with:
                   value msg.value - (icoCap - icoSoldTokens / 800000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            if not investedAmountOf[address(arg1)]:
                investorCount++
            emit TokenPurchase(icoCap - icoSoldTokens / 800000, icoCap - icoSoldTokens, msg.sender, arg1);
    else:
        require startTime + (672 * 24 * 3600) >= startTime
        if block.timestamp < startTime + (672 * 24 * 3600):
            if msg.value:
                require msg.value
                require 750000 * msg.value / msg.value == 750000
            require (750000 * msg.value) + icoSoldTokens >= icoSoldTokens
            if (750000 * msg.value) + icoSoldTokens <= icoCap:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 750000 * msg.value
                require ext_call.success
                icoSoldTokens += 750000 * msg.value
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                emit TokenPurchase(msg.value, 750000 * msg.value, msg.sender, arg1);
            else:
                require icoSoldTokens <= icoCap
                require icoCap - icoSoldTokens / 750000 <= msg.value
                require (icoCap - icoSoldTokens / 750000) + weiRaised >= weiRaised
                weiRaised += icoCap - icoSoldTokens / 750000
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), icoCap - icoSoldTokens
                require ext_call.success
                icoSoldTokens = icoCap
                if msg.value - (icoCap - icoSoldTokens / 750000) > 0:
                    call msg.sender with:
                       value msg.value - (icoCap - icoSoldTokens / 750000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                emit TokenPurchase(icoCap - icoSoldTokens / 750000, icoCap - icoSoldTokens, msg.sender, arg1);
        else:
            require block.timestamp < endTime
            if msg.value:
                require msg.value
                require 700000 * msg.value / msg.value == 700000
            require (700000 * msg.value) + icoSoldTokens >= icoSoldTokens
            if (700000 * msg.value) + icoSoldTokens <= icoCap:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 700000 * msg.value
                require ext_call.success
                icoSoldTokens += 700000 * msg.value
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                emit TokenPurchase(msg.value, 700000 * msg.value, msg.sender, arg1);
            else:
                require icoSoldTokens <= icoCap
                require icoCap - icoSoldTokens / 700000 <= msg.value
                require (icoCap - icoSoldTokens / 700000) + weiRaised >= weiRaised
                weiRaised += icoCap - icoSoldTokens / 700000
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), icoCap - icoSoldTokens
                require ext_call.success
                icoSoldTokens = icoCap
                if msg.value - (icoCap - icoSoldTokens / 700000) > 0:
                    call msg.sender with:
                       value msg.value - (icoCap - icoSoldTokens / 700000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                emit TokenPurchase(icoCap - icoSoldTokens / 700000, icoCap - icoSoldTokens, msg.sender, arg1);
    call multisignWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require not icoEnded
    require uint8(stor4.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= 10^16
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    require startTime + (1008 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (1008 * 24 * 3600):
        if msg.value:
            require msg.value
            require 800000 * msg.value / msg.value == 800000
        require (800000 * msg.value) + icoSoldTokens >= icoSoldTokens
        if (800000 * msg.value) + icoSoldTokens <= icoCap:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 800000 * msg.value
            require ext_call.success
            icoSoldTokens += 800000 * msg.value
            if not investedAmountOf[address(msg.sender)]:
                investorCount++
            emit TokenPurchase(msg.value, 800000 * msg.value, msg.sender, msg.sender);
        else:
            require icoSoldTokens <= icoCap
            require icoCap - icoSoldTokens / 800000 <= msg.value
            require (icoCap - icoSoldTokens / 800000) + weiRaised >= weiRaised
            weiRaised += icoCap - icoSoldTokens / 800000
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, icoCap - icoSoldTokens
            require ext_call.success
            icoSoldTokens = icoCap
            if msg.value - (icoCap - icoSoldTokens / 800000) > 0:
                call msg.sender with:
                   value msg.value - (icoCap - icoSoldTokens / 800000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            if not investedAmountOf[address(msg.sender)]:
                investorCount++
            emit TokenPurchase(icoCap - icoSoldTokens / 800000, icoCap - icoSoldTokens, msg.sender, msg.sender);
    else:
        require startTime + (672 * 24 * 3600) >= startTime
        if block.timestamp < startTime + (672 * 24 * 3600):
            if msg.value:
                require msg.value
                require 750000 * msg.value / msg.value == 750000
            require (750000 * msg.value) + icoSoldTokens >= icoSoldTokens
            if (750000 * msg.value) + icoSoldTokens <= icoCap:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 750000 * msg.value
                require ext_call.success
                icoSoldTokens += 750000 * msg.value
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                emit TokenPurchase(msg.value, 750000 * msg.value, msg.sender, msg.sender);
            else:
                require icoSoldTokens <= icoCap
                require icoCap - icoSoldTokens / 750000 <= msg.value
                require (icoCap - icoSoldTokens / 750000) + weiRaised >= weiRaised
                weiRaised += icoCap - icoSoldTokens / 750000
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, icoCap - icoSoldTokens
                require ext_call.success
                icoSoldTokens = icoCap
                if msg.value - (icoCap - icoSoldTokens / 750000) > 0:
                    call msg.sender with:
                       value msg.value - (icoCap - icoSoldTokens / 750000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                emit TokenPurchase(icoCap - icoSoldTokens / 750000, icoCap - icoSoldTokens, msg.sender, msg.sender);
        else:
            require block.timestamp < endTime
            if msg.value:
                require msg.value
                require 700000 * msg.value / msg.value == 700000
            require (700000 * msg.value) + icoSoldTokens >= icoSoldTokens
            if (700000 * msg.value) + icoSoldTokens <= icoCap:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 700000 * msg.value
                require ext_call.success
                icoSoldTokens += 700000 * msg.value
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                emit TokenPurchase(msg.value, 700000 * msg.value, msg.sender, msg.sender);
            else:
                require icoSoldTokens <= icoCap
                require icoCap - icoSoldTokens / 700000 <= msg.value
                require (icoCap - icoSoldTokens / 700000) + weiRaised >= weiRaised
                weiRaised += icoCap - icoSoldTokens / 700000
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, icoCap - icoSoldTokens
                require ext_call.success
                icoSoldTokens = icoCap
                if msg.value - (icoCap - icoSoldTokens / 700000) > 0:
                    call msg.sender with:
                       value msg.value - (icoCap - icoSoldTokens / 700000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                emit TokenPurchase(icoCap - icoSoldTokens / 700000, icoCap - icoSoldTokens, msg.sender, msg.sender);
    call multisignWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
