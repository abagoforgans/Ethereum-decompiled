contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint16 stor7;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor0 = code.data[1410 len 20]
    stor1 = 10^18 * code.data[1430 len 32]
    stor3 = (60 * code.data[1462 len 32]) + block.timestamp
    stor4 = 10^15 * code.data[1494 len 32]
    stor5 = code.data[1538 len 20]
    return code.data[183 len 1215]
}



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
            uint8(stor7.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
}

function safeWithdrawal() {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            uint8(stor7.field_0) = 0
        else:
            amountRaised = 0
            emit FundTransfer(beneficiaryAddress, 0, 0);
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
