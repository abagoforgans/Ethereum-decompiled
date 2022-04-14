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
uint256 stor18;

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
    stor2 = code.data[8676 len 20]
    require stor0 == msg.sender
    stor3 = code.data[8708 len 20]
    require ext_code.size(code.data[8708 len 20])
    call code.data[8708 len 20].isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor5 = code.data[8740 len 20]
    require code.data[8740 len 20]
    require code.data[8760 len 32]
    stor7 = code.data[8760 len 32]
    require code.data[8792 len 32]
    stor8 = code.data[8792 len 32]
    require stor7 < code.data[8792 len 32]
    stor6 = code.data[8824 len 32]
    stor18 = code.data[8856 len 32]
    return code.data[559 len 8105]
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
uint8 stor14; offset 8
uint8 stor14; offset 16
uint128 stor14; offset 184
address signerAddress; offset 24
uint256 stor14; offset 8
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
uint256 ownerTestValue;
uint256 weiCap;

function ownerTestValue() {
    return ownerTestValue
}

function requireCustomerId() {
    return bool(uint8(stor14.field_8))
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
    return bool(uint8(stor14.field_0))
}

function halted() {
    return bool(stor0)
}

function requiredSignedAddress() {
    return bool(uint8(stor14.field_16))
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
    require arg1
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

function isFinalizerSane() {
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
    call arg1.0x614cb904 with:
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

function setRequireSignedAddress(bool arg1, address arg2) {
    require owner == msg.sender
    uint8(stor14.field_16) = uint8(arg1)
    signerAddress = arg2
    Mask(72, 0, stor14.field_184) = Mask(72, 168, arg1) >> 168
    Mask(72, 0, stor14.field_184) = 0
    emit InvestmentPolicyChanged(bool(uint8(stor14.field_8)), bool(uint8(arg1)), arg2);
}

function setRequireCustomerId(bool arg1) {
    require owner == msg.sender
    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg1)
    emit InvestmentPolicyChanged(bool rg1, bool rg2, address rg3):
                                 bool(uint8(arg1)),
                                 bool(uint16(arg1) / 256 or uint8(stor14.field_16) or 0),
                                 0,
                                 signerAddress,
}

function getState() {
    if uint8(stor14.field_0):
        return 6
    if not finalizeAgentAddress:
        return 1
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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

function loadRefund() payable {
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
    require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
    delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
         gas gas_remaining - 710 wei
        args loadedRefund, msg.value
    require delegate.return_code
    loadedRefund = delegate.return_data[0]
}

function refund() {
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
    require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
    delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
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

function preallocate(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
    delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
         gas gas_remaining - 710 wei
        args uint256(weiRaised), arg3 * arg2
    require delegate.return_code
    uint256(weiRaised) = delegate.return_data[0]
    require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
    delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
         gas gas_remaining - 710 wei
        args tokensSold, arg2 * 10^ext_call.return_data[0]
    require delegate.return_code
    tokensSold = delegate.return_data[0]
    require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
    delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
         gas gas_remaining - 710 wei
        args investedAmountOf[address(arg1)], arg3 * arg2
    require delegate.return_code
    investedAmountOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
    delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
         gas gas_remaining - 710 wei
        args tokenAmountOf[address(arg1)], arg2 * 10^ext_call.return_data[0]
    require delegate.return_code
    tokenAmountOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 * 10^ext_call.return_data[0]
    require ext_call.success
    emit Invested(address(arg1), arg3 * arg2, arg2 * 10^ext_call.return_data[0], 0);
}

function finalize() {
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
            require not stor0
            require not uint8(stor14.field_0)
            if not finalizeAgentAddress:
                uint8(stor14.field_0) = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint8(stor14.field_0) = 1
    else:
        require uint256(weiRaised) >= weiCap
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require owner == msg.sender
            require not stor0
            require not uint8(stor14.field_0)
            if not finalizeAgentAddress:
                uint8(stor14.field_0) = 1
            else:
                require ext_code.size(finalizeAgentAddress)
                call finalizeAgentAddress.finalizeCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint8(stor14.field_0) = 1
}

function invest(address arg1) payable {
    require not uint8(stor14.field_8)
    require not uint8(stor14.field_16)
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(arg1)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
    require not uint8(stor14.field_16)
    require arg2
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(arg1)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
    require not uint8(stor14.field_8)
    require not uint8(stor14.field_16)
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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

function _fallback() payable {
    require not uint8(stor14.field_8)
    require not uint8(stor14.field_16)
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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

function buyWithReferral(uint128 arg1) payable {
    require not uint8(stor14.field_16)
    require arg1
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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

function buyWithCustomerId(uint128 arg1) payable {
    require not uint8(stor14.field_16)
    require arg1
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args 0, 0, uint32(stor10), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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

function investWithSignedAddress(address arg1, uint128 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    hash = sha256hash(arg1) 
    require sha256hash.result
    signer = erecover(hash, arg3 << 248, arg4, arg5) 
    require erecover.result
    require address(signer) == signerAddress
    require arg2
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args msg.value, uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(arg1)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(arg1)], msg.value
                require delegate.return_code
                investedAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(arg1)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(arg1)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
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

function buyWithSignedAddress(uint128 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    signer = erecover(hash, arg2 << 248, arg3, arg4) 
    require erecover.result
    require address(signer) == signerAddress
    require arg1
    require not stor0
    require not uint8(stor14.field_0)
    require finalizeAgentAddress
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.0x82771c8e with:
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
                args msg.value, uint256(weiRaised), tokensSold, msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
                require uint256(weiRaised) <= weiCap
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call multisigWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
            else:
                investorCount++
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args investedAmountOf[address(msg.sender)], msg.value
                require delegate.return_code
                investedAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokenAmountOf[address(msg.sender)], ext_call.return_data[0]
                require delegate.return_code
                tokenAmountOf[address(msg.sender)] = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args uint256(weiRaised), msg.value
                require delegate.return_code
                uint256(weiRaised) = delegate.return_data[0]
                require ext_code.size(0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f)
                delegate 0x8157f10aaf1c9f24dd0be0bc40c9d2554d898c5f.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args tokensSold, ext_call.return_data[0]
                require delegate.return_code
                tokensSold = delegate.return_data[0]
                require uint256(weiRaised) <= weiCap
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call multisigWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit Invested(msg.sender, msg.value, ext_call.return_data[0], arg1);
}



}
