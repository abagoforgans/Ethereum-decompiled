contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint16 stor9;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1750 len 20]
    stor2 = 10^18 * code.data[1770 len 32]
    stor6 = code.data[1802 len 32]
    stor7 = code.data[1846 len 20]
    stor0 = msg.sender
    if stor4:
        stor5 = stor4 + (720 * 24 * 3600)
    else:
        stor4 = 1510904700
        stor5 = 420429 * 3600
    return code.data[243 len 1495]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 saleStart;
uint256 saleEnd;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor9;
uint8 stor9; offset 8

function beneficiary() {
    return beneficiaryAddress
}

function getSaleEnd() {
    return saleEnd
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

function getSaleStart() {
    return saleStart
}

function price() {
    return price
}

function inSalePeriod() {
    if block.timestamp <= saleStart:
        return (block.timestamp > saleStart)
    return (block.timestamp < saleEnd)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function checkGoalReached() {
    require owner == msg.sender
    require not uint8(stor9.field_8)
    if amountRaised >= fundingGoal:
        uint8(stor9.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
    uint8(stor9.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor9.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
