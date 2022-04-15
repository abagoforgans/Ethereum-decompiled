contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
address stor4;
uint8 stor6;
uint256 stor6; offset 16
uint256 stor6; offset 8

function _fallback() payable {
    uint8(stor6.field_0) = 0
    Mask(248, 0, stor6.field_8) = 0
    Mask(240, 0, stor6.field_16) = 0
    require not msg.value
    stor0 = code.data[1946 len 20]
    stor1 = 10^18 * code.data[1966 len 32]
    stor3 = 10^12 * code.data[1998 len 32]
    stor4 = code.data[2042 len 20]
    return code.data[201 len 1733]
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
uint256 stor6; offset 8

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

function crowdsaleClosed() {
    return bool(uint8(stor6.field_8))
}

function fundingGoalReached() {
    return bool(uint8(stor6.field_0))
}

function checkGoalReached() {
    if amountRaised >= fundingGoal:
        uint8(stor6.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
    Mask(248, 0, stor6.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor6.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    if uint8(stor6.field_0):
        if beneficiaryAddress == msg.sender:
            call beneficiaryAddress with:
               value amountRaised wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                uint8(stor6.field_0) = 0
            else:
                emit FundTransfer(beneficiaryAddress, amountRaised, 0);
    else:
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] <= 0:
            if uint8(stor6.field_0):
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        uint8(stor6.field_0) = 0
                    else:
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            call msg.sender with:
               value balanceOf[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
            if uint8(stor6.field_0):
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        uint8(stor6.field_0) = 0
                    else:
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
