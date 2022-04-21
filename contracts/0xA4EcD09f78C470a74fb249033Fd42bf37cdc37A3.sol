contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1290 len 20]
    stor2 = 10^18 * code.data[1310 len 32]
    stor4 = (60 * code.data[1342 len 32]) + block.timestamp
    stor5 = code.data[1374 len 32]
    stor6 = code.data[1418 len 20]
    return code.data[203 len 1075]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;

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

function owner() {
    return owner
}

function price() {
    return price
}

function Destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function sub_0b575070(?) {
    require owner == msg.sender
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
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
