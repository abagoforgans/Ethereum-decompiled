contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor12;
uint16 stor17; offset 8

function _fallback() payable {
    stor1 = 5
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = code.data[5833 len 20]
    stor12 = code.data[5853 len 32]
    stor6 = code.data[5885 len 32]
    stor7 = code.data[5917 len 32]
    stor3 = code.data[5961 len 20]
    stor2 = code.data[5993 len 20]
    return code.data[233 len 5588]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE;
address tokenRewardAddress;
address sub_25d24040Address;
address multisigWalletAddress;
address finalizeAgentAddress;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint8 stor11;
uint256 maximumSellableTokens;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor15;
uint256 ownerTestValue;
uint8 sub_79326a92;
uint8 stor17; offset 8
uint8 crowdsaleClosed; offset 16
uint8 testState; offset 24

function ownerTestValue() {
    return ownerTestValue
}

function endsAt() {
    return endsAt
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function finalizeAgent() {
    return finalizeAgentAddress
}

function sub_25d24040(?) {
    return sub_25d24040Address
}

function maximumSellableTokens() {
    return maximumSellableTokens
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function testState() {
    require testState <= 6
    return testState
}

function MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE() {
    return MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE
}

function tokenReward() {
    return tokenRewardAddress
}

function sub_79326a92(?) {
    return bool(sub_79326a92)
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function startsAt() {
    return startsAt
}

function finalized() {
    return bool(stor11)
}

function halted() {
    return bool(stor0)
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor15[arg1])
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function investorCount() {
    return investorCount
}

function _fallback() payable {
    revert
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function getTokensLeft() {
    return (maximumSellableTokens - tokensSold)
}

function isCrowdsaleFull() {
    return not bool(maximumSellableTokens - tokensSold)
}

function unhalt() {
    require owner == msg.sender
    require not stor0
    stor0 = 0
}

function isBreakingCap(uint256 arg1) {
    if arg1 <= maximumSellableTokens - tokensSold:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMultisig(address arg1) {
    require owner == msg.sender
    require investorCount <= MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE
    multisigWalletAddress = arg1
}

function sub_7c3284f6(?) {
    require owner == msg.sender
    require block.timestamp <= arg1
    require startsAt <= arg1
    endsAt = arg1
    emit EndsAtChanged(arg1);
}

function isMinimumGoalReached() {
    require ext_code.size(sub_25d24040Address)
    call sub_25d24040Address.0x82010f77 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return tokensSold >= ext_call.return_data[0]
}

function isPricingSane() {
    require ext_code.size(sub_25d24040Address)
    call sub_25d24040Address.0x6324179 with:
         gas gas_remaining - 710 wei
        args tokensSold
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function safeWithdrawal() {
    if multisigWalletAddress == msg.sender:
        call multisigWalletAddress with:
           value weiRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            stor17 = 0
        else:
            emit FundsWithdrawn(msg.sender, weiRaised, tokensSold);
}

function getState() {
    if stor11:
        return 6
    if not multisigWalletAddress:
        return 1
    require ext_code.size(sub_25d24040Address)
    call sub_25d24040Address.0x8e768288 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    if block.timestamp < startsAt:
        return 2
    if block.timestamp <= endsAt:
        if maximumSellableTokens - tokensSold:
            return 3
    require ext_code.size(sub_25d24040Address)
    call sub_25d24040Address.0x82010f77 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if tokensSold < ext_call.return_data[0]:
        return 5
    return 4
}

function finalize() {
    require not stor11
    require multisigWalletAddress
    require ext_code.size(sub_25d24040Address)
    call sub_25d24040Address.0x8e768288 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require not maximumSellableTokens - tokensSold
    require ext_code.size(sub_25d24040Address)
    call sub_25d24040Address.0x82010f77 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require tokensSold >= ext_call.return_data[0]
    require owner == msg.sender
    require stor0
    require not stor11
    if finalizeAgentAddress:
        stor11 = 1
}

function invest(address arg1) payable {
    require not crowdsaleClosed
    require ext_code.size(sub_25d24040Address)
    call sub_25d24040Address.0x539a5c87 with:
         gas gas_remaining - 710 wei
        args msg.value, tokensSold
    require ext_call.success
    if ext_call.return_data[0] <= maximumSellableTokens - tokensSold:
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args investedAmountOf[address(arg1)], msg.value
        require delegate.return_code
        investedAmountOf[address(arg1)] = delegate.return_data[0]
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
        require delegate.return_code
        tokenAmountOf[address(arg1)] = delegate.return_data[0]
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args weiRaised, msg.value
        require delegate.return_code
        weiRaised = delegate.return_data[0]
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args tokensSold, ext_call.return_data[0]
        require delegate.return_code
        tokensSold = delegate.return_data[0]
        if not investedAmountOf[address(arg1)]:
            investorCount++
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        call multisigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit Invested(address(arg1), msg.value, msg.value);
    else:
        require ext_code.size(sub_25d24040Address)
        call sub_25d24040Address.0xd3b5b40c with:
             gas gas_remaining - 710 wei
            args maximumSellableTokens - tokensSold, tokensSold
        require ext_call.success
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args investedAmountOf[address(arg1)], ext_call.return_data[0]
        require delegate.return_code
        investedAmountOf[address(arg1)] = delegate.return_data[0]
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args tokenAmountOf[address(arg1)], maximumSellableTokens - tokensSold
        require delegate.return_code
        tokenAmountOf[address(arg1)] = delegate.return_data[0]
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args weiRaised, ext_call.return_data[0]
        require delegate.return_code
        weiRaised = delegate.return_data[0]
        require ext_code.size(0x63944df7b1b9870e109edfba882998370d19016f)
        delegate 0x63944df7b1b9870e109edfba882998370d19016f.0x66098d4f with:
             gas gas_remaining - 710 wei
            args tokensSold, maximumSellableTokens - tokensSold
        require delegate.return_code
        tokensSold = delegate.return_data[0]
        if not investedAmountOf[address(arg1)]:
            investorCount++
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), maximumSellableTokens - tokensSold
        require ext_call.success
        call multisigWalletAddress with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        call arg1 with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        emit Invested(address(arg1), ext_call.return_data[0], maximumSellableTokens - tokensSold);
}



}
