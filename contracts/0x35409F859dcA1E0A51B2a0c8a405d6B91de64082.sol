contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor7;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            stor7 = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 3000 * msg.value / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() payable {
    if block.timestamp >= deadline:
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] <= 0:
            if stor7:
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor7 = 0
                    else:
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            call msg.sender with:
               value balanceOf[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
            if stor7:
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor7 = 0
                    else:
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
