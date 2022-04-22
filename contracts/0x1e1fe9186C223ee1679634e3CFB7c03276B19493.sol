contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor13;
uint256 stor13; offset 8

function _fallback() payable {
    uint8(stor13.field_0) = 0
    Mask(248, 0, stor13.field_8) = 0
    require not msg.value
    stor0 = code.data[3368 len 20]
    stor1 = code.data[3400 len 20]
    stor7 = code.data[3420 len 32]
    stor5 = 10^18 * code.data[3452 len 32]
    stor6 = 10^18 * code.data[3484 len 32]
    stor2 = stor1
    stor3 = block.timestamp + (60 * code.data[3292 len 32])
    stor9 = stor3 + (168 * 24 * 3600 * code.data[3516 len 32])
    stor10 = stor3 + (168 * 24 * 3600 * code.data[3548 len 32])
    stor11 = stor3 + (168 * 24 * 3600 * code.data[3580 len 32])
    stor4 = stor3 + (60 * code.data[3324 len 32])
    return code.data[565 len 2727]
}



// =====================  Runtime code  =====================


address walletAddress;
address stor2;
uint256 startTimeInMinutes;
uint256 endTimeinMinutes;
uint256 fundingGoal;
uint256 minimumFundingGoal;
uint256 price;
uint256 weiRaised;
uint256 firstWeekBonusInWeek;
uint256 secondWeekBonusInWeek;
uint256 thirdWeekBonusInWeek;
mapping of uint256 balanceOf;
uint8 stor13;

function secondWeekBonusInWeek() {
    return secondWeekBonusInWeek
}

function minimumFundingGoal() {
    return minimumFundingGoal
}

function thirdWeekBonusInWeek() {
    return thirdWeekBonusInWeek
}

function endTimeinMinutes() {
    return endTimeinMinutes
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function fundingGoal() {
    return fundingGoal
}

function startTimeInMinutes() {
    return startTimeInMinutes
}

function price() {
    return price
}

function firstWeekBonusInWeek() {
    return firstWeekBonusInWeek
}

function hasEnded() {
    return (block.timestamp > endTimeinMinutes)
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTimeInMinutes
    require block.timestamp <= endTimeinMinutes
    require msg.value
    balanceOf[address(msg.sender)] += msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor2)
    if block.timestamp < firstWeekBonusInWeek:
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), (msg.value * price) + (20 * msg.value * price / 100)
        require ext_call.success
        emit TokenPurchase(msg.value, (msg.value * price) + (20 * msg.value * price / 100), msg.sender, arg1);
    else:
        if block.timestamp < secondWeekBonusInWeek:
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (msg.value * price) + (10 * msg.value * price / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (msg.value * price) + (10 * msg.value * price / 100), msg.sender, arg1);
        else:
            if block.timestamp >= thirdWeekBonusInWeek:
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * price
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value * price, msg.sender, arg1);
            else:
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (msg.value * price) + (5 * msg.value * price / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (msg.value * price) + (5 * msg.value * price / 100), msg.sender, arg1);
}

function _fallback() payable {
    require msg.value >= 5 * 10^17
    require msg.sender
    require block.timestamp >= startTimeInMinutes
    require block.timestamp <= endTimeinMinutes
    require msg.value
    balanceOf[address(msg.sender)] += msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor2)
    if block.timestamp < firstWeekBonusInWeek:
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * price) + (20 * msg.value * price / 100)
        require ext_call.success
        emit TokenPurchase(msg.value, (msg.value * price) + (20 * msg.value * price / 100), msg.sender, msg.sender);
    else:
        if block.timestamp < secondWeekBonusInWeek:
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (msg.value * price) + (10 * msg.value * price / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (msg.value * price) + (10 * msg.value * price / 100), msg.sender, msg.sender);
        else:
            if block.timestamp >= thirdWeekBonusInWeek:
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * price
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value * price, msg.sender, msg.sender);
            else:
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * price) + (5 * msg.value * price / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (msg.value * price) + (5 * msg.value * price / 100), msg.sender, msg.sender);
}

function safeWithdrawal() {
    require block.timestamp > endTimeinMinutes
    if weiRaised >= fundingGoal:
        if walletAddress == msg.sender:
            call walletAddress with:
               value weiRaised wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                stor13 = 0
            else:
                emit FundTransfer(walletAddress, weiRaised, 0);
                emit GoalReached(walletAddress, weiRaised);
    else:
        if weiRaised >= minimumFundingGoal:
            if weiRaised >= fundingGoal:
                if walletAddress == msg.sender:
                    call walletAddress with:
                       value weiRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor13 = 0
                    else:
                        emit FundTransfer(walletAddress, weiRaised, 0);
                        emit GoalReached(walletAddress, weiRaised);
            else:
                if weiRaised >= minimumFundingGoal:
                    if walletAddress == msg.sender:
                        call walletAddress with:
                           value weiRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor13 = 0
                        else:
                            emit FundTransfer(walletAddress, weiRaised, 0);
                            emit GoalReached(walletAddress, weiRaised);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if weiRaised >= fundingGoal:
                    if walletAddress == msg.sender:
                        call walletAddress with:
                           value weiRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor13 = 0
                        else:
                            emit FundTransfer(walletAddress, weiRaised, 0);
                            emit GoalReached(walletAddress, weiRaised);
                else:
                    if weiRaised >= minimumFundingGoal:
                        if walletAddress == msg.sender:
                            call walletAddress with:
                               value weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                stor13 = 0
                            else:
                                emit FundTransfer(walletAddress, weiRaised, 0);
                                emit GoalReached(walletAddress, weiRaised);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if weiRaised >= fundingGoal:
                    if walletAddress == msg.sender:
                        call walletAddress with:
                           value weiRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor13 = 0
                        else:
                            emit FundTransfer(walletAddress, weiRaised, 0);
                            emit GoalReached(walletAddress, weiRaised);
                else:
                    if weiRaised >= minimumFundingGoal:
                        if walletAddress == msg.sender:
                            call walletAddress with:
                               value weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                stor13 = 0
                            else:
                                emit FundTransfer(walletAddress, weiRaised, 0);
                                emit GoalReached(walletAddress, weiRaised);
}



}
