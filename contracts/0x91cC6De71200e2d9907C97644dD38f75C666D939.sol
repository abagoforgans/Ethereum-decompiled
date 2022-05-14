contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor7;
uint256 stor7; offset 16
uint256 stor7; offset 8

function _fallback() payable {
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    Mask(240, 0, stor7.field_16) = 0
    require not msg.value
    stor0 = code.data[2920 len 20]
    stor1 = 10^18 * code.data[2940 len 32]
    stor3 = block.timestamp + (60 * code.data[2972 len 32])
    stor4 = 166666666667
    stor5 = code.data[3048 len 20]
    return code.data[350 len 2558]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor7; offset 8
uint256 stor7; offset 16
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

function transferTo(uint256 arg1, address arg2) {
    if block.timestamp < deadline:
        require amountRaised >= fundingGoal
    if beneficiaryAddress == msg.sender:
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(address(arg2), arg1, 0);
}

function sub_c4650a03(?) {
    if block.timestamp < deadline:
        require amountRaised >= fundingGoal
    if beneficiaryAddress == msg.sender:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
}

function safeWithdrawal() {
    if block.timestamp < deadline:
        require amountRaised >= fundingGoal
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            Mask(240, 0, stor7.field_16) = 1
        else:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    require block.timestamp < deadline
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 55 * msg.value / 10^10
    require ext_call.success
    if amountRaised >= fundingGoal:
        Mask(248, 0, stor7.field_8) = 1
        emit GoalReached(msg.sender, amountRaised);
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
