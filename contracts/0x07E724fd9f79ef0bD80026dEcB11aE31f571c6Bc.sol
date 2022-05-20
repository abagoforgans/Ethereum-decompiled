contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
uint128 stor6; offset 160
address stor6;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 0
    require not msg.value
    stor0 = code.data[2233 len 20]
    stor1 = 5000 * 10^18
    stor4 = 1532764799
    stor5 = 10^13
    address(stor6.field_0) = code.data[2265 len 20]
    return code.data[266 len 1955]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 amountRemaining;
uint256 deadline;
uint256 price;
uint8 stor6; offset 160
uint128 stor6; offset 160
address tokenRewardAddress;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
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

function amountRemaining() {
    return amountRemaining
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            call beneficiaryAddress with:
               value amountRemaining wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                amountRemaining = 0
                emit FundTransfer(beneficiaryAddress, amountRemaining, 0);
}

function _fallback() payable {
    require not uint8(stor6.field_160)
    amountRaised += msg.value
    amountRemaining += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            emit GoalReached(beneficiaryAddress, amountRaised);
        else:
            require price
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args beneficiaryAddress, fundingGoal - amountRaised / price
            require ext_call.success
        Mask(96, 0, stor6.field_160) = 1
}



}
