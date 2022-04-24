contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() {
    stor0 = code.data[1313 len 20]
    stor1 = code.data[1333 len 32]
    stor2 = code.data[1377 len 20]
    return code.data[215 len 1086]
}



// =====================  Runtime code  =====================


address moneyWalletAddress;
uint256 priceRate;
address tokenRewardAddress;
uint256 amountRaised;

function tokenReward() {
    return tokenRewardAddress
}

function amountRaised() {
    return amountRaised
}

function moneyWallet() {
    return moneyWalletAddress
}

function priceRate() {
    return priceRate
}

function _fallback() payable {
    require msg.sender
    require msg.value
    amountRaised += msg.value
    call moneyWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * priceRate
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function buy(address arg1) payable {
    require arg1
    require msg.value
    amountRaised += msg.value
    call moneyWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * priceRate
    require ext_call.success
    emit FundTransfer(address(arg1), msg.value, 1);
}



}
