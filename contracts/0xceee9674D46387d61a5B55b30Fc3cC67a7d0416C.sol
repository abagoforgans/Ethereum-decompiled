contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;
uint8 stor5;

function _fallback() payable {
    stor5 = 0
    require not msg.value
    stor0 = 0x1bd870f2292d69ef123e3758886671e707371cec
    stor2 = 10^16
    stor3 = 0x52a5e1a56a124dce84e548ff96122246e46d599f
    return code.data[123 len 995]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amountRaised;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor5;
uint256 stor5;

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

function setPrice(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        price = arg1
}

function crowdsaleStatus(bool arg1) {
    if beneficiaryAddress == msg.sender:
        uint256(stor5) = not arg1 or Mask(248, 8, uint256(stor5))
}

function safeWithdrawal(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, arg1, 0);
}

function _fallback() payable {
    require not uint8(stor5)
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
