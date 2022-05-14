contract main {


// =======================  Init code  ======================


uint8 stor0; offset 152
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
    Mask(152, 0, stor0.field_0) = 0x3d4ccada83d6e61ec2c7c2abbbfc28cb8253f7
    uint8(stor0.field_152) = 0
    stor1 = 5500 * 10^18
    stor3 = block.timestamp + (372 * 3600)
    stor4 = 166666666667
    stor5 = 0x59c8639e08d7b003e1d7ac5734ea5c1eb64d2d18
    return code.data[320 len 2558]
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
