contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor7;
uint256 stor10;
mapping of uint8 stor11;
address stor15;

function _fallback() {
    stor0 = msg.sender
    require code.data[9172 len 32] > code.data[9140 len 32]
    require code.data[9204 len 32] > code.data[9172 len 32]
    require code.data[9236 len 32] > code.data[9204 len 32]
    require code.data[9268 len 32] > 0
    stor2 = code.data[9140 len 32]
    stor3 = code.data[9172 len 32]
    stor4 = code.data[9204 len 32]
    stor5 = code.data[9236 len 32]
    stor10 = code.data[9268 len 32]
    stor11[address(msg.sender)] = 1
    stor15 = msg.sender
    stor7 = code.data[9312 len 20]
    return code.data[483 len 8657]
}



// =====================  Runtime code  =====================


const BONUS_PRESALE = 10

const BONUS_MID = 10

const TOKENS_SOFT_CAP = 500000 * 10^18

const MIN_CONTRIBUTION = 10^17

const TOKENS_TOTAL_SUPPLY = 150000000 * 10^18

const REFUND_PERIOD = (720 * 24 * 3600)

const TOKENS_FOR_SALE = 75000000 * 10^18

const BONUS_HI_QTY = 335 * 10^18

const BONUS_MID_QTY = 150 * 10^18

const BONUS_HI = 20


address owner;
address newOwner;
uint256 startPresale;
uint256 endPresale;
uint256 startIco;
uint256 endIco;
mapping of uint256 tokenBalances;
address tokenAddress;
uint256 tokensSold;
uint256 tokensDistributed;
uint256 ethTokenRate;
mapping of uint8 stor11;
uint256 weiReceived;
mapping of uint256 contributions;
mapping of uint8 stor14;
address companyWalletAddress;

function startPresale() {
    return startPresale
}

function tokensDistributed() {
    return tokensDistributed
}

function companyWallet() {
    return companyWalletAddress
}

function admins(address arg1) {
    return bool(stor11[arg1])
}

function contributions(address arg1) {
    return contributions[arg1]
}

function tokensSold() {
    return tokensSold
}

function tokenBalances(address arg1) {
    return tokenBalances[arg1]
}

function startIco() {
    return startIco
}

function owner() {
    return owner
}

function weiReceived() {
    return weiReceived
}

function endPresale() {
    return endPresale
}

function refunds(address arg1) {
    return bool(stor14[arg1])
}

function newOwner() {
    return newOwner
}

function ethTokenRate() {
    return ethTokenRate
}

function endIco() {
    return endIco
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endIco)
}

function isSuccess() {
    if tokensDistributed < 500000 * 10^18:
        return 0
    return 1
}

function proposeNewOwner(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function addAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    stor11[address(arg1)] = 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    require newOwner != owner
    owner = newOwner
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    stor11[address(arg1)] = 0
}

function isFailed() {
    if tokensDistributed >= 500000 * 10^18:
        return 0
    if block.timestamp <= endIco:
        return 0
    return 1
}

function updateCompanyWallet(address arg1) {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    companyWalletAddress = arg1
}

function acceptTokenOwnership() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function adjustTokenExchangeRate(uint256 arg1) {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require block.timestamp > endPresale
    require block.timestamp < startIco
    ethTokenRate = arg1
    emit TokenRateUpdated(arg1);
}

function proposeTokenOwner(address arg1) {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xb1f8100d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function activateToken() {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require tokensDistributed >= 500000 * 10^18
    require block.timestamp > endIco
    require ext_code.size(tokenAddress)
    call tokenAddress.activate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function withdrawUnclaimed() {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    if block.timestamp <= endIco + (720 * 24 * 3600):
        require tokensDistributed >= 500000 * 10^18
    call companyWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refundContribution() {
    require tokensDistributed < 500000 * 10^18
    require block.timestamp > endIco
    require block.timestamp > endIco
    require not stor14[address(msg.sender)]
    require contributions[address(msg.sender)] > 0
    tokenBalances[address(msg.sender)] = 0
    stor14[address(msg.sender)] = 1
    emit Refunded(contributions[address(msg.sender)], msg.sender);
    call msg.sender with:
       value contributions[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function reserveTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require tokensDistributed < 150000000 * 10^18
    require arg1
    require tokensDistributed + arg2 >= tokensDistributed
    require tokensDistributed + arg2 >= arg2
    require tokensDistributed + arg2 <= 150000000 * 10^18
    require arg2 + tokenBalances[address(arg1)] >= arg2
    require arg2 + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
    tokenBalances[address(arg1)] += arg2
    tokensDistributed += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require block.timestamp < endIco
    if block.timestamp <= startPresale:
        require block.timestamp > startIco
    else:
        if block.timestamp >= endPresale:
            require block.timestamp > startIco
    require msg.value >= 10^17
    require tokensDistributed < 75000000 * 10^18
    require arg1
    if endPresale <= block.timestamp:
        if msg.value >= 335 * 10^18:
            if ethTokenRate:
                require ethTokenRate
                require 120 * ethTokenRate / ethTokenRate == 120
            if msg.value:
                require msg.value
                require msg.value * 120 * ethTokenRate / 100 / msg.value == 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= msg.value * 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
            require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= msg.value * 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= tokensSold
            require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
            require (msg.value * 120 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
            require msg.value + contributions[address(arg1)] >= msg.value
            require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
            contributions[address(arg1)] += msg.value
            require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= msg.value * 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
            tokenBalances[address(arg1)] += msg.value * 120 * ethTokenRate / 100
            require weiReceived + msg.value >= weiReceived
            require weiReceived + msg.value >= msg.value
            weiReceived += msg.value
            tokensDistributed += msg.value * 120 * ethTokenRate / 100
            tokensSold += msg.value * 120 * ethTokenRate / 100
            emit Contribute(msg.value, arg1);
            require ext_code.size(tokenAddress)
            call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * 120 * ethTokenRate / 100
        else:
            if msg.value < 150 * 10^18:
                if ethTokenRate:
                    require ethTokenRate
                    require 100 * ethTokenRate / ethTokenRate == 100
                if msg.value:
                    require msg.value
                    require msg.value * 100 * ethTokenRate / 100 / msg.value == 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokensDistributed >= msg.value * 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 100 * ethTokenRate / 100) + tokensSold >= msg.value * 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 100 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 100 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(arg1)] >= msg.value
                require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
                contributions[address(arg1)] += msg.value
                require (msg.value * 100 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= msg.value * 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
                tokenBalances[address(arg1)] += msg.value * 100 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 100 * ethTokenRate / 100
                tokensSold += msg.value * 100 * ethTokenRate / 100
                emit Contribute(msg.value, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * 100 * ethTokenRate / 100
            else:
                if ethTokenRate:
                    require ethTokenRate
                    require 110 * ethTokenRate / ethTokenRate == 110
                if msg.value:
                    require msg.value
                    require msg.value * 110 * ethTokenRate / 100 / msg.value == 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(arg1)] >= msg.value
                require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
                contributions[address(arg1)] += msg.value
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
                tokenBalances[address(arg1)] += msg.value * 110 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 110 * ethTokenRate / 100
                tokensSold += msg.value * 110 * ethTokenRate / 100
                emit Contribute(msg.value, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * 110 * ethTokenRate / 100
    else:
        if msg.value >= 335 * 10^18:
            if ethTokenRate:
                require ethTokenRate
                require 130 * ethTokenRate / ethTokenRate == 130
            if msg.value:
                require msg.value
                require msg.value * 130 * ethTokenRate / 100 / msg.value == 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokensDistributed >= msg.value * 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
            require (msg.value * 130 * ethTokenRate / 100) + tokensSold >= msg.value * 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokensSold >= tokensSold
            require (msg.value * 130 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
            require (msg.value * 130 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
            require msg.value + contributions[address(arg1)] >= msg.value
            require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
            contributions[address(arg1)] += msg.value
            require (msg.value * 130 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= msg.value * 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
            tokenBalances[address(arg1)] += msg.value * 130 * ethTokenRate / 100
            require weiReceived + msg.value >= weiReceived
            require weiReceived + msg.value >= msg.value
            weiReceived += msg.value
            tokensDistributed += msg.value * 130 * ethTokenRate / 100
            tokensSold += msg.value * 130 * ethTokenRate / 100
            emit Contribute(msg.value, arg1);
            require ext_code.size(tokenAddress)
            call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * 130 * ethTokenRate / 100
        else:
            if msg.value < 150 * 10^18:
                if ethTokenRate:
                    require ethTokenRate
                    require 110 * ethTokenRate / ethTokenRate == 110
                if msg.value:
                    require msg.value
                    require msg.value * 110 * ethTokenRate / 100 / msg.value == 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(arg1)] >= msg.value
                require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
                contributions[address(arg1)] += msg.value
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
                tokenBalances[address(arg1)] += msg.value * 110 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 110 * ethTokenRate / 100
                tokensSold += msg.value * 110 * ethTokenRate / 100
                emit Contribute(msg.value, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * 110 * ethTokenRate / 100
            else:
                if ethTokenRate:
                    require ethTokenRate
                    require 120 * ethTokenRate / ethTokenRate == 120
                if msg.value:
                    require msg.value
                    require msg.value * 120 * ethTokenRate / 100 / msg.value == 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= msg.value * 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= msg.value * 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 120 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(arg1)] >= msg.value
                require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
                contributions[address(arg1)] += msg.value
                require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= msg.value * 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
                tokenBalances[address(arg1)] += msg.value * 120 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 120 * ethTokenRate / 100
                tokensSold += msg.value * 120 * ethTokenRate / 100
                emit Contribute(msg.value, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * 120 * ethTokenRate / 100
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp < endIco
    if block.timestamp <= startPresale:
        require block.timestamp > startIco
    else:
        if block.timestamp >= endPresale:
            require block.timestamp > startIco
    require msg.value >= 10^17
    require tokensDistributed < 75000000 * 10^18
    require msg.sender
    if endPresale <= block.timestamp:
        if msg.value >= 335 * 10^18:
            if ethTokenRate:
                require ethTokenRate
                require 120 * ethTokenRate / ethTokenRate == 120
            if msg.value:
                require msg.value
                require msg.value * 120 * ethTokenRate / 100 / msg.value == 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= msg.value * 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
            require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= msg.value * 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= tokensSold
            require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
            require (msg.value * 120 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
            require msg.value + contributions[address(msg.sender)] >= msg.value
            require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
            contributions[address(msg.sender)] += msg.value
            require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= msg.value * 120 * ethTokenRate / 100
            require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= tokenBalances[address(msg.sender)]
            tokenBalances[address(msg.sender)] += msg.value * 120 * ethTokenRate / 100
            require weiReceived + msg.value >= weiReceived
            require weiReceived + msg.value >= msg.value
            weiReceived += msg.value
            tokensDistributed += msg.value * 120 * ethTokenRate / 100
            tokensSold += msg.value * 120 * ethTokenRate / 100
            emit Contribute(msg.value, msg.sender);
            require ext_code.size(tokenAddress)
            call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * 120 * ethTokenRate / 100
        else:
            if msg.value < 150 * 10^18:
                if ethTokenRate:
                    require ethTokenRate
                    require 100 * ethTokenRate / ethTokenRate == 100
                if msg.value:
                    require msg.value
                    require msg.value * 100 * ethTokenRate / 100 / msg.value == 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokensDistributed >= msg.value * 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 100 * ethTokenRate / 100) + tokensSold >= msg.value * 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 100 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 100 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(msg.sender)] >= msg.value
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require (msg.value * 100 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= msg.value * 100 * ethTokenRate / 100
                require (msg.value * 100 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= tokenBalances[address(msg.sender)]
                tokenBalances[address(msg.sender)] += msg.value * 100 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 100 * ethTokenRate / 100
                tokensSold += msg.value * 100 * ethTokenRate / 100
                emit Contribute(msg.value, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * 100 * ethTokenRate / 100
            else:
                if ethTokenRate:
                    require ethTokenRate
                    require 110 * ethTokenRate / ethTokenRate == 110
                if msg.value:
                    require msg.value
                    require msg.value * 110 * ethTokenRate / 100 / msg.value == 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(msg.sender)] >= msg.value
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= tokenBalances[address(msg.sender)]
                tokenBalances[address(msg.sender)] += msg.value * 110 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 110 * ethTokenRate / 100
                tokensSold += msg.value * 110 * ethTokenRate / 100
                emit Contribute(msg.value, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * 110 * ethTokenRate / 100
    else:
        if msg.value >= 335 * 10^18:
            if ethTokenRate:
                require ethTokenRate
                require 130 * ethTokenRate / ethTokenRate == 130
            if msg.value:
                require msg.value
                require msg.value * 130 * ethTokenRate / 100 / msg.value == 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokensDistributed >= msg.value * 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
            require (msg.value * 130 * ethTokenRate / 100) + tokensSold >= msg.value * 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokensSold >= tokensSold
            require (msg.value * 130 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
            require (msg.value * 130 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
            require msg.value + contributions[address(msg.sender)] >= msg.value
            require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
            contributions[address(msg.sender)] += msg.value
            require (msg.value * 130 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= msg.value * 130 * ethTokenRate / 100
            require (msg.value * 130 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= tokenBalances[address(msg.sender)]
            tokenBalances[address(msg.sender)] += msg.value * 130 * ethTokenRate / 100
            require weiReceived + msg.value >= weiReceived
            require weiReceived + msg.value >= msg.value
            weiReceived += msg.value
            tokensDistributed += msg.value * 130 * ethTokenRate / 100
            tokensSold += msg.value * 130 * ethTokenRate / 100
            emit Contribute(msg.value, msg.sender);
            require ext_code.size(tokenAddress)
            call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * 130 * ethTokenRate / 100
        else:
            if msg.value < 150 * 10^18:
                if ethTokenRate:
                    require ethTokenRate
                    require 110 * ethTokenRate / ethTokenRate == 110
                if msg.value:
                    require msg.value
                    require msg.value * 110 * ethTokenRate / 100 / msg.value == 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 110 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 110 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(msg.sender)] >= msg.value
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= msg.value * 110 * ethTokenRate / 100
                require (msg.value * 110 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= tokenBalances[address(msg.sender)]
                tokenBalances[address(msg.sender)] += msg.value * 110 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 110 * ethTokenRate / 100
                tokensSold += msg.value * 110 * ethTokenRate / 100
                emit Contribute(msg.value, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * 110 * ethTokenRate / 100
            else:
                if ethTokenRate:
                    require ethTokenRate
                    require 120 * ethTokenRate / ethTokenRate == 120
                if msg.value:
                    require msg.value
                    require msg.value * 120 * ethTokenRate / 100 / msg.value == 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= msg.value * 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed >= tokensDistributed
                require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= msg.value * 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokensSold >= tokensSold
                require (msg.value * 120 * ethTokenRate / 100) + tokensDistributed <= 150000000 * 10^18
                require (msg.value * 120 * ethTokenRate / 100) + tokensSold <= 75000000 * 10^18
                require msg.value + contributions[address(msg.sender)] >= msg.value
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= msg.value * 120 * ethTokenRate / 100
                require (msg.value * 120 * ethTokenRate / 100) + tokenBalances[address(msg.sender)] >= tokenBalances[address(msg.sender)]
                tokenBalances[address(msg.sender)] += msg.value * 120 * ethTokenRate / 100
                require weiReceived + msg.value >= weiReceived
                require weiReceived + msg.value >= msg.value
                weiReceived += msg.value
                tokensDistributed += msg.value * 120 * ethTokenRate / 100
                tokensSold += msg.value * 120 * ethTokenRate / 100
                emit Contribute(msg.value, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.initialTransfer(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * 120 * ethTokenRate / 100
    require ext_call.success
}



}
