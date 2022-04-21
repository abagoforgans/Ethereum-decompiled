contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor31;
uint256 stor32;
uint8 stor33;
uint256 stor34;
uint256 stor35;
address stor36;

function _fallback() payable {
    stor4 = 10^17
    stor5 = 10^14
    stor6 = 25 * 10^9 * 3600
    stor7 = 5 * 10^12
    stor8 = 5 * 10^12
    stor10 = 48 * 24 * 3600
    stor11 = 216 * 24 * 3600
    stor12 = 384 * 24 * 3600
    stor13 = 552 * 24 * 3600
    stor14 = 720 * 24 * 3600
    stor15 = 20
    stor16 = 15
    stor17 = 10
    stor18 = 5
    stor19 = 5
    stor20 = 5
    stor21 = 10
    stor22 = 20
    stor23 = 30
    stor24 = 40
    stor31 = 100000 * 10^18
    stor32 = 175 * 10^18
    stor33 = 0
    require not msg.value
    stor36 = code.data[7900 len 20]
    stor0 = msg.sender
    stor34 = code.data[7920 len 32]
    stor35 = code.data[7952 len 32]
    return code.data[422 len 7466]
}



// =====================  Runtime code  =====================


address creatorAddress;
address buyBackFundAddress;
address bountyPoolAddress;
address advisoryPoolAddress;
uint256 minAcceptedEthAmount;
uint256 maxTotalSupply;
uint256 tokensForInvestors;
uint256 tokensForBounty;
uint256 tokensForAdvisory;
uint256 totalTokenIssued;
uint256 bonusFirstTwoDaysPeriod;
uint256 bonusFirstWeekPeriod;
uint256 bonusSecondWeekPeriod;
uint256 bonusThirdWeekPeriod;
uint256 bonusFourthWeekPeriod;
uint256 bonusFirstTwoDays;
uint256 bonusFirstWeek;
uint256 bonusSecondWeek;
uint256 bonusThirdWeek;
uint256 bonusFourthWeek;
uint256 bonusSubscription;
uint256 bonusOver3ETH;
uint256 bonusOver10ETH;
uint256 bonusOver30ETH;
uint256 bonusOver100ETH;
mapping of uint256 balanceOf;
mapping of uint256 stor26;
mapping of uint256 stor27;
mapping of uint256 stor28;
uint256 totalInvested;
uint256 totalInvestedWithBonuses;
uint256 hardCap;
uint256 softCap;
uint8 stage;
uint256 start;
uint256 end;
address cryptoCopyTokenAddress;

function creator() {
    return creatorAddress
}

function bountyPool() {
    return bountyPoolAddress
}

function tokensForInvestors() {
    return tokensForInvestors
}

function bonusThirdWeek() {
    return bonusThirdWeek
}

function tokensForAdvisory() {
    return tokensForAdvisory
}

function CryptoCopyToken() {
    return cryptoCopyTokenAddress
}

function maxTotalSupply() {
    return maxTotalSupply
}

function bonusSecondWeek() {
    return bonusSecondWeek
}

function bonusOver30ETH() {
    return bonusOver30ETH
}

function advisoryPool() {
    return advisoryPoolAddress
}

function bonusFirstTwoDaysPeriod() {
    return bonusFirstTwoDaysPeriod
}

function bonusThirdWeekPeriod() {
    return bonusThirdWeekPeriod
}

function totalInvested() {
    return totalInvested
}

function totalInvestedWithBonuses() {
    return totalInvestedWithBonuses
}

function totalTokenIssued() {
    return totalTokenIssued
}

function tokensForBounty() {
    return tokensForBounty
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonusFirstWeekPeriod() {
    return bonusFirstWeekPeriod
}

function softCap() {
    return softCap
}

function bonusSecondWeekPeriod() {
    return bonusSecondWeekPeriod
}

function bonusOver100ETH() {
    return bonusOver100ETH
}

function bonusFirstTwoDays() {
    return bonusFirstTwoDays
}

function start() {
    return start
}

function stage() {
    require stage <= 2
    return stage
}

function buyBackFund() {
    return buyBackFundAddress
}

function bonusFirstWeek() {
    return bonusFirstWeek
}

function bonusFourthWeek() {
    return bonusFourthWeek
}

function bonusFourthWeekPeriod() {
    return bonusFourthWeekPeriod
}

function bonusOver3ETH() {
    return bonusOver3ETH
}

function bonusOver10ETH() {
    return bonusOver10ETH
}

function end() {
    return end
}

function minAcceptedEthAmount() {
    return minAcceptedEthAmount
}

function bonusSubscription() {
    return bonusSubscription
}

function hardCap() {
    return hardCap
}

function setEnd(uint256 arg1) {
    require creatorAddress == msg.sender
    end = arg1
}

function setCreator(address arg1) {
    require creatorAddress == msg.sender
    creatorAddress = arg1
}

function setToken(address arg1) {
    require creatorAddress == msg.sender
    cryptoCopyTokenAddress = arg1
}

function setBountyPool(address arg1) {
    require creatorAddress == msg.sender
    bountyPoolAddress = arg1
}

function setBuyBackFund(address arg1) {
    require creatorAddress == msg.sender
    buyBackFundAddress = arg1
}

function setAdvisoryPool(address arg1) {
    require creatorAddress == msg.sender
    advisoryPoolAddress = arg1
}

function withdraw() {
    require creatorAddress == msg.sender
    require stage <= 2
    require stage == 2
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function updateState() {
    if totalInvested >= hardCap:
        stage = 2
    else:
        if block.timestamp > end:
            stage = 2
        else:
            if block.timestamp >= start:
                stage = 1
            else:
                stage = 0
}

function returnOwnershipOfToken() {
    require creatorAddress == msg.sender
    require ext_code.size(cryptoCopyTokenAddress)
    call cryptoCopyTokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args creatorAddress
    require ext_call.success
}

function withdrawBountyAndAdvisory() {
    require creatorAddress == msg.sender
    require ext_code.size(cryptoCopyTokenAddress)
    call cryptoCopyTokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args bountyPoolAddress, tokensForBounty
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(cryptoCopyTokenAddress)
    call cryptoCopyTokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args advisoryPoolAddress, tokensForAdvisory
    require ext_call.success
    require ext_call.return_data[0]
}

function addSubscriptionBonus(address arg1) {
    require creatorAddress == msg.sender
    stor27[address(arg1)] = balanceOf[address(arg1)] * bonusSubscription / 100
    require totalInvestedWithBonuses + (balanceOf[address(arg1)] * bonusSubscription / 100) - stor27[address(arg1)] >= totalInvestedWithBonuses
    totalInvestedWithBonuses = totalInvestedWithBonuses + (balanceOf[address(arg1)] * bonusSubscription / 100) - stor27[address(arg1)]
    require stor26[address(arg1)] + (balanceOf[address(arg1)] * bonusSubscription / 100) - stor27[address(arg1)] >= stor26[address(arg1)]
    stor26[address(arg1)] = stor26[address(arg1)] + (balanceOf[address(arg1)] * bonusSubscription / 100) - stor27[address(arg1)]
}

function releaseTokens(address arg1) {
    require creatorAddress == msg.sender
    require stage <= 2
    if stage == 2:
        require totalInvestedWithBonuses
        if stor28[address(arg1)] != tokensForInvestors * stor26[address(arg1)] / totalInvestedWithBonuses:
            require ext_code.size(cryptoCopyTokenAddress)
            call cryptoCopyTokenAddress.issue(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), (tokensForInvestors * stor26[address(arg1)] / totalInvestedWithBonuses) - stor28[address(arg1)]
            require ext_call.success
            require ext_call.return_data[0]
            stor28[address(arg1)] = tokensForInvestors * stor26[address(arg1)] / totalInvestedWithBonuses
}

function _fallback() payable {
    if totalInvested >= hardCap:
        stage = 2
    else:
        if block.timestamp > end:
            stage = 2
        else:
            if block.timestamp >= start:
                stage = 1
            else:
                stage = 0
    require stage <= 2
    require stage == 1
    require msg.value >= minAcceptedEthAmount
    require totalInvested + msg.value >= totalInvested
    totalInvested += msg.value
    if block.timestamp < start + bonusFirstTwoDaysPeriod:
        if msg.value >= 100 * 10^18:
            require totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver100ETH * msg.value) / 100) >= totalInvestedWithBonuses
            totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver100ETH * msg.value) / 100)
            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value
            require stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver100ETH * msg.value) / 100) >= stor26[address(msg.sender)]
            stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver100ETH * msg.value) / 100)
        else:
            if msg.value >= 30 * 10^18:
                require totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver30ETH * msg.value) / 100) >= totalInvestedWithBonuses
                totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver30ETH * msg.value) / 100)
                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value
                require stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver30ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver30ETH * msg.value) / 100)
            else:
                if msg.value >= 10 * 10^18:
                    require totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver10ETH * msg.value) / 100) >= totalInvestedWithBonuses
                    totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver10ETH * msg.value) / 100)
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver10ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                    stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver10ETH * msg.value) / 100)
                else:
                    if msg.value < 3 * 10^18:
                        require totalInvestedWithBonuses + msg.value + (msg.value * bonusFirstTwoDays / 100) >= totalInvestedWithBonuses
                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusFirstTwoDays / 100)
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require stor26[address(msg.sender)] + msg.value + (msg.value * bonusFirstTwoDays / 100) >= stor26[address(msg.sender)]
                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusFirstTwoDays / 100)
                    else:
                        require totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver3ETH * msg.value) / 100) >= totalInvestedWithBonuses
                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver3ETH * msg.value) / 100)
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver3ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstTwoDays * msg.value) + (bonusOver3ETH * msg.value) / 100)
    else:
        if block.timestamp < start + bonusFirstWeekPeriod:
            if msg.value >= 100 * 10^18:
                require totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= totalInvestedWithBonuses
                totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value
                require stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
            else:
                if msg.value >= 30 * 10^18:
                    require totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= totalInvestedWithBonuses
                    totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                    stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                else:
                    if msg.value >= 10 * 10^18:
                        require totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= totalInvestedWithBonuses
                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                    else:
                        if msg.value < 3 * 10^18:
                            require totalInvestedWithBonuses + msg.value + (msg.value * bonusFirstWeek / 100) >= totalInvestedWithBonuses
                            totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusFirstWeek / 100)
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require stor26[address(msg.sender)] + msg.value + (msg.value * bonusFirstWeek / 100) >= stor26[address(msg.sender)]
                            stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusFirstWeek / 100)
                        else:
                            require totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= totalInvestedWithBonuses
                            totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                            stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFirstWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
        else:
            if block.timestamp < start + bonusSecondWeekPeriod:
                if msg.value >= 100 * 10^18:
                    require totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= totalInvestedWithBonuses
                    totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                    stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
                else:
                    if msg.value >= 30 * 10^18:
                        require totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= totalInvestedWithBonuses
                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                    else:
                        if msg.value >= 10 * 10^18:
                            require totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= totalInvestedWithBonuses
                            totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                            stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                        else:
                            if msg.value < 3 * 10^18:
                                require totalInvestedWithBonuses + msg.value + (msg.value * bonusSecondWeek / 100) >= totalInvestedWithBonuses
                                totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusSecondWeek / 100)
                                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require stor26[address(msg.sender)] + msg.value + (msg.value * bonusSecondWeek / 100) >= stor26[address(msg.sender)]
                                stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusSecondWeek / 100)
                            else:
                                require totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= totalInvestedWithBonuses
                                totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
                                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                                stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusSecondWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
            else:
                if block.timestamp < start + bonusThirdWeekPeriod:
                    if msg.value >= 100 * 10^18:
                        require totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= totalInvestedWithBonuses
                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
                    else:
                        if msg.value >= 30 * 10^18:
                            require totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= totalInvestedWithBonuses
                            totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                            stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                        else:
                            if msg.value >= 10 * 10^18:
                                require totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= totalInvestedWithBonuses
                                totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                                stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                            else:
                                if msg.value < 3 * 10^18:
                                    require totalInvestedWithBonuses + msg.value + (msg.value * bonusThirdWeek / 100) >= totalInvestedWithBonuses
                                    totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusThirdWeek / 100)
                                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require stor26[address(msg.sender)] + msg.value + (msg.value * bonusThirdWeek / 100) >= stor26[address(msg.sender)]
                                    stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusThirdWeek / 100)
                                else:
                                    require totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= totalInvestedWithBonuses
                                    totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
                                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                                    stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusThirdWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
                else:
                    if block.timestamp >= start + bonusFourthWeekPeriod:
                        if msg.value >= 100 * 10^18:
                            require totalInvestedWithBonuses + msg.value + (msg.value * bonusOver100ETH / 100) >= totalInvestedWithBonuses
                            totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusOver100ETH / 100)
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver100ETH / 100) >= stor26[address(msg.sender)]
                            stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver100ETH / 100)
                        else:
                            if msg.value >= 30 * 10^18:
                                require totalInvestedWithBonuses + msg.value + (msg.value * bonusOver30ETH / 100) >= totalInvestedWithBonuses
                                totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusOver30ETH / 100)
                                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver30ETH / 100) >= stor26[address(msg.sender)]
                                stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver30ETH / 100)
                            else:
                                if msg.value >= 10 * 10^18:
                                    require totalInvestedWithBonuses + msg.value + (msg.value * bonusOver10ETH / 100) >= totalInvestedWithBonuses
                                    totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusOver10ETH / 100)
                                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver10ETH / 100) >= stor26[address(msg.sender)]
                                    stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver10ETH / 100)
                                else:
                                    if msg.value < 3 * 10^18:
                                        require totalInvestedWithBonuses + msg.value >= totalInvestedWithBonuses
                                        totalInvestedWithBonuses += msg.value
                                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value
                                        require stor26[address(msg.sender)] + msg.value >= stor26[address(msg.sender)]
                                        stor26[address(msg.sender)] += msg.value
                                    else:
                                        require totalInvestedWithBonuses + msg.value + (msg.value * bonusOver3ETH / 100) >= totalInvestedWithBonuses
                                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusOver3ETH / 100)
                                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value
                                        require stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver3ETH / 100) >= stor26[address(msg.sender)]
                                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusOver3ETH / 100)
                    else:
                        if msg.value >= 100 * 10^18:
                            require totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= totalInvestedWithBonuses
                            totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver100ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                            stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver100ETH * msg.value) / 100)
                        else:
                            if msg.value >= 30 * 10^18:
                                require totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= totalInvestedWithBonuses
                                totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver30ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                                stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver30ETH * msg.value) / 100)
                            else:
                                if msg.value >= 10 * 10^18:
                                    require totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= totalInvestedWithBonuses
                                    totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver10ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                                    stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver10ETH * msg.value) / 100)
                                else:
                                    if msg.value < 3 * 10^18:
                                        require totalInvestedWithBonuses + msg.value + (msg.value * bonusFourthWeek / 100) >= totalInvestedWithBonuses
                                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + (msg.value * bonusFourthWeek / 100)
                                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value
                                        require stor26[address(msg.sender)] + msg.value + (msg.value * bonusFourthWeek / 100) >= stor26[address(msg.sender)]
                                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + (msg.value * bonusFourthWeek / 100)
                                    else:
                                        require totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= totalInvestedWithBonuses
                                        totalInvestedWithBonuses = totalInvestedWithBonuses + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
                                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value
                                        require stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver3ETH * msg.value) / 100) >= stor26[address(msg.sender)]
                                        stor26[address(msg.sender)] = stor26[address(msg.sender)] + msg.value + ((bonusFourthWeek * msg.value) + (bonusOver3ETH * msg.value) / 100)
}



}
