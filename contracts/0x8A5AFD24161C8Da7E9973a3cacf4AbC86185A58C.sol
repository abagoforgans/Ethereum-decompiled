contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor6;
uint16 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = code.data[1642 len 20]
    stor1 = 10^18 * code.data[1662 len 32]
    stor3 = (60 * code.data[1694 len 32]) + block.timestamp
    stor4 = 10^18 * code.data[1726 len 32]
    stor6 = code.data[1770 len 20]
    return code.data[167 len 1463]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 sub_9fde3c7f;
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

function sub_9fde3c7f(?) {
    return sub_9fde3c7f
}

function price() {
    return price
}

function closeCrowdSale() {
    if beneficiaryAddress == msg.sender:
        uint8(stor8.field_8) = 1
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        uint8(stor8.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor8.field_8) = 1
}

function withdrawTokens(uint256 arg1) {
    if beneficiaryAddress != msg.sender:
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}

function safeWithdrawal() {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            uint8(stor8.field_0) = 0
        else:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
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



}
