contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor7 = 0
    stor8 = 25 * 10^18
    stor9 = 0
    require not msg.value
    stor0 = code.data[1778 len 20]
    stor1 = 10^18 * code.data[1798 len 32]
    stor3 = block.timestamp + (60 * code.data[1830 len 32])
    require code.data[1862 len 32]
    stor4 = 10^18 / code.data[1862 len 32]
    stor5 = code.data[1906 len 20]
    return code.data[207 len 1559]
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
uint256 stor8;
uint8 stor9;

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
            stor7 = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        stor9 = 1
}

function withdrawal(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value 10^15 * arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, 10^15 * arg1, 0);
}

function _fallback() payable {
    require not stor9
    balanceOf[address(msg.sender)] = msg.value
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
    if block.timestamp >= deadline:
        if amountRaised >= stor8:
            if stor7:
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor7 = 0
                    else:
                        emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if stor7:
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor7 = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if stor7:
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor7 = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
}



}
