contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint8 stor9;
uint256 stor9; offset 16
uint256 stor9; offset 8

function _fallback() payable {
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 0
    Mask(240, 0, stor9.field_16) = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[2719 len 20]
    stor2 = 10^18 * code.data[2739 len 32]
    stor4 = block.timestamp + (60 * code.data[2771 len 32])
    stor5 = code.data[2803 len 32]
    stor6 = 10^18 * code.data[2803 len 32] * code.data[2739 len 32]
    stor7 = code.data[2847 len 20]
    return code.data[430 len 2277]
}



// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 numberOfTokens;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint256 stor9; offset 16
uint256 stor9; offset 8

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

function numberOfTokens() {
    return numberOfTokens
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_30aa189d(?) {
    require beneficiaryAddress == msg.sender
    Mask(248, 0, stor9.field_8) = 1
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
    if not uint8(stor9.field_16):
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= numberOfTokens:
            Mask(240, 0, stor9.field_16) = 1
    if block.timestamp >= deadline:
        Mask(248, 0, stor9.field_8) = 1
    require not uint8(stor9.field_8)
    require uint8(stor9.field_16)
    require amountRaised + msg.value <= fundingGoal
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value * price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
