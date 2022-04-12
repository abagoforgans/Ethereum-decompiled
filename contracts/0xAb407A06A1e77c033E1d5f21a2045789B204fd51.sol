contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor5;
address stor6;
uint8 stor8;
uint256 stor8; offset 8

function _fallback() payable {
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    require not msg.value
    stor0 = code.data[2201 len 20]
    stor1 = 100 * code.data[2221 len 32]
    stor5 = code.data[2253 len 32]
    stor3 = code.data[2253 len 32] + (60 * code.data[2285 len 32])
    stor6 = code.data[2329 len 20]
    return code.data[309 len 1880]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 totalLux;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 presaleStartDate;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8; offset 8
uint256 stor8; offset 8

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function totalLux() {
    return totalLux
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

function presaleStartDate() {
    return presaleStartDate
}

function price() {
    return price
}

function setGoalReached() {
    if block.timestamp >= deadline:
        require amountRaised
        require not uint8(stor8)
        Mask(248, 0, stor8) = 1
        require totalLux
        price = amountRaised / totalLux
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        require msg.sender == beneficiaryAddress
        require uint8(stor8)
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    require block.timestamp >= presaleStartDate
    if not uint8(stor8):
        balanceOf[address(msg.sender)] += msg.value
        amountRaised += msg.value
    else:
        require msg.value <= 0
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > 0:
            require price
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, balanceOf[address(msg.sender)] / price
            require ext_call.success
}



}
