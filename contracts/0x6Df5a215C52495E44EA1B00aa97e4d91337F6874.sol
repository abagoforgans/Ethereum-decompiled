contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
address stor6;
uint8 stor8;
uint256 stor8; offset 8

function _fallback() payable {
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[2451 len 20]
    stor4 = code.data[2471 len 32]
    stor3 = code.data[2503 len 32]
    stor6 = code.data[2547 len 20]
    return code.data[356 len 2083]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 amountRaised;
uint256 price;
uint256 sub_5a03d679;
uint256 tokensSold;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function beneficiary() {
    return beneficiaryAddress
}

function tokensSold() {
    return tokensSold
}

function sub_5a03d679(?) {
    return sub_5a03d679
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

function owner() {
    return owner
}

function price() {
    return price
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function _fallback() payable {
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= msg.value / price
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^10 * msg.value / price
    require ext_call.success
    tokensSold += msg.value / price
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(beneficiaryAddress, msg.value, 0);
}



}
