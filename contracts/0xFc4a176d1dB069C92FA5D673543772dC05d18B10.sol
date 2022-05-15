contract main {




// =====================  Runtime code  =====================


const currentTime = block.timestamp

const LOW_RANGE_RATE = 1

const HIGH_RANGE_RATE = 500000


address beneficiaryAddress;
uint256 fundingGoal;
uint256 fundingCap;
uint256 minContribution;
bool stor4; offset 256
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
uint256 stor4; offset 24
uint256 startTime;
uint256 endTime;
address owner;
uint256 amountRaised;
uint256 refundAmount;
uint256 rate;
uint8 stor11;
uint8 stor11; offset 8
address tokenRewardAddress; offset 16
mapping of uint256 balanceOf;
mapping of uint256 contributions;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function contributions(address arg1) {
    return contributions[arg1]
}

function paused() {
    return bool(uint8(stor11.field_8))
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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

function fundingCapReached() {
    return bool(uint8(stor4.field_8))
}

function owner() {
    return owner
}

function minContribution() {
    return minContribution
}

function refundAmount() {
    return refundAmount
}

function saleClosed() {
    return bool(uint8(stor4.field_16))
}

function fundingGoalReached() {
    return bool(uint8(stor4.field_0))
}

function fundingCap() {
    return fundingCap
}

function changeEndTime(uint256 arg1) {
    require msg.sender == owner
    endTime = arg1
}

function changeStartTime(uint256 arg1) {
    require msg.sender == owner
    startTime = arg1
}

function ownerUnlockFund() {
    require block.timestamp >= endTime
    require msg.sender == owner
    uint8(stor4.field_0) = 0
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 1
    require arg1 <= 500000
    rate = arg1
}

function terminate() {
    require msg.sender == owner
    uint8(stor4.field_16) = 1
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xc8e569a8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause() {
    require msg.sender == owner
    require uint8(stor11.field_8)
    uint8(stor11.field_8) = 0
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.startICO() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor11.field_8)
    uint8(stor11.field_8) = 1
    require ext_code.size(tokenRewardAddress or 0 or 0)
    call tokenRewardAddress or 0 or 0.0xc8e569a8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Pause()
}

function ownerSafeWithdrawal() {
    require msg.sender == owner
    require not uint8(stor11.field_0)
    uint8(stor11.field_0) = 1
    require uint8(stor4.field_0)
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
    uint8(stor11.field_0) = 0
}

function safeWithdrawal() {
    require block.timestamp >= endTime
    require not uint8(stor11.field_0)
    uint8(stor11.field_0) = 1
    if not uint8(stor4.field_0):
        balanceOf[msg.sender] = 0
        if balanceOf[msg.sender] > 0:
            call msg.sender with:
               value balanceOf[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit FundTransfer(msg.sender, balanceOf[msg.sender], 0);
            require balanceOf[msg.sender] + refundAmount >= refundAmount
            refundAmount += balanceOf[msg.sender]
    uint8(stor11.field_0) = 0
}

function ownerAllocateTokens(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not uint8(stor11.field_0)
    uint8(stor11.field_0) = 1
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + amountRaised >= amountRaised
    amountRaised += arg2
    emit FundTransfer(address(arg1), arg2, 1);
    if uint8(stor4.field_0):
        if not uint8(stor4.field_8):
            if amountRaised >= fundingCap:
                uint8(stor4.field_8) = 1
                uint8(stor4.field_16) = 1
                Mask(232, 0, stor4.field_24) = 0
                stor4.field_256 % 1 = 0
                emit CapReached(beneficiaryAddress, amountRaised);
    else:
        if amountRaised >= fundingGoal:
            uint8(stor4.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        if not uint8(stor4.field_8):
            if amountRaised >= fundingCap:
                uint8(stor4.field_8) = 1
                uint8(stor4.field_16) = 1
                Mask(232, 0, stor4.field_24) = 0
                stor4.field_256 % 1 = 0
                emit CapReached(beneficiaryAddress, amountRaised);
    uint8(stor11.field_0) = 0
}

function _fallback() payable {
    require not uint8(stor11.field_8)
    require block.timestamp < endTime
    require block.timestamp >= startTime
    require not uint8(stor4.field_16)
    require not uint8(stor11.field_0)
    uint8(stor11.field_0) = 1
    require msg.value >= minContribution
    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    if not msg.value:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, 0
    else:
        require rate * msg.value / msg.value == rate
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit FundTransfer(msg.sender, msg.value, 1);
    require msg.value + contributions[msg.sender] >= contributions[msg.sender]
    contributions[msg.sender] += msg.value
    if uint8(stor4.field_0):
        if not uint8(stor4.field_8):
            if amountRaised >= fundingCap:
                uint8(stor4.field_8) = 1
                uint8(stor4.field_16) = 1
                Mask(232, 0, stor4.field_24) = 0
                stor4.field_256 % 1 = 0
                emit CapReached(beneficiaryAddress, amountRaised);
    else:
        if amountRaised >= fundingGoal:
            uint8(stor4.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        if not uint8(stor4.field_8):
            if amountRaised >= fundingCap:
                uint8(stor4.field_8) = 1
                uint8(stor4.field_16) = 1
                Mask(232, 0, stor4.field_24) = 0
                stor4.field_256 % 1 = 0
                emit CapReached(beneficiaryAddress, amountRaised);
    uint8(stor11.field_0) = 0
}



}
