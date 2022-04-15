contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;
address stor5;
uint16 stor7;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor0 = code.data[1151 len 20]
    stor1 = 10^18 * code.data[1171 len 32]
    stor4 = code.data[1203 len 32]
    stor5 = code.data[1247 len 20]
    return code.data[158 len 981]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 stor2;
uint256 sub_9b03ba2e;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;

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

function sub_9b03ba2e(?) {
    return sub_9b03ba2e
}

function price() {
    return price
}

function safeWithdrawal() {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, stor2, 0);
            stor2 = 0
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    stor2 += msg.value
    sub_9b03ba2e += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
