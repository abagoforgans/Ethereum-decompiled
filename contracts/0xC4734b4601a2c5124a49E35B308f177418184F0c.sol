contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint16 stor8;

function _fallback() payable {
    stor5 = 10^18
    stor8 = 0
    require not msg.value
    stor0 = code.data[1672 len 20]
    stor1 = 10^18 * code.data[1692 len 32]
    stor3 = (60 * code.data[1724 len 32]) + block.timestamp
    stor4 = code.data[1756 len 32]
    stor6 = code.data[1800 len 20]
    return code.data[178 len 1482]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 minAmount;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8;
uint8 stor8; offset 8

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

function minAmount() {
    return minAmount
}

function price() {
    return price
}

function checkGoalReached() {
    require block.timestamp >= deadline
    if amountRaised >= fundingGoal:
        uint8(stor8.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
    uint8(stor8.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    require msg.value >= minAmount
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10000 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    require block.timestamp >= deadline
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
