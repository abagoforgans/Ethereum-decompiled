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
    stor8 = 0
    require not msg.value
    stor0 = code.data[1869 len 20]
    stor1 = 10^18 * code.data[1889 len 32]
    stor3 = block.timestamp + (24 * 3600 * code.data[1921 len 32])
    stor4 = stor5 / 10^18
    stor6 = code.data[1965 len 20]
    return code.data[179 len 1678]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 rateAt;
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

function getRateAt() {
    return rateAt
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

function getRateAt(uint256 arg1) {
    if arg1 < block.timestamp:
        return 0
    if arg1 < block.timestamp + (24 * 3600):
        return 5600
    if arg1 < block.timestamp + (48 * 24 * 3600):
        return 5200
    if arg1 < block.timestamp + (72 * 24 * 3600):
        return 4800
    if arg1 < block.timestamp + (96 * 24 * 3600):
        return 4400
    if arg1 > block.timestamp + (168 * 24 * 3600):
        return 0
    return 4000
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
            call beneficiaryAddress with:
               value amountRaised wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                uint8(stor8.field_0) = 0
            else:
                emit FundTransfer(beneficiaryAddress, amountRaised, 0);
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
