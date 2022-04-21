contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
address stor4;
uint16 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = code.data[1411 len 20]
    stor1 = 10^18 * code.data[1431 len 32]
    stor3 = 10^14 * code.data[1463 len 32]
    stor4 = code.data[1507 len 20]
    return code.data[165 len 1234]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor6;
uint8 stor6; offset 8

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

function changeOwner(address arg1) {
    require beneficiaryAddress == msg.sender
    beneficiaryAddress = arg1
}

function checkGoalReached() {
    if amountRaised >= fundingGoal:
        uint8(stor6.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
    uint8(stor6.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor6.field_8)
    require msg.value >= 10^14
    if beneficiaryAddress != msg.sender:
        balanceOf[address(msg.sender)] += msg.value
        amountRaised += msg.value
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / price
        require ext_call.success
        emit FundTransfer(msg.sender, msg.value, 1);
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit FundTransfer(beneficiaryAddress, msg.value, 0);
}



}
