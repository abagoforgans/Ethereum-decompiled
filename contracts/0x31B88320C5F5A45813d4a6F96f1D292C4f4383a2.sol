contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor2; offset 160
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
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
uint8 stor21;
address stor21; offset 8

function _fallback() payable {
    uint8(stor2.field_160) = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    address(stor2.field_0) = code.data[5025 len 20]
    stor3 = 7000 * 10^18
    stor8 = 140 * 10^6
    address(stor2.field_0) = code.data[5025 len 20]
    uint8(stor2.field_160) = 0
    uint8(stor21.field_0) = 0
    stor4 = 0
    stor5 = 0
    stor7 = 0
    stor6 = 0
    require 3600 * code.data[5045 len 32] / 3600 == code.data[5045 len 32]
    require 3600 * code.data[5045 len 32] == (14 * 3600 * code.data[5045 len 32] / 14) + (3600 * code.data[5045 len 32] % 14)
    stor9 = block.number + (3600 * code.data[5045 len 32] / 14)
    stor10 = stor9 + 277714
    stor11 = stor10 + (12 * 3600)
    stor12 = stor9 + 6171
    stor13 = stor12 + 61714
    stor14 = stor13 + 61714
    stor15 = stor14 + 61714
    stor16 = 2000
    stor17 = 1500
    stor18 = 1300
    stor19 = 1100
    stor20 = 1000
    address(stor21.field_8) = code.data[5089 len 20]
    return code.data[908 len 4105]
}



// =====================  Runtime code  =====================


address controllerAddress;
address creatorAddress;
uint8 state; offset 160
address fundRecipientAddress;
uint256 fundingGoal;
uint256 totalRaised;
uint256 currentBalance;
uint256 issuedTokenBalance;
uint256 totalTokensIssued;
uint256 capTokenAmount;
uint256 startBlockNumber;
uint256 endBlockNumber;
uint256 eolBlockNumber;
uint256 firstExchangeRatePeriod;
uint256 secondExchangeRatePeriod;
uint256 thirdExchangeRatePeriod;
uint256 fourthExchangeRatePeriod;
uint256 firstTokenExchangeRate;
uint256 secondTokenExchangeRate;
uint256 thirdTokenExchangeRate;
uint256 fourthTokenExchangeRate;
uint256 finalTokenExchangeRate;
uint8 fundingGoalReached;
address exchangeTokenAddress; offset 8
mapping of uint256 stor22;
mapping of uint8 stor23;

function creator() {
    return creatorAddress
}

function secondTokenExchangeRate() {
    return secondTokenExchangeRate
}

function firstTokenExchangeRate() {
    return firstTokenExchangeRate
}

function startBlockNumber() {
    return startBlockNumber
}

function capTokenAmount() {
    return capTokenAmount
}

function thirdExchangeRatePeriod() {
    return thirdExchangeRatePeriod
}

function finalTokenExchangeRate() {
    return finalTokenExchangeRate
}

function fundingGoal() {
    return fundingGoal
}

function totalTokensIssued() {
    return totalTokensIssued
}

function fourthExchangeRatePeriod() {
    return fourthExchangeRatePeriod
}

function exchangeToken() {
    return exchangeTokenAddress
}

function endBlockNumber() {
    return endBlockNumber
}

function thirdTokenExchangeRate() {
    return thirdTokenExchangeRate
}

function state() {
    require state <= 3
    return state
}

function totalRaised() {
    return totalRaised
}

function secondExchangeRatePeriod() {
    return secondExchangeRatePeriod
}

function currentBalance() {
    return currentBalance
}

function fundingGoalReached() {
    return bool(fundingGoalReached)
}

function fourthTokenExchangeRate() {
    return fourthTokenExchangeRate
}

function issuedTokenBalance() {
    return issuedTokenBalance
}

function fundRecipient() {
    return fundRecipientAddress
}

function controller() {
    return controllerAddress
}

function eolBlockNumber() {
    return eolBlockNumber
}

function firstExchangeRatePeriod() {
    return firstExchangeRatePeriod
}

function investment() payable {
    require state <= 3
    require not state
    require block.number >= startBlockNumber
    require bool(stor23[address(msg.sender)]) != 1
    require msg.value >= 10^16
    require msg.value
    stor22[address(msg.sender)] += msg.value
    totalRaised += msg.value
    currentBalance += msg.value
    if block.number <= firstExchangeRatePeriod:
        if ext_code.size(exchangeTokenAddress):
            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * firstTokenExchangeRate / 10^18
            if ext_call.success:
                totalTokensIssued += msg.value * firstTokenExchangeRate / 10^18
                issuedTokenBalance += msg.value * firstTokenExchangeRate / 10^18
                emit FundTransfer(msg.sender, msg.value, 1);
                if block.number <= endBlockNumber:
                    if totalTokensIssued < capTokenAmount:
                        if currentBalance > fundingGoal:
                            if not fundingGoalReached:
                                fundingGoalReached = 1
                                state = 2
                                require state <= 3
                                require state == 2
                                currentBalance = 0
                                call fundRecipientAddress with:
                                   value currentBalance wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                issuedTokenBalance = 0
                                require ext_code.size(exchangeTokenAddress)
                                call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args fundRecipientAddress, issuedTokenBalance
                                require ext_call.success
                                state = 0
                                emit GoalReached(fundRecipientAddress, totalRaised);
                        return stor22[address(msg.sender)]
                if currentBalance <= fundingGoal:
                    if bool(fundingGoalReached) != 1:
                        state = 1
                        emit RefundPeriodStarted()
                        return stor22[address(msg.sender)]
                state = 2
                if state <= 3:
                    require state == 2
                    currentBalance = 0
                    call fundRecipientAddress with:
                       value currentBalance wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        issuedTokenBalance = 0
                        if ext_code.size(exchangeTokenAddress):
                            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args fundRecipientAddress, issuedTokenBalance
                            if ext_call.success:
                                emit HardCapReached(fundRecipientAddress, totalRaised);
                                if state <= 3:
                                    if state != 1:
                                        if state <= 3:
                                            require state == 2
                                            state = 3
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args 1
                                                if ext_call.success:
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                             gas gas_remaining - 710 wei
                                                            args controllerAddress
                                                        if ext_call.success:
                                                            selfdestruct(msg.sender)
                                    else:
                                        if block.number > eolBlockNumber:
                                            state = 3
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args 1
                                                if ext_call.success:
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                             gas gas_remaining - 710 wei
                                                            args controllerAddress
                                                        if ext_call.success:
                                                            selfdestruct(msg.sender)
                                        else:
                                            if state <= 3:
                                                require state == 2
                                                state = 3
                                                if ext_code.size(exchangeTokenAddress):
                                                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 1
                                                    if ext_call.success:
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.0x3cebb823 with:
                                                                 gas gas_remaining - 710 wei
                                                                args controllerAddress
                                                            if ext_call.success:
                                                                selfdestruct(msg.sender)
    else:
        if block.number <= secondExchangeRatePeriod:
            if ext_code.size(exchangeTokenAddress):
                call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * secondTokenExchangeRate / 10^18
                if ext_call.success:
                    totalTokensIssued += msg.value * secondTokenExchangeRate / 10^18
                    issuedTokenBalance += msg.value * secondTokenExchangeRate / 10^18
                    emit FundTransfer(msg.sender, msg.value, 1);
                    if block.number <= endBlockNumber:
                        if totalTokensIssued < capTokenAmount:
                            if currentBalance > fundingGoal:
                                if not fundingGoalReached:
                                    fundingGoalReached = 1
                                    state = 2
                                    require state <= 3
                                    require state == 2
                                    currentBalance = 0
                                    call fundRecipientAddress with:
                                       value currentBalance wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    issuedTokenBalance = 0
                                    require ext_code.size(exchangeTokenAddress)
                                    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args fundRecipientAddress, issuedTokenBalance
                                    require ext_call.success
                                    state = 0
                                    emit GoalReached(fundRecipientAddress, totalRaised);
                            return stor22[address(msg.sender)]
                    if currentBalance <= fundingGoal:
                        if bool(fundingGoalReached) != 1:
                            state = 1
                            emit RefundPeriodStarted()
                            return stor22[address(msg.sender)]
                    state = 2
                    if state <= 3:
                        require state == 2
                        currentBalance = 0
                        call fundRecipientAddress with:
                           value currentBalance wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            issuedTokenBalance = 0
                            if ext_code.size(exchangeTokenAddress):
                                call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args fundRecipientAddress, issuedTokenBalance
                                if ext_call.success:
                                    emit HardCapReached(fundRecipientAddress, totalRaised);
                                    if state <= 3:
                                        if state != 1:
                                            if state <= 3:
                                                require state == 2
                                                state = 3
                                                if ext_code.size(exchangeTokenAddress):
                                                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 1
                                                    if ext_call.success:
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.0x3cebb823 with:
                                                                 gas gas_remaining - 710 wei
                                                                args controllerAddress
                                                            if ext_call.success:
                                                                selfdestruct(msg.sender)
                                        else:
                                            if block.number > eolBlockNumber:
                                                state = 3
                                                if ext_code.size(exchangeTokenAddress):
                                                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 1
                                                    if ext_call.success:
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.0x3cebb823 with:
                                                                 gas gas_remaining - 710 wei
                                                                args controllerAddress
                                                            if ext_call.success:
                                                                selfdestruct(msg.sender)
                                            else:
                                                if state <= 3:
                                                    require state == 2
                                                    state = 3
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args 1
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
                                                                    selfdestruct(msg.sender)
        else:
            if block.number <= thirdExchangeRatePeriod:
                if ext_code.size(exchangeTokenAddress):
                    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * thirdTokenExchangeRate / 10^18
                    if ext_call.success:
                        totalTokensIssued += msg.value * thirdTokenExchangeRate / 10^18
                        issuedTokenBalance += msg.value * thirdTokenExchangeRate / 10^18
                        emit FundTransfer(msg.sender, msg.value, 1);
                        if block.number <= endBlockNumber:
                            if totalTokensIssued < capTokenAmount:
                                if currentBalance > fundingGoal:
                                    if not fundingGoalReached:
                                        fundingGoalReached = 1
                                        state = 2
                                        require state <= 3
                                        require state == 2
                                        currentBalance = 0
                                        call fundRecipientAddress with:
                                           value currentBalance wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        issuedTokenBalance = 0
                                        require ext_code.size(exchangeTokenAddress)
                                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args fundRecipientAddress, issuedTokenBalance
                                        require ext_call.success
                                        state = 0
                                        emit GoalReached(fundRecipientAddress, totalRaised);
                                return stor22[address(msg.sender)]
                        if currentBalance <= fundingGoal:
                            if bool(fundingGoalReached) != 1:
                                state = 1
                                emit RefundPeriodStarted()
                                return stor22[address(msg.sender)]
                        state = 2
                        if state <= 3:
                            require state == 2
                            currentBalance = 0
                            call fundRecipientAddress with:
                               value currentBalance wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                issuedTokenBalance = 0
                                if ext_code.size(exchangeTokenAddress):
                                    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args fundRecipientAddress, issuedTokenBalance
                                    if ext_call.success:
                                        emit HardCapReached(fundRecipientAddress, totalRaised);
                                        if state <= 3:
                                            if state != 1:
                                                if state <= 3:
                                                    require state == 2
                                                    state = 3
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args 1
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
                                                                    selfdestruct(msg.sender)
                                            else:
                                                if block.number > eolBlockNumber:
                                                    state = 3
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args 1
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
                                                                    selfdestruct(msg.sender)
                                                else:
                                                    if state <= 3:
                                                        require state == 2
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
            else:
                if block.number <= fourthExchangeRatePeriod:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * fourthTokenExchangeRate / 10^18
                        if ext_call.success:
                            totalTokensIssued += msg.value * fourthTokenExchangeRate / 10^18
                            issuedTokenBalance += msg.value * fourthTokenExchangeRate / 10^18
                            emit FundTransfer(msg.sender, msg.value, 1);
                            if block.number <= endBlockNumber:
                                if totalTokensIssued < capTokenAmount:
                                    if currentBalance > fundingGoal:
                                        if not fundingGoalReached:
                                            fundingGoalReached = 1
                                            state = 2
                                            require state <= 3
                                            require state == 2
                                            currentBalance = 0
                                            call fundRecipientAddress with:
                                               value currentBalance wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            issuedTokenBalance = 0
                                            require ext_code.size(exchangeTokenAddress)
                                            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args fundRecipientAddress, issuedTokenBalance
                                            require ext_call.success
                                            state = 0
                                            emit GoalReached(fundRecipientAddress, totalRaised);
                                    return stor22[address(msg.sender)]
                            if currentBalance <= fundingGoal:
                                if bool(fundingGoalReached) != 1:
                                    state = 1
                                    emit RefundPeriodStarted()
                                    return stor22[address(msg.sender)]
                            state = 2
                            if state <= 3:
                                require state == 2
                                currentBalance = 0
                                call fundRecipientAddress with:
                                   value currentBalance wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    issuedTokenBalance = 0
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args fundRecipientAddress, issuedTokenBalance
                                        if ext_call.success:
                                            emit HardCapReached(fundRecipientAddress, totalRaised);
                                            if state <= 3:
                                                if state != 1:
                                                    if state <= 3:
                                                        require state == 2
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                else:
                                                    if block.number > eolBlockNumber:
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                    else:
                                                        if state <= 3:
                                                            require state == 2
                                                            state = 3
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args 1
                                                                if ext_call.success:
                                                                    if ext_code.size(exchangeTokenAddress):
                                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args controllerAddress
                                                                        if ext_call.success:
                                                                            selfdestruct(msg.sender)
                else:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * finalTokenExchangeRate / 10^18
                        if ext_call.success:
                            totalTokensIssued += msg.value * finalTokenExchangeRate / 10^18
                            issuedTokenBalance += msg.value * finalTokenExchangeRate / 10^18
                            emit FundTransfer(msg.sender, msg.value, 1);
                            if block.number <= endBlockNumber:
                                if totalTokensIssued < capTokenAmount:
                                    if currentBalance > fundingGoal:
                                        if not fundingGoalReached:
                                            fundingGoalReached = 1
                                            state = 2
                                            require state <= 3
                                            require state == 2
                                            currentBalance = 0
                                            call fundRecipientAddress with:
                                               value currentBalance wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            issuedTokenBalance = 0
                                            require ext_code.size(exchangeTokenAddress)
                                            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args fundRecipientAddress, issuedTokenBalance
                                            require ext_call.success
                                            state = 0
                                            emit GoalReached(fundRecipientAddress, totalRaised);
                                    return stor22[address(msg.sender)]
                            if currentBalance <= fundingGoal:
                                if bool(fundingGoalReached) != 1:
                                    state = 1
                                    emit RefundPeriodStarted()
                                    return stor22[address(msg.sender)]
                            state = 2
                            if state <= 3:
                                require state == 2
                                currentBalance = 0
                                call fundRecipientAddress with:
                                   value currentBalance wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    issuedTokenBalance = 0
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args fundRecipientAddress, issuedTokenBalance
                                        if ext_call.success:
                                            emit HardCapReached(fundRecipientAddress, totalRaised);
                                            if state <= 3:
                                                if state != 1:
                                                    if state <= 3:
                                                        require state == 2
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                else:
                                                    if block.number > eolBlockNumber:
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                    else:
                                                        if state <= 3:
                                                            require state == 2
                                                            state = 3
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args 1
                                                                if ext_call.success:
                                                                    if ext_code.size(exchangeTokenAddress):
                                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args controllerAddress
                                                                        if ext_call.success:
                                                                            selfdestruct(msg.sender)
    revert
}

function checkIfFundingCompleteOrExpired() {
    if block.number <= endBlockNumber:
        if totalTokensIssued < capTokenAmount:
            if currentBalance > fundingGoal:
                if not fundingGoalReached:
                    fundingGoalReached = 1
                    state = 2
                    require state <= 3
                    require state == 2
                    currentBalance = 0
                    call fundRecipientAddress with:
                       value currentBalance wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    issuedTokenBalance = 0
                    require ext_code.size(exchangeTokenAddress)
                    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args fundRecipientAddress, issuedTokenBalance
                    require ext_call.success
                    state = 0
                    emit GoalReached(fundRecipientAddress, totalRaised);
    if currentBalance <= fundingGoal:
        if bool(fundingGoalReached) != 1:
            state = 1
            emit RefundPeriodStarted()
    state = 2
    require state <= 3
    require state == 2
    currentBalance = 0
    call fundRecipientAddress with:
       value currentBalance wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    issuedTokenBalance = 0
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args fundRecipientAddress, issuedTokenBalance
    require ext_call.success
    emit HardCapReached(fundRecipientAddress, totalRaised);
    require state <= 3
    if state != 1:
        if state <= 3:
            require state == 2
            state = 3
            if ext_code.size(exchangeTokenAddress):
                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                     gas gas_remaining - 710 wei
                    args 1
                if ext_call.success:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.0x3cebb823 with:
                             gas gas_remaining - 710 wei
                            args controllerAddress
                        if ext_call.success:
                            selfdestruct(msg.sender)
    else:
        if block.number > eolBlockNumber:
            state = 3
            if ext_code.size(exchangeTokenAddress):
                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                     gas gas_remaining - 710 wei
                    args 1
                if ext_call.success:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.0x3cebb823 with:
                             gas gas_remaining - 710 wei
                            args controllerAddress
                        if ext_call.success:
                            selfdestruct(msg.sender)
        else:
            if state <= 3:
                require state == 2
                state = 3
                if ext_code.size(exchangeTokenAddress):
                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                         gas gas_remaining - 710 wei
                        args 1
                    if ext_call.success:
                        if ext_code.size(exchangeTokenAddress):
                            call exchangeTokenAddress.0x3cebb823 with:
                                 gas gas_remaining - 710 wei
                                args controllerAddress
                            if ext_call.success:
                                selfdestruct(msg.sender)
    revert
}

function removeContract() {
    require state <= 3
    if state != 1:
        if state <= 3:
            require state == 2
            state = 3
            if ext_code.size(exchangeTokenAddress):
                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                     gas gas_remaining - 710 wei
                    args 1
                if ext_call.success:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.0x3cebb823 with:
                             gas gas_remaining - 710 wei
                            args controllerAddress
                        if ext_call.success:
                            selfdestruct(msg.sender)
    else:
        if block.number > eolBlockNumber:
            state = 3
            if ext_code.size(exchangeTokenAddress):
                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                     gas gas_remaining - 710 wei
                    args 1
                if ext_call.success:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.0x3cebb823 with:
                             gas gas_remaining - 710 wei
                            args controllerAddress
                        if ext_call.success:
                            selfdestruct(msg.sender)
        else:
            if state <= 3:
                require state == 2
                state = 3
                if ext_code.size(exchangeTokenAddress):
                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                         gas gas_remaining - 710 wei
                        args 1
                    if ext_call.success:
                        if ext_code.size(exchangeTokenAddress):
                            call exchangeTokenAddress.0x3cebb823 with:
                                 gas gas_remaining - 710 wei
                                args controllerAddress
                            if ext_call.success:
                                selfdestruct(msg.sender)
    revert
}

function _fallback() payable {
    require state <= 3
    require not state
    require block.number >= startBlockNumber
    require bool(stor23[address(msg.sender)]) != 1
    require msg.value >= 10^16
    require msg.value
    stor22[address(msg.sender)] += msg.value
    totalRaised += msg.value
    currentBalance += msg.value
    if block.number <= firstExchangeRatePeriod:
        if ext_code.size(exchangeTokenAddress):
            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * firstTokenExchangeRate / 10^18
            if ext_call.success:
                totalTokensIssued += msg.value * firstTokenExchangeRate / 10^18
                issuedTokenBalance += msg.value * firstTokenExchangeRate / 10^18
                emit FundTransfer(msg.sender, msg.value, 1);
                if block.number <= endBlockNumber:
                    if totalTokensIssued < capTokenAmount:
                        if currentBalance > fundingGoal:
                            if not fundingGoalReached:
                                fundingGoalReached = 1
                                state = 2
                                require state <= 3
                                require state == 2
                                currentBalance = 0
                                call fundRecipientAddress with:
                                   value currentBalance wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                issuedTokenBalance = 0
                                require ext_code.size(exchangeTokenAddress)
                                call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args fundRecipientAddress, issuedTokenBalance
                                require ext_call.success
                                state = 0
                                emit GoalReached(fundRecipientAddress, totalRaised);
                if currentBalance <= fundingGoal:
                    if bool(fundingGoalReached) != 1:
                        state = 1
                        emit RefundPeriodStarted()
                state = 2
                if state <= 3:
                    require state == 2
                    currentBalance = 0
                    call fundRecipientAddress with:
                       value currentBalance wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        issuedTokenBalance = 0
                        if ext_code.size(exchangeTokenAddress):
                            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args fundRecipientAddress, issuedTokenBalance
                            if ext_call.success:
                                emit HardCapReached(fundRecipientAddress, totalRaised);
                                if state <= 3:
                                    if state != 1:
                                        if state <= 3:
                                            require state == 2
                                            state = 3
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args 1
                                                if ext_call.success:
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                             gas gas_remaining - 710 wei
                                                            args controllerAddress
                                                        if ext_call.success:
                                                            selfdestruct(msg.sender)
                                    else:
                                        if block.number > eolBlockNumber:
                                            state = 3
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args 1
                                                if ext_call.success:
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                             gas gas_remaining - 710 wei
                                                            args controllerAddress
                                                        if ext_call.success:
                                                            selfdestruct(msg.sender)
                                        else:
                                            if state <= 3:
                                                require state == 2
                                                state = 3
                                                if ext_code.size(exchangeTokenAddress):
                                                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 1
                                                    if ext_call.success:
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.0x3cebb823 with:
                                                                 gas gas_remaining - 710 wei
                                                                args controllerAddress
                                                            if ext_call.success:
                                                                selfdestruct(msg.sender)
    else:
        if block.number <= secondExchangeRatePeriod:
            if ext_code.size(exchangeTokenAddress):
                call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * secondTokenExchangeRate / 10^18
                if ext_call.success:
                    totalTokensIssued += msg.value * secondTokenExchangeRate / 10^18
                    issuedTokenBalance += msg.value * secondTokenExchangeRate / 10^18
                    emit FundTransfer(msg.sender, msg.value, 1);
                    if block.number <= endBlockNumber:
                        if totalTokensIssued < capTokenAmount:
                            if currentBalance > fundingGoal:
                                if not fundingGoalReached:
                                    fundingGoalReached = 1
                                    state = 2
                                    require state <= 3
                                    require state == 2
                                    currentBalance = 0
                                    call fundRecipientAddress with:
                                       value currentBalance wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    issuedTokenBalance = 0
                                    require ext_code.size(exchangeTokenAddress)
                                    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args fundRecipientAddress, issuedTokenBalance
                                    require ext_call.success
                                    state = 0
                                    emit GoalReached(fundRecipientAddress, totalRaised);
                    if currentBalance <= fundingGoal:
                        if bool(fundingGoalReached) != 1:
                            state = 1
                            emit RefundPeriodStarted()
                    state = 2
                    if state <= 3:
                        require state == 2
                        currentBalance = 0
                        call fundRecipientAddress with:
                           value currentBalance wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            issuedTokenBalance = 0
                            if ext_code.size(exchangeTokenAddress):
                                call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args fundRecipientAddress, issuedTokenBalance
                                if ext_call.success:
                                    emit HardCapReached(fundRecipientAddress, totalRaised);
                                    if state <= 3:
                                        if state != 1:
                                            if state <= 3:
                                                require state == 2
                                                state = 3
                                                if ext_code.size(exchangeTokenAddress):
                                                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 1
                                                    if ext_call.success:
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.0x3cebb823 with:
                                                                 gas gas_remaining - 710 wei
                                                                args controllerAddress
                                                            if ext_call.success:
                                                                selfdestruct(msg.sender)
                                        else:
                                            if block.number > eolBlockNumber:
                                                state = 3
                                                if ext_code.size(exchangeTokenAddress):
                                                    call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 1
                                                    if ext_call.success:
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.0x3cebb823 with:
                                                                 gas gas_remaining - 710 wei
                                                                args controllerAddress
                                                            if ext_call.success:
                                                                selfdestruct(msg.sender)
                                            else:
                                                if state <= 3:
                                                    require state == 2
                                                    state = 3
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args 1
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
                                                                    selfdestruct(msg.sender)
        else:
            if block.number <= thirdExchangeRatePeriod:
                if ext_code.size(exchangeTokenAddress):
                    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * thirdTokenExchangeRate / 10^18
                    if ext_call.success:
                        totalTokensIssued += msg.value * thirdTokenExchangeRate / 10^18
                        issuedTokenBalance += msg.value * thirdTokenExchangeRate / 10^18
                        emit FundTransfer(msg.sender, msg.value, 1);
                        if block.number <= endBlockNumber:
                            if totalTokensIssued < capTokenAmount:
                                if currentBalance > fundingGoal:
                                    if not fundingGoalReached:
                                        fundingGoalReached = 1
                                        state = 2
                                        require state <= 3
                                        require state == 2
                                        currentBalance = 0
                                        call fundRecipientAddress with:
                                           value currentBalance wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        issuedTokenBalance = 0
                                        require ext_code.size(exchangeTokenAddress)
                                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args fundRecipientAddress, issuedTokenBalance
                                        require ext_call.success
                                        state = 0
                                        emit GoalReached(fundRecipientAddress, totalRaised);
                        if currentBalance <= fundingGoal:
                            if bool(fundingGoalReached) != 1:
                                state = 1
                                emit RefundPeriodStarted()
                        state = 2
                        if state <= 3:
                            require state == 2
                            currentBalance = 0
                            call fundRecipientAddress with:
                               value currentBalance wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                issuedTokenBalance = 0
                                if ext_code.size(exchangeTokenAddress):
                                    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args fundRecipientAddress, issuedTokenBalance
                                    if ext_call.success:
                                        emit HardCapReached(fundRecipientAddress, totalRaised);
                                        if state <= 3:
                                            if state != 1:
                                                if state <= 3:
                                                    require state == 2
                                                    state = 3
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args 1
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
                                                                    selfdestruct(msg.sender)
                                            else:
                                                if block.number > eolBlockNumber:
                                                    state = 3
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args 1
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
                                                                    selfdestruct(msg.sender)
                                                else:
                                                    if state <= 3:
                                                        require state == 2
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
            else:
                if block.number <= fourthExchangeRatePeriod:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * fourthTokenExchangeRate / 10^18
                        if ext_call.success:
                            totalTokensIssued += msg.value * fourthTokenExchangeRate / 10^18
                            issuedTokenBalance += msg.value * fourthTokenExchangeRate / 10^18
                            emit FundTransfer(msg.sender, msg.value, 1);
                            if block.number <= endBlockNumber:
                                if totalTokensIssued < capTokenAmount:
                                    if currentBalance > fundingGoal:
                                        if not fundingGoalReached:
                                            fundingGoalReached = 1
                                            state = 2
                                            require state <= 3
                                            require state == 2
                                            currentBalance = 0
                                            call fundRecipientAddress with:
                                               value currentBalance wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            issuedTokenBalance = 0
                                            require ext_code.size(exchangeTokenAddress)
                                            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args fundRecipientAddress, issuedTokenBalance
                                            require ext_call.success
                                            state = 0
                                            emit GoalReached(fundRecipientAddress, totalRaised);
                            if currentBalance <= fundingGoal:
                                if bool(fundingGoalReached) != 1:
                                    state = 1
                                    emit RefundPeriodStarted()
                            state = 2
                            if state <= 3:
                                require state == 2
                                currentBalance = 0
                                call fundRecipientAddress with:
                                   value currentBalance wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    issuedTokenBalance = 0
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args fundRecipientAddress, issuedTokenBalance
                                        if ext_call.success:
                                            emit HardCapReached(fundRecipientAddress, totalRaised);
                                            if state <= 3:
                                                if state != 1:
                                                    if state <= 3:
                                                        require state == 2
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                else:
                                                    if block.number > eolBlockNumber:
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                    else:
                                                        if state <= 3:
                                                            require state == 2
                                                            state = 3
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args 1
                                                                if ext_call.success:
                                                                    if ext_code.size(exchangeTokenAddress):
                                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args controllerAddress
                                                                        if ext_call.success:
                                                                            selfdestruct(msg.sender)
                else:
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * finalTokenExchangeRate / 10^18
                        if ext_call.success:
                            totalTokensIssued += msg.value * finalTokenExchangeRate / 10^18
                            issuedTokenBalance += msg.value * finalTokenExchangeRate / 10^18
                            emit FundTransfer(msg.sender, msg.value, 1);
                            if block.number <= endBlockNumber:
                                if totalTokensIssued < capTokenAmount:
                                    if currentBalance > fundingGoal:
                                        if not fundingGoalReached:
                                            fundingGoalReached = 1
                                            state = 2
                                            require state <= 3
                                            require state == 2
                                            currentBalance = 0
                                            call fundRecipientAddress with:
                                               value currentBalance wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            issuedTokenBalance = 0
                                            require ext_code.size(exchangeTokenAddress)
                                            call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args fundRecipientAddress, issuedTokenBalance
                                            require ext_call.success
                                            state = 0
                                            emit GoalReached(fundRecipientAddress, totalRaised);
                            if currentBalance <= fundingGoal:
                                if bool(fundingGoalReached) != 1:
                                    state = 1
                                    emit RefundPeriodStarted()
                            state = 2
                            if state <= 3:
                                require state == 2
                                currentBalance = 0
                                call fundRecipientAddress with:
                                   value currentBalance wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    issuedTokenBalance = 0
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args fundRecipientAddress, issuedTokenBalance
                                        if ext_call.success:
                                            emit HardCapReached(fundRecipientAddress, totalRaised);
                                            if state <= 3:
                                                if state != 1:
                                                    if state <= 3:
                                                        require state == 2
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                else:
                                                    if block.number > eolBlockNumber:
                                                        state = 3
                                                        if ext_code.size(exchangeTokenAddress):
                                                            call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args 1
                                                            if ext_call.success:
                                                                if ext_code.size(exchangeTokenAddress):
                                                                    call exchangeTokenAddress.0x3cebb823 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args controllerAddress
                                                                    if ext_call.success:
                                                                        selfdestruct(msg.sender)
                                                    else:
                                                        if state <= 3:
                                                            require state == 2
                                                            state = 3
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.enableTransfers(bool rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args 1
                                                                if ext_call.success:
                                                                    if ext_code.size(exchangeTokenAddress):
                                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args controllerAddress
                                                                        if ext_call.success:
                                                                            selfdestruct(msg.sender)
    revert
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require controllerAddress == msg.sender
    stor23[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function getRefund() {
    require state <= 3
    require state == 1
    stor22[address(msg.sender)] = 0
    call msg.sender with:
       value stor22[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    currentBalance -= stor22[address(msg.sender)]
    emit FundTransfer(msg.sender, stor22[address(msg.sender)], 0);
}

function payOut() {
    require state <= 3
    require state == 2
    currentBalance = 0
    call fundRecipientAddress with:
       value currentBalance wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    issuedTokenBalance = 0
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args fundRecipientAddress, issuedTokenBalance
    require ext_call.success
}

function getCurrentExchangeRate(uint256 arg1) {
    if block.number <= firstExchangeRatePeriod:
        return (arg1 * firstTokenExchangeRate / 10^18)
    if block.number <= secondExchangeRatePeriod:
        return (arg1 * secondTokenExchangeRate / 10^18)
    if block.number <= thirdExchangeRatePeriod:
        return (arg1 * thirdTokenExchangeRate / 10^18)
    if block.number <= fourthExchangeRatePeriod:
        return (arg1 * fourthTokenExchangeRate / 10^18)
    return (arg1 * finalTokenExchangeRate / 10^18)
}



}
