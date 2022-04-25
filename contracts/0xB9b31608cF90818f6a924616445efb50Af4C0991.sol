contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2508 len 20]
    stor4 = 10^12 * code.data[2528 len 32]
    stor5 = code.data[2572 len 20]
    stor0 = msg.sender
    return code.data[351 len 2145]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 amountRaised;
uint256 sub_15802bbb;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function sub_15802bbb(?) {
    return sub_15802bbb
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

function owner() {
    return owner
}

function price() {
    return price
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    price = 10^12 * arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withdrawal() {
    require msg.sender == owner
    require sub_15802bbb > 0
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value sub_15802bbb wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, sub_15802bbb, 0);
            sub_15802bbb = 0
}

function _fallback() payable {
    require price
    require 10^18 * msg.value / price > 0
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    sub_15802bbb += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
