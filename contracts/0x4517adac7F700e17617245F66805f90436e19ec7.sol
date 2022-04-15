contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
address stor5;

function _fallback() {
    stor0 = code.data[1403 len 20]
    stor1 = 30000 * 10^18
    stor3 = 1000
    stor5 = code.data[1435 len 20]
    return code.data[132 len 1259]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 price;
uint256 sub_31864471;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function sub_31864471(?) {
    return sub_31864471
}

function beneficiary() {
    return beneficiaryAddress
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

function price() {
    return price
}

function safeWithdrawal() {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value sub_31864471 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, sub_31864471, 0);
            sub_31864471 = 0
}

function sub_6eb956df(?) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value 10^18 * arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, 10^18 * arg1, 0);
            sub_31864471 += -1 * 10^18 * arg1
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    sub_31864471 += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
