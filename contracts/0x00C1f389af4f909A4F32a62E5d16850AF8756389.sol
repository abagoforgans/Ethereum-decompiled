contract main {




// =====================  Runtime code  =====================


const currentTime = block.timestamp

const LOW_RANGE_RATE = 10000

const HIGH_RANGE_RATE = 14000


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 fundingCap;
uint256 minContribution;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint256 stor5; offset 16
uint256 stor5; offset 8
uint256 startTime;
uint256 endTime;
uint256 amountRaised;
uint256 refundAmount;
uint256 rate;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
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
    return bool(uint8(stor5.field_8))
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
    return bool(uint8(stor5.field_16))
}

function fundingGoalReached() {
    return bool(uint8(stor5.field_0))
}

function fundingCap() {
    return fundingCap
}

function terminate() {
    require msg.sender == owner
    Mask(240, 0, stor5.field_16) = 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 >= 10000
    require arg1 <= 14000
    rate = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ownerSafeWithdrawal() {
    require msg.sender == owner
    call 0x1bb7390407f7987bd160993de44d6f2737945436 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
}

function ownerAllocateTokens(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    staticcall tokenRewardAddress.0x8da5cb5b with:
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
    require amountRaised + arg2 >= amountRaised
    amountRaised += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit FundTransfer(address(arg1), arg2, 1);
    if uint8(stor5.field_0):
        if not uint8(stor5.field_8):
            if amountRaised >= fundingCap:
                Mask(248, 0, stor5.field_8) = 1
                Mask(240, 0, stor5.field_16) = 1
                emit CapReached(beneficiaryAddress, amountRaised);
    else:
        if amountRaised >= fundingGoal:
            uint8(stor5.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        if not uint8(stor5.field_8):
            if amountRaised >= fundingCap:
                Mask(248, 0, stor5.field_8) = 1
                Mask(240, 0, stor5.field_16) = 1
                emit CapReached(beneficiaryAddress, amountRaised);
}

function buy() payable {
    require not uint8(stor0.field_160)
    require block.timestamp < endTime
    require block.timestamp >= startTime
    require not uint8(stor5.field_16)
    require msg.value >= minContribution
    if not msg.value:
        require ext_code.size(tokenRewardAddress)
        staticcall tokenRewardAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, 0
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require ext_code.size(tokenRewardAddress)
        staticcall tokenRewardAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
    if uint8(stor5.field_0):
        if not uint8(stor5.field_8):
            if amountRaised >= fundingCap:
                Mask(248, 0, stor5.field_8) = 1
                Mask(240, 0, stor5.field_16) = 1
                emit CapReached(beneficiaryAddress, amountRaised);
    else:
        if amountRaised >= fundingGoal:
            uint8(stor5.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        if not uint8(stor5.field_8):
            if amountRaised >= fundingCap:
                Mask(248, 0, stor5.field_8) = 1
                Mask(240, 0, stor5.field_16) = 1
                emit CapReached(beneficiaryAddress, amountRaised);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp < endTime
    require block.timestamp >= startTime
    require not uint8(stor5.field_16)
    require msg.value >= minContribution
    if not msg.value:
        require ext_code.size(tokenRewardAddress)
        staticcall tokenRewardAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, 0
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require ext_code.size(tokenRewardAddress)
        staticcall tokenRewardAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
    if uint8(stor5.field_0):
        if not uint8(stor5.field_8):
            if amountRaised >= fundingCap:
                Mask(248, 0, stor5.field_8) = 1
                Mask(240, 0, stor5.field_16) = 1
                emit CapReached(beneficiaryAddress, amountRaised);
    else:
        if amountRaised >= fundingGoal:
            uint8(stor5.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        if not uint8(stor5.field_8):
            if amountRaised >= fundingCap:
                Mask(248, 0, stor5.field_8) = 1
                Mask(240, 0, stor5.field_16) = 1
                emit CapReached(beneficiaryAddress, amountRaised);
}



}
