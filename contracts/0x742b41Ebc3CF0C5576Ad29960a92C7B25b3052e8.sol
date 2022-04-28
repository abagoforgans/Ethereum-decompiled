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
    stor0 = code.data[1926 len 20]
    stor1 = 10^18 * code.data[1946 len 32]
    stor4 = block.timestamp + (60 * code.data[1978 len 32])
    stor5 = 1337 * 10^10
    stor6 = code.data[2022 len 20]
    return code.data[314 len 1600]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 stor3;
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

function safeWithdrawal() {
  stop
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor8.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor8.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    if beneficiaryAddress != msg.sender:
        if msg.value > 0:
            balanceOf[address(msg.sender)] += msg.value
            amountRaised += msg.value
            stor3 += msg.value
            require price
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^18 * msg.value / price
            require ext_call.success
    else:
        if stor3 > 0:
            stor3 = 0
            call beneficiaryAddress with:
               value stor3 wei
                 gas 2300 * is_zero(value) wei
        else:
            if msg.value > 0:
                balanceOf[address(msg.sender)] += msg.value
                amountRaised += msg.value
                stor3 += msg.value
                require price
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^18 * msg.value / price
                require ext_call.success
}



}
