contract main {


// =======================  Init code  ======================


uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor12;
uint8 stor30;

function _fallback() payable {
    stor5 = 5 * 10^15
    stor6 = 10
    stor7 = 25
    stor8 = 4320 * 24 * 3600
    stor9 = 1440 * 24 * 3600
    stor12 = 0
    require not msg.value
    stor30 = 6
    return code.data[129 len 14117]
}



// =====================  Runtime code  =====================


#
#  - distributeTokens(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 payments;
uint256 totalPayments;
uint256 minEthAmount;
uint256 minBidPercentage;
uint256 tokensPercentageForKeyHolder;
uint256 cleanupDelay;
uint256 freePeriodDuration;
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
uint256 stor31;
uint256 stor32;
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

function freePeriodDuration() {
    return freePeriodDuration
}

function currentState() {
    require currentState <= 7
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

function minEthAmount() {
    return minEthAmount
}

function minBidPercentage() {
    return minBidPercentage
}

function icoDuration() {
    return icoDuration
}

function decimals() {
    return decimals
}

function cleanupDelay() {
    return cleanupDelay
}

function contributors(uint256 arg1) {
    require arg1 < contributors.length
    return address(contributors[arg1])
}

function contributions(address arg1) {
    return contributions[arg1]
}

function tokensPercentageForKeyHolder() {
    return tokensPercentageForKeyHolder
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
    require msg.sender == trivialAddress
    require currentState <= 7
    if currentState != 4:
        require currentState <= 7
        require currentState == 5
    else:
        require auctionEndTime + cleanupDelay >= auctionEndTime
        if block.timestamp <= auctionEndTime + cleanupDelay:
            require currentState <= 7
            require currentState == 5
    selfdestruct(trivialAddress)
}

function descriptionHash() {
    return stor31, stor32
}

function setAuctionWinnerMessageHash(bytes32 arg1) {
    require currentState <= 7
    require currentState == 4
    require msg.sender == highestBidderAddress
    auctionWinnerMessageHash = arg1
    emit WinnerProvidedHash()
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishAuction() {
    require currentState <= 7
    require 3 == currentState
    require block.timestamp > auctionEndTime
    require highestBid > 0
    currentState = 4
    emit AuctionFinished(highestBidderAddress, highestBid);
}

function canStartAuction() {
    if totalSupply:
        require totalSupply
        require totalSupply * tokensPercentageForKeyHolder / totalSupply == tokensPercentageForKeyHolder
    if msg.sender == artistAddress:
        return True
    return balanceOf[address(msg.sender)] >= totalSupply * tokensPercentageForKeyHolder / 100
}

function startIco() {
    require currentState <= 7
    require 0 == currentState
    require msg.sender == trivialAddress
    require block.timestamp + icoDuration >= block.timestamp
    icoEndTime = block.timestamp + icoDuration
    require icoEndTime + freePeriodDuration >= icoEndTime
    freePeriodEndTime = icoEndTime + freePeriodDuration
    currentState = 1
    emit IcoStarted(icoEndTime);
}

function getContractState() {
    require currentState <= 7
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
           tokensPercentageForKeyHolder,
           minBidPercentage,
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

function initOne(string arg1, string arg2, uint8 arg3, uint256 arg4, uint256 arg5, address arg6, address arg7, bytes32 arg8) {
    require currentState <= 7
    require 6 == currentState
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    icoDuration = arg4
    auctionDuration = arg5
    artistAddress = arg6
    trivialAddress = arg7
    stor31 = arg8
    stor32 = block.timestamp
    currentState = 7
}

function withdrawShares(address arg1) {
    require currentState <= 7
    require 4 == currentState
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    if arg1 != highestBidderAddress:
        if highestBid:
            require highestBid
            require highestBid * balanceOf[address(arg1)] / highestBid == balanceOf[address(arg1)]
        require totalSupply
        call arg1 with:
           value highestBid * balanceOf[address(arg1)] / totalSupply wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require currentState <= 7
    require currentState <= 7
    if currentState != 2:
        require currentState == 3
        require block.timestamp < auctionEndTime
    if currentState == 3:
        require arg1 != highestBidderAddress
        require highestBidderAddress != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function initTwo(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require currentState <= 7
    require 7 == currentState
    require arg3 + arg4 >= arg3
    require arg2 + arg3 + arg4 >= arg2
    require arg1 == arg2 + arg3 + arg4
    require arg6 < 100
    require arg7 < 100
    totalSupply = arg1
    minEthAmount = arg5
    minBidPercentage = arg6
    tokensPercentageForKeyHolder = arg7
    cleanupDelay = arg8
    freePeriodDuration = arg9
    tokensForArtist = arg2
    tokensForTrivial = arg3
    tokensForIco = arg4
    currentState = 0
}

function setDescriptionHash(bytes32 arg1) {
    require msg.sender == artistAddress
    descriptionHashHistory.length++
    if not descriptionHashHistory.length <= descriptionHashHistory.length + 1:
        idx = 2 * descriptionHashHistory.length + 1
        while 2 * descriptionHashHistory.length > idx:
            descriptionHashHistory[idx].field_0 = 0
            descriptionHashHistory[idx].field_256 = 0
            idx = idx + 2
            continue 
    descriptionHashHistory[descriptionHashHistory.length].field_0 = stor31
    descriptionHashHistory[descriptionHashHistory.length].field_256 = stor32
    stor31 = arg1
    stor32 = block.timestamp
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require currentState <= 7
    require currentState <= 7
    if currentState != 2:
        require currentState == 3
        require block.timestamp < auctionEndTime
    if currentState == 3:
        require arg2 != highestBidderAddress
        require arg1 != highestBidderAddress
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function startAuction() {
    require block.timestamp > freePeriodEndTime
    require currentState <= 7
    require 2 == currentState
    if totalSupply:
        require totalSupply
        require totalSupply * tokensPercentageForKeyHolder / totalSupply == tokensPercentageForKeyHolder
    if artistAddress != msg.sender:
        require balanceOf[address(msg.sender)] >= totalSupply * tokensPercentageForKeyHolder / 100
    if balanceOf[address(msg.sender)] == totalSupply:
        highestBidderAddress = msg.sender
        currentState = 4
        emit AuctionFinished(highestBidderAddress, highestBid);
    else:
        require block.timestamp + auctionDuration >= block.timestamp
        auctionEndTime = block.timestamp + auctionDuration
        currentState = 3
        emit AuctionStarted(auctionEndTime);
}

function contributeInIco() payable {
    require currentState <= 7
    require 1 == currentState
    require block.timestamp < icoEndTime
    require msg.value > minEthAmount
    if not contributions[address(msg.sender)]:
        contributors.length++
        if not contributors.length <= contributors.length + 1:
            idx = contributors.length + 1
            while contributors.length > idx:
                uint256(contributors[idx]) = 0
                idx = idx + 1
                continue 
        address(contributors[contributors.length]) = msg.sender
    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    emit IcoContributed(msg.sender, msg.value, amountRaised);
}

function finishIco() {
    require currentState <= 7
    require 1 == currentState
    require block.timestamp > icoEndTime
    if not amountRaised:
        currentState = 5
    else:
        require nextContributorIndexToBeGivenTokens >= contributors.length
        require balanceOf[stor14] + tokensForArtist >= balanceOf[stor14]
        balanceOf[stor14] += tokensForArtist
        require balanceOf[stor15] + tokensForTrivial >= balanceOf[stor15]
        balanceOf[stor15] += tokensForTrivial
        require tokensDistributedToContributors <= tokensForIco
        require balanceOf[stor14] + tokensForIco - tokensDistributedToContributors >= balanceOf[stor14]
        balanceOf[stor14] = balanceOf[stor14] + tokensForIco - tokensDistributedToContributors
        call artistAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require payments[stor14] + eth.balance(this.address) >= payments[stor14]
            payments[stor14] += eth.balance(this.address)
            require totalPayments + eth.balance(this.address) >= totalPayments
            totalPayments += eth.balance(this.address)
        currentState = 2
        emit IcoFinished(amountRaised);
}

function bidInAuction() payable {
    require currentState <= 7
    require 3 == currentState
    require block.timestamp < auctionEndTime
    require msg.value >= minEthAmount
    if balanceOf[address(msg.sender)] <= 0:
        if highestBid >= minEthAmount:
            if highestBid:
                require highestBid
                require highestBid * minBidPercentage / highestBid == minBidPercentage
            require highestBid + (highestBid * minBidPercentage / 100) >= highestBid
            require msg.value >= highestBid + (highestBid * minBidPercentage / 100)
            require msg.value <= eth.balance(this.address)
            require totalPayments <= eth.balance(this.address) - msg.value
            call highestBidderAddress with:
               value eth.balance(this.address) - msg.value - totalPayments wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require payments[stor25] + eth.balance(this.address) - msg.value - totalPayments >= payments[stor25]
                payments[stor25] = payments[stor25] + eth.balance(this.address) - msg.value - totalPayments
                require eth.balance(this.address) - msg.value >= totalPayments
                totalPayments = eth.balance(this.address) - msg.value
        highestBidderAddress = msg.sender
        highestBid = msg.value
    else:
        if msg.value:
            require msg.value
            require msg.value * totalSupply / msg.value == totalSupply
        require balanceOf[address(msg.sender)] <= totalSupply
        require totalSupply - balanceOf[address(msg.sender)]
        if highestBid >= minEthAmount:
            if highestBid:
                require highestBid
                require highestBid * minBidPercentage / highestBid == minBidPercentage
            require highestBid + (highestBid * minBidPercentage / 100) >= highestBid
            require msg.value * totalSupply / totalSupply - balanceOf[address(msg.sender)] >= highestBid + (highestBid * minBidPercentage / 100)
            require msg.value <= eth.balance(this.address)
            require totalPayments <= eth.balance(this.address) - msg.value
            call highestBidderAddress with:
               value eth.balance(this.address) - msg.value - totalPayments wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require payments[stor25] + eth.balance(this.address) - msg.value - totalPayments >= payments[stor25]
                payments[stor25] = payments[stor25] + eth.balance(this.address) - msg.value - totalPayments
                require eth.balance(this.address) - msg.value >= totalPayments
                totalPayments = eth.balance(this.address) - msg.value
        highestBidderAddress = msg.sender
        highestBid = msg.value * totalSupply / totalSupply - balanceOf[address(msg.sender)]
    emit HighestBidChanged(highestBidderAddress, highestBid);
}

function _fallback() payable {
    require currentState <= 7
    require currentState <= 7
    if currentState == 1:
        require 1 == currentState
        require block.timestamp < icoEndTime
        require msg.value > minEthAmount
        if not contributions[address(msg.sender)]:
            contributors.length++
            if not contributors.length <= contributors.length + 1:
                idx = contributors.length + 1
                while contributors.length > idx:
                    uint256(contributors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributors[contributors.length]) = msg.sender
        require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
        contributions[address(msg.sender)] += msg.value
        require amountRaised + msg.value >= amountRaised
        amountRaised += msg.value
        emit IcoContributed(msg.sender, msg.value, amountRaised);
    else:
        require currentState == 3
        require currentState <= 7
        require 3 == currentState
        require block.timestamp < auctionEndTime
        require msg.value >= minEthAmount
        if balanceOf[address(msg.sender)] <= 0:
            if highestBid >= minEthAmount:
                if highestBid:
                    require highestBid
                    require highestBid * minBidPercentage / highestBid == minBidPercentage
                require highestBid + (highestBid * minBidPercentage / 100) >= highestBid
                require msg.value >= highestBid + (highestBid * minBidPercentage / 100)
                require msg.value <= eth.balance(this.address)
                require totalPayments <= eth.balance(this.address) - msg.value
                call highestBidderAddress with:
                   value eth.balance(this.address) - msg.value - totalPayments wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require payments[stor25] + eth.balance(this.address) - msg.value - totalPayments >= payments[stor25]
                    payments[stor25] = payments[stor25] + eth.balance(this.address) - msg.value - totalPayments
                    require eth.balance(this.address) - msg.value >= totalPayments
                    totalPayments = eth.balance(this.address) - msg.value
            highestBidderAddress = msg.sender
            highestBid = msg.value
        else:
            if msg.value:
                require msg.value
                require msg.value * totalSupply / msg.value == totalSupply
            require balanceOf[address(msg.sender)] <= totalSupply
            require totalSupply - balanceOf[address(msg.sender)]
            if highestBid >= minEthAmount:
                if highestBid:
                    require highestBid
                    require highestBid * minBidPercentage / highestBid == minBidPercentage
                require highestBid + (highestBid * minBidPercentage / 100) >= highestBid
                require msg.value * totalSupply / totalSupply - balanceOf[address(msg.sender)] >= highestBid + (highestBid * minBidPercentage / 100)
                require msg.value <= eth.balance(this.address)
                require totalPayments <= eth.balance(this.address) - msg.value
                call highestBidderAddress with:
                   value eth.balance(this.address) - msg.value - totalPayments wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require payments[stor25] + eth.balance(this.address) - msg.value - totalPayments >= payments[stor25]
                    payments[stor25] = payments[stor25] + eth.balance(this.address) - msg.value - totalPayments
                    require eth.balance(this.address) - msg.value >= totalPayments
                    totalPayments = eth.balance(this.address) - msg.value
            highestBidderAddress = msg.sender
            highestBid = msg.value * totalSupply / totalSupply - balanceOf[address(msg.sender)]
        emit HighestBidChanged(highestBidderAddress, highestBid);
}



}
