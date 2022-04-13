contract main {


// =======================  Init code  ======================


array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
address stor9;
address stor10;
uint256 stor11;
uint256 stor13;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor25;
uint256 stor26;
uint256 stor27;

function _fallback() {
    mem[96 len -7745] = code.data[8234 len -7745]
    mem[64] = -7649
    stor5[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7 = 0
    stor11 = mem[160]
    stor13 = mem[192]
    stor9 = mem[236 len 20]
    stor10 = mem[268 len 20]
    stor16 = mem[288]
    stor17 = mem[320]
    stor18 = mem[352]
    stor26 = mem[384]
    stor27 = block.timestamp
    stor25 = 0
    return code.data[489 len 7745]
}



// =====================  Runtime code  =====================


#
#  - distributeTokens(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 payments;
uint256 totalPayments;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address artistAddress;
address trivialAddress;
uint256 icoDuration;
uint256 icoEndTime;
uint256 auctionDuration;
uint256 auctionEndTime;
uint256 freePeriodEndTime;
uint256 tokensForArtist;
uint256 tokensForTrivial;
uint256 tokensForIco;
uint256 amountRaised;
address highestBidderAddress;
uint256 highestBid;
uint256 auctionWinnerMessageHash;
uint256 nextContributorIndexToBeGivenTokens;
uint256 tokensDistributedToContributors;
uint8 currentState;
uint256 stor26;
uint256 stor27;
array of struct descriptionHashHistory;
mapping of uint256 contributions;
array of address contributors;

function totalPayments() {
    return totalPayments
}

function name() {
    return name[0 len name.length]
}

function freePeriodEndTime() {
    return freePeriodEndTime
}

function currentState() {
    require currentState <= 5
    return currentState
}

function auctionDuration() {
    return auctionDuration
}

function trivial() {
    return trivialAddress
}

function totalSupply() {
    return totalSupply
}

function icoDuration() {
    return icoDuration
}

function decimals() {
    return decimals
}

function contributors(uint256 arg1) {
    require arg1 < contributors.length
    return address(contributors[arg1])
}

function contributions(address arg1) {
    return contributions[arg1]
}

function artist() {
    return artistAddress
}

function tokensForTrivial() {
    return tokensForTrivial
}

function tokensForArtist() {
    return tokensForArtist
}

function auctionEndTime() {
    return auctionEndTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function nextContributorIndexToBeGivenTokens() {
    return nextContributorIndexToBeGivenTokens
}

function contributorsCount() {
    return contributors.length
}

function amountRaised() {
    return amountRaised
}

function icoEndTime() {
    return icoEndTime
}

function tokensForIco() {
    return tokensForIco
}

function highestBidder() {
    return highestBidderAddress
}

function tokensDistributedToContributors() {
    return tokensDistributedToContributors
}

function symbol() {
    return symbol[0 len symbol.length]
}

function auctionWinnerMessageHash() {
    return auctionWinnerMessageHash
}

function checkContribution(address arg1) {
    return contributions[address(arg1)]
}

function descriptionHashHistory(uint256 arg1) {
    require arg1 < descriptionHashHistory.length
    return descriptionHashHistory[arg1].field_0, descriptionHashHistory[arg1].field_256
}

function highestBid() {
    return highestBid
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function payments(address arg1) {
    return payments[arg1]
}

function killContract() {
    require trivialAddress == msg.sender
    require currentState <= 5
    if currentState != 4:
        require currentState <= 5
        require currentState == 5
    else:
        require auctionEndTime + (4320 * 24 * 3600) >= auctionEndTime
        if block.timestamp <= auctionEndTime + (4320 * 24 * 3600):
            require currentState <= 5
            require currentState == 5
    selfdestruct(trivialAddress)
}

function descriptionHash() {
    return stor26, stor27
}

function isKeyHolder(address arg1) {
    return balanceOf[address(arg1)] >= tokensForIco / 25
}

function canStartAuction() {
    if artistAddress == msg.sender:
        return True
    return balanceOf[address(msg.sender)] >= 250000
}

function setAuctionWinnerMessageHash(bytes32 arg1) {
    require currentState <= 5
    require currentState == 4
    require highestBidderAddress == msg.sender
    auctionWinnerMessageHash = arg1
    emit WinnerProvidedHash()
}

function finishAuction() {
    require currentState <= 5
    require 3 == currentState
    require block.timestamp > auctionEndTime
    require highestBid > 0
    currentState = 4
    emit 0xef8b1ad6: highestBidderAddress, highestBid
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function startIco() {
    require currentState <= 5
    require 0 == currentState
    require trivialAddress == msg.sender
    require icoDuration + block.timestamp >= block.timestamp
    icoEndTime = icoDuration + block.timestamp
    freePeriodEndTime = icoDuration + block.timestamp + (1440 * 24 * 3600)
    currentState = 1
    emit IcoStarted(icoEndTime);
}

function transfer(address arg1, uint256 arg2) {
    require currentState <= 5
    require 2 == currentState
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getContractState() {
    require currentState <= 5
    return icoEndTime, 
           auctionDuration,
           auctionEndTime,
           tokensForArtist,
           tokensForTrivial,
           tokensForIco,
           amountRaised,
           highestBidderAddress,
           highestBid,
           currentState,
           25,
           10,
           freePeriodEndTime
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require currentState <= 5
    require 2 == currentState
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function startAuction() {
    require block.timestamp > freePeriodEndTime
    require currentState <= 5
    require 2 == currentState
    if artistAddress != msg.sender:
        require balanceOf[address(msg.sender)] >= 250000
    if 10^6 == balanceOf[address(msg.sender)]:
        highestBidderAddress = msg.sender
        currentState = 4
        emit 0xef8b1ad6: highestBidderAddress, highestBid
    else:
        require auctionDuration + block.timestamp >= block.timestamp
        auctionEndTime = auctionDuration + block.timestamp
        currentState = 3
        emit AuctionStarted(auctionEndTime);
}

function setDescriptionHash(bytes32 arg1) {
    require artistAddress == msg.sender
    descriptionHashHistory.length++
    if not descriptionHashHistory.length <= descriptionHashHistory.length + 1:
        idx = 2 * descriptionHashHistory.length + 1
        while 2 * descriptionHashHistory.length > idx:
            descriptionHashHistory[idx].field_0 = 0
            descriptionHashHistory[idx].field_256 = 0
            idx = idx + 2
            continue 
    descriptionHashHistory[descriptionHashHistory.length].field_0 = stor26
    descriptionHashHistory[descriptionHashHistory.length].field_256 = stor27
    stor26 = arg1
    stor27 = block.timestamp
}

function withdrawShares(address arg1) {
    require currentState <= 5
    require 4 == currentState
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    if highestBidderAddress == arg1:
    if not highestBid:
        call arg1 with:
           value balanceOf[address(arg1)] * highestBid / 10^6 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if highestBid:
            if balanceOf[address(arg1)] * highestBid / highestBid == balanceOf[address(arg1)]:
                call arg1 with:
                   value balanceOf[address(arg1)] * highestBid / 10^6 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert
}

function contributeInIco() payable {
    require currentState <= 5
    require 1 == currentState
    require block.timestamp < icoEndTime
    require msg.value > 5 * 10^15
    if not contributions[address(msg.sender)]:
        contributors.length++
        if not contributors.length <= contributors.length + 1:
            idx = contributors.length + 1
            while contributors.length > idx:
                uint256(contributors[idx]) = 0
                idx = idx + 1
                continue 
        address(contributors[contributors.length]) = msg.sender
    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    emit IcoContributed(msg.sender, msg.value, msg.value + amountRaised);
}

function finishIco() {
    require currentState <= 5
    require 1 == currentState
    require block.timestamp > icoEndTime
    if not amountRaised:
        currentState = 5
    else:
        require nextContributorIndexToBeGivenTokens >= contributors.length
        require tokensForArtist + balanceOf[stor9] >= balanceOf[stor9]
        balanceOf[stor9] += tokensForArtist
        require tokensForTrivial + balanceOf[stor10] >= balanceOf[stor10]
        balanceOf[stor10] += tokensForTrivial
        require tokensDistributedToContributors <= tokensForIco
        require tokensForIco - tokensDistributedToContributors + balanceOf[stor9] >= balanceOf[stor9]
        balanceOf[stor9] = tokensForIco - tokensDistributedToContributors + balanceOf[stor9]
        call artistAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require eth.balance(this.address) + payments[stor9] >= payments[stor9]
            payments[stor9] += eth.balance(this.address)
            require eth.balance(this.address) + totalPayments >= totalPayments
            totalPayments += eth.balance(this.address)
        currentState = 2
        emit IcoFinished(amountRaised);
}

function bidInAuction() payable {
    require currentState <= 5
    require 3 == currentState
    require block.timestamp < auctionEndTime
    require msg.value >= 5 * 10^15
    if balanceOf[address(msg.sender)] <= 0:
        if highestBid >= 5 * 10^15:
            if highestBid:
                require highestBid
                require 10 * highestBid / highestBid == 10
            require (10 * highestBid / 100) + highestBid >= highestBid
            require msg.value >= (10 * highestBid / 100) + highestBid
            require msg.value <= eth.balance(this.address)
            require totalPayments <= eth.balance(this.address) - msg.value
            call highestBidderAddress with:
               value eth.balance(this.address) - msg.value - totalPayments wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require eth.balance(this.address) - msg.value - totalPayments + payments[stor20] >= payments[stor20]
                payments[stor20] = eth.balance(this.address) - msg.value - totalPayments + payments[stor20]
                require eth.balance(this.address) - msg.value >= totalPayments
                totalPayments = eth.balance(this.address) - msg.value
        highestBidderAddress = msg.sender
        highestBid = msg.value
        emit HighestBidChanged(msg.sender, msg.value);
    else:
        if msg.value:
            require msg.value
            require 10^6 * msg.value / msg.value == 10^6
        require balanceOf[address(msg.sender)] <= 10^6
        require -balanceOf[address(msg.sender)] + 10^6
        if highestBid >= 5 * 10^15:
            if highestBid:
                require highestBid
                require 10 * highestBid / highestBid == 10
            require (10 * highestBid / 100) + highestBid >= highestBid
            require 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6 >= (10 * highestBid / 100) + highestBid
            require msg.value <= eth.balance(this.address)
            require totalPayments <= eth.balance(this.address) - msg.value
            call highestBidderAddress with:
               value eth.balance(this.address) - msg.value - totalPayments wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require eth.balance(this.address) - msg.value - totalPayments + payments[stor20] >= payments[stor20]
                payments[stor20] = eth.balance(this.address) - msg.value - totalPayments + payments[stor20]
                require eth.balance(this.address) - msg.value >= totalPayments
                totalPayments = eth.balance(this.address) - msg.value
        highestBidderAddress = msg.sender
        highestBid = 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6
        emit HighestBidChanged(msg.sender, 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6);
}

function _fallback() payable {
    require currentState <= 5
    require currentState <= 5
    if currentState == 1:
        require 1 == currentState
        require block.timestamp < icoEndTime
        require msg.value > 5 * 10^15
        if not contributions[address(msg.sender)]:
            contributors.length++
            if not contributors.length <= contributors.length + 1:
                idx = contributors.length + 1
                while contributors.length > idx:
                    uint256(contributors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributors[contributors.length]) = msg.sender
        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
        contributions[address(msg.sender)] += msg.value
        require msg.value + amountRaised >= amountRaised
        amountRaised += msg.value
        emit IcoContributed(msg.sender, msg.value, msg.value + amountRaised);
    else:
        require currentState == 3
        require currentState <= 5
        require 3 == currentState
        require block.timestamp < auctionEndTime
        require msg.value >= 5 * 10^15
        if balanceOf[address(msg.sender)] <= 0:
            if highestBid >= 5 * 10^15:
                if highestBid:
                    require highestBid
                    require 10 * highestBid / highestBid == 10
                require (10 * highestBid / 100) + highestBid >= highestBid
                require msg.value >= (10 * highestBid / 100) + highestBid
                require msg.value <= eth.balance(this.address)
                require totalPayments <= eth.balance(this.address) - msg.value
                call highestBidderAddress with:
                   value eth.balance(this.address) - msg.value - totalPayments wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require eth.balance(this.address) - msg.value - totalPayments + payments[stor20] >= payments[stor20]
                    payments[stor20] = eth.balance(this.address) - msg.value - totalPayments + payments[stor20]
                    require eth.balance(this.address) - msg.value >= totalPayments
                    totalPayments = eth.balance(this.address) - msg.value
            highestBidderAddress = msg.sender
            highestBid = msg.value
            emit HighestBidChanged(msg.sender, msg.value);
        else:
            if msg.value:
                require msg.value
                require 10^6 * msg.value / msg.value == 10^6
            require balanceOf[address(msg.sender)] <= 10^6
            require -balanceOf[address(msg.sender)] + 10^6
            if highestBid >= 5 * 10^15:
                if highestBid:
                    require highestBid
                    require 10 * highestBid / highestBid == 10
                require (10 * highestBid / 100) + highestBid >= highestBid
                require 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6 >= (10 * highestBid / 100) + highestBid
                require msg.value <= eth.balance(this.address)
                require totalPayments <= eth.balance(this.address) - msg.value
                call highestBidderAddress with:
                   value eth.balance(this.address) - msg.value - totalPayments wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require eth.balance(this.address) - msg.value - totalPayments + payments[stor20] >= payments[stor20]
                    payments[stor20] = eth.balance(this.address) - msg.value - totalPayments + payments[stor20]
                    require eth.balance(this.address) - msg.value >= totalPayments
                    totalPayments = eth.balance(this.address) - msg.value
            highestBidderAddress = msg.sender
            highestBid = 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6
            emit HighestBidChanged(msg.sender, 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6);
}



}
