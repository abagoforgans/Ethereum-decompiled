contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
address stor5;
uint8 stor7;
uint256 stor7; offset 8

function _fallback() payable {
    stor2 = 10^18
    stor4 = 10^17
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    require not msg.value
    stor0 = code.data[1845 len 20]
    stor1 = code.data[1877 len 20]
    stor5 = code.data[1909 len 20]
    return code.data[354 len 1479]
}



// =====================  Runtime code  =====================


address sub_f4de6b54Address;
address sub_507c5fedAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function sub_507c5fed(?) {
    return sub_507c5fedAddress
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

function sub_f4de6b54(?) {
    return sub_f4de6b54Address
}

function _fallback() payable {
    require amountRaised < 2 * 10^17
    require msg.value >= 10^17
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args sub_507c5fedAddress, msg.sender, 100 * 10^6 * msg.value / price
    require ext_call.success
    call sub_f4de6b54Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
