contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor8;
uint256 stor8; offset 8

function _fallback() payable {
    stor5 = 18
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    require not msg.value
    stor0 = code.data[2740 len 20]
    stor1 = 10^18 * code.data[2760 len 32]
    stor3 = block.timestamp + (60 * code.data[2792 len 32])
    stor4 = 10^16
    stor6 = code.data[2836 len 20]
    return code.data[320 len 2408]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 decimals;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8

function deadline() {
    return deadline
}

function decimals() {
    return decimals
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
            uint8(stor8.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor8.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price * 10^decimals
    require ext_call.success
    require price
    emit FundTransfer(msg.sender, msg.value / price * 10^decimals, 1);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor8.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor8.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > 0:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    require price
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)] / price * 10^decimals, 0);
            if uint8(stor8.field_0):
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        uint8(stor8.field_0) = 0
                    else:
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
