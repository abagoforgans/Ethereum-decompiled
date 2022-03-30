contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor17;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor1 = code.data[4624 len 20]
    stor2 = code.data[4656 len 20]
    stor4 = code.data[4688 len 20]
    require code.data[4688 len 20]
    require code.data[4708 len 32]
    stor6 = code.data[4708 len 32]
    require code.data[4740 len 32]
    stor7 = code.data[4740 len 32]
    require stor6 < code.data[4740 len 32]
    stor5 = code.data[4772 len 32]
    stor17 = code.data[4804 len 32]
    return code.data[305 len 4307]
}



// =====================  Runtime code  =====================


uint8 halted; offset 160
address owner;
address tokenAddress;
address pricingStrategyAddress;
address finalizeAgentAddress;
address multisigWalletAddress;
uint256 minimumFundingGoal;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 finalized;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
uint256 ownerTestValue;
uint256 maximumSellableTokens;

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

function maximumSellableTokens() {
    return maximumSellableTokens
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function weiRefunded() {
    return weiRefunded
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
    return bool(halted)
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
    halted = 1
}

function isCrowdsaleFull() {
    return tokensSold >= maximumSellableTokens
}

function isMinimumGoalReached() {
    return weiRaised >= minimumFundingGoal
}

function unhalt() {
    require owner == msg.sender
    require halted
    halted = 0
}

function setOwnerTestValue(uint256 arg1) {
    require owner == msg.sender
    ownerTestValue = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function isBreakingCap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    return (arg4 > maximumSellableTokens)
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
    if block.timestamp < startsAt:
        return 2
    if block.timestamp <= endsAt:
        if tokensSold < maximumSellableTokens:
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
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require tokensSold >= maximumSellableTokens
    require weiRaised < minimumFundingGoal
    if weiRaised > 0:
        require loadedRefund < weiRaised
    require msg.value
    require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
    delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
         gas gas_remaining - 50 wei
        args loadedRefund, msg.value
    require delegate.return_code
    loadedRefund = delegate.return_data[0]
}

function setFinalizeAgent(address arg1) {
    require owner == msg.sender
    require not finalized
    if finalizeAgentAddress:
        require ext_code.size(finalizeAgentAddress)
        call finalizeAgentAddress.isSane() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0]:
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund < weiRaised
                revert 
            else:
                require tokensSold >= maximumSellableTokens
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund < weiRaised
                revert 
        else:
            finalizeAgentAddress = arg1
            require ext_code.size(arg1)
            call arg1.isFinalizeAgent() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0]
    else:
        finalizeAgentAddress = arg1
        require ext_code.size(arg1)
        call arg1.isFinalizeAgent() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0]
}

function finalize() {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp > endsAt:
        if weiRaised < minimumFundingGoal:
            require weiRaised > 0
            require loadedRefund < weiRaised
            revert 
        else:
            require not halted
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
        require tokensSold >= maximumSellableTokens
        if weiRaised < minimumFundingGoal:
            require weiRaised > 0
            require loadedRefund < weiRaised
            revert 
        else:
            require not halted
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
    require block.timestamp >= startsAt
    if block.timestamp > endsAt:
        if weiRaised < minimumFundingGoal:
            if weiRaised > 0:
                if loadedRefund >= weiRaised:
                    if investedAmountOf[address(msg.sender)]:
                        investedAmountOf[address(msg.sender)] = 0
                        if ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe):
                            delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
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
        if tokensSold >= maximumSellableTokens:
            if weiRaised < minimumFundingGoal:
                if weiRaised > 0:
                    if loadedRefund >= weiRaised:
                        if investedAmountOf[address(msg.sender)]:
                            investedAmountOf[address(msg.sender)] = 0
                            if ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe):
                                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
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
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp > endsAt:
        require weiRaised < minimumFundingGoal
        require weiRaised > 0
        require loadedRefund < weiRaised
        revert 
    else:
        if tokensSold >= maximumSellableTokens:
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund < weiRaised
            revert 
        else:
            require not halted
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0xc545c09d with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(arg1)]:
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args weiRaised, msg.value
                require delegate.return_code
                weiRaised = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
                require delegate.return_data[0] <= maximumSellableTokens
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), ext_call.return_data[0]
                require ext_call.success
                call multisigWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
            else:
                investorCount++
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args weiRaised, msg.value
                require delegate.return_code
                weiRaised = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
                require delegate.return_data[0] <= maximumSellableTokens
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), ext_call.return_data[0]
                require ext_call.success
                call multisigWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
}

function buy() payable {
    require not finalized
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= startsAt
    if block.timestamp > endsAt:
        require weiRaised < minimumFundingGoal
        require weiRaised > 0
        require loadedRefund < weiRaised
        revert 
    else:
        if tokensSold >= maximumSellableTokens:
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund < weiRaised
            revert 
        else:
            require not halted
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0xc545c09d with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args weiRaised, msg.value
                require delegate.return_code
                weiRaised = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
                require delegate.return_data[0] <= maximumSellableTokens
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
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args weiRaised, msg.value
                require delegate.return_code
                weiRaised = delegate.return_data[0]
                require ext_code.size(0x1abdf168589e8f3c73bea60c5723464afc83edbe)
                delegate 0x1abdf168589e8f3c73bea60c5723464afc83edbe.0x66098d4f with:
                     gas gas_remaining - 50 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
                require delegate.return_data[0] <= maximumSellableTokens
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
