contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint8 stor5; offset 160
uint8 stor7;
address stor9;
uint256 stor12;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint8 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
array of uint256 stor37;
array of uint256 stor38;
uint8 stor39;

function _fallback() payable {
    stor5 = 0
    stor7 = 0
    stor12 = 1095
    stor20 = 0
    stor23 = 0
    stor26 = 0
    require not msg.value
    mem[96 len -14160] = code.data[15003 len -14160]
    mem[64] = -14064
    stor3 = msg.sender
    stor9 = msg.sender
    stor3 = msg.sender
    stor37[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor38[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = mem[160]
    stor39 = mem[223 len 1]
    stor1[stor3] = mem[160]
    stor27 = mem[256]
    require mem[256] > 1
    stor18 = 1
    stor19 = stor27 - mem[320] - mem[352]
    require stor27 - mem[320] - mem[352] >= 1
    stor21 = mem[288]
    stor22 = mem[320]
    stor25 = mem[352]
    stor24 = stor27 + -mem[352] + 1
    stor28 = mem[384]
    stor29 = mem[416]
    stor30 = mem[448]
    stor31 = 438288 * 24 * 3600
    stor32 = 0
    stor33 = 19
    stor34 = mem[480]
    stor36 = mem[512]
    stor35 = mem[544]
    if stor0 > 0:
        emit Minted(stor3, stor0);
    if not mem[224]:
        stor7 = 1
        require stor0
    return code.data[843 len 14160]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - buyMintingAddress(uint256 arg1, uint256 arg2)
#
uint256 totalSupply;
mapping of uint256 stor1;
mapping of uint256 allowance;
address owner;
address newOwner;
uint8 stor5; offset 160
address releaseAgentAddress;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint8 stor8;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
uint256 maxMintingDays;
mapping of uint256 idOf;
mapping of struct contributors;
mapping of uint256 teamIssuedTimestamp;
mapping of uint8 stor16;
mapping of uint256 sellingPriceInDayOf;
uint256 firstContributorId;
uint256 totalNormalContributorIds;
uint256 totalNormalContributorIdsAllocated;
uint256 firstTeamContributorId;
uint256 totalTeamContributorIds;
uint256 totalTeamContributorIdsAllocated;
uint256 firstPostIcoContributorId;
uint256 totalPostIcoContributorIds;
uint256 totalPostIcoContributorIdsAllocated;
uint256 maxAddresses;
uint256 minMintingPower;
uint256 maxMintingPower;
uint256 halvingCycle;
uint256 initialBlockTimestamp;
uint8 isInitialBlockTimestampSet;
uint256 mintingDec;
uint256 minBalanceToSell;
uint256 teamLockPeriodInSec;
uint256 dayInSecs;
array of struct name;
array of struct symbol;
uint8 decimals;

function totalNormalContributorIdsAllocated() {
    return totalNormalContributorIdsAllocated
}

function mintingFinished() {
    return bool(stor7)
}

function name() {
    return name[0 len name.length].field_0
}

function teamLockPeriodInSec() {
    return teamLockPeriodInSec
}

function firstTeamContributorId() {
    return firstTeamContributorId
}

function totalSupply() {
    return totalSupply
}

function totalPostIcoContributorIdsAllocated() {
    return totalPostIcoContributorIdsAllocated
}

function decimals() {
    return decimals
}

function contributors(uint256 arg1) {
    require contributors[arg1].field_1536 <= 2
    return contributors[arg1].field_0, 
           contributors[arg1].field_256,
           contributors[arg1].field_512,
           contributors[arg1].field_768,
           contributors[arg1].field_1024,
           contributors[arg1].field_1280,
           contributors[arg1].field_1536
}

function mintAgents(address arg1) {
    return bool(stor8[arg1])
}

function halvingCycle() {
    return halvingCycle
}

function DayInSecs() {
    return dayInSecs
}

function teamIssuedTimestamp(address arg1) {
    return teamIssuedTimestamp[arg1]
}

function initialBlockTimestamp() {
    return initialBlockTimestamp
}

function mintingDec() {
    return mintingDec
}

function maxMintingPower() {
    return maxMintingPower
}

function soldAddresses(address arg1) {
    return bool(stor16[arg1])
}

function minMintingPower() {
    return minMintingPower
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function upgradeMaster() {
    return upgradeMasterAddress
}

function totalTeamContributorIdsAllocated() {
    return totalTeamContributorIdsAllocated
}

function transferAgents(address arg1) {
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function sellingPriceInDayOf(address arg1) {
    return sellingPriceInDayOf[arg1]
}

function totalPostIcoContributorIds() {
    return totalPostIcoContributorIds
}

function maxAddresses() {
    return maxAddresses
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function released() {
    return bool(stor5)
}

function isInitialBlockTimestampSet() {
    return bool(isInitialBlockTimestampSet)
}

function firstPostIcoContributorId() {
    return firstPostIcoContributorId
}

function maxMintingDays() {
    return maxMintingDays
}

function totalNormalContributorIds() {
    return totalNormalContributorIds
}

function totalTeamContributorIds() {
    return totalTeamContributorIds
}

function getTotalSupply() {
    return totalSupply
}

function totalUpgraded() {
    return totalUpgraded
}

function firstContributorId() {
    return firstContributorId
}

function releaseAgent() {
    return releaseAgentAddress
}

function minBalanceToSell() {
    return minBalanceToSell
}

function newOwner() {
    return newOwner
}

function idOf(address arg1) {
    return idOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function canUpgrade() {
    if not stor5:
        return bool(stor5)
    return 1
}

function isDayTokenActivated() {
    return block.timestamp >= initialBlockTimestamp
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function getPhaseCount(uint256 arg1) {
    require halvingCycle
    return ((arg1 / halvingCycle) + 1)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not stor5
    releaseAgentAddress = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setMintingDec(uint256 arg1) {
    require owner == msg.sender
    require not isInitialBlockTimestampSet
    mintingDec = arg1
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor5
    stor6[address(arg1)] = uint8(arg2)
}

function getUpgradeState() {
    if not stor5:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg1)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function getDayCount() {
    if block.timestamp < initialBlockTimestamp:
        return 0
    require dayInSecs
    return (block.timestamp - initialBlockTimestamp / dayInSecs)
}

function releaseTokenTransfer() {
    require owner == msg.sender
    require isInitialBlockTimestampSet
    stor7 = 1
    require releaseAgentAddress == msg.sender
    stor5 = 1
}

function setMintAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor7
    stor8[address(arg1)] = uint8(arg2)
    emit MintingAgentChanged(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isTeamLockInPeriodOverIfTeamAddress(address arg1) {
    if not teamIssuedTimestamp[address(arg1)]:
        return 1
    if block.timestamp - teamIssuedTimestamp[address(arg1)] >= teamLockPeriodInSec:
        return 1
    else:
        return 0
}

function isValidContributorId(uint256 arg1) {
    if arg1 <= 0:
        return (arg1 > 0)
    if arg1 > maxAddresses:
        return arg1 <= maxAddresses
    if not contributors[arg1].field_0:
        return bool(contributors[arg1].field_0)
    return (arg1 == idOf[stor14[arg1].field_0])
}

function mint(address arg1, uint256 arg2) {
    require stor8[address(msg.sender)]
    require not stor7
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + stor1[address(arg1)] >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function releaseToken(uint256 arg1) {
    require owner == msg.sender
    require not stor5
    require owner == msg.sender
    require not isInitialBlockTimestampSet
    isInitialBlockTimestampSet = 1
    initialBlockTimestamp = arg1
    require owner == msg.sender
    require isInitialBlockTimestampSet
    stor7 = 1
    require releaseAgentAddress == msg.sender
    stor5 = 1
}

function balanceById(uint256 arg1) {
    if block.timestamp >= initialBlockTimestamp:
        if arg1 > 0:
            if arg1 <= maxAddresses:
                if contributors[arg1].field_0:
                    if arg1 == idOf[stor14[arg1].field_0]:
                        if block.timestamp >= initialBlockTimestamp:
                            require dayInSecs
    return stor1[stor14[arg1].field_0]
}

function isValidContributorAddress(address arg1) {
    if idOf[address(arg1)] <= 0:
        return (idOf[address(arg1)] > 0)
    if idOf[address(arg1)] > maxAddresses:
        return idOf[address(arg1)] <= maxAddresses
    if not contributors[stor13[address(arg1)]].field_0:
        return bool(contributors[stor13[address(arg1)]].field_0)
    return (idOf[address(arg1)] == idOf[stor14[idOf[address(arg1)]].field_0])
}

function cancelSaleOfMintingAddress() {
    require idOf[address(msg.sender)] > 0
    require idOf[address(msg.sender)] <= maxAddresses
    require contributors[stor13[address(msg.sender)]].field_0
    require idOf[address(msg.sender)] == idOf[stor14[idOf[address(msg.sender)]].field_0]
    require contributors[stor13[address(msg.sender)]].field_1536 <= 2
    require contributors[stor13[address(msg.sender)]].field_1536 == 2
    contributors[stor13[address(msg.sender)]].field_1536 = 1
}

function getMintingPowerById(uint256 arg1) {
    if block.timestamp < initialBlockTimestamp:
        if halvingCycle:
            if 2^(0 / halvingCycle):
                return (contributors[arg1].field_768 / 2^(0 / halvingCycle))
    else:
        if dayInSecs:
            if halvingCycle:
                if 2^(block.timestamp - initialBlockTimestamp / dayInSecs / halvingCycle):
                    return (contributors[arg1].field_768 / 2^(block.timestamp - initialBlockTimestamp / dayInSecs / halvingCycle))
    revert
}

function balanceOf(address arg1) {
    if not idOf[address(arg1)]:
        return stor1[address(arg1)]
    if block.timestamp >= initialBlockTimestamp:
        if idOf[address(arg1)] > 0:
            if idOf[address(arg1)] <= maxAddresses:
                if contributors[stor13[address(arg1)]].field_0:
                    if idOf[address(arg1)] == idOf[stor14[idOf[address(arg1)]].field_0]:
                        if block.timestamp >= initialBlockTimestamp:
                            require dayInSecs
    return stor1[stor14[stor13[address(arg1)]].field_0]
}

function getMintingPowerByAddress(address arg1) {
    if block.timestamp < initialBlockTimestamp:
        if halvingCycle:
            if 2^(0 / halvingCycle):
                return (contributors[stor13[address(arg1)]].field_768 / 2^(0 / halvingCycle))
    else:
        if dayInSecs:
            if halvingCycle:
                if 2^(block.timestamp - initialBlockTimestamp / dayInSecs / halvingCycle):
                    return (contributors[stor13[address(arg1)]].field_768 / 2^(block.timestamp - initialBlockTimestamp / dayInSecs / halvingCycle))
    revert
}

function getSellingStatus(uint256 arg1) {
    require arg1 > 0
    require arg1 <= maxAddresses
    require contributors[arg1].field_0
    require arg1 == idOf[stor14[arg1].field_0]
    if block.number <= contributors[arg1].field_1024:
        if contributors[arg1].field_1536 <= 2:
            return contributors[arg1].field_1536
    else:
        if contributors[arg1].field_1536 <= 2:
            if contributors[arg1].field_1536 == 2:
                return 1
            if contributors[arg1].field_1536 <= 2:
                return contributors[arg1].field_1536
    revert
}

function upgrade(uint256 arg1) {
    require stor5
    require upgradeAgentAddress
    require arg1
    require arg1 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require stor5
    require arg1
    require upgradeMasterAddress == msg.sender
    if stor5:
        if upgradeAgentAddress:
            require not totalUpgraded
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == totalSupply
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function fetchSuccessfulSaleProceed() {
    require 1 == bool(stor16[address(msg.sender)])
    stor16[address(msg.sender)] = 0
    require sellingPriceInDayOf[address(msg.sender)] + minBalanceToSell >= minBalanceToSell
    require sellingPriceInDayOf[address(msg.sender)] + minBalanceToSell <= stor1[address(this.address)]
    stor1[address(this.address)] = stor1[address(this.address)] - sellingPriceInDayOf[address(msg.sender)] - minBalanceToSell
    require sellingPriceInDayOf[address(msg.sender)] + minBalanceToSell + stor1[msg.sender] >= stor1[msg.sender]
    stor1[address(msg.sender)] = sellingPriceInDayOf[address(msg.sender)] + minBalanceToSell + stor1[msg.sender]
    emit Transfer((sellingPriceInDayOf[address(msg.sender)] + minBalanceToSell), this.address, msg.sender);
    return 1
}

function getOnSaleIds() {
    idx = 1
    s = 0
    while idx <= maxAddresses:
        if idx <= 0:
            idx = idx + 1
            s = s
            continue 
        if idx > maxAddresses:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 14
        if not contributors[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[0] = contributors[idx].field_0
        mem[32] = 13
        if idx != idOf[stor14[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 14
        if block.number > contributors[idx].field_1024:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 14
        require contributors[idx].field_1536 <= 2
        if contributors[idx].field_1536 != 2:
            idx = idx + 1
            s = s
            continue 
        require s < maxAddresses
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * maxAddresses) + 256 len floor32(maxAddresses)] = mem[192 len floor32(maxAddresses)]
    return Array(len=maxAddresses, data=mem[192 len floor32(maxAddresses)], mem[(32 * maxAddresses) + floor32(maxAddresses) + 256 len (32 * maxAddresses) - floor32(maxAddresses)]), 
}

function updateTimeMintBalance(uint256 arg1) {
    require block.timestamp >= initialBlockTimestamp
    if arg1 <= 0:
        return 0
    if arg1 > maxAddresses:
        return 0
    if not contributors[arg1].field_0:
        return 0
    if arg1 != idOf[stor14[arg1].field_0]:
        return 0
    if block.timestamp < initialBlockTimestamp:
        if 0 == contributors[arg1].field_512:
            return 0
        if contributors[arg1].field_512 >= maxMintingDays:
            return 0
        require stor1[stor14[arg1].field_0] <= totalSupply
        totalSupply -= stor1[stor14[arg1].field_0]
        require stor1[stor14[arg1].field_0] + totalSupply >= totalSupply
        totalSupply += stor1[stor14[arg1].field_0]
        contributors[arg1].field_512 = 0
    else:
        require dayInSecs
        if block.timestamp - initialBlockTimestamp / dayInSecs == contributors[arg1].field_512:
            return 0
        if contributors[arg1].field_512 >= maxMintingDays:
            return 0
        require stor1[stor14[arg1].field_0] <= totalSupply
        totalSupply -= stor1[stor14[arg1].field_0]
        require stor1[stor14[arg1].field_0] + totalSupply >= totalSupply
        totalSupply += stor1[stor14[arg1].field_0]
        contributors[arg1].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
    emit Transfer(0, 0, contributors[arg1].field_0);
    return 1
}

function setTokenInformation(string arg1, string arg2) {
    require owner == msg.sender
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint256(name.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + 256 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256] = symbol.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + 288 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit UpdatedTokenInformation(Array(len=name.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 96);
}

function postAllocateAuctionTimeMints(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require arg3 >= firstPostIcoContributorId
    require arg3 < firstPostIcoContributorId + totalPostIcoContributorIds
    require totalPostIcoContributorIdsAllocated < totalPostIcoContributorIds
    require 1 == bool(stor5)
    require owner == msg.sender
    require arg3 <= maxAddresses
    if idOf[address(arg1)] > 0:
        if idOf[address(arg1)] <= maxAddresses:
            if contributors[stor13[address(arg1)]].field_0:
                require idOf[address(arg1)] != idOf[stor14[idOf[address(arg1)]].field_0]
    if arg3 <= 0:
        contributors[arg3].field_0 = arg1
        idOf[address(arg1)] = arg3
        revert
    if arg3 <= maxAddresses:
        if contributors[arg3].field_0:
            require arg3 != idOf[stor14[arg3].field_0]
    contributors[arg3].field_0 = arg1
    idOf[address(arg1)] = arg3
    require arg3 > 0
    require arg3 <= maxAddresses
    require contributors[arg3].field_0
    require arg3 == idOf[stor14[arg3].field_0]
    require maxAddresses - 1
    contributors[arg3].field_768 = maxMintingPower - (-maxMintingPower + minMintingPower + (maxMintingPower * arg3) - (minMintingPower * arg3) / maxAddresses - 1)
    contributors[arg3].field_256 = 0
    if block.timestamp < initialBlockTimestamp:
        contributors[arg3].field_512 = 0
    else:
        require dayInSecs
        contributors[arg3].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
    emit ContributorAdded(address(arg1), arg3);
    contributors[arg3].field_1536 = 0
    totalPostIcoContributorIdsAllocated++
    emit PostInvested(address(arg1), 0, 0, arg2, arg3);
}

function updateMyTimeMintBalance() {
    require block.timestamp >= initialBlockTimestamp
    if idOf[address(msg.sender)] <= 0:
        return 0
    if idOf[address(msg.sender)] > maxAddresses:
        return 0
    if not contributors[stor13[address(msg.sender)]].field_0:
        return 0
    if idOf[address(msg.sender)] != idOf[stor14[idOf[address(msg.sender)]].field_0]:
        return 0
    if block.timestamp < initialBlockTimestamp:
        if 0 == contributors[stor13[address(msg.sender)]].field_512:
            return 0
        if contributors[stor13[address(msg.sender)]].field_512 >= maxMintingDays:
            return 0
        require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
        totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
        require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
        totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
        contributors[stor13[address(msg.sender)]].field_512 = 0
    else:
        require dayInSecs
        if block.timestamp - initialBlockTimestamp / dayInSecs == contributors[stor13[address(msg.sender)]].field_512:
            return 0
        if contributors[stor13[address(msg.sender)]].field_512 >= maxMintingDays:
            return 0
        require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
        totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
        require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
        totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
        contributors[stor13[address(msg.sender)]].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
    emit Transfer(0, 0, contributors[stor13[address(msg.sender)]].field_0);
    return 1
}

function allocateNormalTimeMints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require arg3 >= firstContributorId
    require arg3 <= totalNormalContributorIds
    require totalNormalContributorIdsAllocated < totalNormalContributorIds
    require owner == msg.sender
    require arg3 <= maxAddresses
    if idOf[address(arg1)] > 0:
        if idOf[address(arg1)] <= maxAddresses:
            if contributors[stor13[address(arg1)]].field_0:
                require idOf[address(arg1)] != idOf[stor14[idOf[address(arg1)]].field_0]
    if arg3 <= 0:
        contributors[arg3].field_0 = arg1
        idOf[address(arg1)] = arg3
        revert
    if arg3 <= maxAddresses:
        if contributors[arg3].field_0:
            require arg3 != idOf[stor14[arg3].field_0]
    contributors[arg3].field_0 = arg1
    idOf[address(arg1)] = arg3
    require arg3 > 0
    require arg3 <= maxAddresses
    require contributors[arg3].field_0
    require arg3 == idOf[stor14[arg3].field_0]
    require maxAddresses - 1
    contributors[arg3].field_768 = maxMintingPower - (-maxMintingPower + minMintingPower + (maxMintingPower * arg3) - (minMintingPower * arg3) / maxAddresses - 1)
    contributors[arg3].field_256 = arg4
    if block.timestamp < initialBlockTimestamp:
        contributors[arg3].field_512 = 0
    else:
        require dayInSecs
        contributors[arg3].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
    emit ContributorAdded(address(arg1), arg3);
    contributors[arg3].field_1536 = 0
    totalNormalContributorIdsAllocated++
    require stor8[address(msg.sender)]
    require not stor7
    require arg4 + totalSupply >= totalSupply
    totalSupply += arg4
    require arg4 + stor1[address(arg1)] >= stor1[address(arg1)]
    stor1[address(arg1)] += arg4
    emit Transfer(arg4, 0, arg1);
    emit Invested(address(arg1), arg5, arg4, arg2, arg3);
}

function addTeamTimeMints(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    require owner == msg.sender
    require arg2 >= firstTeamContributorId
    require arg2 < firstTeamContributorId + totalTeamContributorIds
    require totalTeamContributorIdsAllocated < totalTeamContributorIds
    require owner == msg.sender
    require arg2 <= maxAddresses
    if idOf[address(arg1)] > 0:
        if idOf[address(arg1)] <= maxAddresses:
            if contributors[stor13[address(arg1)]].field_0:
                require idOf[address(arg1)] != idOf[stor14[idOf[address(arg1)]].field_0]
    if arg2 <= 0:
        contributors[arg2].field_0 = arg1
        idOf[address(arg1)] = arg2
        revert
    if arg2 <= maxAddresses:
        if contributors[arg2].field_0:
            require arg2 != idOf[stor14[arg2].field_0]
    contributors[arg2].field_0 = arg1
    idOf[address(arg1)] = arg2
    require arg2 > 0
    require arg2 <= maxAddresses
    require contributors[arg2].field_0
    require arg2 == idOf[stor14[arg2].field_0]
    require maxAddresses - 1
    contributors[arg2].field_768 = maxMintingPower - (-maxMintingPower + minMintingPower + (maxMintingPower * arg2) - (minMintingPower * arg2) / maxAddresses - 1)
    contributors[arg2].field_256 = 0
    if block.timestamp < initialBlockTimestamp:
        contributors[arg2].field_512 = 0
    else:
        require dayInSecs
        contributors[arg2].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
    emit ContributorAdded(address(arg1), arg2);
    contributors[arg2].field_1536 = 0
    totalTeamContributorIdsAllocated++
    if not arg4:
        teamIssuedTimestamp[address(arg1)] = block.timestamp
    require stor8[address(msg.sender)]
    require not stor7
    require arg3 + totalSupply >= totalSupply
    totalSupply += arg3
    require arg3 + stor1[address(arg1)] >= stor1[address(arg1)]
    stor1[address(arg1)] += arg3
    emit Transfer(arg3, 0, arg1);
    emit TeamAddressAdded(address(arg1), arg2);
}

function refundFailedAuctionAmount() {
    require idOf[address(msg.sender)] > 0
    require idOf[address(msg.sender)] <= maxAddresses
    require contributors[stor13[address(msg.sender)]].field_0
    require idOf[address(msg.sender)] == idOf[stor14[idOf[address(msg.sender)]].field_0]
    require contributors[stor13[address(msg.sender)]].field_1536 <= 2
    if block.number > contributors[stor13[address(msg.sender)]].field_1024:
        if contributors[stor13[address(msg.sender)]].field_1536 == 2:
            contributors[stor13[address(msg.sender)]].field_1536 = 1
    require contributors[stor13[address(msg.sender)]].field_1536 == 1
    contributors[stor13[address(msg.sender)]].field_1536 = 0
    require minBalanceToSell <= stor1[address(this.address)]
    stor1[address(this.address)] -= minBalanceToSell
    if idOf[address(msg.sender)] > 0:
        if idOf[address(msg.sender)] <= maxAddresses:
            if contributors[stor13[address(msg.sender)]].field_0:
                if idOf[address(msg.sender)] == idOf[stor14[idOf[address(msg.sender)]].field_0]:
                    if block.timestamp < initialBlockTimestamp:
                        if contributors[stor13[address(msg.sender)]].field_512 != 0:
                            if contributors[stor13[address(msg.sender)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
                                contributors[stor13[address(msg.sender)]].field_512 = 0
                                emit Transfer(0, 0, contributors[stor13[address(msg.sender)]].field_0);
                    else:
                        require dayInSecs
                        if block.timestamp - initialBlockTimestamp / dayInSecs != contributors[stor13[address(msg.sender)]].field_512:
                            if contributors[stor13[address(msg.sender)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
                                contributors[stor13[address(msg.sender)]].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
                                emit Transfer(0, 0, contributors[stor13[address(msg.sender)]].field_0);
    require minBalanceToSell + stor1[address(msg.sender)] >= stor1[address(msg.sender)]
    stor1[address(msg.sender)] += minBalanceToSell
    contributors[stor13[address(msg.sender)]].field_1280 = 0
    contributors[stor13[address(msg.sender)]].field_1024 = 0
    emit Transfer(minBalanceToSell, this.address, msg.sender);
    return 1
}

function sellMintingAddress(uint256 arg1, uint256 arg2) {
    require block.timestamp >= initialBlockTimestamp
    require arg2 > block.number
    if teamIssuedTimestamp[address(msg.sender)]:
        require block.timestamp - teamIssuedTimestamp[address(msg.sender)] >= teamLockPeriodInSec
    require contributors[stor13[address(msg.sender)]].field_1536 <= 2
    require not contributors[stor13[address(msg.sender)]].field_1536
    if idOf[address(msg.sender)] > 0:
        if idOf[address(msg.sender)] <= maxAddresses:
            if contributors[stor13[address(msg.sender)]].field_0:
                if idOf[address(msg.sender)] == idOf[stor14[idOf[address(msg.sender)]].field_0]:
                    if block.timestamp < initialBlockTimestamp:
                        if contributors[stor13[address(msg.sender)]].field_512 != 0:
                            if contributors[stor13[address(msg.sender)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
                                contributors[stor13[address(msg.sender)]].field_512 = 0
                                emit Transfer(0, 0, contributors[stor13[address(msg.sender)]].field_0);
                    else:
                        require dayInSecs
                        if block.timestamp - initialBlockTimestamp / dayInSecs != contributors[stor13[address(msg.sender)]].field_512:
                            if contributors[stor13[address(msg.sender)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
                                contributors[stor13[address(msg.sender)]].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
                                emit Transfer(0, 0, contributors[stor13[address(msg.sender)]].field_0);
    require stor1[address(msg.sender)] >= minBalanceToSell
    contributors[stor13[address(msg.sender)]].field_1280 = arg1
    contributors[stor13[address(msg.sender)]].field_1024 = arg2
    contributors[stor13[address(msg.sender)]].field_1536 = 2
    require minBalanceToSell <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= minBalanceToSell
    require minBalanceToSell + stor1[this.address] >= stor1[this.address]
    stor1[address(this.address)] = minBalanceToSell + stor1[this.address]
    emit Transfer(minBalanceToSell, msg.sender, this.address);
    emit TimeMintOnSale(idOf[address(msg.sender)], msg.sender, contributors[stor13[address(msg.sender)]].field_1280, contributors[stor13[address(msg.sender)]].field_1024);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= initialBlockTimestamp
    if teamIssuedTimestamp[address(msg.sender)]:
        require block.timestamp - teamIssuedTimestamp[address(msg.sender)] >= teamLockPeriodInSec
    if idOf[address(msg.sender)] > 0:
        if idOf[address(msg.sender)] <= maxAddresses:
            if contributors[stor13[address(msg.sender)]].field_0:
                if idOf[address(msg.sender)] == idOf[stor14[idOf[address(msg.sender)]].field_0]:
                    if block.timestamp < initialBlockTimestamp:
                        if contributors[stor13[address(msg.sender)]].field_512 != 0:
                            if contributors[stor13[address(msg.sender)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
                                contributors[stor13[address(msg.sender)]].field_512 = 0
                                emit Transfer(0, 0, contributors[stor13[address(msg.sender)]].field_0);
                    else:
                        require dayInSecs
                        if block.timestamp - initialBlockTimestamp / dayInSecs != contributors[stor13[address(msg.sender)]].field_512:
                            if contributors[stor13[address(msg.sender)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(msg.sender)]].field_0]
                                require stor1[stor14[stor13[address(msg.sender)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(msg.sender)]].field_0]
                                contributors[stor13[address(msg.sender)]].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
                                emit Transfer(0, 0, contributors[stor13[address(msg.sender)]].field_0);
    if not idOf[address(msg.sender)]:
        require stor1[address(msg.sender)] >= arg2
    else:
        if block.timestamp >= initialBlockTimestamp:
            if idOf[address(msg.sender)] > 0:
                if idOf[address(msg.sender)] <= maxAddresses:
                    if contributors[stor13[address(msg.sender)]].field_0:
                        if idOf[address(msg.sender)] == idOf[stor14[idOf[address(msg.sender)]].field_0]:
                            if block.timestamp >= initialBlockTimestamp:
                                require dayInSecs
        require stor1[stor14[stor13[address(msg.sender)]].field_0] >= arg2
    require arg2
    if idOf[address(arg1)] > 0:
        if idOf[address(arg1)] <= maxAddresses:
            if contributors[stor13[address(arg1)]].field_0:
                if idOf[address(arg1)] == idOf[stor14[idOf[address(arg1)]].field_0]:
                    if block.timestamp < initialBlockTimestamp:
                        if contributors[stor13[address(arg1)]].field_512 != 0:
                            if contributors[stor13[address(arg1)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(arg1)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(arg1)]].field_0]
                                require stor1[stor14[stor13[address(arg1)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(arg1)]].field_0]
                                contributors[stor13[address(arg1)]].field_512 = 0
                                emit Transfer(0, 0, contributors[stor13[address(arg1)]].field_0);
                    else:
                        require dayInSecs
                        if block.timestamp - initialBlockTimestamp / dayInSecs != contributors[stor13[address(arg1)]].field_512:
                            if contributors[stor13[address(arg1)]].field_512 < maxMintingDays:
                                require stor1[stor14[stor13[address(arg1)]].field_0] <= totalSupply
                                totalSupply -= stor1[stor14[stor13[address(arg1)]].field_0]
                                require stor1[stor14[stor13[address(arg1)]].field_0] + totalSupply >= totalSupply
                                totalSupply += stor1[stor14[stor13[address(arg1)]].field_0]
                                contributors[stor13[address(arg1)]].field_512 = block.timestamp - initialBlockTimestamp / dayInSecs
                                emit Transfer(0, 0, contributors[stor13[address(arg1)]].field_0);
    require arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require arg2 + stor1[arg1] >= stor1[arg1]
    stor1[address(arg1)] = arg2 + stor1[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
