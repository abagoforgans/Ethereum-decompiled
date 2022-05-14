contract main {




// =====================  Runtime code  =====================


address tokenRewardAddress;
mapping of uint256 balanceOf;
uint256 fundingGoal;
uint256 amountRaised;
uint256 beginTime;
uint256 endTime;
address owner;

function endTime() {
    return endTime
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

function beginTime() {
    return beginTime
}

function owner() {
    return owner
}

function safeWithdrawal(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not msg.value % 10^17
    require block.timestamp >= beginTime
    require block.timestamp <= endTime
    balanceOf[msg.sender] += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1000 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(msg.value, msg.sender);
}

function sub_514ed235(?) {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    if arg1:
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg1
    else:
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
