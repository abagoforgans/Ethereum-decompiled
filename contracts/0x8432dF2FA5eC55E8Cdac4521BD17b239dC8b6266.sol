contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor20; offset 8

function _fallback() payable {
    stor1 = 5
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[8666 len 20]
    require stor0 == msg.sender
    stor3 = code.data[8698 len 20]
    require ext_code.size(code.data[8698 len 20])
    call code.data[8698 len 20].isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor5 = code.data[8730 len 20]
    require code.data[8730 len 20]
    require code.data[8750 len 32]
    stor7 = code.data[8750 len 32]
    require code.data[8782 len 32]
    stor8 = code.data[8782 len 32]
    require stor7 < code.data[8782 len 32]
    stor6 = code.data[8814 len 32]
    stor20 = code.data[8858 len 20]
    return code.data[567 len 8087]
}



// =====================  Runtime code  =====================


#
#  - buyWithKYCData(bytes arg1, uint8 arg2, bytes32 arg3, bytes32 arg4)
#
const isCrowdsale = 1


uint8 stor0; offset 160
address owner;
uint256 MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE;
address tokenAddress;
address pricingStrategyAddress;
address finalizeAgentAddress;
address multisigWalletAddress;
uint256 minimumFundingGoal;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint256 weiRaised;
uint256 presaleWeiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 finalized;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor18;
uint256 ownerTestValue;
uint8 testState;
address beneficiaryAddress; offset 8
address signerAddress;

function ownerTestValue() {
    return ownerTestValue
}

function endsAt() {
    return endsAt
}

function minimumFundingGoal() {
    return minimumFundingGoal
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function finalizeAgent() {
    return finalizeAgentAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function testState() {
    require testState <= 7
    return testState
}

function signerAddress() {
    return signerAddress
}

function weiRefunded() {
    return weiRefunded
}

function MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE() {
    return MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE
}

function pricingStrategy() {
    return pricingStrategyAddress
}

function loadedRefund() {
    return loadedRefund
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
    return bool(finalized)
}

function halted() {
    return bool(stor0)
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor18[arg1])
}

function investorCount() {
    return investorCount
}

function presaleWeiRaised() {
    return presaleWeiRaised
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function isMinimumGoalReached() {
    return weiRaised >= minimumFundingGoal
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function setOwnerTestValue(uint256 arg1) {
    require owner == msg.sender
    ownerTestValue = arg1
}

function setSignerAddress(address arg1) {
    require owner == msg.sender
    signerAddress = arg1
    emit SignerChanged(arg1);
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

function setEarlyParicipantWhitelist(address arg1, bool arg2) {
    require owner == msg.sender
    stor18[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
}

function setEndsAt(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp <= arg1
    require startsAt <= arg1
    endsAt = arg1
    emit EndsAtChanged(arg1);
}

function isFinalizerSane() {
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function getTokensLeft() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args owner, this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function isCrowdsaleFull() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args owner, this.address
    require ext_call.success
    return not bool(ext_call.return_data[0])
}

function isPricingSane() {
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setFinalizeAgent(address arg1) {
    require owner == msg.sender
    finalizeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isFinalizeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function setPricingStrategy(address arg1) {
    require owner == msg.sender
    pricingStrategyAddress = arg1
    require ext_code.size(arg1)
    call arg1.isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function isBreakingCap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args owner, this.address
    require ext_call.success
    if arg2 <= ext_call.return_data[0]:
        return 0
    return 1
}

function getState() {
    if finalized:
        return 6
    if not finalizeAgentAddress:
        return 1
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    if block.timestamp < startsAt:
        return 2
    if block.timestamp <= endsAt:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args owner, this.address
        require ext_call.success
        if ext_call.return_data[0]:
            return 3
    if weiRaised >= minimumFundingGoal:
        return 4
    if weiRaised <= 0:
        return 5
    if loadedRefund < weiRaised:
        return 5
    return 7
}

function loadRefund() payable {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args owner, this.address
        require ext_call.success
        require not ext_call.return_data[0]
    require weiRaised < minimumFundingGoal
    if weiRaised > 0:
        require loadedRefund < weiRaised
    require msg.value
    require ext_code.size(0x4a15d9cb99e76bd0c3ff56d061cca1b7df267eac)
    delegate 0x4a15d9cb99e76bd0c3ff56d061cca1b7df267eac.0x66098d4f with:
         gas gas_remaining - 710 wei
        args loadedRefund, msg.value
    require delegate.return_code
    loadedRefund = delegate.return_data[0]
}

function refund() {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args owner, this.address
        require ext_call.success
        require not ext_call.return_data[0]
    require weiRaised < minimumFundingGoal
    require weiRaised > 0
    require loadedRefund >= weiRaised
    require investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] = 0
    require ext_code.size(0x4a15d9cb99e76bd0c3ff56d061cca1b7df267eac)
    delegate 0x4a15d9cb99e76bd0c3ff56d061cca1b7df267eac.0x66098d4f with:
         gas gas_remaining - 710 wei
        args weiRefunded, investedAmountOf[address(msg.sender)]
    require delegate.return_code
    weiRefunded = delegate.return_data[0]
    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
    call msg.sender with:
       value investedAmountOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getKYCPayload(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0xb655e13800000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x64febfead51453e24a248e76eca7c531cc50cfab)
    delegate 0x64febfead51453e24a248e76eca7c531cc50cfab.0xb655e138 with:
         gas gas_remaining - 710 wei
        args 64, 0, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    require delegate.return_code
    require ext_code.size(0x64febfead51453e24a248e76eca7c531cc50cfab)
    delegate 0x64febfead51453e24a248e76eca7c531cc50cfab.0x16419aa7 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all]), 20
    require delegate.return_code
    require ext_code.size(0x64febfead51453e24a248e76eca7c531cc50cfab)
    delegate 0x64febfead51453e24a248e76eca7c531cc50cfab.0xd54dd8f9 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all]), 36
    require delegate.return_code
    require ext_code.size(0x64febfead51453e24a248e76eca7c531cc50cfab)
    delegate 0x64febfead51453e24a248e76eca7c531cc50cfab.0xd54dd8f9 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all]), 40
    require delegate.return_code
    return address(delegate.return_data[0]), 
           Mask(128, 128, delegate.return_data[0]),
           Mask(32, 224, delegate.return_data[0]),
           Mask(32, 224, delegate.return_data[0]) >> 224
}

function finalize() {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp > endsAt:
        if weiRaised < minimumFundingGoal:
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            require owner == msg.sender
            require not stor0
            require not finalized
            if not finalizeAgentAddress:
                finalized = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                finalized = 1
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args owner, this.address
        require ext_call.success
        require not ext_call.return_data[0]
        if weiRaised < minimumFundingGoal:
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            require owner == msg.sender
            require not stor0
            require not finalized
            if not finalizeAgentAddress:
                finalized = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                finalized = 1
}



}
