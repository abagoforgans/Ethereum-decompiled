contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor6;
address stor8;
uint16 stor10;

function _fallback() payable {
    stor10 = 0
    require not msg.value
    stor0 = code.data[1926 len 20]
    stor1 = 10^18 * code.data[1946 len 32]
    stor3 = (60 * code.data[1978 len 32]) + block.timestamp
    stor4 = 10^17 * code.data[2010 len 32]
    stor8 = code.data[2054 len 20]
    stor6 = code.data[2074 len 32]
    return code.data[186 len 1728]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 sub_23befb10;
uint256 totalTokensForSale;
uint256 stor7;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor10; offset 8

function sub_23befb10(?) {
    return sub_23befb10
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function totalTokensForSale() {
    return totalTokensForSale
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

function crowdsaleClosed() {
    return bool(stor10)
}

function sub_6dc66f2b(?) {
    if beneficiaryAddress == msg.sender:
        stor10 = 0
}

function closeCrowdsale() {
    if beneficiaryAddress == msg.sender:
        stor10 = 1
}

function sub_fa98cd88(?) {
    if beneficiaryAddress == msg.sender:
        if stor10:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args beneficiaryAddress, totalTokensForSale - sub_23befb10
            require ext_call.success
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            call beneficiaryAddress with:
               value stor7 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(beneficiaryAddress, stor7, 0);
                stor7 = 0
}

function _fallback() payable {
    require amountRaised < fundingGoal
    require sub_23befb10 < totalTokensForSale
    require not stor10
    require block.timestamp < deadline
    require balanceOf[address(msg.sender)] + msg.value <= 49 * fundingGoal / 100
    require (totalTokensForSale * price) - (sub_23befb10 * price) >= msg.value
    require price
    require not msg.value % price
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    stor7 += msg.value
    require price
    sub_23befb10 += msg.value / price
    emit FundTransfer(msg.sender, msg.value, 1);
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value / price
    require ext_call.success
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(beneficiaryAddress, msg.value, 0);
    stor7 -= msg.value
}



}
