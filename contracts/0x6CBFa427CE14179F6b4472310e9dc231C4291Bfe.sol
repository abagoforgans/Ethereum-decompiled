contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;

function _fallback() {
    stor0 = code.data[732 len 20]
    stor2 = 10^15 * code.data[752 len 32]
    stor3 = code.data[796 len 20]
    return code.data[133 len 587]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amountRaised;
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

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function _fallback() payable {
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    amountRaised = 0
}



}
