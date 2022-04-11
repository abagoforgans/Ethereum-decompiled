contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
address stor6;
uint16 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = 10^18 * code.data[1743 len 32]
    stor4 = (60 * code.data[1775 len 32]) + block.timestamp
    stor5 = code.data[1807 len 32]
    stor6 = code.data[1851 len 20]
    return code.data[196 len 1547]
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
uint8 stor8;
uint8 stor8; offset 8

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

function transferOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function checkGoalReached() {
    if amountRaised >= fundingGoal:
        uint8(stor8.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
    if block.timestamp >= deadline:
        uint8(stor8.field_8) = 1
}

function changeTokenOwner() {
    require owner == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa6f9dae1 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function sub_41bde110(?) {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            call beneficiaryAddress with:
               value amountRaised wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    require msg.value >= price
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
