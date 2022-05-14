contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    stor0 = code.data[1420 len 20]
    stor2 = 10^18 * code.data[1440 len 32]
    stor4 = code.data[1472 len 32]
    stor5 = code.data[1504 len 32]
    stor6 = msg.sender
    return code.data[134 len 1274]
}



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
    require owner == msg.sender
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not msg.value % 10^17
    require amountRaised < fundingGoal
    require block.timestamp >= beginTime
    require block.timestamp <= endTime
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1000 * msg.value
    require ext_call.success
    emit Transfer(msg.value, msg.sender);
}

function sub_514ed235(?) {
    require owner == msg.sender
    require ext_code.size(tokenRewardAddress)
    if arg1:
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg1
    else:
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    require ext_call.success
}



}
