contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;

function _fallback() {
    stor0 = msg.sender
    stor4 = 0
    stor7 = 0
    stor6 = 0
    stor5 = 10^17
    stor1 = code.data[1799 len 20]
    stor2 = (60 * code.data[1883 len 32]) + (3600 * code.data[1851 len 32]) + (24 * 3600 * code.data[1819 len 32]) + block.timestamp
    stor8 = (60 * code.data[1883 len 32]) + (3600 * code.data[1851 len 32]) + (24 * 3600 * code.data[1819 len 32]) + block.timestamp + (672 * 24 * 3600)
    stor9 = 5 * 10^12
    stor10 = code.data[1927 len 20]
    return code.data[218 len 1569]
}



// =====================  Runtime code  =====================


address creatorAddress;
address beneficiaryAddress;
uint256 sub_6ed17b0b;
uint256 sub_227b2039;
uint256 tokensMinted;
uint256 minContributionAmount;
uint256 amountRaised;
uint256 currentBalance;
uint256 deadline;
uint256 priceInWei;
address tokenRewardAddress;

function creator() {
    return creatorAddress
}

function sub_227b2039(?) {
    return sub_227b2039
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function priceInWei() {
    return priceInWei
}

function minContributionAmount() {
    return minContributionAmount
}

function tokensMinted() {
    return tokensMinted
}

function tokenReward() {
    return tokenRewardAddress
}

function sub_6ed17b0b(?) {
    return sub_6ed17b0b
}

function amountRaised() {
    return amountRaised
}

function currentBalance() {
    return currentBalance
}

function removeContract() {
    require creatorAddress == msg.sender
    require block.timestamp > deadline
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x75829def with:
         gas gas_remaining - 710 wei
        args creatorAddress
    require ext_call.success
    selfdestruct(msg.sender)
}

function payOut() {
    if currentBalance > 0:
        call beneficiaryAddress with:
           value currentBalance wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, currentBalance, 0);
            currentBalance = 0
}

function sub_14590983(?) {
    if currentBalance > 0:
        call beneficiaryAddress with:
           value currentBalance wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, currentBalance, 0);
            currentBalance = 0
    if block.timestamp < sub_6ed17b0b:
        return 0
    if block.timestamp > deadline:
        return 0
    return 1
}

function _fallback() payable {
    require block.timestamp >= sub_6ed17b0b
    require block.timestamp <= deadline
    require msg.value >= minContributionAmount
    amountRaised += msg.value
    currentBalance += msg.value
    require priceInWei
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / priceInWei
    require ext_call.success
    require priceInWei
    tokensMinted += msg.value / priceInWei
    emit FundTransfer(msg.sender, msg.value, 1);
}

function contribute() payable {
    require block.timestamp >= sub_6ed17b0b
    require block.timestamp <= deadline
    require msg.value >= minContributionAmount
    amountRaised += msg.value
    currentBalance += msg.value
    require priceInWei
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / priceInWei
    require ext_call.success
    require priceInWei
    tokensMinted += msg.value / priceInWei
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
