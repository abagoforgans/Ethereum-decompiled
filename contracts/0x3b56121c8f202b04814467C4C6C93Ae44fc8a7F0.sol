contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
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

function _fallback() payable {
    stor7 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[18702 len 20]
    stor5 = code.data[18702 len 20]
    require code.data[18722 len 32]
    require code.data[18754 len 32]
    require block.number < code.data[18722 len 32]
    require code.data[18722 len 32] < code.data[18754 len 32]
    stor8 = code.data[18722 len 32]
    stor9 = code.data[18754 len 32]
    stor6 = 17000 * 10^18
    create contract with 0 wei
                    code: code.data[8936 len 442], 10^15
    require create.new_address
    create contract with 0 wei
                    code: code.data[9378 len 845], 5 * 10^18 * 3600, 100000 * 10^18
    create contract with 0 wei
                    code: code.data[10223 len 1403], address(this.address), 3000, code.data[18702 len 20]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).isPricingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor2 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).isCeilingStrategy() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor3 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[11626 len 7064], 192, 256, 0, 15, address(code.data[18690 len 32]), 1, 7, 'Hubiits' << 200, 3, 'HBT' % 16777216
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setMintAgent(address rg1, bool rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), 1
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.setMintAgent(address rg1, bool rg2) with:
         gas gas_remaining - 710 wei
        args address(create.new_address), 1
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.setReleaseAgent(address rg1) with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).isFinalizeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor4 = address(create.new_address)
    require ext_code.size(stor4)
    call stor4.isSane(address rg1) with:
         gas gas_remaining - 710 wei
        args stor1
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[2183 len 6753]
}



// =====================  Runtime code  =====================


const isCrowdsale = 1


uint8 stor0; offset 160
address owner;
address tokenAddress;
address pricingStrategyAddress;
address ceilingStrategyAddress;
address finalizeAgentAddress;
address multisigWalletAddress;
uint256 minimumFundingGoal;
uint256 weiFundingCap;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint32 stor11;
uint256 weiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 finalized;
uint8 requireCustomerId; offset 8
uint256 stor15; offset 8
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor18;
uint8 ownerTestValue;

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

function weiFundingCap() {
    return weiFundingCap
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
    return bool(stor0)
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor18[arg1])
}

function investorCount() {
    return investorCount
}

function ceilingStrategy() {
    return ceilingStrategyAddress
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
    emit Halted(1);
}

function isMinimumGoalReached() {
    return uint256(weiRaised) >= minimumFundingGoal
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Halted(0);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setOwnerTestValue(uint8 arg1) {
    require owner == msg.sender
    require not stor0
    ownerTestValue = arg1
}

function setRequireCustomerId(bool arg1) {
    require owner == msg.sender
    require not stor0
    stor15 = Mask(248, 0, arg1)
    emit InvestmentPolicyChanged(bool(uint8(arg1)));
}

function isFinalizerSane() {
    require ext_code.size(finalizeAgentAddress)
    call finalizeAgentAddress.isSane(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function getState() {
    if finalized:
        return 5
    if block.number < startsAt:
        return 1
    if block.number <= endsAt:
        require ext_code.size(ceilingStrategyAddress)
        call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args uint256(weiRaised), weiFundingCap
        require ext_call.success
        if not ext_call.return_data[0]:
            return 2
    if uint256(weiRaised) >= minimumFundingGoal:
        return 3
    if uint256(weiRaised) <= 0:
        return 4
    if loadedRefund < uint256(weiRaised):
        return 4
    return 6
}

function setStartingBlock(uint256 arg1) {
    require owner == msg.sender
    require not finalized
    if block.number >= startsAt:
        if block.number > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args uint256(weiRaised), weiFundingCap
            require ext_call.success
            require ext_call.return_data[0]
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
    else:
        require arg1 > block.number
        require arg1 < endsAt
        startsAt = arg1
}

function loadRefund() payable {
    require not finalized
    require block.number >= startsAt
    if block.number <= endsAt:
        require ext_code.size(ceilingStrategyAddress)
        call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args uint256(weiRaised), weiFundingCap
        require ext_call.success
        require ext_call.return_data[0]
    require uint256(weiRaised) < minimumFundingGoal
    if uint256(weiRaised) > 0:
        require loadedRefund < uint256(weiRaised)
    require not stor0
    require msg.value >= uint256(weiRaised)
    require not weiRefunded
    require uint256(weiRaised) <= msg.value
    require msg.value - uint256(weiRaised) <= msg.value
    require uint256(weiRaised) + loadedRefund >= loadedRefund
    loadedRefund += uint256(weiRaised)
    require msg.value - uint256(weiRaised) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
}

function refund() {
    require not finalized
    require block.number >= startsAt
    if block.number <= endsAt:
        require ext_code.size(ceilingStrategyAddress)
        call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args uint256(weiRaised), weiFundingCap
        require ext_call.success
        require ext_call.return_data[0]
    require uint256(weiRaised) < minimumFundingGoal
    require uint256(weiRaised) > 0
    require loadedRefund >= uint256(weiRaised)
    require not stor0
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

function setEndingBlock(uint256 arg1) {
    require owner == msg.sender
    require not finalized
    if block.number >= startsAt:
        if block.number > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args uint256(weiRaised), weiFundingCap
            require ext_call.success
            if ext_call.return_data[0]:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require arg1 > block.number
                require arg1 > startsAt
                endsAt = arg1
    else:
        require arg1 > block.number
        require arg1 > startsAt
        endsAt = arg1
}

function setEarlyParticipantWhitelist(address arg1, bool arg2) {
    require owner == msg.sender
    require not finalized
    if block.number >= startsAt:
        if block.number > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args uint256(weiRaised), weiFundingCap
            require ext_call.success
            if ext_call.return_data[0]:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require not stor0
                stor18[address(arg1)] = uint8(arg2)
                emit Whitelisted(address(arg1), arg2);
    else:
        require not stor0
        stor18[address(arg1)] = uint8(arg2)
        emit Whitelisted(address(arg1), arg2);
}

function finalize() {
    require not finalized
    require block.number >= startsAt
    if block.number > endsAt:
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require owner == msg.sender
            require not stor0
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.finalizeCrowdsale(address rg1) with:
                 gas gas_remaining - 710 wei
                args tokenAddress
            require ext_call.success
            finalized = 1
            emit Finalized()
    else:
        require ext_code.size(ceilingStrategyAddress)
        call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args uint256(weiRaised), weiFundingCap
        require ext_call.success
        require ext_call.return_data[0]
        if uint256(weiRaised) < minimumFundingGoal:
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require owner == msg.sender
            require not stor0
            require ext_code.size(finalizeAgentAddress)
            call finalizeAgentAddress.finalizeCrowdsale(address rg1) with:
                 gas gas_remaining - 710 wei
                args tokenAddress
            require ext_call.success
            finalized = 1
            emit Finalized()
}

function setFundingCap(uint256 arg1) {
    require owner == msg.sender
    require not finalized
    if block.number >= startsAt:
        if block.number > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args uint256(weiRaised), weiFundingCap
            require ext_call.success
            if ext_call.return_data[0]:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require ext_code.size(ceilingStrategyAddress)
                call ceilingStrategyAddress.relaxFundingCap(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args arg1, uint256(weiRaised)
                require ext_call.success
                weiFundingCap = ext_call.return_data[0]
                require ext_call.return_data[0] >= minimumFundingGoal
                emit FundingCapSet(weiFundingCap);
    else:
        require ext_code.size(ceilingStrategyAddress)
        call ceilingStrategyAddress.relaxFundingCap(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args arg1, uint256(weiRaised)
        require ext_call.success
        weiFundingCap = ext_call.return_data[0]
        require ext_call.return_data[0] >= minimumFundingGoal
        emit FundingCapSet(weiFundingCap);
}

function preallocate(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require not finalized
    if block.number >= startsAt:
        if block.number > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args uint256(weiRaised), weiFundingCap
            require ext_call.success
            if ext_call.return_data[0]:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                require arg1
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if not arg2:
                    require 10^ext_call.return_data[31 len 1] * arg2
                    if not arg3:
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                        tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_call.success
                        emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
                    else:
                        require arg3
                        require 10^ext_call.return_data[31 len 1] * arg2 * arg3 / arg3 == 10^ext_call.return_data[31 len 1] * arg2
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                        tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_call.success
                        emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
                else:
                    require arg2
                    require 10^ext_call.return_data[31 len 1] * arg2 / arg2 == 10^ext_call.return_data[31 len 1]
                    require 10^ext_call.return_data[31 len 1] * arg2
                    if not arg3:
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                        tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_call.success
                        emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
                    else:
                        require arg3
                        require 10^ext_call.return_data[31 len 1] * arg2 * arg3 / arg3 == 10^ext_call.return_data[31 len 1] * arg2
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                        require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                        require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                        tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                        require ext_call.success
                        emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
    else:
        require arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not arg2:
            require 10^ext_call.return_data[31 len 1] * arg2
            if not arg3:
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                require ext_call.success
                emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
            else:
                require arg3
                require 10^ext_call.return_data[31 len 1] * arg2 * arg3 / arg3 == 10^ext_call.return_data[31 len 1] * arg2
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                require ext_call.success
                emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
        else:
            require arg2
            require 10^ext_call.return_data[31 len 1] * arg2 / arg2 == 10^ext_call.return_data[31 len 1]
            require 10^ext_call.return_data[31 len 1] * arg2
            if not arg3:
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                require ext_call.success
                emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
            else:
                require arg3
                require 10^ext_call.return_data[31 len 1] * arg2 * arg3 / arg3 == 10^ext_call.return_data[31 len 1] * arg2
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
                require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
                require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
                tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
                require ext_call.success
                emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
}

function buy() payable {
    require not requireCustomerId
    require not stor0
    require not finalized
    if block.number >= startsAt:
        if block.number > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args uint256(weiRaised), weiFundingCap
            require ext_call.success
            if ext_call.return_data[0]:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                if not finalized:
                    if block.number >= startsAt:
                        if block.number > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require ext_code.size(ceilingStrategyAddress)
                                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            investorCount++
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                    else:
                                        require ext_code.size(ceilingStrategyAddress)
                                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            investorCount++
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                            else:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                        else:
                            require ext_code.size(ceilingStrategyAddress)
                            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args uint256(weiRaised), weiFundingCap
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require ext_code.size(ceilingStrategyAddress)
                                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            investorCount++
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require ext_code.size(ceilingStrategyAddress)
                                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                            else:
                                                investorCount++
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                        else:
                                            require ext_code.size(ceilingStrategyAddress)
                                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                            else:
                                                investorCount++
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                else:
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                            else:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                    else:
                        require stor18[address(msg.sender)]
                        require ext_code.size(ceilingStrategyAddress)
                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            investorCount++
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                else:
                    require ext_code.size(ceilingStrategyAddress)
                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining - 710 wei
                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                        call multisigWalletAddress with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.return_data[0] <= msg.value
                        if msg.value - ext_call.return_data[0] <= 0:
                        else:
                            call msg.sender with:
                               value msg.value - ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        investorCount++
                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                        call multisigWalletAddress with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.return_data[0] <= msg.value
                        if msg.value - ext_call.return_data[0] <= 0:
                        else:
                            call msg.sender with:
                               value msg.value - ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
    else:
        if not finalized:
            if block.number >= startsAt:
                if block.number > endsAt:
                    if uint256(weiRaised) < minimumFundingGoal:
                        if uint256(weiRaised) <= 0:
                            require ext_code.size(ceilingStrategyAddress)
                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining - 710 wei
                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                investorCount++
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                        else:
                            if loadedRefund < uint256(weiRaised):
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                            else:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                    else:
                        require ext_code.size(ceilingStrategyAddress)
                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            investorCount++
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                else:
                    require ext_code.size(ceilingStrategyAddress)
                    call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args uint256(weiRaised), weiFundingCap
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if uint256(weiRaised) < minimumFundingGoal:
                            if uint256(weiRaised) <= 0:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                            else:
                                if loadedRefund < uint256(weiRaised):
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                else:
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                        else:
                            require ext_code.size(ceilingStrategyAddress)
                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining - 710 wei
                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                investorCount++
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                    else:
                        require ext_code.size(ceilingStrategyAddress)
                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            investorCount++
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
            else:
                require stor18[address(msg.sender)]
                require ext_code.size(ceilingStrategyAddress)
                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                    call multisigWalletAddress with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.return_data[0] <= msg.value
                    if msg.value - ext_call.return_data[0] <= 0:
                    else:
                        call msg.sender with:
                           value msg.value - ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    investorCount++
                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                    call multisigWalletAddress with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.return_data[0] <= msg.value
                    if msg.value - ext_call.return_data[0] <= 0:
                    else:
                        call msg.sender with:
                           value msg.value - ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining - 710 wei
                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining - 710 wei
                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += ext_call.return_data[0]
                require ext_call.return_data[0] + tokensSold >= tokensSold
                tokensSold += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                call multisigWalletAddress with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.return_data[0] <= msg.value
                if msg.value - ext_call.return_data[0] <= 0:
                else:
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                investorCount++
                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += ext_call.return_data[0]
                require ext_call.return_data[0] + tokensSold >= tokensSold
                tokensSold += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], 0);
                call multisigWalletAddress with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.return_data[0] <= msg.value
                if msg.value - ext_call.return_data[0] <= 0:
                else:
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function buyWithCustomerId(uint128 arg1) payable {
    require arg1
    require not stor0
    require not finalized
    if block.number >= startsAt:
        if block.number > endsAt:
            require uint256(weiRaised) < minimumFundingGoal
            require uint256(weiRaised) > 0
            require loadedRefund >= uint256(weiRaised)
            revert
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args uint256(weiRaised), weiFundingCap
            require ext_call.success
            if ext_call.return_data[0]:
                require uint256(weiRaised) < minimumFundingGoal
                require uint256(weiRaised) > 0
                require loadedRefund >= uint256(weiRaised)
                revert
            else:
                if not finalized:
                    if block.number >= startsAt:
                        if block.number > endsAt:
                            if uint256(weiRaised) < minimumFundingGoal:
                                if uint256(weiRaised) <= 0:
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                else:
                                    if loadedRefund < uint256(weiRaised):
                                        require ext_code.size(ceilingStrategyAddress)
                                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            investorCount++
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                    else:
                                        require ext_code.size(ceilingStrategyAddress)
                                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            investorCount++
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                            else:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                        else:
                            require ext_code.size(ceilingStrategyAddress)
                            call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args uint256(weiRaised), weiFundingCap
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if uint256(weiRaised) < minimumFundingGoal:
                                    if uint256(weiRaised) <= 0:
                                        require ext_code.size(ceilingStrategyAddress)
                                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x313ce567 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(pricingStrategyAddress)
                                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if investedAmountOf[address(msg.sender)]:
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            investorCount++
                                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                            uint256(weiRaised) += ext_call.return_data[0]
                                            require ext_call.return_data[0] + tokensSold >= tokensSold
                                            tokensSold += ext_call.return_data[0]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                            call multisigWalletAddress with:
                                               value ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.return_data[0] <= msg.value
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            else:
                                                call msg.sender with:
                                                   value msg.value - ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                    else:
                                        if loadedRefund < uint256(weiRaised):
                                            require ext_code.size(ceilingStrategyAddress)
                                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                            else:
                                                investorCount++
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                        else:
                                            require ext_code.size(ceilingStrategyAddress)
                                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x313ce567 with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(pricingStrategyAddress)
                                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if investedAmountOf[address(msg.sender)]:
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                            else:
                                                investorCount++
                                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                                uint256(weiRaised) += ext_call.return_data[0]
                                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                                tokensSold += ext_call.return_data[0]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                                call multisigWalletAddress with:
                                                   value ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.return_data[0] <= msg.value
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                else:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                else:
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                            else:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                    else:
                        require stor18[address(msg.sender)]
                        require ext_code.size(ceilingStrategyAddress)
                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            investorCount++
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                else:
                    require ext_code.size(ceilingStrategyAddress)
                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(pricingStrategyAddress)
                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining - 710 wei
                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                    require ext_call.success
                    require ext_call.return_data[0]
                    if investedAmountOf[address(msg.sender)]:
                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                        call multisigWalletAddress with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.return_data[0] <= msg.value
                        if msg.value - ext_call.return_data[0] <= 0:
                        else:
                            call msg.sender with:
                               value msg.value - ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        investorCount++
                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                        uint256(weiRaised) += ext_call.return_data[0]
                        require ext_call.return_data[0] + tokensSold >= tokensSold
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                        call multisigWalletAddress with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.return_data[0] <= msg.value
                        if msg.value - ext_call.return_data[0] <= 0:
                        else:
                            call msg.sender with:
                               value msg.value - ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
    else:
        if not finalized:
            if block.number >= startsAt:
                if block.number > endsAt:
                    if uint256(weiRaised) < minimumFundingGoal:
                        if uint256(weiRaised) <= 0:
                            require ext_code.size(ceilingStrategyAddress)
                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining - 710 wei
                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                investorCount++
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                        else:
                            if loadedRefund < uint256(weiRaised):
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                            else:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                    else:
                        require ext_code.size(ceilingStrategyAddress)
                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            investorCount++
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                else:
                    require ext_code.size(ceilingStrategyAddress)
                    call ceilingStrategyAddress.isCrowdsaleFull(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args uint256(weiRaised), weiFundingCap
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if uint256(weiRaised) < minimumFundingGoal:
                            if uint256(weiRaised) <= 0:
                                require ext_code.size(ceilingStrategyAddress)
                                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(pricingStrategyAddress)
                                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                require ext_call.success
                                require ext_call.return_data[0]
                                if investedAmountOf[address(msg.sender)]:
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    investorCount++
                                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                    uint256(weiRaised) += ext_call.return_data[0]
                                    require ext_call.return_data[0] + tokensSold >= tokensSold
                                    tokensSold += ext_call.return_data[0]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                    call multisigWalletAddress with:
                                       value ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0] <= 0:
                                    else:
                                        call msg.sender with:
                                           value msg.value - ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                            else:
                                if loadedRefund < uint256(weiRaised):
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                else:
                                    require ext_code.size(ceilingStrategyAddress)
                                    call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x313ce567 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(pricingStrategyAddress)
                                    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if investedAmountOf[address(msg.sender)]:
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        investorCount++
                                        require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                        require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                        uint256(weiRaised) += ext_call.return_data[0]
                                        require ext_call.return_data[0] + tokensSold >= tokensSold
                                        tokensSold += ext_call.return_data[0]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                        call multisigWalletAddress with:
                                           value ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.return_data[0] <= msg.value
                                        if msg.value - ext_call.return_data[0] <= 0:
                                        else:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                        else:
                            require ext_code.size(ceilingStrategyAddress)
                            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining - 710 wei
                                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(pricingStrategyAddress)
                            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                            if investedAmountOf[address(msg.sender)]:
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                investorCount++
                                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                                uint256(weiRaised) += ext_call.return_data[0]
                                require ext_call.return_data[0] + tokensSold >= tokensSold
                                tokensSold += ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                                call multisigWalletAddress with:
                                   value ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0] <= 0:
                                else:
                                    call msg.sender with:
                                       value msg.value - ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                    else:
                        require ext_code.size(ceilingStrategyAddress)
                        call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(pricingStrategyAddress)
                        call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining - 710 wei
                            args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                        require ext_call.success
                        require ext_call.return_data[0]
                        if investedAmountOf[address(msg.sender)]:
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            investorCount++
                            require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                            require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                            uint256(weiRaised) += ext_call.return_data[0]
                            require ext_call.return_data[0] + tokensSold >= tokensSold
                            tokensSold += ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                            call multisigWalletAddress with:
                               value ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.return_data[0] <= msg.value
                            if msg.value - ext_call.return_data[0] <= 0:
                            else:
                                call msg.sender with:
                                   value msg.value - ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
            else:
                require stor18[address(msg.sender)]
                require ext_code.size(ceilingStrategyAddress)
                call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
                require ext_call.success
                require ext_call.return_data[0]
                if investedAmountOf[address(msg.sender)]:
                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                    call multisigWalletAddress with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.return_data[0] <= msg.value
                    if msg.value - ext_call.return_data[0] <= 0:
                    else:
                        call msg.sender with:
                           value msg.value - ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    investorCount++
                    require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                    require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                    uint256(weiRaised) += ext_call.return_data[0]
                    require ext_call.return_data[0] + tokensSold >= tokensSold
                    tokensSold += ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                    call multisigWalletAddress with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.return_data[0] <= msg.value
                    if msg.value - ext_call.return_data[0] <= 0:
                    else:
                        call msg.sender with:
                           value msg.value - ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
        else:
            require ext_code.size(ceilingStrategyAddress)
            call ceilingStrategyAddress.weiAllowedToReceive(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining - 710 wei
                args 0, uint32(msg.value), uint256(weiRaised), investedAmountOf[address(msg.sender)], weiFundingCap
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(pricingStrategyAddress)
            call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining - 710 wei
                args 0, 0, uint32(stor11), tokensSold, msg.sender, uint8(ext_call.return_data[0])
            require ext_call.success
            require ext_call.return_data[0]
            if investedAmountOf[address(msg.sender)]:
                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += ext_call.return_data[0]
                require ext_call.return_data[0] + tokensSold >= tokensSold
                tokensSold += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                call multisigWalletAddress with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.return_data[0] <= msg.value
                if msg.value - ext_call.return_data[0] <= 0:
                else:
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                investorCount++
                require ext_call.return_data[0] + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
                require ext_call.return_data[0] + uint256(weiRaised) >= uint256(weiRaised)
                uint256(weiRaised) += ext_call.return_data[0]
                require ext_call.return_data[0] + tokensSold >= tokensSold
                tokensSold += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                emit Invested(address(msg.sender), ext_call.return_data[0], ext_call.return_data[0], arg1);
                call multisigWalletAddress with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.return_data[0] <= msg.value
                if msg.value - ext_call.return_data[0] <= 0:
                else:
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}



}
