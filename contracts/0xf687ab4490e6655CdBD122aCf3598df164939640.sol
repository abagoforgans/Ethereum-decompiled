contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
address stor5;
uint32 stor7;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor0 = code.data[990 len 20]
    stor4 = code.data[1010 len 32]
    stor5 = code.data[1054 len 20]
    return code.data[128 len 850]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor7; offset 8
uint256 stor7; offset 8

function deadline() {
    return deadline
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

function setPrice(uint256 arg1) {
    price = arg1
}

function sub_6c4ee229(?) {
    Mask(248, 0, stor7) = Mask(248, 0, arg1)
}

function _fallback() payable {
    require not uint8(stor7)
    call beneficiaryAddress with:
       value msg.value / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    amountRaised += msg.value / 10^18
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 10^18 * price
    require ext_call.success
}



}
