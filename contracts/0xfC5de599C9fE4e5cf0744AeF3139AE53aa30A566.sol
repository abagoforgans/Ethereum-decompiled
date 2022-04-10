contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;
address stor4;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor20;

function _fallback() payable {
    stor2 = 5
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor3 = code.data[7616 len 20]
    require stor0 == msg.sender
    stor4 = code.data[7648 len 20]
    require ext_code.size(code.data[7648 len 20])
    call code.data[7648 len 20].isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor6 = code.data[7680 len 20]
    require code.data[7680 len 20]
    require code.data[7700 len 32]
    stor8 = code.data[7700 len 32]
    require code.data[7732 len 32]
    stor9 = code.data[7732 len 32]
    require stor8 < code.data[7732 len 32]
    stor7 = code.data[7764 len 32]
    stor20 = code.data[7796 len 32]
    return code.data[554 len 7050]
}



// =====================  Runtime code  =====================


const isCrowdsale = 1


address owner;
uint8 stor1; offset 160
address newOwner;
uint256 MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE;
address tokenAddress;
address pricingStrategyAddress;
address finalizeAgentAddress;
address multisigWalletAddress;
uint256 minimumFundingGoal;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint32 stor11;
uint256 weiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 stor15;
uint8 stor15; offset 8
uint8 stor15; offset 16
address signerAddress; offset 24
uint256 stor15; offset 8
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor18;
uint256 ownerTestValue;
uint256 weiCap;

function ownerTestValue() {
    return ownerTestValue
}

function requireCustomerId() {
    return bool(uint8(stor15.field_8))
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

function weiRaised() {
    return uint256(weiRaised)
}

function tokensSold() {
    return tokensSold
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

function weiCap() {
    return weiCap
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
    return bool(uint8(stor15.field_0))
}

function halted() {
    return bool(stor1)
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor18[arg1])
}

function requiredSignedAddress() {
    return bool(uint8(stor15.field_16))
}

function newOwner() {
    return newOwner
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function halt() {
    require owner == msg.sender
    stor1 = 1
}

function isCrowdsaleFull() {
    return uint256(weiRaised) >= weiCap
}

function unhalt() {
    require owner == msg.sender
    require stor1
    stor1 = 0
}

function isMinimumGoalReached() {
    return uint256(weiRaised) >= minimumFundingGoal
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function setOwnerTestValue(uint256 arg1) {
    require owner == msg.sender
    ownerTestValue = arg1
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function isBreakingCap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    return (arg3 > weiCap)
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setEndsAt(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp <= arg1
    endsAt = arg1
    emit EndsAtChanged(arg1);
}

function setMultisig(address arg1) {
    require owner == msg.sender
    require investorCount <= MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE
    multisigWalletAddress = arg1
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg1)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function setEarlyParicipantWhitelist(address arg1, bool arg2) {
    require owner == msg.sender
    stor18[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
}

function isFinalizerSane() {
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
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

function setRequireCustomerId(bool arg1) {
    require owner == msg.sender
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
    emit InvestmentPolicyChanged(bool rg1, bool rg2, address rg3):
                                 bool(uint8(arg1)),
                                 bool(uint16(arg1) / 256 or uint8(stor15.field_16) or 0),
                                 0,
                                 signerAddress,
}

function loadRefund() payable {
    require not uint8(stor15.field_0)
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
        require uint256(weiRaised) >= weiCap
    require uint256(weiRaised) < minimumFundingGoal
    if uint256(weiRaised) > 0:
        require loadedRefund < uint256(weiRaised)
    require msg.value
    require msg.value + loadedRefund >= loadedRefund
    loadedRefund += msg.value
}

function getState() {
    if uint8(stor15.field_0):
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
        if uint256(weiRaised) < weiCap:
            return 3
    if uint256(weiRaised) >= minimumFundingGoal:
        return 4
    if uint256(weiRaised) <= 0:
        return 5
    if loadedRefund < uint256(weiRaised):
        return 5
    return 7
}

function preallocate(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (arg3 * arg2) + uint256(weiRaised) >= uint256(weiRaised)
    uint256(weiRaised) += arg3 * arg2
    require (arg2 * 10^ext_call.return_data[31 len 1]) + tokensSold >= tokensSold
    tokensSold += arg2 * 10^ext_call.return_data[31 len 1]
    require (arg3 * arg2) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
    investedAmountOf[address(arg1)] += arg3 * arg2
    require (arg2 * 10^uint8(ext_call.return_data[0])) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
    tokenAmountOf[address(arg1)] += arg2 * 10^uint8(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 * 10^uint8(ext_call.return_data[0])
    require ext_call.success
    emit Invested(address(arg1), arg3 * arg2, arg2 * 10^uint8(ext_call.return_data[0]), 0);
}

function refund() {
    require not uint8(stor15.field_0)
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
        require uint256(weiRaised) >= weiCap
    require uint256(weiRaised) < minimumFundingGoal
    require uint256(weiRaised) > 0
    require loadedRefund >= uint256(weiRaised)
    require investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] = 0
    require investedAmountOf[address(msg.sender)] + weiRefunded >= weiRefunded
    weiRefunded += investedAmountOf[address(msg.sender)]
    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
    call msg.sender with:
       value investedAmountOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require not uint8(stor15.field_0)
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
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require owner == msg.sender
            require not stor1
            require not uint8(stor15.field_0)
            if not finalizeAgentAddress:
                uint8(stor15.field_0) = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint8(stor15.field_0) = 1
    else:
        require uint256(weiRaised) >= weiCap
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require owner == msg.sender
            require not stor1
            require not uint8(stor15.field_0)
            if not finalizeAgentAddress:
                uint8(stor15.field_0) = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint8(stor15.field_0) = 1
}

function invest(address arg1) payable {
    require not uint8(stor15.field_8)
    require not uint8(stor15.field_16)
    require not stor1
    if not uint8(stor15.field_0):
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                else:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                    else:
                        require stor18[address(arg1)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                else:
                    require not uint8(stor15.field_0)
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
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund >= uint256(weiRaised)
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(arg1)]:
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
            else:
                require not uint8(stor15.field_0)
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
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
        else:
            require not uint8(stor15.field_0)
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
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(arg1)]:
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
    else:
        require not uint8(stor15.field_0)
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
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(arg1)]:
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
}

function investWithCustomerId(address arg1, uint128 arg2) payable {
    require not uint8(stor15.field_16)
    require arg2
    require not stor1
    if not uint8(stor15.field_0):
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                    else:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                else:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                    else:
                        require stor18[address(arg1)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                else:
                    require not uint8(stor15.field_0)
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
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund >= uint256(weiRaised)
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(arg1)]:
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
            else:
                require not uint8(stor15.field_0)
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
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
        else:
            require not uint8(stor15.field_0)
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
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(arg1)]:
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
    else:
        require not uint8(stor15.field_0)
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
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(arg1)]:
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
}

function buy() payable {
    require not uint8(stor15.field_8)
    require not uint8(stor15.field_16)
    require not stor1
    if not uint8(stor15.field_0):
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                else:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                    else:
                        require stor18[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                else:
                    require not uint8(stor15.field_0)
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
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund >= uint256(weiRaised)
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
            else:
                require not uint8(stor15.field_0)
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
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
        else:
            require not uint8(stor15.field_0)
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
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
    else:
        require not uint8(stor15.field_0)
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
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
}

function buyWithCustomerId(uint128 arg1) payable {
    require not uint8(stor15.field_16)
    require arg1
    require not stor1
    if not uint8(stor15.field_0):
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                    else:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not uint8(stor15.field_0)
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            require not uint8(stor15.field_0)
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund >= uint256(weiRaised)
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                else:
                                    require not uint8(stor15.field_0)
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                            else:
                                require not uint8(stor15.field_0)
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                    else:
                        require stor18[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                else:
                    require not uint8(stor15.field_0)
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
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund >= uint256(weiRaised)
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
            else:
                require not uint8(stor15.field_0)
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
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
        else:
            require not uint8(stor15.field_0)
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
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
    else:
        require not uint8(stor15.field_0)
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
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
}



}
