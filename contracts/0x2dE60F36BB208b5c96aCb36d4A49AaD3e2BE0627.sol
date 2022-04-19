contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor5; offset 8
uint8 stor11;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor11 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[16881 len 20]
    create contract with 0 wei
                    code: code.data[13239 len 3630]
    require create.new_address
    stor1 = address(create.new_address)
    stor5 = code.data[16881 len 20]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args code.data[16881 len 20], 20000000 * 10^18
    require ext_call.success
    return code.data[592 len 12647]
}



// =====================  Runtime code  =====================


const totalSupply = 100000000 * 10^18

const tokenDecimals = 18

const tokensForCharity = 3000000 * 10^18

const preSaleCap = 10000000 * 10^18

const minContribAmount = 10^16

const tokensForBounty = 2000000 * 10^18

const tokensForPartners = 5000000 * 10^18

const initialICOCap = 60000000 * 10^18

const tokensForDevteam = 10000000 * 10^18

const tokensForFounder = 10000000 * 10^18

const RATE_FOR_WEEK1 = 525

const VESTING_TIMES = 4

const RATE_FOR_WEEK3 = 420

const DURATION_PER_VESTING = (8736 * 24 * 3600)

const RATE_NO_DISCOUNT = 350

const RATE_FOR_WEEK2 = 455


uint8 stor0; offset 160
address owner;
address tokenAddress;
address vestingAddress;
uint256 startTime;
uint256 endTime;
uint8 stor5;
address stor5;
address multisignWalletAddress; offset 8
uint256 weiRaised;
uint256 soldPreSaleTokens;
uint256 sentPreSaleTokens;
uint256 icoCap;
uint256 icoSoldTokens;
uint8 stor11;

function soldPreSaleTokens() {
    return soldPreSaleTokens
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

function vesting() {
    return vestingAddress
}

function icoEnded() {
    return bool(stor11)
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
    return bool(uint8(stor5.field_0))
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

function hasEnded() {
    if stor11:
        return bool(stor11)
    if icoSoldTokens >= icoCap:
        return icoSoldTokens >= icoCap
    return (block.timestamp > endTime)
}

function setSoldPreSaleTokens(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor5.field_0)
    require arg1 <= 10000000 * 10^18
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
    if uint8(stor5.field_0):
        require block.timestamp < startTime
    require arg1
    multisignWalletAddress = arg1
}

function setContributionDates(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor5.field_0)
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
    uint8(stor5.field_0) = 1
    require soldPreSaleTokens <= 70000000 * 10^18
    icoCap = -soldPreSaleTokens + 70000000 * 10^18
}

function endIco() {
    require owner == msg.sender
    require not stor11
    stor11 = 1
    require icoSoldTokens <= icoCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor5.field_0), icoCap - icoSoldTokens
    require ext_call.success
}

function transferPreSaleTokens(uint256 arg1, address arg2) {
    require owner == msg.sender
    require arg2
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
    require startTime + (168 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (168 * 24 * 3600):
        return 525
    require startTime + (336 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (336 * 24 * 3600):
        return 455
    require startTime + (504 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (504 * 24 * 3600):
        return 420
    if block.timestamp >= endTime:
        return 0
    return 350
}

function createVestingForFounder(address arg1) {
    require owner == msg.sender
    require arg1
    require not vestingAddress
    require tokenAddress
    create contract with 0 wei
                    code: code.data[6226 len 2748], tokenAddress
    require create.new_address
    vestingAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).createVestingByDurationAndSplits(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining - 710 wei
        args 0, 0, 10000000 * 10^18, block.timestamp, 8736 * 24 * 3600, 4
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 10000000 * 10^18
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require not stor11
    require uint8(stor5.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= 10^16
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    require startTime + (168 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (168 * 24 * 3600):
        if msg.value:
            require msg.value
            require 525 * msg.value / msg.value == 525
        require (525 * msg.value) + icoSoldTokens >= icoSoldTokens
        if (525 * msg.value) + icoSoldTokens <= icoCap:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 525 * msg.value
            require ext_call.success
            icoSoldTokens += 525 * msg.value
            emit TokenPurchase(msg.value, 525 * msg.value, msg.sender, arg1);
            call multisignWalletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require icoSoldTokens <= icoCap
            require icoCap - icoSoldTokens / 525 <= msg.value
            require (icoCap - icoSoldTokens / 525) + weiRaised >= weiRaised
            weiRaised += icoCap - icoSoldTokens / 525
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), icoCap - icoSoldTokens
            require ext_call.success
            icoSoldTokens = icoCap
            if msg.value - (icoCap - icoSoldTokens / 525) <= 0:
                emit TokenPurchase(icoCap - icoSoldTokens / 525, icoCap - icoSoldTokens, msg.sender, arg1);
                call multisignWalletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call msg.sender with:
                   value msg.value - (icoCap - icoSoldTokens / 525) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokenPurchase(icoCap - icoSoldTokens / 525, icoCap - icoSoldTokens, msg.sender, arg1);
                call multisignWalletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
    else:
        require startTime + (336 * 24 * 3600) >= startTime
        if block.timestamp < startTime + (336 * 24 * 3600):
            if msg.value:
                require msg.value
                require 455 * msg.value / msg.value == 455
            require (455 * msg.value) + icoSoldTokens >= icoSoldTokens
            if (455 * msg.value) + icoSoldTokens <= icoCap:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 455 * msg.value
                require ext_call.success
                icoSoldTokens += 455 * msg.value
                emit TokenPurchase(msg.value, 455 * msg.value, msg.sender, arg1);
                call multisignWalletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require icoSoldTokens <= icoCap
                require icoCap - icoSoldTokens / 455 <= msg.value
                require (icoCap - icoSoldTokens / 455) + weiRaised >= weiRaised
                weiRaised += icoCap - icoSoldTokens / 455
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), icoCap - icoSoldTokens
                require ext_call.success
                icoSoldTokens = icoCap
                if msg.value - (icoCap - icoSoldTokens / 455) <= 0:
                    emit TokenPurchase(icoCap - icoSoldTokens / 455, icoCap - icoSoldTokens, msg.sender, arg1);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    call msg.sender with:
                       value msg.value - (icoCap - icoSoldTokens / 455) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokenPurchase(icoCap - icoSoldTokens / 455, icoCap - icoSoldTokens, msg.sender, arg1);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
        else:
            require startTime + (504 * 24 * 3600) >= startTime
            if block.timestamp < startTime + (504 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 420 * msg.value / msg.value == 420
                require (420 * msg.value) + icoSoldTokens >= icoSoldTokens
                if (420 * msg.value) + icoSoldTokens <= icoCap:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 420 * msg.value
                    require ext_call.success
                    icoSoldTokens += 420 * msg.value
                    emit TokenPurchase(msg.value, 420 * msg.value, msg.sender, arg1);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require icoSoldTokens <= icoCap
                    require icoCap - icoSoldTokens / 420 <= msg.value
                    require (icoCap - icoSoldTokens / 420) + weiRaised >= weiRaised
                    weiRaised += icoCap - icoSoldTokens / 420
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), icoCap - icoSoldTokens
                    require ext_call.success
                    icoSoldTokens = icoCap
                    if msg.value - (icoCap - icoSoldTokens / 420) <= 0:
                        emit TokenPurchase(icoCap - icoSoldTokens / 420, icoCap - icoSoldTokens, msg.sender, arg1);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call msg.sender with:
                           value msg.value - (icoCap - icoSoldTokens / 420) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokenPurchase(icoCap - icoSoldTokens / 420, icoCap - icoSoldTokens, msg.sender, arg1);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
            else:
                require block.timestamp < endTime
                if msg.value:
                    require msg.value
                    require 350 * msg.value / msg.value == 350
                require (350 * msg.value) + icoSoldTokens >= icoSoldTokens
                if (350 * msg.value) + icoSoldTokens <= icoCap:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 350 * msg.value
                    require ext_call.success
                    icoSoldTokens += 350 * msg.value
                    emit TokenPurchase(msg.value, 350 * msg.value, msg.sender, arg1);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require icoSoldTokens <= icoCap
                    require icoCap - icoSoldTokens / 350 <= msg.value
                    require (icoCap - icoSoldTokens / 350) + weiRaised >= weiRaised
                    weiRaised += icoCap - icoSoldTokens / 350
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), icoCap - icoSoldTokens
                    require ext_call.success
                    icoSoldTokens = icoCap
                    if msg.value - (icoCap - icoSoldTokens / 350) <= 0:
                        emit TokenPurchase(icoCap - icoSoldTokens / 350, icoCap - icoSoldTokens, msg.sender, arg1);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call msg.sender with:
                           value msg.value - (icoCap - icoSoldTokens / 350) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokenPurchase(icoCap - icoSoldTokens / 350, icoCap - icoSoldTokens, msg.sender, arg1);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require not stor11
    require uint8(stor5.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= 10^16
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    require startTime + (168 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (168 * 24 * 3600):
        if msg.value:
            require msg.value
            require 525 * msg.value / msg.value == 525
        require (525 * msg.value) + icoSoldTokens >= icoSoldTokens
        if (525 * msg.value) + icoSoldTokens <= icoCap:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 525 * msg.value
            require ext_call.success
            icoSoldTokens += 525 * msg.value
            emit TokenPurchase(msg.value, 525 * msg.value, msg.sender, msg.sender);
            call multisignWalletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require icoSoldTokens <= icoCap
            require icoCap - icoSoldTokens / 525 <= msg.value
            require (icoCap - icoSoldTokens / 525) + weiRaised >= weiRaised
            weiRaised += icoCap - icoSoldTokens / 525
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, icoCap - icoSoldTokens
            require ext_call.success
            icoSoldTokens = icoCap
            if msg.value - (icoCap - icoSoldTokens / 525) <= 0:
                emit TokenPurchase(icoCap - icoSoldTokens / 525, icoCap - icoSoldTokens, msg.sender, msg.sender);
                call multisignWalletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call msg.sender with:
                   value msg.value - (icoCap - icoSoldTokens / 525) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokenPurchase(icoCap - icoSoldTokens / 525, icoCap - icoSoldTokens, msg.sender, msg.sender);
                call multisignWalletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
    else:
        require startTime + (336 * 24 * 3600) >= startTime
        if block.timestamp < startTime + (336 * 24 * 3600):
            if msg.value:
                require msg.value
                require 455 * msg.value / msg.value == 455
            require (455 * msg.value) + icoSoldTokens >= icoSoldTokens
            if (455 * msg.value) + icoSoldTokens <= icoCap:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 455 * msg.value
                require ext_call.success
                icoSoldTokens += 455 * msg.value
                emit TokenPurchase(msg.value, 455 * msg.value, msg.sender, msg.sender);
                call multisignWalletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require icoSoldTokens <= icoCap
                require icoCap - icoSoldTokens / 455 <= msg.value
                require (icoCap - icoSoldTokens / 455) + weiRaised >= weiRaised
                weiRaised += icoCap - icoSoldTokens / 455
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, icoCap - icoSoldTokens
                require ext_call.success
                icoSoldTokens = icoCap
                if msg.value - (icoCap - icoSoldTokens / 455) <= 0:
                    emit TokenPurchase(icoCap - icoSoldTokens / 455, icoCap - icoSoldTokens, msg.sender, msg.sender);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    call msg.sender with:
                       value msg.value - (icoCap - icoSoldTokens / 455) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokenPurchase(icoCap - icoSoldTokens / 455, icoCap - icoSoldTokens, msg.sender, msg.sender);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
        else:
            require startTime + (504 * 24 * 3600) >= startTime
            if block.timestamp < startTime + (504 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 420 * msg.value / msg.value == 420
                require (420 * msg.value) + icoSoldTokens >= icoSoldTokens
                if (420 * msg.value) + icoSoldTokens <= icoCap:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 420 * msg.value
                    require ext_call.success
                    icoSoldTokens += 420 * msg.value
                    emit TokenPurchase(msg.value, 420 * msg.value, msg.sender, msg.sender);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require icoSoldTokens <= icoCap
                    require icoCap - icoSoldTokens / 420 <= msg.value
                    require (icoCap - icoSoldTokens / 420) + weiRaised >= weiRaised
                    weiRaised += icoCap - icoSoldTokens / 420
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, icoCap - icoSoldTokens
                    require ext_call.success
                    icoSoldTokens = icoCap
                    if msg.value - (icoCap - icoSoldTokens / 420) <= 0:
                        emit TokenPurchase(icoCap - icoSoldTokens / 420, icoCap - icoSoldTokens, msg.sender, msg.sender);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call msg.sender with:
                           value msg.value - (icoCap - icoSoldTokens / 420) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokenPurchase(icoCap - icoSoldTokens / 420, icoCap - icoSoldTokens, msg.sender, msg.sender);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
            else:
                require block.timestamp < endTime
                if msg.value:
                    require msg.value
                    require 350 * msg.value / msg.value == 350
                require (350 * msg.value) + icoSoldTokens >= icoSoldTokens
                if (350 * msg.value) + icoSoldTokens <= icoCap:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 350 * msg.value
                    require ext_call.success
                    icoSoldTokens += 350 * msg.value
                    emit TokenPurchase(msg.value, 350 * msg.value, msg.sender, msg.sender);
                    call multisignWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require icoSoldTokens <= icoCap
                    require icoCap - icoSoldTokens / 350 <= msg.value
                    require (icoCap - icoSoldTokens / 350) + weiRaised >= weiRaised
                    weiRaised += icoCap - icoSoldTokens / 350
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, icoCap - icoSoldTokens
                    require ext_call.success
                    icoSoldTokens = icoCap
                    if msg.value - (icoCap - icoSoldTokens / 350) <= 0:
                        emit TokenPurchase(icoCap - icoSoldTokens / 350, icoCap - icoSoldTokens, msg.sender, msg.sender);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call msg.sender with:
                           value msg.value - (icoCap - icoSoldTokens / 350) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokenPurchase(icoCap - icoSoldTokens / 350, icoCap - icoSoldTokens, msg.sender, msg.sender);
                        call multisignWalletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
}



}
