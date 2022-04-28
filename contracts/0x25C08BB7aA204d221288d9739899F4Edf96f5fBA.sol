contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint16 stor10;

function _fallback() payable {
    stor10 = 0
    require not msg.value
    stor0 = code.data[1547 len 20]
    stor1 = 10^18 * code.data[1567 len 32]
    stor4 = block.timestamp + (60 * code.data[1599 len 32])
    stor5 = 1337 * 10^10
    stor6 = 747943160
    stor7 = 747943160
    stor8 = code.data[1643 len 20]
    return code.data[180 len 1355]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 stor3;
uint256 deadline;
uint256 price;
uint256 initialTokenAmount;
uint256 currentTokenAmount;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor10;
uint8 stor10; offset 8

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function initialTokenAmount() {
    return initialTokenAmount
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

function currentTokenAmount() {
    return currentTokenAmount
}

function bank() {
    if beneficiaryAddress == msg.sender:
        if stor3 > 0:
            stor3 = 0
            call beneficiaryAddress with:
               value stor3 wei
                 gas 2300 * is_zero(value) wei
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor10.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor10.field_8) = 1
}

function returnUnsoldSafe() {
    if beneficiaryAddress == msg.sender:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, 100000
        require ext_call.success
}

function returnUnsold() {
    if beneficiaryAddress == msg.sender:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, currentTokenAmount
        require ext_call.success
}

function _fallback() payable {
    require not uint8(stor10.field_8)
    if msg.value > 0:
        balanceOf[address(msg.sender)] += msg.value
        amountRaised += msg.value
        stor3 += msg.value
        require price
        currentTokenAmount -= msg.value / price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^18 * msg.value / price
        require ext_call.success
}



}
