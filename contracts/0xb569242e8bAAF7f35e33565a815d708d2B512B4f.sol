contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
address stor5;

function _fallback() {
    stor0 = code.data[1326 len 20]
    stor1 = 10^18 * code.data[1346 len 32]
    stor3 = 10^18 * code.data[1378 len 32]
    stor5 = code.data[1422 len 20]
    return code.data[148 len 1166]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 price;
uint256 sub_219c7553;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function sub_219c7553(?) {
    return sub_219c7553
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

function tokenWithdrawal(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
}

function safeWithdrawal(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            sub_219c7553 += arg1
            emit FundTransfer(beneficiaryAddress, arg1, 0);
}

function _fallback() payable {
    require msg.value + amountRaised <= fundingGoal
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
