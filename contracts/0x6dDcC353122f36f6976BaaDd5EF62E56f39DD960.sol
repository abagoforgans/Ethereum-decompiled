contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor7;
uint256 stor7; offset 8

function _fallback() payable {
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    require not msg.value
    stor0 = 0xd2e5bd9c6ddc363586061c6129d6122f0d7a2cb
    stor1 = 80 * 10^18
    stor3 = block.timestamp + 2592600
    stor4 = 25000
    stor5 = 0xea29ac8bf5001592178f6cd1275a1d0433f94c5b
    return code.data[290 len 2473]
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
uint256 stor7; offset 8

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
        Mask(248, 0, stor7.field_8) = 1
}

function safeWithdrawal() {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == beneficiaryAddress
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
