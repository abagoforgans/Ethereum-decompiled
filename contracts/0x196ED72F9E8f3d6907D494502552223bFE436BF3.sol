contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor6;
address stor7;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1909 len 32]
    stor2 = code.data[1941 len 32]
    stor3 = 10^18 * code.data[1973 len 32]
    stor7 = code.data[2017 len 20]
    stor6 = code.data[2049 len 20]
    return code.data[189 len 1720]
}



// =====================  Runtime code  =====================


address owner;
uint256 startDate;
uint256 stopDate;
uint256 fundingGoal;
uint256 amountRaised;
uint256 exchangeRate;
address tokenRewardAddress;
address beneficiaryAddress;
mapping of uint256 balanceOf;

function stopDate() {
    return stopDate
}

function startDate() {
    return startDate
}

function beneficiary() {
    return beneficiaryAddress
}

function exchangeRate() {
    return exchangeRate
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

function owner() {
    return owner
}

function destroy() {
    if beneficiaryAddress != msg.sender:
    selfdestruct(beneficiaryAddress)
}

function exOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function getRateAt(uint256 arg1) {
    if arg1 < startDate:
        return 0
    if arg1 > stopDate:
        return 0
    return 6500
}

function saleActive() {
    if block.timestamp < startDate:
        return block.timestamp >= startDate
    if block.timestamp > stopDate:
        return block.timestamp <= stopDate
    return (amountRaised < fundingGoal)
}

function saleEnd() {
    require owner == msg.sender
    if block.timestamp < startDate:
        require block.timestamp > stopDate
    else:
        if block.timestamp <= stopDate:
            require amountRaised >= fundingGoal
            require block.timestamp > stopDate
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, eth.balance(this.address)
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp <= stopDate
    require amountRaised < fundingGoal
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    if block.timestamp < startDate:
        exchangeRate = 0
        revert
    if block.timestamp > stopDate:
        exchangeRate = 0
    else:
        exchangeRate = 6500
    require block.timestamp >= startDate
    require block.timestamp <= stopDate
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 15384615384
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
