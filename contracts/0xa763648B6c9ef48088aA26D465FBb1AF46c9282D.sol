contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint16 stor8;

function _fallback() payable {
    stor0 = 0
    stor1 = 150000 * 10^18
    stor2 = 150000 * 10^18
    stor3 = 3000 * 24 * 3600
    stor4 = 10^18
    stor5 = 10^16
    stor8 = 0
    require not msg.value
    stor0 = code.data[1180 len 20]
    stor1 = code.data[1200 len 32]
    stor3 = code.data[1232 len 32] + 60
    stor4 = 10^18 * code.data[1264 len 32]
    stor6 = code.data[1308 len 20]
    return code.data[231 len 937]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 minBuyableAmount;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8;
uint8 stor8; offset 8

function minBuyableAmount() {
    return minBuyableAmount
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
    if 3000 * 24 * 3600 >= deadline:
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



}
