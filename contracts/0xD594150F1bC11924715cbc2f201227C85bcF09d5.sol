contract main {


// =======================  Init code  ======================


uint8 stor0; offset 152
address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor5;
address stor7;
uint8 stor10;

function _fallback() {
    Mask(152, 0, stor0.field_0) = 0x9af66ee67947253ac86f8803bd4f0cc6807927
    uint8(stor0.field_152) = 0
    stor2 = 1501400000
    stor3 = 1501413222
    stor7 = 0xb7423a11cb6b7710da74972f89436c4072691148
    stor5 = 10 * 10^18
    stor10 = 0
    return code.data[142 len 2226]
}



// =====================  Runtime code  =====================


#
#  - automaticWithdrawLoop(uint256 arg1, uint256 arg2)
#
address beneficiaryAddress;
uint256 amountRaised;
uint256 startTime;
uint256 deadline;
uint256 memberCount;
uint256 crowdsaleCap;
uint256 tokenSupply;
address tokenRewardAddress;
mapping of uint256 balanceOf;
mapping of address stor9;
uint8 finalized;

function memberCount() {
    return memberCount
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function crowdsaleCap() {
    return crowdsaleCap
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenSupply() {
    return tokenSupply
}

function startTime() {
    return startTime
}

function amountRaised() {
    return amountRaised
}

function finalized() {
    return bool(finalized)
}

function beneficiarySend() {
    require finalized
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit FundClaim(beneficiaryAddress, amountRaised);
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp < deadline
    require amountRaised + msg.value <= crowdsaleCap
    if not balanceOf[address(msg.sender)]:
        stor9[stor4] = msg.sender
        memberCount++
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    emit FundTransfer(msg.sender, msg.value);
}

function finalize() {
    require amountRaised
    if block.timestamp < deadline:
        require amountRaised >= crowdsaleCap
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    tokenSupply = ext_call.return_data[0]
    finalized = 1
    emit Finalized(beneficiaryAddress, amountRaised);
}

function individualClaim() {
    require finalized
    require amountRaised
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, tokenSupply * balanceOf[address(msg.sender)] / amountRaised
    require ext_call.success
    require amountRaised
    emit TokenAllocation(msg.sender, balanceOf[address(msg.sender)] * tokenSupply / amountRaised);
    balanceOf[address(msg.sender)] = 0
}



}
