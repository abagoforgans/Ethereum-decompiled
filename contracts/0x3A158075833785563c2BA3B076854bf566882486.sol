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
    stor0 = 0x83a7f7fe2c5f81fa16c8d36b8f2004ce90954c56
    stor1 = 2 * 10^15
    stor3 = 3600
    stor5 = 10^15
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    require not msg.value
    stor4 = block.timestamp + stor3
    stor6 = 0x5d3e7c252afdb54ef3728acc4b16145caa6cc08a
    return code.data[295 len 2368]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 duration;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8

function duration() {
    return duration
}

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
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
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
            if balanceOf[address(msg.sender)] <= 0:
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
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
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
