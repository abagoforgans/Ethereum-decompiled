contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
address stor6;
uint16 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1687 len 20]
    stor2 = 10^18 * code.data[1707 len 32]
    stor4 = (60 * code.data[1739 len 32]) + block.timestamp
    stor5 = 10^13 * code.data[1771 len 32]
    stor6 = code.data[1815 len 20]
    return code.data[202 len 1473]
}



// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
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

function price() {
    return price
}

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor8.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor8.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    balanceOf[address(msg.sender)] = msg.value
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
