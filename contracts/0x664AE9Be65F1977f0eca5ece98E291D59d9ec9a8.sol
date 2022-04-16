contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
address stor6;
address stor7;
uint32 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    stor0 = 0x7486516460cddc841ca7293c2a01328d359eb609
    stor1 = 4166 * 10^18
    stor10 = 418500 * 3600
    stor11 = 418836 * 3600
    stor4 = 833 * 10^15
    stor5 = 10^18
    stor7 = code.data[2434 len 20]
    stor6 = 0x45e044ed9bf130eafafa8095115eda69fc3b0d20
    return code.data[213 len 2209]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 minimumEntryThreshold;
address devAddr;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint256 startTime;
uint256 endTime;

function deadline() {
    return deadline
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function minimumEntryThreshold() {
    return minimumEntryThreshold
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function devPaid() {
    return bool(uint8(stor9.field_16))
}

function startTime() {
    return startTime
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

function devAddr() {
    return devAddr
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function checkGoalReached() {
    if block.timestamp > endTime:
        if amountRaised >= fundingGoal:
            uint8(stor9.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor9.field_8) = 1
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value >= minimumEntryThreshold
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= 10^10 * msg.value / price
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^10 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    if block.timestamp > endTime:
        if amountRaised >= fundingGoal:
            uint8(stor9.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor9.field_8) = 1
        if not uint8(stor9.field_16):
            if amountRaised < 10 * 10^18:
                call devAddr with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit FundTransfer(devAddr, amountRaised, 1);
            else:
                call devAddr with:
                   value 10 * 10^18 wei
                     gas 0 wei
                require ext_call.success
                emit FundTransfer(devAddr, 10 * 10^18, 1);
            uint8(stor9.field_16) = 1
        if uint8(stor9.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised - 10 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor9.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised - 10 * 10^18, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor9.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised - 10 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor9.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised - 10 * 10^18, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor9.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised - 10 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor9.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised - 10 * 10^18, 0);
}



}
