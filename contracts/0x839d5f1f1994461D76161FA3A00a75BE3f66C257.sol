contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint8 stor11;

function _fallback() payable {
    stor8 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xb3b622fa7ac6aa8064ddda094f7bc532526b3545
    stor5 = 17
    stor6 = 18
    stor2 = 40 * 10^stor6
    stor9 = 420278 * 3600
    stor4 = 513793400
    stor7 = 0xb8a74c5f16a2c49df9cf93255d73aed57cc584a1
    return code.data[349 len 3299]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 rate;
uint256 tokenDecimals;
address tokenRewardAddress;
uint256 tokensSold;
uint256 start;
mapping of uint256 balanceOf;
uint8 stor11;

function deadline() {
    return deadline
}

function rate() {
    return rate
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenDecimals() {
    return tokenDecimals
}

function tokensSold() {
    return tokensSold
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

function start() {
    return start
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        require msg.sender == owner
        if tokensSold >= fundingGoal:
            emit GoalReached(beneficiaryAddress, amountRaised);
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.burn(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        stor11 = 1
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require 10^tokenDecimals
    require msg.value * rate / 10^tokenDecimals > 0
    require not stor11
    require block.timestamp > start
    require block.timestamp < deadline
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + msg.value >= msg.value
    balanceOf[address(msg.sender)] += msg.value
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    tokensSold += msg.value * rate / 10^tokenDecimals
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate / 10^tokenDecimals
    require ext_call.success
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(msg.sender, msg.value, 1);
}

function distributeToken(uint256 arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < arg2.length:
        require arg2.length
        require idx < arg2.length
        _16 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = address(_16)
        mem[(32 * arg2.length) + 164] = arg1 / arg2.length
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_16), arg1 / arg2.length
        require ext_call.success
        idx = idx + 1
        s = arg1 / arg2.length
        continue 
}



}
