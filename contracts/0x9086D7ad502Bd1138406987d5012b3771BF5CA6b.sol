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
uint256 stor20;

function _fallback() payable {
    stor1 = 5
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor19 = 500000 * 10^18
    stor20 = 0
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor2 = code.data[12506 len 20]
    require msg.sender == stor0
    stor3 = code.data[12538 len 20]
    require ext_code.size(stor3)
    call stor3.isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor5 = code.data[12570 len 20]
    require stor5
    require code.data[12590 len 32]
    stor7 = code.data[12590 len 32]
    require code.data[12622 len 32]
    stor8 = code.data[12622 len 32]
    require stor7 < stor8
    stor6 = 500 * 10^18
    return code.data[959 len 11535]
}



// =====================  Runtime code  =====================


const isCrowdsale = 1


uint8 stor0; offset 160
uint128 stor0; offset 160
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
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor17;
uint256 ownerTestValue;
uint256 stor19;
uint256 bountyTokens;
mapping of uint256 bountyRewards;

function ownerTestValue() {
    return ownerTestValue
}

function endsAt() {
    return endsAt
}

function minimumFundingGoal() {
    return minimumFundingGoal
}

function bountyTokens() {
    return bountyTokens
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

function bountyRewards(address arg1) {
    return bountyRewards[arg1]
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
    return bool(uint8(stor0.field_160))
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor17[arg1])
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function isCrowdsaleFull() {
    return uint256(weiRaised) >= stor19
}

function isMinimumGoalReached() {
    return uint256(weiRaised) >= minimumFundingGoal
}

function halt() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function setOwnerTestValue(uint256 arg1) {
    require msg.sender == owner
    ownerTestValue = arg1
}

function isBreakingCap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    return (arg3 > stor19)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unhalt() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function setEndsAt(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp <= arg1
    endsAt = arg1
    emit EndsAtChanged(endsAt);
}

function setMultisig(address arg1) {
    require msg.sender == owner
    require investorCount <= MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE
    multisigWalletAddress = arg1
}

function setEarlyParicipantWhitelist(address arg1, bool arg2) {
    require msg.sender == owner
    stor17[address(arg1)] = uint8(arg2)
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
    require msg.sender == owner
    finalizeAgentAddress = arg1
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isFinalizeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function setPricingStrategy(address arg1) {
    require msg.sender == owner
    pricingStrategyAddress = arg1
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
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
        if uint256(weiRaised) < stor19:
            return 3
    if uint256(weiRaised) >= minimumFundingGoal:
        return 4
    if uint256(weiRaised) <= 0:
        return 5
    if loadedRefund < uint256(weiRaised):
        return 5
    return 7
}

function revokeBountyTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require bountyRewards[address(arg1)] >= arg2
    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0xf4f3bdc1 with:
         gas gas_remaining - 710 wei
        args bountyTokens, arg2
    require delegate.return_code
    bountyTokens = delegate.return_data[0]
    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0xf4f3bdc1 with:
         gas gas_remaining - 710 wei
        args bountyRewards[address(arg1)], arg2
    require delegate.return_code
    bountyRewards[address(arg1)] = delegate.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x721a37d2 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
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
        require uint256(weiRaised) >= stor19
    require uint256(weiRaised) < minimumFundingGoal
    if uint256(weiRaised) > 0:
        require loadedRefund < uint256(weiRaised)
    require msg.value
    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
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
        require uint256(weiRaised) >= stor19
    require uint256(weiRaised) < minimumFundingGoal
    require uint256(weiRaised) > 0
    require loadedRefund >= uint256(weiRaised)
    require investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] = 0
    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
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

function assignBountyTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x7346ec57 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x7346ec57 with:
         gas gas_remaining - 710 wei
        args bountyTokens
    require ext_call.success
    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    require delegate.return_code
    require delegate.return_data[0] < stor19 / 100
    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
         gas gas_remaining - 710 wei
        args bountyRewards[address(arg1)], arg2
    require delegate.return_code
    bountyRewards[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
         gas gas_remaining - 710 wei
        args bountyTokens, arg2
    require delegate.return_code
    bountyTokens = delegate.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
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
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require msg.sender == owner
            require not uint8(stor0.field_160)
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
        require uint256(weiRaised) >= stor19
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require msg.sender == owner
            require not uint8(stor0.field_160)
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

function _fallback() payable {
    require not uint8(stor0.field_160)
    if not finalized:
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= stor19:
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
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                            else:
                                                investorCount++
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
                                    if loadedRefund < uint256(weiRaised):
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= stor19:
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
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                    else:
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= stor19:
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
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= stor19:
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
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                        else:
                                            investorCount++
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            if uint256(weiRaised) >= stor19:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
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
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            if uint256(weiRaised) >= stor19:
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
                                                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                else:
                                                    investorCount++
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args investedAmountOf[address(msg.sender)], msg.value
                                                    require delegate.return_code
                                                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args uint256(weiRaised), msg.value
                                                    require delegate.return_code
                                                    uint256(weiRaised) = delegate.return_data[0]
                                                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                         gas gas_remaining - 710 wei
                                                        args tokensSold, ext_call.return_data[0]
                                                    require delegate.return_code
                                                    tokensSold = delegate.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= stor19:
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
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                        else:
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
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                if uint256(weiRaised) >= stor19:
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
                                                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                    else:
                                                        investorCount++
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args investedAmountOf[address(msg.sender)], msg.value
                                                        require delegate.return_code
                                                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args uint256(weiRaised), msg.value
                                                        require delegate.return_code
                                                        uint256(weiRaised) = delegate.return_data[0]
                                                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                             gas gas_remaining - 710 wei
                                                            args tokensSold, ext_call.return_data[0]
                                                        require delegate.return_code
                                                        tokensSold = delegate.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
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
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        if uint256(weiRaised) >= stor19:
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
                                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                            else:
                                                investorCount++
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args investedAmountOf[address(msg.sender)], msg.value
                                                require delegate.return_code
                                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                                require delegate.return_code
                                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args uint256(weiRaised), msg.value
                                                require delegate.return_code
                                                uint256(weiRaised) = delegate.return_data[0]
                                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                     gas gas_remaining - 710 wei
                                                    args tokensSold, ext_call.return_data[0]
                                                require delegate.return_code
                                                tokensSold = delegate.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
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
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    if uint256(weiRaised) >= stor19:
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
                                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                        else:
                                            investorCount++
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args investedAmountOf[address(msg.sender)], msg.value
                                            require delegate.return_code
                                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                            require delegate.return_code
                                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args uint256(weiRaised), msg.value
                                            require delegate.return_code
                                            uint256(weiRaised) = delegate.return_data[0]
                                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                                 gas gas_remaining - 710 wei
                                                args tokensSold, ext_call.return_data[0]
                                            require delegate.return_code
                                            tokensSold = delegate.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                    else:
                        require stor17[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            investorCount++
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                else:
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
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        if uint256(weiRaised) >= stor19:
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
                                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= stor19
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                investorCount++
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args investedAmountOf[address(msg.sender)], msg.value
                                require delegate.return_code
                                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                                require delegate.return_code
                                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args uint256(weiRaised), msg.value
                                require delegate.return_code
                                uint256(weiRaised) = delegate.return_data[0]
                                require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                                delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                     gas gas_remaining - 710 wei
                                    args tokensSold, ext_call.return_data[0]
                                require delegate.return_code
                                tokensSold = delegate.return_data[0]
                                require uint256(weiRaised) <= stor19
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
            else:
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
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    if uint256(weiRaised) >= stor19:
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
                            args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            investorCount++
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args investedAmountOf[address(msg.sender)], msg.value
                            require delegate.return_code
                            investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                            require delegate.return_code
                            tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args uint256(weiRaised), msg.value
                            require delegate.return_code
                            uint256(weiRaised) = delegate.return_data[0]
                            require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                            delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                                 gas gas_remaining - 710 wei
                                args tokensSold, ext_call.return_data[0]
                            require delegate.return_code
                            tokensSold = delegate.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
        else:
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
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                if uint256(weiRaised) >= stor19:
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
                        args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= stor19
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                    else:
                        investorCount++
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args investedAmountOf[address(msg.sender)], msg.value
                        require delegate.return_code
                        investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                        require delegate.return_code
                        tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args uint256(weiRaised), msg.value
                        require delegate.return_code
                        uint256(weiRaised) = delegate.return_data[0]
                        require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                        delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                             gas gas_remaining - 710 wei
                            args tokensSold, ext_call.return_data[0]
                        require delegate.return_code
                        tokensSold = delegate.return_data[0]
                        require uint256(weiRaised) <= stor19
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
    else:
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
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            if uint256(weiRaised) >= stor19:
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
                    args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= stor19
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                else:
                    investorCount++
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args investedAmountOf[address(msg.sender)], msg.value
                    require delegate.return_code
                    investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                    require delegate.return_code
                    tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args uint256(weiRaised), msg.value
                    require delegate.return_code
                    uint256(weiRaised) = delegate.return_data[0]
                    require ext_code.size(0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c)
                    delegate 0x791dcd566f14aadfc4ba973d0e4d0a9d19b5fa6c.0x66098d4f with:
                         gas gas_remaining - 710 wei
                        args tokensSold, ext_call.return_data[0]
                    require delegate.return_code
                    tokensSold = delegate.return_data[0]
                    require uint256(weiRaised) <= stor19
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
}



}
