contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;
uint8 stor5;
address stor5; offset 8

function _fallback() payable {
    uint8(stor5.field_0) = 0
    require not msg.value
    stor0 = code.data[2051 len 20]
    address(stor5.field_8) = msg.sender
    stor2 = code.data[2071 len 32]
    stor3 = code.data[2115 len 20]
    return code.data[310 len 1729]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amountRaised;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor5;
address stor5; offset 8

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
    return bool(uint8(stor5.field_0))
}

function setPrice(uint256 arg1) {
    require msg.sender == address(stor5.field_8)
    price = 10^18 * arg1
}

function setCrowdsaleClosed(bool arg1) {
    require msg.sender == address(stor5.field_8)
    uint8(stor5.field_0) = uint8(arg1)
}

function _fallback() payable {
    require not uint8(stor5.field_0)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    if not msg.value:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        require msg.value
        require msg.value * price / msg.value == price
        require msg.value * price == (10^18 * msg.value * price / 10^18) + (msg.value * price % 10^18)
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * price / 10^18
    require ext_call.success
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    amountRaised = 0
    emit FundTransfer(msg.sender, msg.value, price);
}



}
