contract main {


// =======================  Init code  ======================


array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor22;

function _fallback() {
    mem[96 len -6848] = code.data[7406 len -6848]
    mem[64] = -6752
    require block.timestamp < mem[160]
    require mem[352] + mem[320] >= mem[320]
    require mem[352] + mem[320] + mem[288] >= mem[288]
    require 10^6 == mem[352] + mem[320] + mem[288]
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = 0
    stor10 = mem[160]
    stor11 = mem[192]
    stor8 = mem[236 len 20]
    stor9 = mem[268 len 20]
    stor13 = mem[288]
    stor14 = mem[320]
    stor15 = mem[352]
    stor22 = 0
    return code.data[558 len 6848]
}



// =====================  Runtime code  =====================


#
#  - distributeTokens(uint256 arg1)
#
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 payments;
uint256 totalPayments;
address artistAddress;
address trivialAddress;
uint256 icoEndTime;
uint256 auctionDuration;
uint256 auctionEndTime;
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
mapping of uint256 contributions;
array of address contributors;

function totalPayments() {
    return totalPayments
}

function name() {
    return name[0 len name.length]
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

function highestBid() {
    return highestBid
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

function _fallback() payable {
    revert
}

function isKeyHolder(address arg1) {
    return balanceOf[address(arg1)] >= tokensForIco / 25
}

function startIco() {
    require currentState <= 5
    require 0 == currentState
    require trivialAddress == msg.sender
    currentState = 1
    emit IcoStarted(icoEndTime);
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
    emit AuctionFinished(highestBidderAddress, highestBid);
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
           10
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

function startAuction() {
    require currentState <= 5
    require 2 == currentState
    if tokensForIco:
        require tokensForIco
        require 25 * tokensForIco / tokensForIco == 25
    require balanceOf[address(msg.sender)] >= 25 * tokensForIco / 100
    if 10^6 == balanceOf[address(msg.sender)]:
        highestBidderAddress = msg.sender
        currentState = 4
        emit AuctionFinished(highestBidderAddress, highestBid);
    else:
        require auctionDuration + block.timestamp >= block.timestamp
        auctionEndTime = auctionDuration + block.timestamp
        currentState = 3
        emit AuctionStarted(auctionEndTime);
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

function transfer(address arg1, uint256 arg2) {
    require currentState <= 5
    require 2 == currentState
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                  arg2,
                  64,
                  0,
                  msg.sender,
                  arg1,
    return 1
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
        require tokensForArtist + balanceOf[stor8] >= balanceOf[stor8]
        balanceOf[stor8] += tokensForArtist
        require tokensForTrivial + balanceOf[stor9] >= balanceOf[stor9]
        balanceOf[stor9] += tokensForTrivial
        require tokensDistributedToContributors <= tokensForIco
        require tokensForIco - tokensDistributedToContributors + balanceOf[stor8] >= balanceOf[stor8]
        balanceOf[stor8] = tokensForIco - tokensDistributedToContributors + balanceOf[stor8]
        call artistAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require eth.balance(this.address) + payments[stor8] >= payments[stor8]
            payments[stor8] += eth.balance(this.address)
            require eth.balance(this.address) + totalPayments >= totalPayments
            totalPayments += eth.balance(this.address)
        currentState = 2
        emit IcoFinished(amountRaised);
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require currentState <= 5
    require 2 == currentState
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        if arg3.length:
            mem[ceil32(arg3.length) + 260] = mem[128]
            mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
        require ext_call.success
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg3.length) + 192] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 224] = mem[128]
        mem[ceil32(arg3.length) + 256 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Transfer(arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 224 len arg3.length]), msg.sender, arg1);
    return 1
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
                require eth.balance(this.address) - msg.value - totalPayments + payments[stor17] >= payments[stor17]
                payments[stor17] = eth.balance(this.address) - msg.value - totalPayments + payments[stor17]
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
                require eth.balance(this.address) - msg.value - totalPayments + payments[stor17] >= payments[stor17]
                payments[stor17] = eth.balance(this.address) - msg.value - totalPayments + payments[stor17]
                require eth.balance(this.address) - msg.value >= totalPayments
                totalPayments = eth.balance(this.address) - msg.value
        highestBidderAddress = msg.sender
        highestBid = 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6
        emit HighestBidChanged(msg.sender, 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6);
}



}
