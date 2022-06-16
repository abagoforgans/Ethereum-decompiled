contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor8; offset 8
address stor9;
uint256 stor10;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint8 stor35;
uint8 stor35; offset 8
uint256 stor36;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor34 = 10^code.data[8330 len 32]
    stor8 = code.data[8374 len 20]
    stor10 = code.data[8394 len 32] * stor34
    stor22 = code.data[8426 len 32]
    stor21 = code.data[8458 len 32]
    stor23 = code.data[8490 len 32]
    stor19 = code.data[8522 len 32] * stor34
    stor20 = code.data[8554 len 32] * stor34
    stor24 = code.data[8586 len 32]
    stor27 = code.data[8618 len 32]
    stor28 = code.data[8650 len 32]
    stor29 = code.data[8682 len 32]
    stor30 = code.data[8714 len 32]
    stor31 = code.data[8746 len 32]
    stor32 = code.data[8778 len 32]
    stor33 = code.data[8810 len 32]
    stor9 = 0x99ac790927f6890162339439e97078ee15771e1d
    uint8(stor35.field_0) = 0
    stor36 = 10 * 10^18
    uint8(stor35.field_8) = 1
    return code.data[515 len 7815]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 cliff;
uint256 startCountDown;
uint256 duration;
address tokenAddress;
mapping of struct tokenHolders;
address whiteListAddress;
uint256 presaleBonus;
uint8 stor8;
address multisigETHAddress; offset 8
address commissionAddress;
uint256 tokensForTeam;
uint256 ethReceivedPresale;
uint256 ethReceivedMain;
uint256 totalTokensSent;
uint256 tokensSentMain;
uint256 tokensSentPresale;
uint256 tokensSentDev;
uint256 startBlock;
uint256 endBlock;
uint256 maxCap;
uint256 minCap;
uint256 minContributionMainSale;
uint256 minContributionPresale;
uint256 maxContribution;
uint256 tokenPriceWei;
uint256 refundCount;
uint256 totalRefunded;
uint256 campaignDurationDays;
uint256 firstPeriod;
uint256 secondPeriod;
uint256 thirdPeriod;
uint256 firstBonus;
uint256 secondBonus;
uint256 thirdBonus;
uint256 multiplier;
uint8 currentStep;
uint8 codeExportEnabled; offset 8
uint256 sub_de9677ed;
array of address holdersIndex;
array of address devIndex;

function tokenPriceWei() {
    return tokenPriceWei
}

function endBlock() {
    return endBlock
}

function refundCount() {
    return refundCount
}

function numberOfBackers() {
    return holdersIndex.length
}

function duration() {
    return duration
}

function firstBonus() {
    return firstBonus
}

function cliff() {
    return cliff
}

function campaignDurationDays() {
    return campaignDurationDays
}

function multiplier() {
    return multiplier
}

function startCountDown() {
    return startCountDown
}

function maxCap() {
    return maxCap
}

function holdersIndex(uint256 arg1) {
    require arg1 < holdersIndex.length
    return address(holdersIndex[arg1])
}

function whiteList() {
    return whiteListAddress
}

function minCap() {
    return minCap
}

function startBlock() {
    return startBlock
}

function currentStep() {
    require currentStep <= 2
    return currentStep
}

function paused() {
    return bool(stor0)
}

function minContributionMainSale() {
    return minContributionMainSale
}

function secondBonus() {
    return secondBonus
}

function tokenHolders(address arg1) {
    return tokenHolders[arg1].field_0, 
           tokenHolders[arg1].field_256,
           bool(tokenHolders[arg1].field_512),
           tokenHolders[arg1].field_768,
           bool(tokenHolders[arg1].field_1024)
}

function codeExportEnabled() {
    return bool(codeExportEnabled)
}

function multisigETH() {
    return multisigETHAddress
}

function tokensSentDev() {
    return tokensSentDev
}

function maxContribution() {
    return maxContribution
}

function owner() {
    return owner
}

function ethReceivedMain() {
    return ethReceivedMain
}

function commissionAddress() {
    return commissionAddress
}

function thirdBonus() {
    return thirdBonus
}

function presaleBonus() {
    return presaleBonus
}

function thirdPeriod() {
    return thirdPeriod
}

function ethReceivedPresale() {
    return ethReceivedPresale
}

function totalTokensSent() {
    return totalTokensSent
}

function tokensSentPresale() {
    return tokensSentPresale
}

function firstPeriod() {
    return firstPeriod
}

function totalRefunded() {
    return totalRefunded
}

function sub_de9677ed(?) {
    return sub_de9677ed
}

function minContributionPresale() {
    return minContributionPresale
}

function secondPeriod() {
    return secondPeriod
}

function tokensSentMain() {
    return tokensSentMain
}

function devIndex(uint256 arg1) {
    require arg1 < devIndex.length
    return address(devIndex[arg1])
}

function token() {
    return tokenAddress
}

function tokensForTeam() {
    return tokensForTeam
}

function returnVestingSchedule() {
    return duration, cliff, startCountDown
}

function prepareRefund() payable {
    require owner == msg.sender
    currentStep = 2
}

function enableCodeExport() payable {
    require msg.value == sub_de9677ed
    codeExportEnabled = 1
}

function advanceStep() {
    require owner == msg.sender
    currentStep = 1
    emit LogStepAdvanced()
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function revoke(address arg1) {
    require owner == msg.sender
    tokenHolders[address(arg1)].field_1024 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function drain(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function start() {
    require owner == msg.sender
    startBlock = block.number
    endBlock = block.number + (5760 * campaignDurationDays)
    stor8 = 0
    emit LogStarted(block.number, block.number + (5760 * campaignDurationDays));
}

function determineCommissions() {
    if eth.balance(this.address) <= 500 * 10^18:
        return (10 * eth.balance(this.address) / 100)
    if eth.balance(this.address) <= 1000 * 10^18:
        return (8 * eth.balance(this.address) / 100)
    return (6 * eth.balance(this.address) / 100)
}

function determineStatus() {
    if stor8:
        return 1
    if block.number < endBlock:
        if totalTokensSent < maxCap - 100:
            return 2
    if totalTokensSent < minCap:
        if block.number > endBlock:
            return 3
    if endBlock:
        return 0
    return 4
}

function transferTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require stor8
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit LogNonVestedTokensSent(arg2, arg1);
    return 0
}

function initilizeVestingAndToken(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require arg3 <= arg4
    require arg1
    duration = arg4
    require arg3 + arg2 >= arg2
    require arg3 + arg2 >= arg3
    cliff = arg3 + arg2
    startCountDown = arg2
    tokenAddress = arg1
    presaleBonus = arg5
    emit ContractUpdated(1);
    return 1
}

function initilizeVestingAndTokenAndWhiteList(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) {
    require owner == msg.sender
    require arg3 <= arg4
    require arg1
    duration = arg4
    require arg3 + arg2 >= arg2
    require arg3 + arg2 >= arg3
    cliff = arg3 + arg2
    startCountDown = arg2
    tokenAddress = arg1
    whiteListAddress = arg6
    presaleBonus = arg5
    emit ContractUpdated(1);
    return 1
}

function returnWebsiteData() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require currentStep <= 2
    return startBlock, 
           0,
           holdersIndex.length,
           ethReceivedPresale + ethReceivedMain,
           maxCap,
           minCap,
           totalTokensSent,
           tokenPriceWei,
           minContributionPresale,
           minContributionMainSale,
           bool(stor0),
           bool(stor8),
           ext_call.return_data[0],
           currentStep
}

function vestedAmount(uint256 arg1) {
    if block.timestamp < cliff:
        return 0
    if not stor8:
        return 0
    require duration + startCountDown >= startCountDown
    require duration + startCountDown >= duration
    if block.timestamp >= duration + startCountDown:
        return arg1
    require startCountDown <= block.timestamp
    if not arg1:
        if duration:
            return ((block.timestamp * arg1) - (startCountDown * arg1) / duration)
    else:
        if arg1:
            if (block.timestamp * arg1) - (startCountDown * arg1) / arg1 == block.timestamp - startCountDown:
                if duration:
                    return ((block.timestamp * arg1) - (startCountDown * arg1) / duration)
    revert
}

function devAllocation(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require stor8
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg2 + totalTokensSent >= totalTokensSent
    require arg2 + totalTokensSent >= arg2
    require arg2 + totalTokensSent <= ext_call.return_data[0]
    devIndex.length++
    if not devIndex.length <= devIndex.length + 1:
        idx = devIndex.length + 1
        while devIndex.length > idx:
            uint256(devIndex[idx]) = 0
            idx = idx + 1
            continue 
    address(devIndex[devIndex.length]) = arg1
    tokenHolders[address(arg1)].field_256 = arg2
    tokensSentDev += arg2
    totalTokensSent += arg2
    emit LogDevTokensAllocated(arg2, arg1);
    return 1
}

function refund() {
    require not stor0
    require currentStep <= 2
    require currentStep == 2
    require eth.balance(this.address) > 0
    require tokenHolders[address(msg.sender)].field_0 > 0
    require not tokenHolders[address(msg.sender)].field_512
    tokenHolders[address(msg.sender)].field_512 = 1
    refundCount++
    totalRefunded += tokenHolders[address(msg.sender)].field_0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9dc29fac with:
         gas gas_remaining - 710 wei
        args msg.sender, tokenHolders[address(msg.sender)].field_256
    require ext_call.success
    require ext_call.return_data[0]
    call msg.sender with:
       value tokenHolders[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefundETH(tokenHolders[address(msg.sender)].field_0, msg.sender);
    return 1
}

function finalize() {
    require owner == msg.sender
    require not stor8
    if block.number < endBlock:
        require totalTokensSent > maxCap - 1000
    require totalTokensSent >= minCap
    stor8 = 1
    if eth.balance(this.address) <= 500 * 10^18:
        call commissionAddress with:
           value 10 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
    else:
        if eth.balance(this.address) <= 1000 * 10^18:
            call commissionAddress with:
               value 8 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            call commissionAddress with:
               value 6 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
    require ext_call.success
    call multisigETHAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa69df4b5 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit LogFinalized(1);
}

function vestedAmountAvailable() {
    if block.timestamp < cliff:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        return -tokenHolders[address(msg.sender)].field_768, ext_call.return_data[0]
    if not stor8:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        return -tokenHolders[address(msg.sender)].field_768, ext_call.return_data[0]
    require duration + startCountDown >= startCountDown
    require duration + startCountDown >= duration
    if block.timestamp >= duration + startCountDown:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        return tokenHolders[address(msg.sender)].field_256 - tokenHolders[address(msg.sender)].field_768, ext_call.return_data[0]
    require startCountDown <= block.timestamp
    if tokenHolders[address(msg.sender)].field_256:
        require tokenHolders[address(msg.sender)].field_256
        require (block.timestamp * tokenHolders[address(msg.sender)].field_256) - (startCountDown * tokenHolders[address(msg.sender)].field_256) / tokenHolders[address(msg.sender)].field_256 == block.timestamp - startCountDown
    require duration
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ((block.timestamp * tokenHolders[address(msg.sender)].field_256) - (startCountDown * tokenHolders[address(msg.sender)].field_256) / duration) - tokenHolders[address(msg.sender)].field_768, 
           ext_call.return_data[0]
}

function release() {
    require not tokenHolders[address(msg.sender)].field_1024
    if block.timestamp < cliff:
        tokenHolders[address(msg.sender)].field_768 = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, -tokenHolders[address(msg.sender)].field_768
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        emit Released(-tokenHolders[address(msg.sender)].field_768, ext_call.return_data[0]);
    else:
        if not stor8:
            tokenHolders[address(msg.sender)].field_768 = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, -tokenHolders[address(msg.sender)].field_768
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit Released(-tokenHolders[address(msg.sender)].field_768, ext_call.return_data[0]);
        else:
            require duration + startCountDown >= startCountDown
            require duration + startCountDown >= duration
            if block.timestamp >= duration + startCountDown:
                tokenHolders[address(msg.sender)].field_768 = tokenHolders[address(msg.sender)].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, tokenHolders[address(msg.sender)].field_256 - tokenHolders[address(msg.sender)].field_768
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                emit Released(tokenHolders[address(msg.sender)].field_256 - tokenHolders[address(msg.sender)].field_768, ext_call.return_data[0]);
            else:
                require startCountDown <= block.timestamp
                if tokenHolders[address(msg.sender)].field_256:
                    require tokenHolders[address(msg.sender)].field_256
                    require (block.timestamp * tokenHolders[address(msg.sender)].field_256) - (startCountDown * tokenHolders[address(msg.sender)].field_256) / tokenHolders[address(msg.sender)].field_256 == block.timestamp - startCountDown
                require duration
                tokenHolders[address(msg.sender)].field_768 = (block.timestamp * tokenHolders[address(msg.sender)].field_256) - (startCountDown * tokenHolders[address(msg.sender)].field_256) / duration
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ((block.timestamp * tokenHolders[address(msg.sender)].field_256) - (startCountDown * tokenHolders[address(msg.sender)].field_256) / duration) - tokenHolders[address(msg.sender)].field_768
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                emit Released(((block.timestamp * tokenHolders[address(msg.sender)].field_256) - (startCountDown * tokenHolders[address(msg.sender)].field_256) / duration) - tokenHolders[address(msg.sender)].field_768, ext_call.return_data[0]);
}

function _fallback() payable {
    require not stor0
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value <= maxContribution
    if whiteListAddress:
        require ext_code.size(whiteListAddress)
        call whiteListAddress.isWhiteListed(address arg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    if msg.value:
        require msg.value
        require multiplier * msg.value / msg.value == multiplier
    require tokenPriceWei
    require currentStep <= 2
    if currentStep != 1:
        if multiplier * msg.value / tokenPriceWei:
            require multiplier * msg.value / tokenPriceWei
            require presaleBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == presaleBonus
        require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
        if not tokenHolders[address(msg.sender)].field_0:
            holdersIndex.length++
            if not holdersIndex.length <= holdersIndex.length + 1:
                idx = holdersIndex.length + 1
                while holdersIndex.length > idx:
                    uint256(holdersIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            address(holdersIndex[holdersIndex.length]) = msg.sender
        require currentStep <= 2
        if currentStep != 1:
            require msg.value >= minContributionPresale
            require msg.value + ethReceivedPresale >= ethReceivedPresale
            require msg.value + ethReceivedPresale >= msg.value
            ethReceivedPresale += msg.value
            tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
        else:
            require msg.value >= minContributionMainSale
            require msg.value + ethReceivedMain >= ethReceivedMain
            require msg.value + ethReceivedMain >= msg.value
            ethReceivedMain += msg.value
            tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
        tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
        require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
        require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
        tokenHolders[address(msg.sender)].field_0 += msg.value
        totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
        emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
    else:
        if block.number <= startBlock + firstPeriod:
            if multiplier * msg.value / tokenPriceWei:
                require multiplier * msg.value / tokenPriceWei
                require firstBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == firstBonus
            require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
            if not tokenHolders[address(msg.sender)].field_0:
                holdersIndex.length++
                if not holdersIndex.length <= holdersIndex.length + 1:
                    idx = holdersIndex.length + 1
                    while holdersIndex.length > idx:
                        uint256(holdersIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                address(holdersIndex[holdersIndex.length]) = msg.sender
            require currentStep <= 2
            if currentStep != 1:
                require msg.value >= minContributionPresale
                require msg.value + ethReceivedPresale >= ethReceivedPresale
                require msg.value + ethReceivedPresale >= msg.value
                ethReceivedPresale += msg.value
                tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
            else:
                require msg.value >= minContributionMainSale
                require msg.value + ethReceivedMain >= ethReceivedMain
                require msg.value + ethReceivedMain >= msg.value
                ethReceivedMain += msg.value
                tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
            tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
            require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
            require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
            tokenHolders[address(msg.sender)].field_0 += msg.value
            totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
            emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
        else:
            if block.number <= startBlock + secondPeriod:
                if multiplier * msg.value / tokenPriceWei:
                    require multiplier * msg.value / tokenPriceWei
                    require secondBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == secondBonus
                require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
                if not tokenHolders[address(msg.sender)].field_0:
                    holdersIndex.length++
                    if not holdersIndex.length <= holdersIndex.length + 1:
                        idx = holdersIndex.length + 1
                        while holdersIndex.length > idx:
                            uint256(holdersIndex[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holdersIndex[holdersIndex.length]) = msg.sender
                require currentStep <= 2
                if currentStep != 1:
                    require msg.value >= minContributionPresale
                    require msg.value + ethReceivedPresale >= ethReceivedPresale
                    require msg.value + ethReceivedPresale >= msg.value
                    ethReceivedPresale += msg.value
                    tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
                else:
                    require msg.value >= minContributionMainSale
                    require msg.value + ethReceivedMain >= ethReceivedMain
                    require msg.value + ethReceivedMain >= msg.value
                    ethReceivedMain += msg.value
                    tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
                tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
                require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
                require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
                tokenHolders[address(msg.sender)].field_0 += msg.value
                totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
                emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
            else:
                if block.number > startBlock + thirdPeriod:
                    require totalTokensSent + (multiplier * msg.value / tokenPriceWei) <= maxCap
                    if not tokenHolders[address(msg.sender)].field_0:
                        holdersIndex.length++
                        if not holdersIndex.length <= holdersIndex.length + 1:
                            idx = holdersIndex.length + 1
                            while holdersIndex.length > idx:
                                uint256(holdersIndex[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holdersIndex[holdersIndex.length]) = msg.sender
                    require currentStep <= 2
                    if currentStep != 1:
                        require msg.value >= minContributionPresale
                        require msg.value + ethReceivedPresale >= ethReceivedPresale
                        require msg.value + ethReceivedPresale >= msg.value
                        ethReceivedPresale += msg.value
                        tokensSentPresale += multiplier * msg.value / tokenPriceWei
                    else:
                        require msg.value >= minContributionMainSale
                        require msg.value + ethReceivedMain >= ethReceivedMain
                        require msg.value + ethReceivedMain >= msg.value
                        ethReceivedMain += msg.value
                        tokensSentMain += multiplier * msg.value / tokenPriceWei
                    tokenHolders[address(msg.sender)].field_256 += multiplier * msg.value / tokenPriceWei
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
                    tokenHolders[address(msg.sender)].field_0 += msg.value
                    totalTokensSent += multiplier * msg.value / tokenPriceWei
                    emit LogReceivedETH(msg.value, multiplier * msg.value / tokenPriceWei, msg.sender);
                else:
                    if multiplier * msg.value / tokenPriceWei:
                        require multiplier * msg.value / tokenPriceWei
                        require thirdBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == thirdBonus
                    require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
                    if not tokenHolders[address(msg.sender)].field_0:
                        holdersIndex.length++
                        if not holdersIndex.length <= holdersIndex.length + 1:
                            idx = holdersIndex.length + 1
                            while holdersIndex.length > idx:
                                uint256(holdersIndex[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holdersIndex[holdersIndex.length]) = msg.sender
                    require currentStep <= 2
                    if currentStep != 1:
                        require msg.value >= minContributionPresale
                        require msg.value + ethReceivedPresale >= ethReceivedPresale
                        require msg.value + ethReceivedPresale >= msg.value
                        ethReceivedPresale += msg.value
                        tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
                    else:
                        require msg.value >= minContributionMainSale
                        require msg.value + ethReceivedMain >= ethReceivedMain
                        require msg.value + ethReceivedMain >= msg.value
                        ethReceivedMain += msg.value
                        tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
                    tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
                    tokenHolders[address(msg.sender)].field_0 += msg.value
                    totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
                    emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
}

function contributePublic() payable {
    require not stor0
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value <= maxContribution
    if whiteListAddress:
        require ext_code.size(whiteListAddress)
        call whiteListAddress.isWhiteListed(address arg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    if msg.value:
        require msg.value
        require multiplier * msg.value / msg.value == multiplier
    require tokenPriceWei
    require currentStep <= 2
    if currentStep != 1:
        if multiplier * msg.value / tokenPriceWei:
            require multiplier * msg.value / tokenPriceWei
            require presaleBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == presaleBonus
        require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
        if not tokenHolders[address(msg.sender)].field_0:
            holdersIndex.length++
            if not holdersIndex.length <= holdersIndex.length + 1:
                idx = holdersIndex.length + 1
                while holdersIndex.length > idx:
                    uint256(holdersIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            address(holdersIndex[holdersIndex.length]) = msg.sender
        require currentStep <= 2
        if currentStep != 1:
            require msg.value >= minContributionPresale
            require msg.value + ethReceivedPresale >= ethReceivedPresale
            require msg.value + ethReceivedPresale >= msg.value
            ethReceivedPresale += msg.value
            tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
        else:
            require msg.value >= minContributionMainSale
            require msg.value + ethReceivedMain >= ethReceivedMain
            require msg.value + ethReceivedMain >= msg.value
            ethReceivedMain += msg.value
            tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
        tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
        require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
        require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
        tokenHolders[address(msg.sender)].field_0 += msg.value
        totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
        emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (presaleBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
    else:
        if block.number <= startBlock + firstPeriod:
            if multiplier * msg.value / tokenPriceWei:
                require multiplier * msg.value / tokenPriceWei
                require firstBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == firstBonus
            require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
            if not tokenHolders[address(msg.sender)].field_0:
                holdersIndex.length++
                if not holdersIndex.length <= holdersIndex.length + 1:
                    idx = holdersIndex.length + 1
                    while holdersIndex.length > idx:
                        uint256(holdersIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                address(holdersIndex[holdersIndex.length]) = msg.sender
            require currentStep <= 2
            if currentStep != 1:
                require msg.value >= minContributionPresale
                require msg.value + ethReceivedPresale >= ethReceivedPresale
                require msg.value + ethReceivedPresale >= msg.value
                ethReceivedPresale += msg.value
                tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
            else:
                require msg.value >= minContributionMainSale
                require msg.value + ethReceivedMain >= ethReceivedMain
                require msg.value + ethReceivedMain >= msg.value
                ethReceivedMain += msg.value
                tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
            tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
            require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
            require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
            tokenHolders[address(msg.sender)].field_0 += msg.value
            totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
            emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (firstBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
        else:
            if block.number <= startBlock + secondPeriod:
                if multiplier * msg.value / tokenPriceWei:
                    require multiplier * msg.value / tokenPriceWei
                    require secondBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == secondBonus
                require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
                if not tokenHolders[address(msg.sender)].field_0:
                    holdersIndex.length++
                    if not holdersIndex.length <= holdersIndex.length + 1:
                        idx = holdersIndex.length + 1
                        while holdersIndex.length > idx:
                            uint256(holdersIndex[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holdersIndex[holdersIndex.length]) = msg.sender
                require currentStep <= 2
                if currentStep != 1:
                    require msg.value >= minContributionPresale
                    require msg.value + ethReceivedPresale >= ethReceivedPresale
                    require msg.value + ethReceivedPresale >= msg.value
                    ethReceivedPresale += msg.value
                    tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
                else:
                    require msg.value >= minContributionMainSale
                    require msg.value + ethReceivedMain >= ethReceivedMain
                    require msg.value + ethReceivedMain >= msg.value
                    ethReceivedMain += msg.value
                    tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
                tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
                require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
                require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
                tokenHolders[address(msg.sender)].field_0 += msg.value
                totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
                emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (secondBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
            else:
                if block.number > startBlock + thirdPeriod:
                    require totalTokensSent + (multiplier * msg.value / tokenPriceWei) <= maxCap
                    if not tokenHolders[address(msg.sender)].field_0:
                        holdersIndex.length++
                        if not holdersIndex.length <= holdersIndex.length + 1:
                            idx = holdersIndex.length + 1
                            while holdersIndex.length > idx:
                                uint256(holdersIndex[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holdersIndex[holdersIndex.length]) = msg.sender
                    require currentStep <= 2
                    if currentStep != 1:
                        require msg.value >= minContributionPresale
                        require msg.value + ethReceivedPresale >= ethReceivedPresale
                        require msg.value + ethReceivedPresale >= msg.value
                        ethReceivedPresale += msg.value
                        tokensSentPresale += multiplier * msg.value / tokenPriceWei
                    else:
                        require msg.value >= minContributionMainSale
                        require msg.value + ethReceivedMain >= ethReceivedMain
                        require msg.value + ethReceivedMain >= msg.value
                        ethReceivedMain += msg.value
                        tokensSentMain += multiplier * msg.value / tokenPriceWei
                    tokenHolders[address(msg.sender)].field_256 += multiplier * msg.value / tokenPriceWei
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
                    tokenHolders[address(msg.sender)].field_0 += msg.value
                    totalTokensSent += multiplier * msg.value / tokenPriceWei
                    emit LogReceivedETH(msg.value, multiplier * msg.value / tokenPriceWei, msg.sender);
                else:
                    if multiplier * msg.value / tokenPriceWei:
                        require multiplier * msg.value / tokenPriceWei
                        require thirdBonus * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == thirdBonus
                    require totalTokensSent + (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) <= maxCap
                    if not tokenHolders[address(msg.sender)].field_0:
                        holdersIndex.length++
                        if not holdersIndex.length <= holdersIndex.length + 1:
                            idx = holdersIndex.length + 1
                            while holdersIndex.length > idx:
                                uint256(holdersIndex[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holdersIndex[holdersIndex.length]) = msg.sender
                    require currentStep <= 2
                    if currentStep != 1:
                        require msg.value >= minContributionPresale
                        require msg.value + ethReceivedPresale >= ethReceivedPresale
                        require msg.value + ethReceivedPresale >= msg.value
                        ethReceivedPresale += msg.value
                        tokensSentPresale = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentPresale
                    else:
                        require msg.value >= minContributionMainSale
                        require msg.value + ethReceivedMain >= ethReceivedMain
                        require msg.value + ethReceivedMain >= msg.value
                        ethReceivedMain += msg.value
                        tokensSentMain = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + tokensSentMain
                    tokenHolders[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + tokenHolders[address(msg.sender)].field_256
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= tokenHolders[address(msg.sender)].field_0
                    require msg.value + tokenHolders[address(msg.sender)].field_0 >= msg.value
                    tokenHolders[address(msg.sender)].field_0 += msg.value
                    totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
                    emit LogReceivedETH(msg.value, (multiplier * msg.value / tokenPriceWei) + (thirdBonus * multiplier * msg.value / tokenPriceWei / 100), msg.sender);
}



}
