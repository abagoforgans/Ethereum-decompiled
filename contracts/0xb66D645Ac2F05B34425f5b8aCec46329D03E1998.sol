contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor9;
uint8 stor12;
address stor12; offset 16
uint256 stor12; offset 8

function _fallback() payable {
    stor1 = 0xb27590b9d328ba0396271303e24db44132531411
    stor2 = 260 * 10^6
    stor3 = 2100 * 10^6
    stor5 = 1508923800
    stor6 = 1508927400
    stor7 = 15000
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
    address(stor12.field_16) = 0x12bf8e198a6474fc65cee0e1c6f1c7f23324c8d5
    require not msg.value
    stor9 = 0xf872fb8582c478213f6c8aa8eaa62c469e08da6d
    stor0 = msg.sender
    return code.data[444 len 5413]
}



// =====================  Runtime code  =====================


address owner;
address initialTokensHolderAddress;
uint256 fundingGoal;
uint256 maxGoal;
uint256 amountRaised;
uint256 start;
uint256 end;
uint256 tokenPrice;
uint256 tokensSold;
address tokenRewardAddress;
mapping of uint256 balanceOf;
mapping of address permittedInvestors;
uint8 stor12;
uint8 stor12; offset 8
address stor12; offset 16
uint256 stor12; offset 8

function initialTokensHolder() {
    return initialTokensHolderAddress
}

function tokensSold() {
    return tokensSold
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

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function start() {
    return start
}

function crowdsaleClosed() {
    return bool(uint8(stor12.field_8))
}

function fundingGoalReached() {
    return bool(uint8(stor12.field_0))
}

function end() {
    return end
}

function permittedInvestors(address arg1) {
    return permittedInvestors[arg1]
}

function maxGoal() {
    return maxGoal
}

function kill() {
    require msg.sender == owner
    selfdestruct(address(stor12.field_16))
}

function changeTime(uint256 arg1, uint256 arg2) {
    start = arg1
    end = arg2
}

function changeMaxMin(uint256 arg1, uint256 arg2) {
    fundingGoal = arg1
    maxGoal = arg2
}

function allowInvest(address arg1, address arg2) {
    require msg.sender == owner
    require not permittedInvestors[address(arg1)]
    if not arg2:
        permittedInvestors[address(arg1)] = initialTokensHolderAddress
    else:
        require permittedInvestors[address(arg2)]
        if not arg2:
            permittedInvestors[address(arg1)] = initialTokensHolderAddress
        else:
            permittedInvestors[address(arg1)] = arg2
    emit AllowSuccess(arg2, arg1);
}

function safeWithdrawal() {
    require block.timestamp >= end
    require eth.balance(this.address)
    require uint8(stor12.field_8)
    if eth.balance(this.address) >= balanceOf[address(msg.sender)]:
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > 0:
            call msg.sender with:
               value balanceOf[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Withdraw(balanceOf[address(msg.sender)], msg.sender);
}

function checkGoalReached() {
    if tokensSold < fundingGoal:
        if tokensSold >= maxGoal:
            uint8(stor12.field_0) = 1
            Mask(248, 0, stor12.field_8) = 1
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x44df8e70 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            call address(stor12.field_16) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            emit GoalReached(initialTokensHolderAddress, amountRaised);
    else:
        if block.timestamp >= end:
            uint8(stor12.field_0) = 1
            Mask(248, 0, stor12.field_8) = 1
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x44df8e70 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            call address(stor12.field_16) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            emit GoalReached(initialTokensHolderAddress, amountRaised);
        else:
            if tokensSold >= maxGoal:
                uint8(stor12.field_0) = 1
                Mask(248, 0, stor12.field_8) = 1
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x44df8e70 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                call address(stor12.field_16) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                emit GoalReached(initialTokensHolderAddress, amountRaised);
    if block.timestamp >= end:
        Mask(248, 0, stor12.field_8) = 1
}

function invest() payable {
    require permittedInvestors[address(msg.sender)]
    if msg.value:
        require msg.value
        require msg.value * tokenPrice / msg.value == tokenPrice
    require block.timestamp >= start
    require block.timestamp <= end
    require tokensSold + (msg.value * tokenPrice / 10^18) >= tokensSold
    require tokensSold + (msg.value * tokenPrice / 10^18) >= msg.value * tokenPrice / 10^18
    require tokensSold + (msg.value * tokenPrice / 10^18) <= maxGoal
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + msg.value >= msg.value
    balanceOf[address(msg.sender)] += msg.value
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    tokensSold += msg.value * tokenPrice / 10^18
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args initialTokensHolderAddress, msg.sender, msg.value * tokenPrice / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    if permittedInvestors[address(msg.sender)] != initialTokensHolderAddress:
        if msg.value * tokenPrice / 10^18:
            require msg.value * tokenPrice / 10^18
            require 5 * msg.value * tokenPrice / 10^18 / msg.value * tokenPrice / 10^18 == 5
        if 5 * msg.value * tokenPrice / 10^18 / 100:
            require (5 * msg.value * tokenPrice / 10^18 / 100) + maxGoal >= 5 * msg.value * tokenPrice / 10^18 / 100
            require (5 * msg.value * tokenPrice / 10^18 / 100) + maxGoal >= maxGoal
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args initialTokensHolderAddress, permittedInvestors[address(msg.sender)], (5 * msg.value * tokenPrice / 10^18 / 100) + maxGoal
            require ext_call.success
            require ext_call.return_data[0]
            emit TransferToReferrer(5 * msg.value * tokenPrice / 10^18 / 100, msg.value, msg.value * tokenPrice / 10^18, msg.sender, permittedInvestors[address(msg.sender)]);
    emit FundTransfer(msg.sender, 0, amountRaised, tokensSold, msg.value * tokenPrice / 10^18);
}

function _fallback() payable {
    require permittedInvestors[address(msg.sender)]
    if msg.value:
        require msg.value
        require msg.value * tokenPrice / msg.value == tokenPrice
    require block.timestamp >= start
    require block.timestamp <= end
    require tokensSold + (msg.value * tokenPrice / 10^18) >= tokensSold
    require tokensSold + (msg.value * tokenPrice / 10^18) >= msg.value * tokenPrice / 10^18
    require tokensSold + (msg.value * tokenPrice / 10^18) <= maxGoal
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + msg.value >= msg.value
    balanceOf[address(msg.sender)] += msg.value
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    tokensSold += msg.value * tokenPrice / 10^18
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args initialTokensHolderAddress, msg.sender, msg.value * tokenPrice / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    if permittedInvestors[address(msg.sender)] != initialTokensHolderAddress:
        if msg.value * tokenPrice / 10^18:
            require msg.value * tokenPrice / 10^18
            require 5 * msg.value * tokenPrice / 10^18 / msg.value * tokenPrice / 10^18 == 5
        if 5 * msg.value * tokenPrice / 10^18 / 100:
            require (5 * msg.value * tokenPrice / 10^18 / 100) + maxGoal >= 5 * msg.value * tokenPrice / 10^18 / 100
            require (5 * msg.value * tokenPrice / 10^18 / 100) + maxGoal >= maxGoal
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args initialTokensHolderAddress, permittedInvestors[address(msg.sender)], (5 * msg.value * tokenPrice / 10^18 / 100) + maxGoal
            require ext_call.success
            require ext_call.return_data[0]
            emit TransferToReferrer(5 * msg.value * tokenPrice / 10^18 / 100, msg.value, msg.value * tokenPrice / 10^18, msg.sender, permittedInvestors[address(msg.sender)]);
    emit FundTransfer(msg.sender, 0, amountRaised, tokensSold, msg.value * tokenPrice / 10^18);
}



}
