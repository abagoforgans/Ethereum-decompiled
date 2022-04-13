contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() {
    stor0 = code.data[1753 len 20]
    stor1 = 10^18 * code.data[1773 len 32]
    stor3 = (60 * code.data[1805 len 32]) + block.timestamp
    stor4 = 10^18 * code.data[1837 len 32]
    stor5 = code.data[1881 len 20]
    return code.data[165 len 1576]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
array of struct funders;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
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

function funders(uint256 arg1) {
    require arg1 < funders.length
    return funders[arg1].field_0, funders[arg1].field_256
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function sub_c8f5f526(?) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            amountRaised = 0
}

function _fallback() payable {
    if msg.value < 3 * 10^16:
        amountRaised += msg.value
        emit FundTransfer(msg.sender, msg.value, 0);
    else:
        funders.length++
        if not funders.length <= funders.length + 1:
            idx = 2 * funders.length + 1
            while 2 * funders.length > idx:
                funders[idx].field_0 = 0
                funders[idx].field_256 = 0
                idx = idx + 2
                continue 
        require funders.length < funders.length
        funders[funders.length].field_0 = msg.sender
        funders[funders.length].field_256 = msg.value
        amountRaised += msg.value
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x90b98a11 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / price
        require ext_call.success
        emit FundTransfer(msg.sender, msg.value, 1);
}



}
