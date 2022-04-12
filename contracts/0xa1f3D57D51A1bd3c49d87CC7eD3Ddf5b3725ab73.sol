contract main {


// =======================  Init code  ======================


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
address stor20;

function _fallback() payable {
    stor1 = 5
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor2 = code.data[6704 len 20]
    require stor0 == msg.sender
    stor3 = code.data[6736 len 20]
    require ext_code.size(code.data[6736 len 20])
    call code.data[6736 len 20].isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor4 = code.data[6768 len 20]
    require code.data[6768 len 20]
    require code.data[6788 len 32]
    stor6 = code.data[6788 len 32]
    require code.data[6820 len 32]
    stor7 = code.data[6820 len 32]
    require stor6 < code.data[6820 len 32]
    stor5 = code.data[6852 len 32]
    stor20 = code.data[6896 len 20]
    return code.data[575 len 6117]
}



// =====================  Runtime code  =====================


const isCrowdsale = 1


uint8 stor0; offset 160
address owner;
uint256 MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE;
address tokenAddress;
address pricingStrategyAddress;
address multisigWalletAddress;
uint256 minimumFundingGoal;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint32 stor9;
uint256 weiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 finalized;
uint256 sub_a2077958;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor17;
uint256 ownerTestValue;
address preSaleAddress;
address beneficiaryAddress;

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

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return uint256(weiRaised)
}

function tokensSold() {
    return tokensSold
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

function sub_a2077958(?) {
    return sub_a2077958
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

function investorCount() {
    return investorCount
}

function preSaleAddress() {
    return preSaleAddress
}

function token() {
    return tokenAddress
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function isMinimumGoalReached() {
    return uint256(weiRaised) >= minimumFundingGoal
}

function sub_a709b6e4(?) {
    require preSaleAddress == msg.sender
    sub_a2077958 = arg1
}

function setPreSaleAddress(address arg1) {
    require owner == msg.sender
    preSaleAddress = arg1
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

function setPricingStrategy(address arg1) {
    require owner == msg.sender
    pricingStrategyAddress = arg1
    require ext_code.size(arg1)
    call arg1.isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function isPricingSane() {
    if not pricingStrategyAddress:
        return 0
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x82771c8e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
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

function loadRefund() payable {
    require not finalized
    require pricingStrategyAddress
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x82771c8e with:
         gas gas_remaining - 710 wei
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
    require uint256(weiRaised) < minimumFundingGoal
    if uint256(weiRaised) > 0:
        require loadedRefund < uint256(weiRaised)
    require msg.value
    require msg.value + loadedRefund >= loadedRefund
    loadedRefund += msg.value
}

function getState() {
    if finalized:
        return 6
    if not pricingStrategyAddress:
        return 1
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x82771c8e with:
         gas gas_remaining - 710 wei
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
    require (arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
    uint256(weiRaised) += arg2 * arg3
    require (arg2 * 10^ext_call.return_data[0]) + tokensSold >= tokensSold
    tokensSold += arg2 * 10^ext_call.return_data[0]
    require (arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
    investedAmountOf[address(arg1)] += arg2 * arg3
    require (arg2 * 10^ext_call.return_data[0]) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, address(arg1), arg2 * 10^ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit Invested(address(arg1), arg2 * arg3, arg2 * 10^ext_call.return_data[0]);
}

function refund() {
    require not finalized
    require pricingStrategyAddress
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x82771c8e with:
         gas gas_remaining - 710 wei
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
    require not finalized
    require pricingStrategyAddress
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x82771c8e with:
         gas gas_remaining - 710 wei
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
            require not finalized
            require ext_code.size(tokenAddress)
            call tokenAddress.'_A-O' with:
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
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require owner == msg.sender
            require not stor0
            require not finalized
            require ext_code.size(tokenAddress)
            call tokenAddress.'_A-O' with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            finalized = 1
}

function sub_1c9afcc8(?) {
    if not finalized:
        if pricingStrategyAddress:
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x82771c8e with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        if uint256(weiRaised) < minimumFundingGoal:
                            if uint256(weiRaised) <= 0:
                                return 1
                            else:
                                if loadedRefund < uint256(weiRaised):
                                    return 1
                                else:
                                    return 1
                        else:
                            return 1
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    return 1
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        return 1
                                    else:
                                        return 1
                            else:
                                return 1
                        else:
                            return 1
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 1
}

function sub_391623b4(?) {
    if not finalized:
        if pricingStrategyAddress:
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x82771c8e with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        if uint256(weiRaised) < minimumFundingGoal:
                            if uint256(weiRaised) <= 0:
                                return 0
                            else:
                                if loadedRefund < uint256(weiRaised):
                                    return 0
                                else:
                                    return 0
                        else:
                            return 0
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    return 0
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        return 0
                                    else:
                                        return 0
                            else:
                                return 0
                        else:
                            return 0
                else:
                    return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function buy() payable {
    require msg.value
    require not stor0
    if not finalized:
        if pricingStrategyAddress:
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x82771c8e with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        if uint256(weiRaised) < minimumFundingGoal:
                            if uint256(weiRaised) <= 0:
                                require not finalized
                                require pricingStrategyAddress
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x82771c8e with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xdd62ed3e with:
                                         gas gas_remaining - 710 wei
                                        args owner, this.address
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
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
                                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                if loadedRefund < uint256(weiRaised):
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            require not finalized
                            require pricingStrategyAddress
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x82771c8e with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0]
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require uint256(weiRaised) < minimumFundingGoal
                                require uint256(weiRaised) > 0
                                require loadedRefund >= uint256(weiRaised)
                                revert
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xdd62ed3e with:
                                     gas gas_remaining - 710 wei
                                    args owner, this.address
                                require ext_call.success
                                if not ext_call.return_data[0]:
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
                                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require pricingStrategyAddress
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x82771c8e with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
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
                                                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                    else:
                                        require not finalized
                                        require pricingStrategyAddress
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x82771c8e with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
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
                                                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                require not finalized
                                require pricingStrategyAddress
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x82771c8e with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xdd62ed3e with:
                                         gas gas_remaining - 710 wei
                                        args owner, this.address
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
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
                                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            require not finalized
                            require pricingStrategyAddress
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x82771c8e with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0]
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require uint256(weiRaised) < minimumFundingGoal
                                require uint256(weiRaised) > 0
                                require loadedRefund >= uint256(weiRaised)
                                revert
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xdd62ed3e with:
                                     gas gas_remaining - 710 wei
                                    args owner, this.address
                                require ext_call.success
                                if not ext_call.return_data[0]:
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
                                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x6f3a6bff with:
                         gas gas_remaining - 710 wei
                        args msg.value, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require uint256(weiRaised) <= sub_a2077958
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require uint256(weiRaised) <= sub_a2077958
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
            else:
                require not finalized
                require pricingStrategyAddress
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x82771c8e with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args owner, this.address
                    require ext_call.success
                    if not ext_call.return_data[0]:
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
                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
        else:
            require not finalized
            require pricingStrategyAddress
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x82771c8e with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args owner, this.address
                require ext_call.success
                if not ext_call.return_data[0]:
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
                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
    else:
        require not finalized
        require pricingStrategyAddress
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x82771c8e with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args owner, this.address
            require ext_call.success
            if not ext_call.return_data[0]:
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
                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args owner, this.address
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args owner, this.address
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
}

function _fallback() payable {
    require msg.value
    require not stor0
    if not finalized:
        if pricingStrategyAddress:
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x82771c8e with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        if uint256(weiRaised) < minimumFundingGoal:
                            if uint256(weiRaised) <= 0:
                                require not finalized
                                require pricingStrategyAddress
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x82771c8e with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xdd62ed3e with:
                                         gas gas_remaining - 710 wei
                                        args owner, this.address
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
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
                                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                if loadedRefund < uint256(weiRaised):
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            require not finalized
                            require pricingStrategyAddress
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x82771c8e with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0]
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require uint256(weiRaised) < minimumFundingGoal
                                require uint256(weiRaised) > 0
                                require loadedRefund >= uint256(weiRaised)
                                revert
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xdd62ed3e with:
                                     gas gas_remaining - 710 wei
                                    args owner, this.address
                                require ext_call.success
                                if not ext_call.return_data[0]:
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
                                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require pricingStrategyAddress
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x82771c8e with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
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
                                                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                                    else:
                                        require not finalized
                                        require pricingStrategyAddress
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x82771c8e with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
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
                                                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                            else:
                                require not finalized
                                require pricingStrategyAddress
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x82771c8e with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xdd62ed3e with:
                                         gas gas_remaining - 710 wei
                                        args owner, this.address
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
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
                                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                        else:
                            require not finalized
                            require pricingStrategyAddress
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.0x82771c8e with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0]
                            require block.timestamp >= startsAt
                            if block.timestamp > endsAt:
                                require uint256(weiRaised) < minimumFundingGoal
                                require uint256(weiRaised) > 0
                                require loadedRefund >= uint256(weiRaised)
                                revert
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xdd62ed3e with:
                                     gas gas_remaining - 710 wei
                                    args owner, this.address
                                require ext_call.success
                                if not ext_call.return_data[0]:
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
                                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x6f3a6bff with:
                         gas gas_remaining - 710 wei
                        args msg.value, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require uint256(weiRaised) <= sub_a2077958
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
                    else:
                        investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += msg.value
                        require uint256(weiRaised) <= sub_a2077958
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
            else:
                require not finalized
                require pricingStrategyAddress
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x82771c8e with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args owner, this.address
                    require ext_call.success
                    if not ext_call.return_data[0]:
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
                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
        else:
            require not finalized
            require pricingStrategyAddress
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x82771c8e with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args owner, this.address
                require ext_call.success
                if not ext_call.return_data[0]:
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
                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
    else:
        require not finalized
        require pricingStrategyAddress
        require ext_code.size(pricingStrategyAddress)
        call pricingStrategyAddress.0x82771c8e with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        require block.timestamp >= startsAt
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args owner, this.address
            require ext_call.success
            if not ext_call.return_data[0]:
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
                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args owner, this.address
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
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
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args owner, this.address
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Invested(msg.sender, msg.value, ext_call.return_data[0]);
}

function sub_f8f8c095(?) payable {
    require not finalized
    require pricingStrategyAddress
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x82771c8e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if block.timestamp >= startsAt:
        if block.timestamp > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args owner, this.address
            require ext_call.success
            require not ext_call.return_data[0]
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
    else:
        require not stor0
        if not finalized:
            if pricingStrategyAddress:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x82771c8e with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.timestamp >= startsAt:
                        if block.timestamp > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require not finalized
                                        require pricingStrategyAddress
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x82771c8e with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
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
                                                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                                    else:
                                        require not finalized
                                        require pricingStrategyAddress
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x82771c8e with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
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
                                                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                            else:
                                require not finalized
                                require pricingStrategyAddress
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x82771c8e with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xdd62ed3e with:
                                         gas gas_remaining - 710 wei
                                        args owner, this.address
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
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
                                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require not finalized
                                        require pricingStrategyAddress
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.0x82771c8e with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require block.timestamp >= startsAt
                                        if block.timestamp > endsAt:
                                            require uint256(weiRaised) < minimumFundingGoal
                                            require uint256(weiRaised) > 0
                                            require loadedRefund >= uint256(weiRaised)
                                            revert
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
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
                                                    args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xdd62ed3e with:
                                                         gas gas_remaining - 710 wei
                                                        args owner, this.address
                                                    require ext_call.success
                                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require not finalized
                                            require pricingStrategyAddress
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x82771c8e with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
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
                                                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xdd62ed3e with:
                                                             gas gas_remaining - 710 wei
                                                            args owner, this.address
                                                        require ext_call.success
                                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xdd62ed3e with:
                                                             gas gas_remaining - 710 wei
                                                            args owner, this.address
                                                        require ext_call.success
                                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                                        else:
                                            require not finalized
                                            require pricingStrategyAddress
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.0x82771c8e with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require block.timestamp >= startsAt
                                            if block.timestamp > endsAt:
                                                require uint256(weiRaised) < minimumFundingGoal
                                                require uint256(weiRaised) > 0
                                                require loadedRefund >= uint256(weiRaised)
                                                revert
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
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
                                                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xdd62ed3e with:
                                                             gas gas_remaining - 710 wei
                                                            args owner, this.address
                                                        require ext_call.success
                                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xdd62ed3e with:
                                                             gas gas_remaining - 710 wei
                                                            args owner, this.address
                                                        require ext_call.success
                                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                                else:
                                    require not finalized
                                    require pricingStrategyAddress
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.0x82771c8e with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require block.timestamp >= startsAt
                                    if block.timestamp > endsAt:
                                        require uint256(weiRaised) < minimumFundingGoal
                                        require uint256(weiRaised) > 0
                                        require loadedRefund >= uint256(weiRaised)
                                        revert
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xdd62ed3e with:
                                             gas gas_remaining - 710 wei
                                            args owner, this.address
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
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
                                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xdd62ed3e with:
                                                     gas gas_remaining - 710 wei
                                                    args owner, this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                            else:
                                require not finalized
                                require pricingStrategyAddress
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.0x82771c8e with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0]
                                require block.timestamp >= startsAt
                                if block.timestamp > endsAt:
                                    require uint256(weiRaised) < minimumFundingGoal
                                    require uint256(weiRaised) > 0
                                    require loadedRefund >= uint256(weiRaised)
                                    revert
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xdd62ed3e with:
                                         gas gas_remaining - 710 wei
                                        args owner, this.address
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
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
                                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xdd62ed3e with:
                                                 gas gas_remaining - 710 wei
                                                args owner, this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] <= ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.0x6f3a6bff with:
                             gas gas_remaining - 710 wei
                            args msg.value, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(arg1)]:
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require uint256(weiRaised) <= sub_a2077958
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                        else:
                            investorCount++
                            require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require ext_call.return_data[0] + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += ext_call.return_data[0]
                            require msg.value + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += msg.value
                            require uint256(weiRaised) <= sub_a2077958
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
                else:
                    require not finalized
                    require pricingStrategyAddress
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.0x82771c8e with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0]
                    require block.timestamp >= startsAt
                    if block.timestamp > endsAt:
                        require uint256(weiRaised) < minimumFundingGoal
                        require uint256(weiRaised) > 0
                        require loadedRefund >= uint256(weiRaised)
                        revert
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        if not ext_call.return_data[0]:
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
                                args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xdd62ed3e with:
                                     gas gas_remaining - 710 wei
                                    args owner, this.address
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                require ext_call.return_data[0]
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xdd62ed3e with:
                                     gas gas_remaining - 710 wei
                                    args owner, this.address
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                                require ext_call.success
                                require ext_call.return_data[0]
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
            else:
                require not finalized
                require pricingStrategyAddress
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x82771c8e with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0]
                require block.timestamp >= startsAt
                if block.timestamp > endsAt:
                    require uint256(weiRaised) < minimumFundingGoal
                    require uint256(weiRaised) > 0
                    require loadedRefund >= uint256(weiRaised)
                    revert
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args owner, this.address
                    require ext_call.success
                    if not ext_call.return_data[0]:
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
                            args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xdd62ed3e with:
                                 gas gas_remaining - 710 wei
                                args owner, this.address
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                            require ext_call.success
                            require ext_call.return_data[0]
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
        else:
            require not finalized
            require pricingStrategyAddress
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.0x82771c8e with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp >= startsAt
            if block.timestamp > endsAt:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args owner, this.address
                require ext_call.success
                if not ext_call.return_data[0]:
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
                        args 0, 0, uint32(stor9), tokensSold, msg.sender, ext_call.return_data[0]
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
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
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
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args owner, this.address
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args beneficiaryAddress, address(arg1), ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Invested(address(arg1), msg.value, ext_call.return_data[0]);
}



}
