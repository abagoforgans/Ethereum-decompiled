contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint16 stor6; offset 160
address stor6;

function _fallback() payable {
    uint16(stor6.field_160) = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = 10^18 * code.data[1635 len 32]
    stor4 = (24 * 3600 * code.data[1667 len 32]) + block.timestamp
    stor5 = 10^14
    address(stor6.field_0) = code.data[1711 len 20]
    return code.data[201 len 1434]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint8 stor6; offset 160
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

function collect() {
    require owner == msg.sender
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit LogCollect(eth.balance(this.address));
}

function _fallback() payable {
    if amountRaised >= fundingGoal:
        stor6 = 1
    else:
        stor6 = 0
    require not stor6
    require msg.value >= 10^16
    balanceOf[address(msg.sender)] = 10^18 * msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
