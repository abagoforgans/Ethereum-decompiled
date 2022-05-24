contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 minimumFundingGoal;
uint256 sub_f0d6e9a8;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint256 sub_28875516;
uint256 sub_c240d55f;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor10; offset 8
mapping of uint256 sub_3c9ce61f;

function minimumFundingGoal() {
    return minimumFundingGoal
}

function sub_28875516(?) {
    return sub_28875516
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_3c9ce61f(?) {
    return sub_3c9ce61f[arg1]
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function sub_c240d55f(?) {
    return sub_c240d55f
}

function sub_f0d6e9a8(?) {
    return sub_f0d6e9a8
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= minimumFundingGoal:
            emit GoalReached(beneficiaryAddress, amountRaised);
    else:
        if amountRaised >= sub_f0d6e9a8:
            if amountRaised >= minimumFundingGoal:
                emit GoalReached(beneficiaryAddress, amountRaised);
}

function sub_5d025cd5(?) {
    sub_3c9ce61f[address(msg.sender)] = 0
    if sub_3c9ce61f[address(msg.sender)] > 0:
        call msg.sender with:
           value sub_3c9ce61f[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(msg.sender, sub_3c9ce61f[address(msg.sender)], 0);
}

function sub_83029586(?) {
    if block.timestamp >= sub_28875516:
        if beneficiaryAddress == msg.sender:
            if not uint8(stor10.field_8):
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= sub_c240d55f
                require ext_code.size(tokenRewardAddress)
                if ext_call.return_data[0] <= sub_c240d55f:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ext_call.return_data[0]
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, sub_c240d55f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                Mask(248, 0, stor10.field_8) = 1
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if amountRaised >= minimumFundingGoal:
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > 0:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
    else:
        if amountRaised >= sub_f0d6e9a8:
            if amountRaised >= minimumFundingGoal:
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] > 0:
                    call msg.sender with:
                       value balanceOf[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
}

function _fallback() payable {
    require block.timestamp < deadline
    require amountRaised < sub_f0d6e9a8
    require msg.value + amountRaised >= msg.value
    if msg.value + amountRaised <= sub_f0d6e9a8:
        require msg.value > 0
        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value
        require amountRaised + msg.value >= amountRaised
        amountRaised += msg.value
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(msg.sender, msg.value, 1);
    else:
        require msg.value + amountRaised >= msg.value
        require sub_f0d6e9a8 <= msg.value + amountRaised
        require msg.value + amountRaised >= msg.value
        require 0 >= -sub_f0d6e9a8
        require msg.value + amountRaised == msg.value + amountRaised
        sub_3c9ce61f[address(msg.sender)] = msg.value + amountRaised - sub_f0d6e9a8
        require amountRaised <= sub_f0d6e9a8
        require sub_f0d6e9a8 - amountRaised > 0
        require balanceOf[address(msg.sender)] + sub_f0d6e9a8 - amountRaised >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + sub_f0d6e9a8 - amountRaised
        require sub_f0d6e9a8 >= amountRaised
        amountRaised = sub_f0d6e9a8
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_f0d6e9a8 - amountRaised / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(msg.sender, sub_f0d6e9a8 - amountRaised, 1);
}

function contribute() payable {
    require block.timestamp < deadline
    require amountRaised < sub_f0d6e9a8
    require msg.value + amountRaised >= msg.value
    if msg.value + amountRaised <= sub_f0d6e9a8:
        require msg.value > 0
        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value
        require amountRaised + msg.value >= amountRaised
        amountRaised += msg.value
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(msg.sender, msg.value, 1);
    else:
        require msg.value + amountRaised >= msg.value
        require sub_f0d6e9a8 <= msg.value + amountRaised
        require msg.value + amountRaised >= msg.value
        require 0 >= -sub_f0d6e9a8
        require msg.value + amountRaised == msg.value + amountRaised
        sub_3c9ce61f[address(msg.sender)] = msg.value + amountRaised - sub_f0d6e9a8
        require amountRaised <= sub_f0d6e9a8
        require sub_f0d6e9a8 - amountRaised > 0
        require balanceOf[address(msg.sender)] + sub_f0d6e9a8 - amountRaised >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + sub_f0d6e9a8 - amountRaised
        require sub_f0d6e9a8 >= amountRaised
        amountRaised = sub_f0d6e9a8
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_f0d6e9a8 - amountRaised / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(msg.sender, sub_f0d6e9a8 - amountRaised, 1);
}

function retrieveUnsoldTokens() {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            if not uint8(stor10.field_0):
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= sub_f0d6e9a8 - amountRaised
                require ext_code.size(tokenRewardAddress)
                if ext_call.return_data[0] <= sub_f0d6e9a8 - amountRaised:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ext_call.return_data[0]
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, sub_f0d6e9a8 - amountRaised
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor10.field_0) = 1
    else:
        if amountRaised >= sub_f0d6e9a8:
            if beneficiaryAddress == msg.sender:
                if not uint8(stor10.field_0):
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= sub_f0d6e9a8 - amountRaised
                    require ext_code.size(tokenRewardAddress)
                    if ext_call.return_data[0] <= sub_f0d6e9a8 - amountRaised:
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryAddress, ext_call.return_data[0]
                    else:
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryAddress, sub_f0d6e9a8 - amountRaised
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor10.field_0) = 1
}



}
