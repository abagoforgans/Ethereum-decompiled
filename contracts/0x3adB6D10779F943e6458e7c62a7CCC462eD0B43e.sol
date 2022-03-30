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
    stor0 = code.data[2489 len 20]
    stor1 = 10^18 * code.data[2509 len 32]
    stor3 = block.timestamp + (60 * code.data[2541 len 32])
    stor4 = 10^18 * code.data[2573 len 32]
    stor5 = code.data[2617 len 20]
    return code.data[356 len 2121]
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
uint8 stor7; offset 16
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

function sub_30aa189d(?) {
    require beneficiaryAddress == msg.sender
    if (10^6 * fundingGoal) - (10^6 * amountRaised) < 1:
        Mask(248, 0, stor7.field_8) = 1
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            call beneficiaryAddress with:
               value amountRaised wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    if not uint8(stor7.field_16):
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] / 10^6 >= fundingGoal:
            Mask(240, 0, stor7.field_16) = 1
    if block.timestamp < deadline:
        Mask(248, 0, stor7.field_8) = 0
    else:
        Mask(248, 0, stor7.field_8) = 1
    require not uint8(stor7.field_8)
    require uint8(stor7.field_16)
    require amountRaised + msg.value <= fundingGoal
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
