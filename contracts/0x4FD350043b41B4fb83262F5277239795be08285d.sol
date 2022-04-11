contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor7;
uint16 stor9;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    stor0 = code.data[1637 len 20]
    stor1 = 10^18 * code.data[1657 len 32]
    stor3 = (60 * code.data[1689 len 32]) + block.timestamp
    stor4 = 5 * 10^15 * code.data[1721 len 32]
    stor7 = code.data[1765 len 20]
    return code.data[174 len 1451]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 sub_9fde3c7f;
uint256 sub_cb8b8514;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor9;
uint8 stor9; offset 8

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

function sub_cb8b8514(?) {
    return sub_cb8b8514
}

function closeCrowdSale() {
    if beneficiaryAddress == msg.sender:
        uint8(stor9.field_8) = 1
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        uint8(stor9.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
}

function withdrawTokens(uint256 arg1) {
    if beneficiaryAddress != msg.sender:
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}

function safeWithdrawal(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, arg1, 0);
}

function _fallback() payable {
    require not uint8(stor9.field_8)
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
