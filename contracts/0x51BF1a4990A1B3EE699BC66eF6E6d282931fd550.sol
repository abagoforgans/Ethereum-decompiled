contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint8 stor9;
uint256 stor9; offset 8

function _fallback() payable {
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 0
    require not msg.value
    stor0 = code.data[3706 len 20]
    stor1 = 10^18 * code.data[3726 len 32]
    stor3 = block.timestamp + (60 * code.data[3758 len 32])
    stor4 = 10^18 * code.data[3790 len 32]
    stor5 = 100 * code.data[3822 len 32]
    stor6 = stor5
    stor7 = code.data[3866 len 20]
    return code.data[357 len 3337]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 tokensForSale;
uint256 sub_e4f2dbd8;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8

function tokensForSale() {
    return tokensForSale
}

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

function crowdsaleClosed() {
    return bool(uint8(stor9.field_8))
}

function sub_e4f2dbd8(?) {
    return sub_e4f2dbd8
}

function sub_43a5826c(?) {
    if beneficiaryAddress == msg.sender:
        uint8(stor9.field_0) = 1
        deadline = block.timestamp
        Mask(248, 0, stor9.field_8) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            if amountRaised >= fundingGoal:
                uint8(stor9.field_0) = 1
                emit GoalReached(beneficiaryAddress, amountRaised);
            Mask(248, 0, stor9.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor9.field_8)
    require msg.value <= fundingGoal - amountRaised
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    if amountRaised >= fundingGoal:
        uint8(stor9.field_0) = 1
        deadline = block.timestamp
        Mask(248, 0, stor9.field_8) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 100 * msg.value / price
    require ext_call.success
    sub_e4f2dbd8 -= 100 * msg.value / price
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor9.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor9.field_0) = 0
                else:
                    if sub_e4f2dbd8 > 0:
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x42966c68 with:
                             gas gas_remaining - 710 wei
                            args sub_e4f2dbd8
                        require ext_call.success
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > 0:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
            if uint8(stor9.field_0):
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        uint8(stor9.field_0) = 0
                    else:
                        if sub_e4f2dbd8 > 0:
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x42966c68 with:
                                 gas gas_remaining - 710 wei
                                args sub_e4f2dbd8
                            require ext_call.success
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
