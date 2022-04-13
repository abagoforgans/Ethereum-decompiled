contract main {


// =======================  Init code  ======================


address stor4;
uint128 stor5; offset 168
uint128 stor5; offset 160
address stor5;
uint256 stor6;

function _fallback() payable {
    stor4 = 0x9bb7eb467eb11193966e726f3397d27136e79eb2
    address(stor5.field_0) = 0xa4047af02a2fd8e6bb43cfe8ab25292ac52c73f4
    Mask(96, 0, stor5.field_160) = 1
    Mask(88, 0, stor5.field_168) = 0
    stor6 = 9250000 * 3600
    require not msg.value
    return code.data[258 len 2211]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 amountRaised;
uint256 tokensCounter;
uint256 stor3;
address tokenRewardAddress;
uint8 crowdsaleClosed; offset 160
uint8 admin; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address beneficiaryAddress;
uint256 price;

function tokensCounter() {
    return tokensCounter
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

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function admin() {
    return bool(admin)
}

function checkAdmin() {
    require beneficiaryAddress == msg.sender
    Mask(88, 0, stor5.field_168) = 1
}

function closeCrowdsale(bool arg1) {
    require beneficiaryAddress == msg.sender
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
}

function getUnsoldTokensVal(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args beneficiaryAddress, arg1
    require ext_call.success
}

function _fallback() payable {
    require not crowdsaleClosed
    require msg.value >= 10^17
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    stor3 = msg.value / price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, stor3
    require ext_call.success
    tokensCounter += stor3
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(beneficiaryAddress, msg.value, 0);
}



}
