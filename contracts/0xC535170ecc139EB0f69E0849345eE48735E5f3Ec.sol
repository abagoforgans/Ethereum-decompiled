contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 amountRemaining;
uint256 price;
uint8 stor5; offset 160
uint128 stor5; offset 160
address tokenRewardAddress;

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
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value amountRemaining wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            amountRemaining = 0
            emit FundTransfer(beneficiaryAddress, amountRemaining, 0);
}

function checkGoalReached() {
    if beneficiaryAddress == msg.sender:
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, (3 * fundingGoal) - (3 * amountRaised) / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(96, 0, stor5.field_160) = 1
}

function _fallback() payable {
    require not uint8(stor5.field_160)
    amountRaised += msg.value
    amountRemaining += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 3 * msg.value / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
