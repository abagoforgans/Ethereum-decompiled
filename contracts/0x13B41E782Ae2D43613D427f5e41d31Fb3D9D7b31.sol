contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor23;

function _fallback() payable {
    stor4 = 5
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor5 = code.data[8513 len 20]
    stor6 = code.data[8737 len 20]
    require stor0 == msg.sender
    stor7 = code.data[8545 len 20]
    require ext_code.size(code.data[8545 len 20])
    call code.data[8545 len 20].isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor9 = code.data[8577 len 20]
    require code.data[8577 len 20]
    require code.data[8597 len 32]
    stor11 = code.data[8597 len 32]
    require code.data[8629 len 32]
    stor12 = code.data[8629 len 32]
    require stor11 < code.data[8629 len 32]
    stor10 = code.data[8661 len 32]
    stor23 = code.data[8693 len 32]
    return code.data[583 len 7918]
}



// =====================  Runtime code  =====================


const isCrowdsale = 1


address owner;
address newOwner;
mapping of uint8 stor2;
uint8 stor3;
uint256 MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE;
address tokenAddress;
address tokenVestingAddress;
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
uint8 requireCustomerId; offset 8
uint8 requiredSignedAddress; offset 16
address signerAddress; offset 24
uint256 stor18; offset 8
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor21;
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

function allocateAgents(address arg1) {
    return bool(stor2[arg1])
}

function weiRaised() {
    return weiRaised
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
    return bool(stor3)
}

function tokenVestingAddress() {
    return tokenVestingAddress
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor21[arg1])
}

function requiredSignedAddress() {
    return bool(requiredSignedAddress)
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

function isCrowdsaleFull() {
    return weiRaised >= weiCap
}

function halt() {
    require owner == msg.sender
    stor3 = 1
}

function isMinimumGoalReached() {
    return weiRaised >= minimumFundingGoal
}

function unhalt() {
    require owner == msg.sender
    require stor3
    stor3 = 0
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

function setAllocateAgent(address arg1, bool arg2) {
    require owner == msg.sender
    stor2[address(arg1)] = uint8(arg2)
    emit AllocateAgentChanged(address(arg1), arg2);
}

function setEarlyParicipantWhitelist(address arg1, bool arg2) {
    require owner == msg.sender
    stor21[address(arg1)] = uint8(arg2)
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
    stor18 = Mask(248, 0, arg1)
    emit InvestmentPolicyChanged(bool rg1, bool rg2, address rg3):
                                 bool(uint8(arg1)),
                                 bool(uint16(arg1) / 256 or requiredSignedAddress or 0),
                                 0,
                                 signerAddress,
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
        require weiRaised >= weiCap
    require weiRaised < minimumFundingGoal
    if weiRaised > 0:
        require loadedRefund < weiRaised
    require msg.value
    require msg.value + loadedRefund >= loadedRefund
    loadedRefund += msg.value
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
        if weiRaised < weiCap:
            return 3
    if weiRaised >= minimumFundingGoal:
        return 4
    if weiRaised <= 0:
        return 5
    if loadedRefund < weiRaised:
        return 5
    return 7
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
        require weiRaised >= weiCap
    require weiRaised < minimumFundingGoal
    require weiRaised > 0
    require loadedRefund >= weiRaised
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
            require not stor3
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
        require weiRaised >= weiCap
        if weiRaised < minimumFundingGoal:
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            require owner == msg.sender
            require not stor3
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

function allocate(address arg1, uint256 arg2, uint256 arg3, string arg4, uint256 arg5) {
    require stor2[address(msg.sender)]
    require arg5 <= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 10^ext_call.return_data[31 len 1]
    require (arg3 * arg2 / 10^ext_call.return_data[31 len 1]) + weiRaised >= weiRaised
    weiRaised += arg3 * arg2 / 10^ext_call.return_data[31 len 1]
    require arg2 + tokensSold >= tokensSold
    tokensSold += arg2
    require (arg3 * arg2 / 10^uint8(ext_call.return_data[0])) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
    investedAmountOf[address(arg1)] += arg3 * arg2 / 10^uint8(ext_call.return_data[0])
    require arg2 + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
    tokenAmountOf[address(arg1)] += arg2
    if arg5 > 0:
        require ext_code.size(tokenVestingAddress)
        call tokenVestingAddress.0xcf462616 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require not ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args tokenVestingAddress, arg5
        require ext_call.success
        require ext_code.size(tokenVestingAddress)
        call tokenVestingAddress.0x6cd8015d with:
             gas gas_remaining - 710 wei
            args address(arg1), arg5
        require ext_call.success
    if arg2 - arg5 > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2 - arg5
        require ext_call.success
    emit Invested(address(arg1), arg3 * arg2 / 10^uint8(ext_call.return_data[0]), arg2, Array(len=arg4.length, data=arg4[all]));
}

function investWithCustomerId(address arg1, string arg2) payable {
    require not requiredSignedAddress
    require arg2.length
    require not stor3
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
                            if weiRaised < minimumFundingGoal:
                                if weiRaised <= 0:
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                else:
                                    if loadedRefund < weiRaised:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                        else:
                            if weiRaised >= weiCap:
                                if weiRaised < minimumFundingGoal:
                                    if weiRaised <= 0:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                    else:
                                        if loadedRefund < weiRaised:
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                    else:
                        require stor21[address(arg1)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if weiRaised >= weiCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(arg1)]:
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    if weiRaised >= weiCap:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                if weiRaised >= weiCap:
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(arg1)]:
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
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
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if weiRaised >= weiCap:
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(arg1)]:
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0], Array(len=arg2.length, data=arg2[all]));
}

function buyWithCustomerId(string arg1) payable {
    require not requiredSignedAddress
    require arg1.length
    require not stor3
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
                            if weiRaised < minimumFundingGoal:
                                if weiRaised <= 0:
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                else:
                                    if loadedRefund < weiRaised:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                        else:
                            if weiRaised >= weiCap:
                                if weiRaised < minimumFundingGoal:
                                    if weiRaised <= 0:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                    else:
                                        if loadedRefund < weiRaised:
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                    else:
                        require stor21[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if weiRaised >= weiCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    if weiRaised >= weiCap:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                if weiRaised >= weiCap:
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
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
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if weiRaised >= weiCap:
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args msg.value, weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0], Array(len=arg1.length, data=arg1[all]));
}

function invest(address arg1) payable {
    require not requireCustomerId
    require not requiredSignedAddress
    require not stor3
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
                            if weiRaised < minimumFundingGoal:
                                if weiRaised <= 0:
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(arg1),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(arg1),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
                                else:
                                    if loadedRefund < weiRaised:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(arg1),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(arg1),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(arg1),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(arg1),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(arg1),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(arg1),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                        else:
                            if weiRaised >= weiCap:
                                if weiRaised < minimumFundingGoal:
                                    if weiRaised <= 0:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(arg1)]:
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(arg1),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(arg1),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                    else:
                                        if loadedRefund < weiRaised:
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(arg1),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(arg1),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(arg1)]:
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(arg1),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                        investedAmountOf[address(arg1)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(arg1),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(arg1)]:
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(arg1),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(arg1),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(arg1),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(arg1),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                    else:
                        require stor21[address(arg1)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(arg1),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(arg1),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
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
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if weiRaised >= weiCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(arg1)]:
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                              address(arg1),
                                              msg.value,
                                              ext_call.return_data[0],
                                              128,
                                              0,
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                              address(arg1),
                                              msg.value,
                                              ext_call.return_data[0],
                                              128,
                                              0,
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
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    if weiRaised >= weiCap:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(arg1),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(arg1),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
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
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                if weiRaised >= weiCap:
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(arg1)]:
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                      address(arg1),
                                      msg.value,
                                      ext_call.return_data[0],
                                      128,
                                      0,
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                      address(arg1),
                                      msg.value,
                                      ext_call.return_data[0],
                                      128,
                                      0,
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
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if weiRaised >= weiCap:
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(arg1)]:
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                  address(arg1),
                                  msg.value,
                                  ext_call.return_data[0],
                                  128,
                                  0,
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                  address(arg1),
                                  msg.value,
                                  ext_call.return_data[0],
                                  128,
                                  0,
}

function buy() payable {
    require not requireCustomerId
    require not requiredSignedAddress
    require not stor3
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
                            if weiRaised < minimumFundingGoal:
                                if weiRaised <= 0:
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(msg.sender),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(msg.sender),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
                                else:
                                    if loadedRefund < weiRaised:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(msg.sender),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(msg.sender),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(msg.sender),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(msg.sender),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(msg.sender),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(msg.sender),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                        else:
                            if weiRaised >= weiCap:
                                if weiRaised < minimumFundingGoal:
                                    if weiRaised <= 0:
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
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            if weiRaised >= weiCap:
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x313ce567 with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(pricingStrategyAddress)
                                                call pricingStrategyAddress.0x18a4155e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(msg.sender),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                                else:
                                                    investorCount++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                    require msg.value + weiRaised >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                                    tokensSold += ext_call.return_data[0]
                                                    require weiRaised <= weiCap
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                  address(msg.sender),
                                                                  msg.value,
                                                                  ext_call.return_data[0],
                                                                  128,
                                                                  0,
                                    else:
                                        if loadedRefund < weiRaised:
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(msg.sender),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(msg.sender),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
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
                                                require weiRaised < minimumFundingGoal
                                                require weiRaised > 0
                                                require loadedRefund >= weiRaised
                                                revert
                                            else:
                                                if weiRaised >= weiCap:
                                                    require weiRaised < minimumFundingGoal
                                                    require weiRaised > 0
                                                    require loadedRefund >= weiRaised
                                                    revert
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x313ce567 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(pricingStrategyAddress)
                                                    call pricingStrategyAddress.0x18a4155e with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if investedAmountOf[address(msg.sender)]:
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(msg.sender),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
                                                    else:
                                                        investorCount++
                                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                        investedAmountOf[address(msg.sender)] += msg.value
                                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                        require msg.value + weiRaised >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                                        tokensSold += ext_call.return_data[0]
                                                        require weiRaised <= weiCap
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                                      address(msg.sender),
                                                                      msg.value,
                                                                      ext_call.return_data[0],
                                                                      128,
                                                                      0,
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
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        if weiRaised >= weiCap:
                                            require weiRaised < minimumFundingGoal
                                            require weiRaised > 0
                                            require loadedRefund >= weiRaised
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x18a4155e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(msg.sender),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
                                            else:
                                                investorCount++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require weiRaised <= weiCap
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                              address(msg.sender),
                                                              msg.value,
                                                              ext_call.return_data[0],
                                                              128,
                                                              0,
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
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if weiRaised >= weiCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x18a4155e with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(msg.sender),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                                        else:
                                            investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require weiRaised <= weiCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                                          address(msg.sender),
                                                          msg.value,
                                                          ext_call.return_data[0],
                                                          128,
                                                          0,
                    else:
                        require stor21[address(msg.sender)]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(msg.sender),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(msg.sender),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
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
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if weiRaised >= weiCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x18a4155e with:
                                 gas gas_remaining - 710 wei
                                args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                              address(msg.sender),
                                              msg.value,
                                              ext_call.return_data[0],
                                              128,
                                              0,
                            else:
                                investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require weiRaised <= weiCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                              address(msg.sender),
                                              msg.value,
                                              ext_call.return_data[0],
                                              128,
                                              0,
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
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    if weiRaised >= weiCap:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x18a4155e with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(msg.sender),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require weiRaised <= weiCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                          address(msg.sender),
                                          msg.value,
                                          ext_call.return_data[0],
                                          128,
                                          0,
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
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                if weiRaised >= weiCap:
                    require weiRaised < minimumFundingGoal
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x18a4155e with:
                         gas gas_remaining - 710 wei
                        args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                      address(msg.sender),
                                      msg.value,
                                      ext_call.return_data[0],
                                      128,
                                      0,
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require weiRaised <= weiCap
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                      address(msg.sender),
                                      msg.value,
                                      ext_call.return_data[0],
                                      128,
                                      0,
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
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if weiRaised >= weiCap:
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x18a4155e with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.value), weiRaised, tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                  address(msg.sender),
                                  msg.value,
                                  ext_call.return_data[0],
                                  128,
                                  0,
                else:
                    investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require weiRaised <= weiCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address rg1, uint256 rg2, uint256 rg3, string rg4):
                                  address(msg.sender),
                                  msg.value,
                                  ext_call.return_data[0],
                                  128,
                                  0,
}



}
