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
uint8 stor7; offset 8
uint256 percent;
mapping of uint256 percentOf;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function percentOf(address arg1) {
    return percentOf[arg1]
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function percent() {
    return percent
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
            uint8(stor7.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor7.field_8) = 1
}

function releaseTenPercent() {
    if block.timestamp >= deadline:
        require uint8(stor7.field_8)
        require 90 >= percent
        if uint8(stor7.field_0):
            if msg.sender == beneficiaryAddress:
                percent += 10
}

function _fallback() payable {
    if uint8(stor7.field_8):
        require balanceOf[msg.sender] > 0
        require percent - percentOf[msg.sender] > 0
        percentOf[msg.sender] = percent
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (10^18 * percent * balanceOf[msg.sender]) - (10^18 * percentOf[msg.sender] * balanceOf[msg.sender]) / price / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardToken(msg.sender, (10^18 * percent * balanceOf[msg.sender]) - (10^18 * percentOf[msg.sender] * balanceOf[msg.sender]) / price / 100, percent - percentOf[msg.sender]);
    else:
        balanceOf[msg.sender] += msg.value
        amountRaised += msg.value
        percentOf[msg.sender] = percent
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value * percent / price / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(msg.sender, msg.value, 1);
        emit RewardToken(msg.sender, 10^18 * msg.value * percent / price / 100, percent);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        require uint8(stor7.field_8)
        if uint8(stor7.field_0):
            if msg.sender == beneficiaryAddress:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor7.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[msg.sender] = 0
            if balanceOf[msg.sender] <= 0:
                if uint8(stor7.field_0):
                    if msg.sender == beneficiaryAddress:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[msg.sender] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[msg.sender], 0);
                if uint8(stor7.field_0):
                    if msg.sender == beneficiaryAddress:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
