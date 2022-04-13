contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor7;
uint256 stor9;
uint256 stor16;
uint256 stor18;
uint256 stor25;
uint256 stor26;
uint256 stor27;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'Steak Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'BOV' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    require not msg.value
    stor0 = msg.sender
    stor7 = 10000000 * 10^18
    stor9 = block.number + 203520
    stor27 = block.number + 1857120
    stor18 = block.timestamp
    stor25 = 500
    stor26 = 8
    stor16 = 357 * 10^14
    return code.data[545 len 14473]
}



// =====================  Runtime code  =====================


const currentBlock = block.number


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 initialSale;
uint8 saleStarted;
uint8 saleEnded; offset 8
uint256 stor8; offset 8
uint256 absoluteEndBlock;
uint256 weiRaised;
array of struct investors;
uint256 numberOfInvestors;
mapping of uint256 investments;
mapping of uint8 stor14;
uint8 stor15;
uint256 initialPrizeWeiValue;
uint256 initialPrizeBov;
uint256 dailyHashExpires;
uint256 dailyHash;
array of struct submissions;
uint256 numSubmissions;
array of struct approvedSubmissions;
mapping of uint256 memberId;
array of struct members;
uint256 halvingInterval;
uint256 numberOfHalvings;
uint256 lastMiningBlock;
uint8 ownerCredited;

function name() {
    return name[0 len name.length]
}

function initialPrizeWeiValue() {
    return initialPrizeWeiValue
}

function totalSupply() {
    return totalSupply
}

function numberOfInvestors() {
    return numberOfInvestors
}

function absoluteEndBlock() {
    return absoluteEndBlock
}

function numberOfHalvings() {
    return numberOfHalvings
}

function decimals() {
    return decimals
}

function approvedSubmissions(uint256 arg1) {
    require arg1 < approvedSubmissions.length
    return approvedSubmissions[arg1].field_0, 
           approvedSubmissions[arg1].field_256,
           bool(approvedSubmissions[arg1].field_512),
           bool(approvedSubmissions[arg1].field_520),
           approvedSubmissions[arg1].field_528,
           approvedSubmissions[arg1].field_768,
           approvedSubmissions[arg1].field_1024,
           approvedSubmissions[arg1].field_1280
}

function memberId(address arg1) {
    return memberId[arg1]
}

function getSubmission(uint256 arg1) {
    require arg1 < submissions.length
    return submissions[arg1].field_0, 
           submissions[arg1].field_256,
           bool(submissions[arg1].field_512),
           bool(submissions[arg1].field_520),
           submissions[arg1].field_528,
           submissions[arg1].field_768,
           submissions[arg1].field_1024,
           submissions[arg1].field_1280
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return investors[arg1].field_0
}

function weiRaised() {
    return weiRaised
}

function lastMiningBlock() {
    return lastMiningBlock
}

function saleStarted() {
    return bool(saleStarted)
}

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1].field_0, members[arg1].field_256, members[arg1].field_512
}

function initialPrizeBov() {
    return initialPrizeBov
}

function halvingInterval() {
    return halvingInterval
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function numSubmissions() {
    return numSubmissions
}

function initialSale() {
    return initialSale
}

function owner() {
    return owner
}

function bovBatchDistributed() {
    return bool(stor15)
}

function dailyHash() {
    return dailyHash
}

function symbol() {
    return symbol[0 len symbol.length]
}

function investments(address arg1) {
    return investments[arg1]
}

function saleEnded() {
    return bool(saleEnded)
}

function submissions(uint256 arg1) {
    require arg1 < submissions.length
    return submissions[arg1].field_0, 
           submissions[arg1].field_256,
           bool(submissions[arg1].field_512),
           bool(submissions[arg1].field_520),
           submissions[arg1].field_528,
           submissions[arg1].field_768,
           submissions[arg1].field_1024,
           submissions[arg1].field_1280
}

function dailyHashExpires() {
    return dailyHashExpires
}

function numberOfApprovedSteaks() {
    return approvedSubmissions.length
}

function ownerCredited() {
    return bool(ownerCredited)
}

function claimed(address arg1) {
    return bool(stor14[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function crowdsaleHasEnded() {
    if not saleStarted:
        return bool(saleStarted)
    return bool(saleEnded)
}

function startCrowdsale() {
    require msg.sender == owner
    require not saleStarted
    require not saleEnded
    saleStarted = 1
}

function minutesToPost() {
    if dailyHashExpires <= block.timestamp:
        return 0
    return (dailyHashExpires - block.timestamp / 60)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getSteakPrize() {
    require initialPrizeBov > 0
    require halvingInterval
    if approvedSubmissions.length / halvingInterval <= numberOfHalvings:
        return (initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval))
    else:
        return 0
}

function getDailyHash() {
    if dailyHashExpires > block.timestamp:
        return dailyHash
    dailyHash = block.hash(block.number - 1)
    idx = dailyHashExpires + (24 * 3600)
    while idx < block.timestamp:
        idx = idx + (24 * 3600)
        continue 
    dailyHashExpires = idx
    return block.hash(block.number - 1)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function creditOwner() {
    require msg.sender == owner
    require not ownerCredited
    ownerCredited = 1
    require totalSupply + (initialSale / 10) >= totalSupply
    totalSupply += initialSale / 10
    require balanceOf[stor0] + (initialSale / 10) >= balanceOf[stor0]
    balanceOf[stor0] += initialSale / 10
    emit Mint((initialSale / 10), owner);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getCurrentShare(address arg1) {
    require not stor15
    require not stor14[address(arg1)]
    if not investments[address(arg1)]:
        if weiRaised:
            return (investments[address(arg1)] * initialSale / weiRaised)
    else:
        if investments[address(arg1)]:
            if investments[address(arg1)] * initialSale / investments[address(arg1)] == initialSale:
                if weiRaised:
                    return (investments[address(arg1)] * initialSale / weiRaised)
    revert
}

function endCrowdsale() {
    require msg.sender == owner
    require saleStarted
    require not saleEnded
    dailyHashExpires = block.timestamp
    stor8 = 1
    require saleStarted
    require saleEnded
    require not initialPrizeBov
    require weiRaised
    if initialSale / weiRaised:
        require initialSale / weiRaised
        require initialSale / weiRaised * initialPrizeWeiValue / initialSale / weiRaised == initialPrizeWeiValue
    initialPrizeBov = initialSale / weiRaised * initialPrizeWeiValue
}

function endCrowdsalePublic() {
    require block.number > absoluteEndBlock
    require saleStarted
    require not saleEnded
    dailyHashExpires = block.timestamp
    stor8 = 1
    require saleStarted
    require saleEnded
    require not initialPrizeBov
    require weiRaised
    if initialSale / weiRaised:
        require initialSale / weiRaised
        require initialSale / weiRaised * initialPrizeWeiValue / initialSale / weiRaised == initialPrizeWeiValue
    initialPrizeBov = initialSale / weiRaised * initialPrizeWeiValue
}

function addMember(address arg1, bytes32 arg2) {
    require msg.sender == owner
    if not memberId[address(arg1)]:
        memberId[address(arg1)] = members.length
        members.length++
        if not members.length <= members.length + 1:
            idx = (3 * members.length) + 3
            while 3 * members.length > idx:
                members[idx].field_0 = 0
                members[idx].field_256 = 0
                members[idx].field_512 = 0
                idx = idx + 3
                continue 
        require members.length < members.length
        members[members.length].field_0 = arg1
        members[members.length].field_256 = arg2
        members[members.length].field_512 = block.timestamp
    emit MembershipChanged(address(arg1), 1);
}

function claimTokens(address arg1) {
    require saleStarted
    require saleEnded
    require not stor14[address(arg1)]
    if investments[address(arg1)]:
        require investments[address(arg1)]
        require investments[address(arg1)] * initialSale / investments[address(arg1)] == initialSale
    require weiRaised
    stor14[address(arg1)] = 1
    require totalSupply + (investments[address(arg1)] * initialSale / weiRaised) >= totalSupply
    totalSupply += investments[address(arg1)] * initialSale / weiRaised
    require balanceOf[address(arg1)] + (investments[address(arg1)] * initialSale / weiRaised) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += investments[address(arg1)] * initialSale / weiRaised
    emit Mint((investments[address(arg1)] * initialSale / weiRaised), arg1);
}

function invest(address arg1) payable {
    require arg1
    require saleStarted
    require not saleEnded
    require msg.value > 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if investments[address(arg1)] > 0:
        investments[address(arg1)] += msg.value
    else:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                investors[idx].field_0 = 0
                idx = idx + 1
                continue 
        investors[investors.length].field_0 = arg1
        numberOfInvestors++
        investments[address(arg1)] = msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit TokenInvestment(msg.value, msg.sender, arg1);
}

function _fallback() payable {
    require msg.sender
    require saleStarted
    require not saleEnded
    require msg.value > 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if investments[address(msg.sender)] > 0:
        investments[address(msg.sender)] += msg.value
    else:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                investors[idx].field_0 = 0
                idx = idx + 1
                continue 
        investors[investors.length].field_0 = msg.sender
        numberOfInvestors++
        investments[address(msg.sender)] = msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit TokenInvestment(msg.value, msg.sender, msg.sender);
}

function getInvestors() {
    if not investors.length:
        mem[(32 * investors.length) + 160] = 32
        mem[(32 * investors.length) + 192] = investors.length
        mem[(32 * investors.length) + 224 len floor32(investors.length)] = mem[160 len floor32(investors.length)]
        return memory
          from (32 * investors.length) + 160
           len (96 * investors.length) + 64
    mem[160] = address(investors.field_0)
    idx = 160
    s = 0
    while (32 * investors.length) + 128 > idx:
        mem[idx + 32] = investors[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * investors.length) + 224 len floor32(investors.length)] = mem[160 len floor32(investors.length)]
    return Array(len=investors.length, data=mem[160 len floor32(investors.length)], mem[(32 * investors.length) + floor32(investors.length) + 224 len (32 * investors.length) - floor32(investors.length)]), 
}

function removeMember(address arg1) {
    require msg.sender == owner
    require memberId[address(arg1)]
    memberId[address(arg1)] = 0
    mem[0] = arg1
    idx = memberId[mem[0]]
    while idx < members.length - 1:
        require idx + 1 < members.length
        require idx < members.length
        mem[0] = 24
        members[idx].field_0 = members[idx].field_768
        members[idx].field_256 = members[idx].field_1024
        members[idx].field_512 = members[idx].field_1280
        idx = idx + 1
        continue 
    require members.length - 1 < members.length
    members[members.length].field_0 = 0
    members[members.length].field_0 = 0
    members[members.length].field_0 = 0
    members.length--
    if not members.length <= members.length - 1:
        idx = (3 * members.length) - 3
        while 3 * members.length > idx:
            members[idx].field_0 = 0
            members[idx].field_256 = 0
            members[idx].field_512 = 0
            idx = idx + 3
            continue 
}

function initMembers() {
    require msg.sender == owner
    if not memberId[0]:
        memberId[0] = members.length
        members.length++
        if not members.length <= members.length + 1:
            idx = (3 * members.length) + 3
            while 3 * members.length > idx:
                members[idx].field_0 = 0
                members[idx].field_256 = 0
                members[idx].field_512 = 0
                idx = idx + 3
                continue 
        require members.length < members.length
        members[members.length].field_0 = 0
        members[members.length].field_256 = 0
        members[members.length].field_256 = 0
        members[members.length].field_512 = block.timestamp
    emit MembershipChanged(0, 1);
    require msg.sender == owner
    if not memberId[address(msg.sender)]:
        memberId[address(msg.sender)] = members.length
        members.length++
        if not members.length <= members.length + 1:
            idx = (3 * members.length) + 3
            while 3 * members.length > idx:
                members[idx].field_0 = 0
                members[idx].field_256 = 0
                members[idx].field_512 = 0
                idx = idx + 3
                continue 
        require members.length < members.length
        members[members.length].field_0 = msg.sender
        members[members.length].field_256 = 'Madame BOV'
        members[members.length].field_512 = block.timestamp
    emit MembershipChanged(msg.sender, 1);
}

function submitSteak(address arg1, bytes32 arg2) {
    require saleStarted
    require saleEnded
    require block.number <= lastMiningBlock
    submissions.length++
    if not submissions.length <= submissions.length + 1:
        idx = (6 * submissions.length) + 6
        while 6 * submissions.length > idx:
            submissions[idx].field_0 = 0
            submissions[idx].field_256 = 0
            submissions[idx].field_512 = 0
            submissions[idx].field_520 = 0
            submissions[idx].field_528 = 0
            submissions[idx].field_768 = 0
            submissions[idx].field_1024 = 0
            submissions[idx].field_1280 = 0
            idx = idx + 6
            continue 
    require submissions.length < submissions.length
    submissions[submissions.length].field_0 = arg1
    submissions[submissions.length].field_256 = arg2
    submissions[submissions.length].field_512 = 0
    submissions[submissions.length].field_520 = 0
    if dailyHashExpires > block.timestamp:
        submissions[submissions.length].field_1024 = dailyHash
    else:
        dailyHash = block.hash(block.number - 1)
        idx = dailyHashExpires + (24 * 3600)
        while idx < block.timestamp:
            idx = idx + (24 * 3600)
            continue 
        dailyHashExpires = idx
        submissions[submissions.length].field_1024 = block.hash(block.number - 1)
    emit PicAdded(address(msg.sender), submissions.length, address(arg1), arg2);
    numSubmissions = submissions.length + 1
    return submissions.length
}

function distributeAllTokens() {
    require not stor15
    require saleStarted
    require saleEnded
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < numberOfInvestors:
        require idx < investors.length
        mem[0] = investors[idx].field_0
        mem[32] = 14
        if stor14[stor11[idx].field_0]:
            s = s
            t = t
            u = investors[idx].field_0
            idx = idx + 1
            continue 
        stor14[stor11[idx].field_0] = 1
        if investments[stor11[idx].field_0]:
            require investments[stor11[idx].field_0]
            require investments[stor11[idx].field_0] * initialSale / investments[stor11[idx].field_0] == initialSale
        require weiRaised
        require totalSupply + (investments[stor11[idx].field_0] * initialSale / weiRaised) >= totalSupply
        totalSupply += investments[stor11[idx].field_0] * initialSale / weiRaised
        require balanceOf[stor11[idx].field_0] + (investments[stor11[idx].field_0] * initialSale / weiRaised) >= balanceOf[stor11[idx].field_0]
        mem[0] = investors[idx].field_0
        mem[32] = 5
        balanceOf[stor11[idx].field_0] += investments[stor11[idx].field_0] * initialSale / weiRaised
        mem[96] = investments[stor11[idx].field_0] * initialSale / weiRaised
        emit Mint((investments[stor11[idx].field_0] * initialSale / weiRaised), investors[idx].field_0);
        s = investments[stor11[idx].field_0] * initialSale / weiRaised
        t = investments[stor11[idx].field_0]
        u = investors[idx].field_0
        idx = idx + 1
        continue 
    stor15 = 1
}

function judge(uint256 arg1, bool arg2, bytes32 arg3) {
    require memberId[address(msg.sender)]
    require arg1 < submissions.length
    require not submissions[arg1].field_512
    submissions[arg1].field_512 = 1
    submissions[arg1].field_528 = msg.sender
    submissions[arg1].field_520 = Mask(248, 0, arg2)
    submissions[arg1].field_768 = arg3
    if arg2:
        require initialPrizeBov > 0
        require halvingInterval
        if approvedSubmissions.length / halvingInterval > numberOfHalvings:
            submissions[arg1].field_1280 = 0
            require totalSupply >= totalSupply
            require balanceOf[stor20[arg1].field_0] >= balanceOf[stor20[arg1].field_0]
            emit Mint(0, submissions[arg1].field_0);
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Mint(0, msg.sender);
        else:
            submissions[arg1].field_1280 = initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval)
            require totalSupply + (initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval)) >= totalSupply
            totalSupply += initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval)
            require balanceOf[stor20[arg1].field_0] + (initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval)) >= balanceOf[stor20[arg1].field_0]
            balanceOf[stor20[arg1].field_0] += initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval)
            emit Mint((initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval)), submissions[arg1].field_0);
            require totalSupply + (initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval) / 3) >= totalSupply
            totalSupply += initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval) / 3
            require balanceOf[address(msg.sender)] + (initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval) / 3) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval) / 3
            emit Mint((initialPrizeBov / 2^(approvedSubmissions.length / halvingInterval) / 3), msg.sender);
        approvedSubmissions.length++
        if not approvedSubmissions.length <= approvedSubmissions.length + 1:
            idx = (6 * approvedSubmissions.length) + 6
            while 6 * approvedSubmissions.length > idx:
                approvedSubmissions[idx].field_0 = 0
                approvedSubmissions[idx].field_256 = 0
                approvedSubmissions[idx].field_512 = 0
                approvedSubmissions[idx].field_520 = 0
                approvedSubmissions[idx].field_528 = 0
                approvedSubmissions[idx].field_768 = 0
                approvedSubmissions[idx].field_1024 = 0
                approvedSubmissions[idx].field_1280 = 0
                idx = idx + 6
                continue 
        approvedSubmissions[approvedSubmissions.length].field_0 = submissions[arg1].field_0
        approvedSubmissions[approvedSubmissions.length].field_256 = submissions[arg1].field_256
        approvedSubmissions[approvedSubmissions.length].field_512 = uint8(bool(submissions[arg1].field_512))
        approvedSubmissions[approvedSubmissions.length].field_520 = Mask(248, 0, bool(submissions[arg1].field_520))
        approvedSubmissions[approvedSubmissions.length].field_528 = submissions[arg1].field_528
        approvedSubmissions[approvedSubmissions.length].field_768 = submissions[arg1].field_768
        approvedSubmissions[approvedSubmissions.length].field_1024 = submissions[arg1].field_1024
        approvedSubmissions[approvedSubmissions.length].field_1280 = submissions[arg1].field_1280
    emit Judged(arg1, arg2, msg.sender, arg3);
}



}
