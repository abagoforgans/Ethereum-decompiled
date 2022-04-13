contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 500
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[4622 len 20]
    require code.data[4654 len 20]
    require code.data[4686 len 20]
    require code.data[4706 len 32]
    require code.data[4738 len 32]
    require code.data[4706 len 32] < code.data[4738 len 32]
    require code.data[4770 len 32]
    stor2 = code.data[4622 len 20]
    require address(stor0.field_0) == msg.sender
    stor3 = code.data[4654 len 20]
    require ext_code.size(code.data[4654 len 20])
    call code.data[4654 len 20].isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor4 = code.data[4686 len 20]
    stor6 = code.data[4706 len 32]
    stor7 = code.data[4738 len 32]
    stor8 = code.data[4770 len 32]
    stor5 = code.data[4802 len 32]
    return code.data[596 len 4014]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE;
address tokenAddress;
address pricingStrategyAddress;
address multisigWalletAddress;
uint256 minimumFundingGoal;
uint256 startsAt;
uint256 endsAt;
uint256 tokensHardCap;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor16;

function endsAt() {
    return endsAt
}

function minimumFundingGoal() {
    return minimumFundingGoal
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(stor0)
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

function tokensHardCap() {
    return tokensHardCap
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor16[arg1])
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function isPresaleFull() {
    return tokensSold >= tokensHardCap
}

function isBreakingCap(uint256 arg1) {
    return (arg1 > tokensHardCap)
}

function isMinimumGoalReached() {
    return weiRaised >= minimumFundingGoal
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
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
    stor16[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
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

function getState() {
    if not pricingStrategyAddress:
        return 1
    if block.timestamp < startsAt:
        return 2
    if block.timestamp <= endsAt:
        if tokensSold < tokensHardCap:
            return 3
    if weiRaised >= minimumFundingGoal:
        return 4
    if weiRaised <= 0:
        return 5
    if loadedRefund < weiRaised:
        return 5
    return 6
}

function loadRefund() payable {
    require pricingStrategyAddress
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require tokensSold >= tokensHardCap
    require weiRaised < minimumFundingGoal
    if weiRaised > 0:
        require loadedRefund < weiRaised
    require msg.value > 0
    require msg.value + loadedRefund >= loadedRefund
    loadedRefund += msg.value
}

function refund() {
    require pricingStrategyAddress
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require tokensSold >= tokensHardCap
    require weiRaised < minimumFundingGoal
    require weiRaised > 0
    require loadedRefund >= weiRaised
    require investedAmountOf[address(msg.sender)] > 0
    investedAmountOf[address(msg.sender)] = 0
    require investedAmountOf[address(msg.sender)] + weiRefunded >= weiRefunded
    weiRefunded += investedAmountOf[address(msg.sender)]
    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
    call msg.sender with:
       value investedAmountOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function invest(address arg1) payable {
    require not stor0
    if pricingStrategyAddress:
        if block.timestamp >= startsAt:
            if block.timestamp > endsAt:
                if weiRaised < minimumFundingGoal:
                    if weiRaised <= 0:
                        require pricingStrategyAddress
                        require block.timestamp >= startsAt
                        if block.timestamp > endsAt:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            if tokensSold >= tokensHardCap:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.value
                                require ext_call.success
                                require ext_call.return_data[0] > 0
                                if investedAmountOf[address(arg1)]:
                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                    investedAmountOf[address(arg1)] += msg.value
                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), ext_call.return_data[0]
                                    require ext_call.success
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), ext_call.return_data[0]
                                    require ext_call.success
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                    else:
                        if loadedRefund < weiRaised:
                            require pricingStrategyAddress
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                if tokensSold >= tokensHardCap:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0] > 0
                                    if investedAmountOf[address(arg1)]:
                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), ext_call.return_data[0]
                                        require ext_call.success
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), ext_call.return_data[0]
                                        require ext_call.success
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                        else:
                            require pricingStrategyAddress
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                if tokensSold >= tokensHardCap:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0] > 0
                                    if investedAmountOf[address(arg1)]:
                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), ext_call.return_data[0]
                                        require ext_call.success
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), ext_call.return_data[0]
                                        require ext_call.success
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                else:
                    require pricingStrategyAddress
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if tokensSold >= tokensHardCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.value
                            require ext_call.success
                            require ext_call.return_data[0] > 0
                            if investedAmountOf[address(arg1)]:
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
            else:
                if tokensSold >= tokensHardCap:
                    if weiRaised < minimumFundingGoal:
                        if weiRaised <= 0:
                            require pricingStrategyAddress
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                if tokensSold >= tokensHardCap:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0] > 0
                                    if investedAmountOf[address(arg1)]:
                                        require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), ext_call.return_data[0]
                                        require ext_call.success
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), ext_call.return_data[0]
                                        require ext_call.success
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                        else:
                            if loadedRefund < weiRaised:
                                require pricingStrategyAddress
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if tokensSold >= tokensHardCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args msg.value
                                        require ext_call.success
                                        require ext_call.return_data[0] > 0
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                            else:
                                require pricingStrategyAddress
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if tokensSold >= tokensHardCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args msg.value
                                        require ext_call.success
                                        require ext_call.return_data[0] > 0
                                        if investedAmountOf[address(arg1)]:
                                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                    else:
                        require pricingStrategyAddress
                        require block.timestamp >= startsAt
                        if block.timestamp > endsAt:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            if tokensSold >= tokensHardCap:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.value
                                require ext_call.success
                                require ext_call.return_data[0] > 0
                                if investedAmountOf[address(arg1)]:
                                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                    investedAmountOf[address(arg1)] += msg.value
                                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), ext_call.return_data[0]
                                    require ext_call.success
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), ext_call.return_data[0]
                                    require ext_call.success
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                else:
                    require pricingStrategyAddress
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if tokensSold >= tokensHardCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.value
                            require ext_call.success
                            require ext_call.return_data[0] > 0
                            if investedAmountOf[address(arg1)]:
                                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
        else:
            require stor16[address(arg1)]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args msg.value
            require ext_call.success
            require ext_call.return_data[0] > 0
            if investedAmountOf[address(arg1)]:
                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += msg.value
                require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_call.return_data[0] + tokensSold >= tokensSold
                tokensSold += ext_call.return_data[0]
                require ext_call.return_data[0] + tokensSold <= tokensHardCap
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0]
                require ext_call.success
                call multisigWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                require ext_call.return_data[0] + tokensSold <= tokensHardCap
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0]
                require ext_call.success
                call multisigWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
    else:
        require pricingStrategyAddress
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if tokensSold >= tokensHardCap:
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args msg.value
                require ext_call.success
                require ext_call.return_data[0] > 0
                if investedAmountOf[address(arg1)]:
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
}

function _fallback() payable {
    require not stor0
    if pricingStrategyAddress:
        if block.timestamp >= startsAt:
            if block.timestamp > endsAt:
                if weiRaised < minimumFundingGoal:
                    if weiRaised <= 0:
                        require pricingStrategyAddress
                        require block.timestamp >= startsAt
                        if block.timestamp > endsAt:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            if tokensSold >= tokensHardCap:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.value
                                require ext_call.success
                                require ext_call.return_data[0] > 0
                                if investedAmountOf[address(msg.sender)]:
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                        if loadedRefund < weiRaised:
                            require pricingStrategyAddress
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                if tokensSold >= tokensHardCap:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0] > 0
                                    if investedAmountOf[address(msg.sender)]:
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                            require pricingStrategyAddress
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                if tokensSold >= tokensHardCap:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0] > 0
                                    if investedAmountOf[address(msg.sender)]:
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                    require pricingStrategyAddress
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if tokensSold >= tokensHardCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.value
                            require ext_call.success
                            require ext_call.return_data[0] > 0
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                if tokensSold >= tokensHardCap:
                    if weiRaised < minimumFundingGoal:
                        if weiRaised <= 0:
                            require pricingStrategyAddress
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                if tokensSold >= tokensHardCap:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0] > 0
                                    if investedAmountOf[address(msg.sender)]:
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                            if loadedRefund < weiRaised:
                                require pricingStrategyAddress
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if tokensSold >= tokensHardCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args msg.value
                                        require ext_call.success
                                        require ext_call.return_data[0] > 0
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                require pricingStrategyAddress
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require weiRaised < minimumFundingGoal
                                    require weiRaised > 0
                                    require loadedRefund >= weiRaised
                                    revert
                                else:
                                    if tokensSold >= tokensHardCap:
                                        require weiRaised < minimumFundingGoal
                                        require weiRaised > 0
                                        require loadedRefund >= weiRaised
                                        revert
                                    else:
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args msg.value
                                        require ext_call.success
                                        require ext_call.return_data[0] > 0
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                        require pricingStrategyAddress
                        require block.timestamp >= startsAt
                        if block.timestamp > endsAt:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            if tokensSold >= tokensHardCap:
                                require weiRaised < minimumFundingGoal
                                require weiRaised > 0
                                require loadedRefund >= weiRaised
                                revert
                            else:
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.value
                                require ext_call.success
                                require ext_call.return_data[0] > 0
                                if investedAmountOf[address(msg.sender)]:
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                    require pricingStrategyAddress
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require weiRaised < minimumFundingGoal
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        if tokensSold >= tokensHardCap:
                            require weiRaised < minimumFundingGoal
                            require weiRaised > 0
                            require loadedRefund >= weiRaised
                            revert
                        else:
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.value
                            require ext_call.success
                            require ext_call.return_data[0] > 0
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
            require stor16[address(msg.sender)]
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args msg.value
            require ext_call.success
            require ext_call.return_data[0] > 0
            if investedAmountOf[address(msg.sender)]:
                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += msg.value
                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_call.return_data[0] + tokensSold >= tokensSold
                tokensSold += ext_call.return_data[0]
                require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += msg.value
                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_call.return_data[0] + tokensSold >= tokensSold
                tokensSold += ext_call.return_data[0]
                require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
        require pricingStrategyAddress
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require weiRaised < minimumFundingGoal
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if tokensSold >= tokensHardCap:
                require weiRaised < minimumFundingGoal
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.calculateTokenAmount(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args msg.value
                require ext_call.success
                require ext_call.return_data[0] > 0
                if investedAmountOf[address(msg.sender)]:
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokensSold <= tokensHardCap
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
