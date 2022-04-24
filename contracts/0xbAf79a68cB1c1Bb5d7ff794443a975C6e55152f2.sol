contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
address stor14;
array of uint256 stor15;
array of uint256 stor16;

function _fallback() payable {
    stor0 = 0
    mem[96] = 5
    mem[128] = '1.0.0'
    bool(stor16.length) = 0
    uint255(stor16.length.field_1) = 5
    Mask(248, 0, stor16.length.field_8) = '1.0.0' / 256
    idx = 0
    while stor16.length + 31 / 32 > idx:
        stor16[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -3300] = code.data[4339 len -3300]
    mem[64] = -3140
    stor13 = msg.sender
    stor14 = mem[268 len 20]
    stor15[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor4 = 0
    stor5 = 2100000 * 10^18
    stor10 = 10^18 * mem[288]
    stor11 = 10^18 * mem[320]
    stor6 = block.timestamp + (3600 * mem[160])
    stor7 = stor6 + (3600 * mem[192])
    stor12 = mem[364 len 20]
    stor9 = 85 * 10^13
    mem[0] = 15
    idx = -2980
    s = 0
    while stor15.length - 2980 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x33a65229: mem[mem[64] len stor15.length + (floor32(stor15.length - 1) + -stor15.length + 32 % 32) + -mem[64] - 2980]
    return code.data[1039 len 3300]
}



// =====================  Runtime code  =====================


uint8 state;
mapping of uint256 balanceOf;
uint256 totalRaised;
uint256 sub_20659d5e;
uint256 sub_d65b8f85;
uint256 sub_254511c6;
uint256 sub_dd306089;
uint256 completedAt;
uint256 priceInWei;
uint256 fundingMinimumTargetInWei;
uint256 fundingMaximumTargetInWei;
address tokenRewardAddress;
address creatorAddress;
address beneficiaryAddress;

function creator() {
    return creatorAddress
}

function sub_20659d5e(?) {
    return sub_20659d5e
}

function sub_254511c6(?) {
    return sub_254511c6
}

function completedAt() {
    return completedAt
}

function beneficiary() {
    return beneficiaryAddress
}

function priceInWei() {
    return priceInWei
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function fundingMinimumTargetInWei() {
    return fundingMinimumTargetInWei
}

function fundingMaximumTargetInWei() {
    return fundingMaximumTargetInWei
}

function state() {
    require state <= 3
    return state
}

function totalRaised() {
    return totalRaised
}

function sub_d65b8f85(?) {
    return sub_d65b8f85
}

function sub_dd306089(?) {
    return sub_dd306089
}

function removeContract() {
    require msg.sender == creatorAddress
    selfdestruct(msg.sender)
}

function contractBalance() {
    require msg.sender == creatorAddress
    return eth.balance(this.address)
}

function sub_3d3580cc(?) {
    require msg.sender == creatorAddress
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_b1a18d54(?) {
    require msg.sender == creatorAddress
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg2
    require ext_call.success
    sub_20659d5e += 10^18 * arg2
}

function sub_1d7c69c0(?) {
    require state <= 3
    if state != 1:
        require state <= 3
        require state == 2
    require completedAt < block.timestamp
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function checkIfFundingCompleteOrExpired() {
    require block.timestamp > sub_dd306089
    state = 2
    require state <= 3
    if state != 1:
        require state <= 3
        require state == 2
    require completedAt < block.timestamp
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    completedAt = block.timestamp
    emit LogFundingSuccessful(totalRaised);
}

function _fallback() payable {
    require msg.value >= priceInWei
    require block.timestamp >= sub_254511c6
    require block.timestamp <= sub_dd306089
    require priceInWei
    require (10^18 * msg.value / priceInWei) + sub_20659d5e <= sub_d65b8f85
    require priceInWei
    balanceOf[address(msg.sender)] = 10^18 * msg.value / priceInWei
    totalRaised += msg.value
    sub_20659d5e += 10^18 * msg.value / priceInWei
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / priceInWei
    require ext_call.success
    emit LogFundingReceived(msg.sender, msg.value, totalRaised);
}



}
