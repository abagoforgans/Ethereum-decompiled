contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint16 stor7;
uint256 stor8;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor0 = code.data[1859 len 20]
    stor1 = 10^18 * code.data[1879 len 32]
    stor3 = block.timestamp + (60 * code.data[1911 len 32])
    stor4 = code.data[1943 len 32]
    stor5 = code.data[1987 len 20]
    stor8 = block.timestamp
    return code.data[174 len 1673]
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
uint256 starttime;

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

function starttime() {
    return starttime
}

function price() {
    return price
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor7.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor7.field_8) = 1
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor7.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor7.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor7.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor7.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    if block.timestamp < starttime + (24 * 3600):
        require 65 * price / 100
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / 65 * price / 100
    else:
        if block.timestamp < starttime + (72 * 24 * 3600):
            require 75 * price / 100
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * msg.value / 75 * price / 100
        else:
            if block.timestamp < starttime + (168 * 24 * 3600):
                require 85 * price / 100
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * msg.value / 85 * price / 100
            else:
                if block.timestamp >= starttime + (504 * 24 * 3600):
                    require price
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * msg.value / price
                else:
                    require 90 * price / 100
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * msg.value / 90 * price / 100
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
