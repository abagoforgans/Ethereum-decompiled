contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 152
address stor1;
address stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() payable {
    Mask(152, 0, stor1.field_0) = 0x28d118c0c892e5afaf6c10d79d3922bc76840b
    uint8(stor1.field_152) = 0
    stor2 = 0xd7df9e4f97a7bdbff9799e29b9689515af2da3a6
    stor5 = 421344 * 24 * 3600
    stor6 = 421536 * 24 * 3600
    stor7 = 10^14
    require not msg.value
    stor0 = msg.sender
    stor8 = code.data[3148 len 20]
    return code.data[386 len 2750]
}



// =====================  Runtime code  =====================


address owner;
address wallet1Address;
address wallet2Address;
uint256 fundingGoal;
uint256 amountRaised;
uint256 beginTime;
uint256 endTime;
uint256 price;
address tokenRewardAddress;

function wallet2() {
    return wallet2Address
}

function wallet1() {
    return wallet1Address
}

function endTime() {
    return endTime
}

function tokenReward() {
    return tokenRewardAddress
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function beginTime() {
    return beginTime
}

function owner() {
    return owner
}

function price() {
    return price
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function buyTokens(address arg1) payable {
    require msg.value >= 2 * 10^17
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * msg.value / price
    require ext_call.success
    emit FundTransfer(address(arg1), msg.value, 1);
    call wallet1Address with:
       value 90 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call wallet2Address with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTokens() {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    emit FundTransfer(msg.sender, ext_call.return_data[0], 0);
}

function _fallback() payable {
    require block.timestamp >= beginTime
    require block.timestamp <= endTime
    require msg.value >= 2 * 10^17
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    call wallet1Address with:
       value 90 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call wallet2Address with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
