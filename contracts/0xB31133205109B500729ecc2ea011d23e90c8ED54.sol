contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
address stor6;
uint32 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = code.data[1854 len 20]
    stor1 = 10^18 * code.data[1874 len 32]
    stor2 = 10^18 * code.data[1906 len 32]
    stor4 = (60 * code.data[1938 len 32]) + block.timestamp
    stor5 = 13 * 10^15 * code.data[1970 len 32]
    stor6 = code.data[2014 len 20]
    return code.data[198 len 1644]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 softCap;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16

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

function softCap() {
    return softCap
}

function price() {
    return price
}

function checkGoalReached() {
    if amountRaised >= fundingGoal:
        uint8(stor8.field_8) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor8.field_16) = 1
    if amountRaised >= softCap:
        uint8(stor8.field_0) = 1
        emit 0x127a0d60: beneficiaryAddress, amountRaised
}

function _fallback() payable {
    require amountRaised + msg.value < fundingGoal
    balanceOf[address(msg.sender)] += 10^18 * msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor8.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor8.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor8.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor8.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    balanceOf[address(msg.sender)] = 10^18 * balanceOf[address(msg.sender)]
                else:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor8.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor8.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
