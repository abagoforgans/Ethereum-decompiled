contract main {




// =====================  Runtime code  =====================


address owner;
address tokenRewardAddress;
uint256 rate;
uint256 amountRaised;
uint256 accountBalance;
uint256 endTime;
uint256 startTime;
mapping of uint256 balanceOf;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function accountBalance() {
    return accountBalance
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function adjustRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
}

function extend(uint256 arg1) {
    require msg.sender == owner
    require arg1 > endTime
    endTime = arg1
}

function safeWithdrawal(address arg1) {
    require msg.sender == owner
    if msg.sender == arg1:
        call arg1 with:
           value accountBalance wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        accountBalance = 0
}

function retrieveTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    if msg.sender == arg1:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1, uint256 arg2) {
    require arg1
    require block.timestamp <= endTime
    require msg.value
    balanceOf[msg.sender] += arg2
    amountRaised += arg2
    accountBalance += arg2
    emit TokenPurchase(arg2, arg2 * rate, msg.sender, arg1);
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2 * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require block.timestamp <= endTime
    require msg.value
    balanceOf[msg.sender] += msg.value
    amountRaised += msg.value
    accountBalance += msg.value
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
