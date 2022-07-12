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
uint256 stor7; offset 8

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
    require calldata.size - 4 >= 32
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

function safeWithdrawal() {
    if beneficiaryAddress == msg.sender:
        call msg.sender with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            Mask(248, 0, stor7.field_8) = 1
            if amountRaised <= fundingGoal:
                require price
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, fundingGoal - amountRaised / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    require msg.value >= 10^18
    if amountRaised <= fundingGoal:
        if amountRaised + msg.value <= fundingGoal:
            balanceOf[address(msg.sender)] += msg.value
            amountRaised += msg.value
            require price
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value / price
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit FundTransfer(msg.sender, msg.value, 1);
        else:
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + fundingGoal - amountRaised
            amountRaised = fundingGoal
            require price
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, fundingGoal - amountRaised / price
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit FundTransfer(msg.sender, fundingGoal - amountRaised, 1);
    if amountRaised == fundingGoal:
        if amountRaised >= fundingGoal:
            uint8(stor7.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor7.field_8) = 1
}



}
