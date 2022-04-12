contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stor18;
mapping of uint256 stor19;
array of address stor20;
uint256 stor26;
uint256 stor27;

function _fallback() payable {
    mem[96 len -8020] = code.data[10939 len -8020]
    mem[64] = -7924
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    uint8(stor1.length) = 6
    Mask(248, 0, stor1.length.field_8) = 'TRT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[31 len 1] or Mask(248, 8, stor2)
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x43bc1612 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor4 = ext_call.return_data[12 len 20] or Mask(96, 160, stor4)
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x170b99d9 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor5 = ext_call.return_data[12 len 20] or Mask(96, 160, stor5)
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x48b8ff83 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor9 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x448b1f29 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor10 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x82ea97b3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor11 = ext_call.return_data[0]
    stor26 = mem[192]
    stor27 = block.timestamp
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].currentState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 5
    stor18 = 1
    s = 0
    s = 0
    idx = 0
    while idx < 7:
        require ext_code.size(mem[108 len 20])
        call mem[108 len 20].0x3cb5d100 with:
             gas gas_remaining - 710 wei
            args idx
        require ext_call.success
        mem[-7764] = 0
        mem[-7792] = address(ext_call.return_data[0])
        require ext_code.size(mem[108 len 20])
        call mem[108 len 20].0x42e94c90 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        mem[-7796] = ext_call.return_data[0]
        require ext_call.success
        if not stor19[address(msg.sender)]:
            stor20.length++
            if not stor20.length <= stor20.length + 1:
                s = stor20.length + sha3(20) + 1
                while sha3(20) + stor20.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor20[stor20.length] = address(ext_call.return_data[0])
        require ext_call.return_data[0] + stor19[address(ext_call.return_data[0])] >= stor19[address(ext_call.return_data[0])]
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 19
        stor19[address(ext_call.return_data[0])] += ext_call.return_data[0]
        require ext_call.return_data[0] + stor12 >= stor12
        stor12 += ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x7e1055b6 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].auctionDuration() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor7 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x4b449cba with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor8 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x91f90157 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor13 = address(ext_call.return_data[0])
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0xd57bde79 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor14 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0xa9de581b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor15 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x71827791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor16 = ext_call.return_data[0]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x9274c16b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor17 = ext_call.return_data[0]
    return code.data[2919 len 8020]
}



// =====================  Runtime code  =====================


#
#  - distributeTokens(uint256 arg1)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
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
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 payments;
uint256 totalPayments;
uint256 stor26;
uint256 stor27;
array of struct descriptionHashHistory;

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
    emit 0xef8b1ad6: highestBidderAddress, highestBid
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function canStartAuction() {
    if tokensForIco:
        require tokensForIco
        require 25 * tokensForIco / tokensForIco == 25
    if artistAddress == msg.sender:
        return True
    return balanceOf[address(msg.sender)] >= 25 * tokensForIco / 100
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

function startAuction() {
    require currentState <= 5
    require 2 == currentState
    if tokensForIco:
        require tokensForIco
        require 25 * tokensForIco / tokensForIco == 25
    if artistAddress != msg.sender:
        require balanceOf[address(msg.sender)] >= 25 * tokensForIco / 100
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
        require tokensForArtist + balanceOf[stor4] >= balanceOf[stor4]
        balanceOf[stor4] += tokensForArtist
        require tokensForTrivial + balanceOf[stor5] >= balanceOf[stor5]
        balanceOf[stor5] += tokensForTrivial
        require tokensDistributedToContributors <= tokensForIco
        require tokensForIco - tokensDistributedToContributors + balanceOf[stor4] >= balanceOf[stor4]
        balanceOf[stor4] = tokensForIco - tokensDistributedToContributors + balanceOf[stor4]
        call artistAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require eth.balance(this.address) + payments[stor4] >= payments[stor4]
            payments[stor4] += eth.balance(this.address)
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
                require eth.balance(this.address) - msg.value - totalPayments + payments[stor13] >= payments[stor13]
                payments[stor13] = eth.balance(this.address) - msg.value - totalPayments + payments[stor13]
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
                require eth.balance(this.address) - msg.value - totalPayments + payments[stor13] >= payments[stor13]
                payments[stor13] = eth.balance(this.address) - msg.value - totalPayments + payments[stor13]
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
                    require eth.balance(this.address) - msg.value - totalPayments + payments[stor13] >= payments[stor13]
                    payments[stor13] = eth.balance(this.address) - msg.value - totalPayments + payments[stor13]
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
                    require eth.balance(this.address) - msg.value - totalPayments + payments[stor13] >= payments[stor13]
                    payments[stor13] = eth.balance(this.address) - msg.value - totalPayments + payments[stor13]
                    require eth.balance(this.address) - msg.value >= totalPayments
                    totalPayments = eth.balance(this.address) - msg.value
            highestBidderAddress = msg.sender
            highestBid = 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6
            emit HighestBidChanged(msg.sender, 10^6 * msg.value / -balanceOf[address(msg.sender)] + 10^6);
}



}
