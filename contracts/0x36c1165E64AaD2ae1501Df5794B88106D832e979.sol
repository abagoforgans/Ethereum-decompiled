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
uint256 stor19;

function _fallback() payable {
    stor1 = 5
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor2 = code.data[8304 len 20]
    require stor0 == msg.sender
    stor3 = code.data[8336 len 20]
    require ext_code.size(code.data[8336 len 20])
    call code.data[8336 len 20].isPricingStrategy() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor5 = code.data[8368 len 20]
    require code.data[8368 len 20]
    require code.data[8388 len 32]
    stor7 = code.data[8388 len 32]
    require code.data[8420 len 32]
    stor8 = code.data[8420 len 32]
    require stor7 < code.data[8420 len 32]
    stor6 = code.data[8452 len 32]
    stor19 = code.data[8484 len 32]
    return code.data[543 len 7749]
}



// =====================  Runtime code  =====================


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
uint32 stor10;
uint256 weiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 finalized;
uint8 requireCustomerId; offset 8
uint8 requiredSignedAddress; offset 16
uint128 stor14; offset 184
address signerAddress; offset 24
uint256 stor14; offset 8
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor17;
uint256 ownerTestValue;
uint256 weiCap;

function ownerTestValue() {
    return ownerTestValue
}

function requireCustomerId() {
    return bool(requireCustomerId)
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
    return bool(finalized)
}

function halted() {
    return bool(stor0)
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor17[arg1])
}

function requiredSignedAddress() {
    return bool(requiredSignedAddress)
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
    stor0 = 1
}

function isCrowdsaleFull() {
    return uint256(weiRaised) >= weiCap
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function isMinimumGoalReached() {
    return uint256(weiRaised) >= minimumFundingGoal
}

function setOwnerTestValue(uint256 arg1) {
    require owner == msg.sender
    ownerTestValue = arg1
}

function isBreakingCap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    return (arg3 > weiCap)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
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

function setEarlyParicipantWhitelist(address arg1, bool arg2) {
    require owner == msg.sender
    stor17[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
}

function isFinalizerSane() {
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function isPricingSane() {
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setFinalizeAgent(address arg1) {
    require owner == msg.sender
    finalizeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isFinalizeAgent() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function setPricingStrategy(address arg1) {
    require owner == msg.sender
    pricingStrategyAddress = arg1
    require ext_code.size(arg1)
    call arg1.isPricingStrategy() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function setRequireSignedAddress(bool arg1, address arg2) {
    require owner == msg.sender
    requiredSignedAddress = uint8(arg1)
    signerAddress = arg2
    Mask(72, 0, stor14.field_184) = Mask(72, 168, arg1) >> 168
    Mask(72, 0, stor14.field_184) = 0
    emit InvestmentPolicyChanged(bool(requireCustomerId), bool(uint8(arg1)), arg2);
}

function setRequireCustomerId(bool arg1) {
    require owner == msg.sender
    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg1)
    emit InvestmentPolicyChanged(bool rg1, bool rg2, address rg3):
                                 bool(uint8(arg1)),
                                 bool(uint16(arg1) / 256 or requiredSignedAddress or 0),
                                 0,
                                 signerAddress,
}

function getState() {
    if finalized:
        return 6
    if not finalizeAgentAddress:
        return 1
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 50 wei
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

function loadRefund() payable {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 50 wei
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
    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
         gas gas_remaining - 50 wei
        args loadedRefund, msg.value
    require delegate.return_code
    loadedRefund = delegate.return_data[0]
}

function preallocate(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
         gas gas_remaining - 50 wei
        args uint256(weiRaised), arg3 * arg2
    require delegate.return_code
    uint256(weiRaised) = delegate.return_data[0]
    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
         gas gas_remaining - 50 wei
        args tokensSold, arg2 * 10^ext_call.return_data[0]
    require delegate.return_code
    tokensSold = delegate.return_data[0]
    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
         gas gas_remaining - 50 wei
        args investedAmountOf[address(arg1)], arg3 * arg2
    require delegate.return_code
    investedAmountOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
         gas gas_remaining - 50 wei
        args tokenAmountOf[address(arg1)], arg2 * 10^ext_call.return_data[0]
    require delegate.return_code
    tokenAmountOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2 * 10^ext_call.return_data[0]
    require ext_call.success
    emit Invested(address(arg1), arg3 * arg2, arg2 * 10^ext_call.return_data[0], 0);
}

function finalize() {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp > endsAt:
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
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
                     gas gas_remaining - 50 wei
                require ext_call.success
                finalized = 1
    else:
        require uint256(weiRaised) >= weiCap
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
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
                     gas gas_remaining - 50 wei
                require ext_call.success
                finalized = 1
}

function refund() {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x8e768288 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp > endsAt:
        if uint256(weiRaised) < minimumFundingGoal:
            if uint256(weiRaised) > 0:
                if loadedRefund >= uint256(weiRaised):
                    if investedAmountOf[address(msg.sender)]:
                        investedAmountOf[address(msg.sender)] = 0
                        if ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e):
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args weiRefunded, investedAmountOf[address(msg.sender)]
                            if delegate.return_code:
                                weiRefunded = delegate.return_data[0]
                                emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
                                call msg.sender with:
                                   value investedAmountOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if uint256(weiRaised) >= weiCap:
            if uint256(weiRaised) < minimumFundingGoal:
                if uint256(weiRaised) > 0:
                    if loadedRefund >= uint256(weiRaised):
                        if investedAmountOf[address(msg.sender)]:
                            investedAmountOf[address(msg.sender)] = 0
                            if ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e):
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args weiRefunded, investedAmountOf[address(msg.sender)]
                                if delegate.return_code:
                                    weiRefunded = delegate.return_data[0]
                                    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
                                    call msg.sender with:
                                       value investedAmountOf[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    revert 
}

function invest(address arg1) payable {
    require not requireCustomerId
    require not requiredSignedAddress
    require not stor0
    if not finalized:
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                else:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                    else:
                        require stor17[address(arg1)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                else:
                    require not finalized
                    require finalizeAgentAddress
                    require ext_code.size(finalizeAgentAddress)
                    call finalizeAgentAddress.isSane() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x8e768288 with:
                         gas gas_remaining - 50 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0]
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund < uint256(weiRaised)
                            revert 
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(arg1)]:
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(arg1)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                            else:
                                investorCount++
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(arg1)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
            else:
                require not finalized
                require finalizeAgentAddress
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.isSane() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
        else:
            require not finalized
            require finalizeAgentAddress
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x8e768288 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(arg1)]:
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(arg1)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                    else:
                        investorCount++
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(arg1)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
    else:
        require not finalized
        require finalizeAgentAddress
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.isSane() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x8e768288 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
            revert 
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 50 wei
                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(arg1)]:
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(arg1)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
                else:
                    investorCount++
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(arg1)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], 0);
}

function investWithCustomerId(address arg1, uint128 arg2) payable {
    require not requiredSignedAddress
    require arg2
    require not stor0
    if not finalized:
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                    else:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                else:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                    else:
                        require stor17[address(arg1)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                else:
                    require not finalized
                    require finalizeAgentAddress
                    require ext_code.size(finalizeAgentAddress)
                    call finalizeAgentAddress.isSane() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x8e768288 with:
                         gas gas_remaining - 50 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0]
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund < uint256(weiRaised)
                            revert 
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(arg1)]:
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(arg1)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                investorCount++
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(arg1)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
            else:
                require not finalized
                require finalizeAgentAddress
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.isSane() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
        else:
            require not finalized
            require finalizeAgentAddress
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x8e768288 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(arg1)]:
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(arg1)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                    else:
                        investorCount++
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(arg1)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
    else:
        require not finalized
        require finalizeAgentAddress
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.isSane() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x8e768288 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
            revert 
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 50 wei
                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(arg1)]:
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(arg1)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                else:
                    investorCount++
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(arg1)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
}

function investWithSignedAddress(address arg1, uint128 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    hash = sha256hash(arg1) 
    require sha256hash.result
    signer = erecover(hash, arg3 << 248, arg4, arg5) 
    require erecover.result
    require address(signer) == signerAddress
    require arg2
    require not stor0
    if not finalized:
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                    else:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(arg1)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(arg1)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                else:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(arg1)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(arg1)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                    else:
                        require stor17[address(arg1)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                else:
                    require not finalized
                    require finalizeAgentAddress
                    require ext_code.size(finalizeAgentAddress)
                    call finalizeAgentAddress.isSane() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x8e768288 with:
                         gas gas_remaining - 50 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0]
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund < uint256(weiRaised)
                            revert 
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 50 wei
                                args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(arg1)]:
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(arg1)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                            else:
                                investorCount++
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(arg1)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
            else:
                require not finalized
                require finalizeAgentAddress
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.isSane() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(arg1)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(arg1)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
        else:
            require not finalized
            require finalizeAgentAddress
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x8e768288 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(arg1)]:
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(arg1)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                    else:
                        investorCount++
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(arg1)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(arg1)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
    else:
        require not finalized
        require finalizeAgentAddress
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.isSane() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x8e768288 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
            revert 
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(arg1)]:
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(arg1)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
                else:
                    investorCount++
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(arg1)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(arg1)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], arg2);
}

function buy() payable {
    require not requireCustomerId
    require not requiredSignedAddress
    require not stor0
    if not finalized:
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                else:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                    else:
                        require stor17[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                else:
                    require not finalized
                    require finalizeAgentAddress
                    require ext_code.size(finalizeAgentAddress)
                    call finalizeAgentAddress.isSane() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x8e768288 with:
                         gas gas_remaining - 50 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0]
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund < uint256(weiRaised)
                            revert 
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                            else:
                                investorCount++
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
            else:
                require not finalized
                require finalizeAgentAddress
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.isSane() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
        else:
            require not finalized
            require finalizeAgentAddress
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x8e768288 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                    else:
                        investorCount++
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
    else:
        require not finalized
        require finalizeAgentAddress
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.isSane() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x8e768288 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
            revert 
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 50 wei
                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
                else:
                    investorCount++
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], 0);
}

function buyWithCustomerId(uint128 arg1) payable {
    require not requiredSignedAddress
    require arg1
    require not stor0
    if not finalized:
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                    else:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                else:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                    else:
                        require stor17[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                else:
                    require not finalized
                    require finalizeAgentAddress
                    require ext_code.size(finalizeAgentAddress)
                    call finalizeAgentAddress.isSane() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x8e768288 with:
                         gas gas_remaining - 50 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0]
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund < uint256(weiRaised)
                            revert 
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                            else:
                                investorCount++
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
            else:
                require not finalized
                require finalizeAgentAddress
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.isSane() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
        else:
            require not finalized
            require finalizeAgentAddress
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x8e768288 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                    else:
                        investorCount++
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
    else:
        require not finalized
        require finalizeAgentAddress
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.isSane() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x8e768288 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
            revert 
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 50 wei
                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
                else:
                    investorCount++
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(address(msg.sender), msg.value, ext_call.return_data[0], arg1);
}

function buyWithSignedAddress(uint128 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    signer = erecover(hash, arg2 << 248, arg3, arg4) 
    require erecover.result
    require address(signer) == signerAddress
    require arg1
    require not stor0
    if not finalized:
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                    else:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                        else:
                            if uint256(weiRaised) >= weiCap:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not finalized
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.isSane() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x8e768288 with:
                                             gas gas_remaining - 50 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            if uint256(weiRaised) >= weiCap:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                         gas gas_remaining - 50 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            require not finalized
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.isSane() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x8e768288 with:
                                                 gas gas_remaining - 50 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund < uint256(weiRaised)
                                                revert 
                                            else:
                                                if uint256(weiRaised) >= weiCap:
                                                    require uint256(weiRaised) < minimumFundingGoal
                                                    require uint256(weiRaised) > 0
                                                    require loadedRefund < uint256(weiRaised)
                                                    revert 
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                             gas gas_remaining - 50 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                else:
                                    require not finalized
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.isSane() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x8e768288 with:
                                         gas gas_remaining - 50 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        if uint256(weiRaised) >= weiCap:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund < uint256(weiRaised)
                                            revert 
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 50 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                            else:
                                                investorCount++
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                     gas gas_remaining - 50 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                            else:
                                require not finalized
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.isSane() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x8e768288 with:
                                     gas gas_remaining - 50 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund < uint256(weiRaised)
                                    revert 
                                else:
                                    if uint256(weiRaised) >= weiCap:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund < uint256(weiRaised)
                                        revert 
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 50 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                                        else:
                                            investorCount++
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                                 gas gas_remaining - 50 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                    else:
                        require stor17[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                else:
                    require not finalized
                    require finalizeAgentAddress
                    require ext_code.size(finalizeAgentAddress)
                    call finalizeAgentAddress.isSane() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x8e768288 with:
                         gas gas_remaining - 50 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0]
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        if uint256(weiRaised) >= weiCap:
                            require uint256(weiRaised) < minimumFundingGoal
                            require uint256(weiRaised) > 0
                            require loadedRefund < uint256(weiRaised)
                            revert 
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 50 wei
                                args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                            else:
                                investorCount++
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                                delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                     gas gas_remaining - 50 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
            else:
                require not finalized
                require finalizeAgentAddress
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.isSane() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x8e768288 with:
                     gas gas_remaining - 50 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    if uint256(weiRaised) >= weiCap:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund < uint256(weiRaised)
                        revert 
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                        else:
                            investorCount++
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                            delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                                 gas gas_remaining - 50 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
        else:
            require not finalized
            require finalizeAgentAddress
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.isSane() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x8e768288 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                if uint256(weiRaised) >= weiCap:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund < uint256(weiRaised)
                    revert 
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                    else:
                        investorCount++
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                        delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                             gas gas_remaining - 50 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
    else:
        require not finalized
        require finalizeAgentAddress
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.isSane() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x8e768288 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
            revert 
        else:
            if uint256(weiRaised) >= weiCap:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund < uint256(weiRaised)
                revert 
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(msg.value), uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
                else:
                    investorCount++
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e)
                    delegate 0xa83c6f5eac156380cb1ed92f81753c0f44c51d5e.0x66098d4f with:
                         gas gas_remaining - 50 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
}



}
