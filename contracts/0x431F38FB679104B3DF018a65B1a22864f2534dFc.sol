contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor8;
uint256 stor8; offset 8

function _fallback() payable {
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    require not msg.value
    stor0 = code.data[2269 len 20]
    stor1 = 10^18 * code.data[2289 len 32]
    stor4 = block.timestamp + (60 * code.data[2321 len 32])
    stor5 = 10^12 * code.data[2353 len 32]
    stor6 = code.data[2397 len 20]
    return code.data[328 len 1929]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 currentBalance;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8

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

function currentBalance() {
    return currentBalance
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor8.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor8.field_8) = 1
}

function Withdrawal() {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value currentBalance wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            uint8(stor8.field_0) = 0
        else:
            emit FundTransfer(beneficiaryAddress, currentBalance, 0);
            currentBalance = 0
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    currentBalance += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
