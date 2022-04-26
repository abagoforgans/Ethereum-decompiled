contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor8;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address stor16;
uint8 stor19;
uint256 stor20;
uint256 stor23;

function _fallback() payable {
    stor1 = 20000000 * 10^18
    stor2 = 0
    stor3 = 30000000 * 10^18
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[7863 len 20]
    stor8 = code.data[7895 len 20]
    stor15 = 100 * 10^18
    stor23 = 30000 * 10^18
    stor13 = 0
    stor14 = 0
    stor19 = 0
    stor16 = code.data[7863 len 20]
    stor20 = 7500000 * 10^18
    return code.data[277 len 7574]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 teamTokensInitial;
uint256 teamTokensCurrent;
uint256 companyTokensInitial;
uint256 companyTokensCurrent;
address tokenAddress;
uint256 dateICOEnded;
uint256 dateProductCompleted;
address multisigAddress;
uint256 ethReceivedPresaleOne;
uint256 ethReceivedPresaleTwo;
uint256 ethReceiveMainSale;
uint256 totalTokensSold;
uint256 startBlock;
uint256 endBlock;
uint256 minInvestment;
address whiteListAddress;
uint256 dollarPerEtherRatio;
uint256 returnPercentage;
uint8 currentStep;
uint256 minCapTokens;
mapping of struct backers;
array of address backersIndex;
uint256 maxCapEth;
uint256 stor24; offset 1
uint256 maxCapTokens;
uint256 claimCount;
uint256 refundCount;
uint256 totalClaimed;
uint256 totalRefunded;
mapping of uint256 claimed;
mapping of uint256 refunded;

function endBlock() {
    return endBlock
}

function refundCount() {
    return refundCount
}

function ethReceiveMainSale() {
    return ethReceiveMainSale
}

function companyTokensCurrent() {
    return companyTokensCurrent
}

function whiteList() {
    return whiteListAddress
}

function dollarPerEtherRatio() {
    return dollarPerEtherRatio
}

function multisig() {
    return multisigAddress
}

function startBlock() {
    return startBlock
}

function dateProductCompleted() {
    return dateProductCompleted
}

function currentStep() {
    require currentStep <= 3
    return currentStep
}

function totalTokensSold() {
    return totalTokensSold
}

function ethReceivedPresaleTwo() {
    return ethReceivedPresaleTwo
}

function stopped() {
    return bool(stor0)
}

function minInvestment() {
    return minInvestment
}

function claimCount() {
    return claimCount
}

function owner() {
    return owner
}

function companyTokensInitial() {
    return companyTokensInitial
}

function returnPercentage() {
    return returnPercentage
}

function backers(address arg1) {
    return backers[arg1].field_0, 
           backers[arg1].field_256,
           backers[arg1].field_512,
           backers[arg1].field_768,
           bool(backers[arg1].field_1024),
           bool(backers[arg1].field_1032)
}

function maxCapTokens() {
    return maxCapTokens
}

function ethReceivedPresaleOne() {
    return ethReceivedPresaleOne
}

function refunded(address arg1) {
    return refunded[arg1]
}

function claimed(address arg1) {
    return claimed[arg1]
}

function maxCapEth() {
    return maxCapEth
}

function dateICOEnded() {
    return dateICOEnded
}

function totalClaimed() {
    return totalClaimed
}

function totalRefunded() {
    return totalRefunded
}

function teamTokensInitial() {
    return teamTokensInitial
}

function teamTokensCurrent() {
    return teamTokensCurrent
}

function minCapTokens() {
    return minCapTokens
}

function token() {
    return tokenAddress
}

function backersIndex(uint256 arg1) {
    require arg1 < backersIndex.length
    return address(backersIndex[arg1])
}

function emergencyStop() {
    require owner == msg.sender
    stor0 = 1
}

function release() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function setPresaleTwo() {
    require owner == msg.sender
    currentStep = 1
    minInvestment = 10 * 10^18
}

function setProductCompletionDate() {
    require owner == msg.sender
    dateProductCompleted = block.timestamp
}

function start() {
    require owner == msg.sender
    startBlock = block.number
    endBlock = block.number + 563472
}

function setToken(address arg1) {
    require owner == msg.sender
    require not tokenAddress
    tokenAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function drain() {
    require owner == msg.sender
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function returnWebsiteData() {
    return startBlock, 
           endBlock,
           backersIndex.length,
           ethReceivedPresaleOne,
           ethReceivedPresaleTwo,
           ethReceiveMainSale,
           maxCapTokens,
           minInvestment,
           bool(stor0)
}

function adjustDuration(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= 625392
    require startBlock <= block.number
    require arg1 > block.number - startBlock
    require arg1 + startBlock >= startBlock
    require arg1 + startBlock >= arg1
    endBlock = arg1 + startBlock
}

function setMainSale(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    currentStep = 2
    dollarPerEtherRatio = arg1
    maxCapTokens = 50000000 * 10^18
    minInvestment = 10^17
    totalTokensSold = (arg1 * ethReceivedPresaleOne / 48) + (arg1 * ethReceivedPresaleTwo / 55)
}

function fundContract(uint256 arg1) payable {
    require owner == msg.sender
    require arg1 > 0
    if ethReceivedPresaleOne:
        require ethReceivedPresaleOne
        require arg1 * ethReceivedPresaleOne / ethReceivedPresaleOne == arg1
    require msg.value == (arg1 * ethReceivedPresaleOne / 100) + ethReceivedPresaleTwo + ethReceiveMainSale
    returnPercentage = arg1
    currentStep = 3
}

function tokenDrain() {
    require owner == msg.sender
    if block.number > endBlock:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args multisigAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}

function finalizeSale() {
    require owner == msg.sender
    require not dateICOEnded
    require currentStep <= 3
    require currentStep == 2
    if block.number < endBlock:
        require 1000 <= maxCapTokens
        require totalTokensSold >= maxCapTokens - 1000
    require totalTokensSold >= minCapTokens
    companyTokensInitial = companyTokensInitial + maxCapTokens - totalTokensSold
    dateICOEnded = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa69df4b5 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function transferCompanyTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require dateICOEnded > 0
    require arg2 + companyTokensCurrent >= companyTokensCurrent
    require arg2 + companyTokensCurrent >= arg2
    if block.timestamp < dateICOEnded + (8760 * 24 * 3600):
        require arg2 + companyTokensCurrent <= 50 * companyTokensInitial / 100
    else:
        if block.timestamp >= dateICOEnded + (17520 * 24 * 3600):
            require arg2 + companyTokensCurrent <= companyTokensInitial
        else:
            require arg2 + companyTokensCurrent <= 75 * companyTokensInitial / 100
    require arg2 + companyTokensCurrent >= companyTokensCurrent
    require arg2 + companyTokensCurrent >= arg2
    companyTokensCurrent += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit LogCompanyTokensTransferred(arg2, arg1);
}

function updateContributorAddress(address arg1, address arg2) {
    require owner == msg.sender
    if backers[address(arg1)].field_0 <= 0:
        if backers[address(arg1)].field_256 <= 0:
            require backers[address(arg1)].field_512 > 0
    require not backers[arg2].field_0
    require not backers[arg2].field_256
    require not backers[arg2].field_512
    require not backers[address(arg1)].field_1024
    require not backers[address(arg1)].field_1032
    backers[address(arg1)].field_1024 = 1
    backers[address(arg1)].field_1032 = 1
    backers[address(arg1)].field_1280 = 0
    backers[arg2].field_0 = backers[address(arg1)].field_0
    backers[arg2].field_256 = backers[address(arg1)].field_256
    backers[arg2].field_512 = backers[address(arg1)].field_512
    backersIndex.length++
    if not backersIndex.length <= backersIndex.length + 1:
        idx = backersIndex.length + 1
        while backersIndex.length > idx:
            uint256(backersIndex[idx]) = 0
            idx = idx + 1
            continue 
    address(backersIndex[backersIndex.length]) = arg2
}

function transferTeamTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require block.timestamp >= 425856 * 24 * 3600
    require dateProductCompleted > 0
    require arg2 + teamTokensCurrent >= teamTokensCurrent
    require arg2 + teamTokensCurrent >= arg2
    if block.timestamp < dateProductCompleted + (8760 * 24 * 3600):
        require arg2 + teamTokensCurrent <= 30 * teamTokensInitial / 100
    else:
        if block.timestamp < dateProductCompleted + (17520 * 24 * 3600):
            require arg2 + teamTokensCurrent <= 60 * teamTokensInitial / 100
        else:
            if block.timestamp >= dateProductCompleted + (26280 * 24 * 3600):
                require arg2 + teamTokensCurrent <= teamTokensInitial
            else:
                require arg2 + teamTokensCurrent <= 80 * teamTokensInitial / 100
    require arg2 + teamTokensCurrent >= teamTokensCurrent
    require arg2 + teamTokensCurrent >= arg2
    teamTokensCurrent += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit LogTeamTokensTransferred(arg2, arg1);
}

function refund() {
    require currentStep <= 3
    require currentStep == 3
    require totalTokensSold < stor24
    require not backers[address(msg.sender)].field_1024
    require not backers[address(msg.sender)].field_1032
    require (returnPercentage * backers[address(msg.sender)].field_0 / 100) + backers[address(msg.sender)].field_256 + backers[address(msg.sender)].field_512 > 0
    backers[address(msg.sender)].field_1032 = 1
    totalRefunded = (returnPercentage * backers[address(msg.sender)].field_0 / 100) + backers[address(msg.sender)].field_256 + backers[address(msg.sender)].field_512 + totalRefunded
    refundCount++
    refunded[address(msg.sender)] = (returnPercentage * backers[address(msg.sender)].field_0 / 100) + backers[address(msg.sender)].field_256 + backers[address(msg.sender)].field_512 + totalRefunded
    call msg.sender with:
       value (returnPercentage * backers[address(msg.sender)].field_0 / 100) + backers[address(msg.sender)].field_256 + backers[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(((returnPercentage * backers[address(msg.sender)].field_0 / 100) + backers[address(msg.sender)].field_256 + backers[address(msg.sender)].field_512), msg.sender);
}

function adminClaimTokenForUser(address arg1) {
    require owner == msg.sender
    require dateICOEnded > 0
    require not backers[address(arg1)].field_1032
    require not backers[address(arg1)].field_1024
    if backers[address(arg1)].field_0 <= 0:
        if backers[address(arg1)].field_256 <= 0:
            require backers[address(arg1)].field_512 > 0
    claimCount++
    claimed[address(arg1)] = (dollarPerEtherRatio * backers[address(arg1)].field_512 / 62) + (backers[address(arg1)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(arg1)].field_256 / 55)
    backers[address(arg1)].field_1024 = 1
    backers[address(arg1)].field_768 = (dollarPerEtherRatio * backers[address(arg1)].field_512 / 62) + (backers[address(arg1)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(arg1)].field_256 / 55)
    totalClaimed = (dollarPerEtherRatio * backers[address(arg1)].field_512 / 62) + (backers[address(arg1)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(arg1)].field_256 / 55) + totalClaimed
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), (dollarPerEtherRatio * backers[address(arg1)].field_512 / 62) + (backers[address(arg1)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(arg1)].field_256 / 55)
    require ext_call.success
    require ext_call.return_data[0]
    emit TokensClaimed(((dollarPerEtherRatio * backers[address(arg1)].field_512 / 62) + (backers[address(arg1)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(arg1)].field_256 / 55)), arg1);
}

function claimTokens() {
    require dateICOEnded > 0
    require not backers[address(msg.sender)].field_1032
    require not backers[address(msg.sender)].field_1024
    if backers[address(msg.sender)].field_0 <= 0:
        if backers[address(msg.sender)].field_256 <= 0:
            require backers[address(msg.sender)].field_512 > 0
    claimCount++
    claimed[address(msg.sender)] = (dollarPerEtherRatio * backers[address(msg.sender)].field_512 / 62) + (backers[address(msg.sender)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(msg.sender)].field_256 / 55)
    backers[address(msg.sender)].field_1024 = 1
    backers[address(msg.sender)].field_768 = (dollarPerEtherRatio * backers[address(msg.sender)].field_512 / 62) + (backers[address(msg.sender)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(msg.sender)].field_256 / 55)
    totalClaimed = (dollarPerEtherRatio * backers[address(msg.sender)].field_512 / 62) + (backers[address(msg.sender)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(msg.sender)].field_256 / 55) + totalClaimed
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (dollarPerEtherRatio * backers[address(msg.sender)].field_512 / 62) + (backers[address(msg.sender)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(msg.sender)].field_256 / 55)
    require ext_call.success
    require ext_call.return_data[0]
    emit TokensClaimed(((dollarPerEtherRatio * backers[address(msg.sender)].field_512 / 62) + (backers[address(msg.sender)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(msg.sender)].field_256 / 55)), msg.sender);
}

function refundNonCompliant(address arg1) payable {
    require owner == msg.sender
    require not backers[address(arg1)].field_1024
    require not backers[address(arg1)].field_1032
    backers[address(arg1)].field_1032 = 1
    require backers[address(arg1)].field_0 + backers[address(arg1)].field_256 + backers[address(arg1)].field_512 == msg.value
    require backers[address(arg1)].field_0 + backers[address(arg1)].field_256 + backers[address(arg1)].field_512 > 0
    ethReceivedPresaleOne -= backers[address(arg1)].field_0
    ethReceivedPresaleTwo -= backers[address(arg1)].field_256
    ethReceiveMainSale -= backers[address(arg1)].field_512
    totalRefunded = backers[address(arg1)].field_0 + backers[address(arg1)].field_256 + backers[address(arg1)].field_512 + totalRefunded
    refundCount++
    refunded[address(arg1)] = backers[address(arg1)].field_0 + backers[address(arg1)].field_256 + backers[address(arg1)].field_512 + totalRefunded
    if dateICOEnded != 0:
        companyTokensInitial = (backers[address(arg1)].field_0 * dollarPerEtherRatio / 48) + (dollarPerEtherRatio * backers[address(arg1)].field_256 / 55) + (dollarPerEtherRatio * backers[address(arg1)].field_512 / 62) + companyTokensInitial
    else:
        totalTokensSold = totalTokensSold - (backers[address(arg1)].field_0 * dollarPerEtherRatio / 48) - (dollarPerEtherRatio * backers[address(arg1)].field_256 / 55) - (dollarPerEtherRatio * backers[address(arg1)].field_512 / 62)
    call arg1 with:
       value backers[address(arg1)].field_0 + backers[address(arg1)].field_256 + backers[address(arg1)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded((backers[address(arg1)].field_0 + backers[address(arg1)].field_256 + backers[address(arg1)].field_512), arg1);
}

function numberOfBackers() {
    s = 0
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < backersIndex.length:
        mem[0] = address(backersIndex[idx])
        mem[32] = 21
        if backers[address(stor22[idx])].field_0 <= 0:
            if backers[address(stor22[idx])].field_256 <= 0:
                if backers[address(stor22[idx])].field_512 <= 0:
                    s = sha3(address(backersIndex[idx]), 21)
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                s = sha3(address(backersIndex[idx]), 21)
                idx = idx + 1
                s = s + 1
                t = t
                u = u
                continue 
            if backers[address(stor22[idx])].field_512 <= 0:
                s = sha3(address(backersIndex[idx]), 21)
                idx = idx + 1
                s = s
                t = t + 1
                u = u
                continue 
            s = sha3(address(backersIndex[idx]), 21)
            idx = idx + 1
            s = s + 1
            t = t + 1
            u = u
            continue 
        if backers[address(stor22[idx])].field_256 <= 0:
            if backers[address(stor22[idx])].field_512 <= 0:
                s = sha3(address(backersIndex[idx]), 21)
                idx = idx + 1
                s = s
                t = t
                u = u + 1
                continue 
            s = sha3(address(backersIndex[idx]), 21)
            idx = idx + 1
            s = s + 1
            t = t
            u = u + 1
            continue 
        if backers[address(stor22[idx])].field_512 <= 0:
            s = sha3(address(backersIndex[idx]), 21)
            idx = idx + 1
            s = s
            t = t + 1
            u = u + 1
            continue 
        s = sha3(address(backersIndex[idx]), 21)
        idx = idx + 1
        s = s + 1
        t = t + 1
        u = u + 1
        continue 
    return u, t, s, backersIndex.length
}

function _fallback() payable {
    require not stor0
    require block.number >= startBlock
    require block.number <= endBlock
    require ext_code.size(whiteListAddress)
    call whiteListAddress.isWhiteListed(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require msg.value >= minInvestment
    if not backers[address(msg.sender)].field_0:
        if not backers[address(msg.sender)].field_256:
            if not backers[address(msg.sender)].field_512:
                backersIndex.length++
                if not backersIndex.length <= backersIndex.length + 1:
                    idx = backersIndex.length + 1
                    while backersIndex.length > idx:
                        uint256(backersIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                address(backersIndex[backersIndex.length]) = msg.sender
    require currentStep <= 3
    if not currentStep:
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        require msg.value + backers[address(msg.sender)].field_0 >= msg.value
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + ethReceivedPresaleOne >= ethReceivedPresaleOne
        require msg.value + ethReceivedPresaleOne >= msg.value
        ethReceivedPresaleOne += msg.value
        require msg.value + ethReceivedPresaleOne <= maxCapEth
    else:
        require currentStep <= 3
        if currentStep == 1:
            require msg.value + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
            require msg.value + backers[address(msg.sender)].field_256 >= msg.value
            backers[address(msg.sender)].field_256 += msg.value
            require msg.value + ethReceivedPresaleTwo >= ethReceivedPresaleTwo
            require msg.value + ethReceivedPresaleTwo >= msg.value
            ethReceivedPresaleTwo += msg.value
            require msg.value + ethReceivedPresaleTwo + ethReceivedPresaleOne <= maxCapEth
        else:
            require currentStep <= 3
            if currentStep == 2:
                require msg.value + backers[address(msg.sender)].field_512 >= backers[address(msg.sender)].field_512
                require msg.value + backers[address(msg.sender)].field_512 >= msg.value
                backers[address(msg.sender)].field_512 += msg.value
                require msg.value + ethReceiveMainSale >= ethReceiveMainSale
                require msg.value + ethReceiveMainSale >= msg.value
                ethReceiveMainSale += msg.value
                if dollarPerEtherRatio:
                    require dollarPerEtherRatio
                    require msg.value * dollarPerEtherRatio / dollarPerEtherRatio == msg.value
                totalTokensSold += msg.value * dollarPerEtherRatio / 62
                require (msg.value * dollarPerEtherRatio / 62) + totalTokensSold <= maxCapTokens
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require currentStep <= 3
    emit ReceivedETH(msg.value, msg.sender, currentStep);
}



}
