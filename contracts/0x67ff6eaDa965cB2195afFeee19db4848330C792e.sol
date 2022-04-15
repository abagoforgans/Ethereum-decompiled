contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
uint16 stor12;

function _fallback() payable {
    stor12 = 0
    require not msg.value
    stor0 = code.data[2245 len 20]
    stor1 = 10^16
    stor9 = 418368 * 24 * 3600
    stor3 = 418430 * 3600
    stor4 = 10^12
    stor5 = 10^12
    stor6 = 10^12
    stor7 = 10^12
    stor8 = 10^12
    stor10 = code.data[2277 len 20]
    return code.data[179 len 2054]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 sub_665a27cf;
uint256 sub_ed259fed;
uint256 sub_b7ff70b2;
uint256 sub_07684bc9;
uint256 sub_c0405f39;
uint256 sub_1b12d14a;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 fundingGoalReached;
uint8 crowdsaleClosed; offset 8

function sub_07684bc9(?) {
    return sub_07684bc9
}

function sub_1b12d14a(?) {
    return sub_1b12d14a
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_665a27cf(?) {
    return sub_665a27cf
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

function sub_b7ff70b2(?) {
    return sub_b7ff70b2
}

function sub_c0405f39(?) {
    return sub_c0405f39
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function fundingGoalReached() {
    return bool(fundingGoalReached)
}

function sub_ed259fed(?) {
    return sub_ed259fed
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            fundingGoalReached = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        crowdsaleClosed = 1
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if fundingGoalReached:
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    fundingGoalReached = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if fundingGoalReached:
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            fundingGoalReached = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if fundingGoalReached:
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            fundingGoalReached = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    require block.timestamp >= sub_1b12d14a
    require not crowdsaleClosed
    if block.timestamp > sub_1b12d14a + (672 * 24 * 3600):
        require sub_c0405f39
        balanceOf[address(msg.sender)] += msg.value
        amountRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / sub_c0405f39
    else:
        if block.timestamp > sub_1b12d14a + (504 * 24 * 3600):
            require sub_07684bc9
            balanceOf[address(msg.sender)] += msg.value
            amountRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / sub_07684bc9
        else:
            if block.timestamp > sub_1b12d14a + (336 * 24 * 3600):
                require sub_b7ff70b2
                balanceOf[address(msg.sender)] += msg.value
                amountRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / sub_b7ff70b2
            else:
                if block.timestamp <= sub_1b12d14a + (168 * 24 * 3600):
                    require sub_665a27cf
                    balanceOf[address(msg.sender)] += msg.value
                    amountRaised += msg.value
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / sub_665a27cf
                else:
                    require sub_ed259fed
                    balanceOf[address(msg.sender)] += msg.value
                    amountRaised += msg.value
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / sub_ed259fed
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
