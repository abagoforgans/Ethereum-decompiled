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
    stor2 = code.data[6421 len 20]
    require stor0 == msg.sender
    stor3 = code.data[6453 len 20]
    require ext_code.size(code.data[6453 len 20])
    call code.data[6453 len 20].isPricingStrategy() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor5 = code.data[6485 len 20]
    require code.data[6485 len 20]
    require code.data[6505 len 32]
    stor7 = code.data[6505 len 32]
    require code.data[6537 len 32]
    stor8 = code.data[6537 len 32]
    require stor7 < code.data[6537 len 32]
    stor6 = 500 * 10^18
    return code.data[595 len 5814]
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
uint8 stor14;
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
    return bool(stor14)
}

function halted() {
    return bool(stor0)
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

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function isCrowdsaleFull() {
    return uint256(weiRaised) >= stor19
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
    return (arg3 > stor19)
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
    call finalizeAgentAddress.0x82771c8e with:
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
    call arg1.0x614cb904 with:
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

function revokeBountyTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require bountyRewards[address(arg1)] >= arg2
    require arg2 <= bountyTokens
    bountyTokens -= arg2
    require arg2 <= bountyRewards[address(arg1)]
    bountyRewards[address(arg1)] -= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x721a37d2 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
}

function getState() {
    if stor14:
        return 6
    if not finalizeAgentAddress:
        return 1
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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

function loadRefund() payable {
    require not stor14
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
        require uint256(weiRaised) >= stor19
    require uint256(weiRaised) < minimumFundingGoal
    if uint256(weiRaised) > 0:
        require loadedRefund < uint256(weiRaised)
    require msg.value
    require msg.value + loadedRefund >= loadedRefund
    require msg.value + loadedRefund >= msg.value
    loadedRefund += msg.value
}

function assignBountyTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x7346ec57 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x7346ec57 with:
         gas gas_remaining - 50 wei
        args bountyTokens
    require ext_call.success
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require 2 * ext_call.return_data[0] < stor19 / 100
    require arg2 + bountyRewards[address(arg1)] >= bountyRewards[address(arg1)]
    require arg2 + bountyRewards[address(arg1)] >= arg2
    bountyRewards[address(arg1)] += arg2
    require arg2 + bountyTokens >= bountyTokens
    require arg2 + bountyTokens >= arg2
    bountyTokens += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
}

function finalize() {
    require not stor14
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
            require not stor14
            if not finalizeAgentAddress:
                stor14 = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                stor14 = 1
    else:
        require uint256(weiRaised) >= stor19
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund < uint256(weiRaised)
            revert 
        else:
            require owner == msg.sender
            require not stor0
            require not stor14
            if not finalizeAgentAddress:
                stor14 = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                stor14 = 1
}

function refund() {
    require not stor14
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                        if investedAmountOf[address(msg.sender)] + weiRefunded >= weiRefunded:
                            if investedAmountOf[address(msg.sender)] + weiRefunded >= investedAmountOf[address(msg.sender)]:
                                weiRefunded += investedAmountOf[address(msg.sender)]
                                emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
                                call msg.sender with:
                                   value investedAmountOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if uint256(weiRaised) >= stor19:
            if uint256(weiRaised) < minimumFundingGoal:
                if uint256(weiRaised) > 0:
                    if loadedRefund >= uint256(weiRaised):
                        if investedAmountOf[address(msg.sender)]:
                            investedAmountOf[address(msg.sender)] = 0
                            if investedAmountOf[address(msg.sender)] + weiRefunded >= weiRefunded:
                                if investedAmountOf[address(msg.sender)] + weiRefunded >= investedAmountOf[address(msg.sender)]:
                                    weiRefunded += investedAmountOf[address(msg.sender)]
                                    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
                                    call msg.sender with:
                                       value investedAmountOf[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    revert 
}

function _fallback() payable {
    require not stor0
    if not stor14:
        if finalizeAgentAddress:
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.0x82771c8e with:
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
                                    require not stor14
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.0x82771c8e with:
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
                                        if uint256(weiRaised) >= stor19:
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
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                require msg.value + uint256(weiRaised) >= msg.value
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                require msg.value + uint256(weiRaised) >= msg.value
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not stor14
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.0x82771c8e with:
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
                                            if uint256(weiRaised) >= stor19:
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
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    require msg.value + uint256(weiRaised) >= msg.value
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    require msg.value + uint256(weiRaised) >= msg.value
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                    else:
                                        require not stor14
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.0x82771c8e with:
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
                                            if uint256(weiRaised) >= stor19:
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
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    require msg.value + uint256(weiRaised) >= msg.value
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    require msg.value + uint256(weiRaised) >= msg.value
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                require not stor14
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.0x82771c8e with:
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
                                    if uint256(weiRaised) >= stor19:
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
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            require msg.value + uint256(weiRaised) >= msg.value
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            require msg.value + uint256(weiRaised) >= msg.value
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            if uint256(weiRaised) >= stor19:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not stor14
                                        require finalizeAgentAddress
                                        require ext_code.size(finalizeAgentAddress)
                                        call finalizeAgentAddress.0x82771c8e with:
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
                                            if uint256(weiRaised) >= stor19:
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
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    require msg.value + uint256(weiRaised) >= msg.value
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                    require msg.value + uint256(weiRaised) >= msg.value
                                                    uint256(weiRaised) += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                    tokensSold += ext_call.return_data[0]
                                                    require uint256(weiRaised) <= stor19
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not stor14
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.0x82771c8e with:
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
                                                if uint256(weiRaised) >= stor19:
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
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        require msg.value + uint256(weiRaised) >= msg.value
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        require msg.value + uint256(weiRaised) >= msg.value
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                        else:
                                            require not stor14
                                            require finalizeAgentAddress
                                            require ext_code.size(finalizeAgentAddress)
                                            call finalizeAgentAddress.0x82771c8e with:
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
                                                if uint256(weiRaised) >= stor19:
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
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        require msg.value + uint256(weiRaised) >= msg.value
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                        require msg.value + uint256(weiRaised) >= msg.value
                                                        uint256(weiRaised) += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                        tokensSold += ext_call.return_data[0]
                                                        require uint256(weiRaised) <= stor19
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
                                    require not stor14
                                    require finalizeAgentAddress
                                    require ext_code.size(finalizeAgentAddress)
                                    call finalizeAgentAddress.0x82771c8e with:
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
                                        if uint256(weiRaised) >= stor19:
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
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                require msg.value + uint256(weiRaised) >= msg.value
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                                require msg.value + uint256(weiRaised) >= msg.value
                                                uint256(weiRaised) += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                                tokensSold += ext_call.return_data[0]
                                                require uint256(weiRaised) <= stor19
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 50 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                require not stor14
                                require finalizeAgentAddress
                                require ext_code.size(finalizeAgentAddress)
                                call finalizeAgentAddress.0x82771c8e with:
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
                                    if uint256(weiRaised) >= stor19:
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
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            require msg.value + uint256(weiRaised) >= msg.value
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                            require msg.value + uint256(weiRaised) >= msg.value
                                            uint256(weiRaised) += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                            tokensSold += ext_call.return_data[0]
                                            require uint256(weiRaised) <= stor19
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            require msg.value + uint256(weiRaised) >= msg.value
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            require msg.value + uint256(weiRaised) >= msg.value
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                else:
                    require not stor14
                    require finalizeAgentAddress
                    require ext_code.size(finalizeAgentAddress)
                    call finalizeAgentAddress.0x82771c8e with:
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
                        if uint256(weiRaised) >= stor19:
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
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                require msg.value + uint256(weiRaised) >= msg.value
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= stor19
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                                require msg.value + uint256(weiRaised) >= msg.value
                                uint256(weiRaised) += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                                tokensSold += ext_call.return_data[0]
                                require uint256(weiRaised) <= stor19
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
            else:
                require not stor14
                require finalizeAgentAddress
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.0x82771c8e with:
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
                    if uint256(weiRaised) >= stor19:
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
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            require msg.value + uint256(weiRaised) >= msg.value
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            require msg.value + uint256(weiRaised) >= msg.value
                            uint256(weiRaised) += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                            tokensSold += ext_call.return_data[0]
                            require uint256(weiRaised) <= stor19
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
        else:
            require not stor14
            require finalizeAgentAddress
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.0x82771c8e with:
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
                if uint256(weiRaised) >= stor19:
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
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        require msg.value + uint256(weiRaised) >= msg.value
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= stor19
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        require msg.value + uint256(weiRaised) >= msg.value
                        uint256(weiRaised) += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                        tokensSold += ext_call.return_data[0]
                        require uint256(weiRaised) <= stor19
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
    else:
        require not stor14
        require finalizeAgentAddress
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.0x82771c8e with:
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
            if uint256(weiRaised) >= stor19:
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
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    require msg.value + uint256(weiRaised) >= msg.value
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= stor19
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                    require msg.value + uint256(weiRaised) >= msg.value
                    uint256(weiRaised) += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    require ext_call.return_data[0] + tokensSold >= ext_call.return_data[0]
                    tokensSold += ext_call.return_data[0]
                    require uint256(weiRaised) <= stor19
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
}



}
