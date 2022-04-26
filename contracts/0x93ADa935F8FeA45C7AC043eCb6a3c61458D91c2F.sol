contract main {


// =======================  Init code  ======================


bool stor1; offset 256
uint8 stor1;
uint8 stor1; offset 8
mapping of uint256 stor2;
address stor3;
address stor4;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint8 stor12;
uint8 stor15;
uint256 stor17;
address stor18;
bool stor25; offset 256
uint8 stor25;
address stor25;
address stor25; offset 8
uint256 stor27;
uint256 stor28;
uint8 stor33;
array of uint256 stor35;
uint8 stor36;
uint256 stor40;
bool stor41; offset 256
uint8 stor41;
uint8 stor41; offset 8
array of uint256 stor42;

function _fallback() payable {
    uint8(stor1.field_0) = 1
    uint8(stor1.field_8) = 1
    stor1.field_256 % 1 = 0
    stor4 = 0x1882464533072e9fcd8c6d3c5c5b588548b95296
    stor6 = 70000
    stor7 = 800
    stor9 = 4392 * 24 * 3600
    stor12 = 55
    stor15 = 20
    stor18 = 0x28c19ceb598fdb171048c624db8b91c56af29aa2
    uint8(stor25.field_0) = 4
    address(stor25.field_8) = 0
    stor25.field_256 % 1 = 0
    stor27 = 423570 * 3600
    stor28 = 424290 * 3600
    stor33 = 20
    stor36 = 0
    stor40 = 1
    uint8(stor41.field_0) = 10
    uint8(stor41.field_8) = 6
    stor41.field_256 % 1 = 0
    require not msg.value
    stor3 = msg.sender
    require uint8(stor41.field_8)
    stor42.length++
    if not stor42.length <= stor42.length + 1:
        idx = stor42.length + 1
        while stor42.length > idx:
            stor42[idx] = 0
            idx = idx + 1
            continue 
    stor42[stor42.length] = stor28
    idx = 1
    while uint8(idx) <= uint8(stor41.field_8):
        stor42.length++
        if not stor42.length <= stor42.length + 1:
            s = stor42.length + sha3(42) + 1
            while sha3(42) + stor42.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 42
        stor42[stor42.length] = (stor9 / uint8(stor41.field_8) * uint8(idx)) + stor28
        idx = idx + 1
        continue 
    stor10 = stor28 + stor9
    stor17 = block.timestamp
    stor35.length++
    if not stor35.length > stor35.length + 1:
        stor35[stor35.length] = 1
        stor35.length++
        stor35[stor35.length] = 10
        stor35.length++
        stor35[stor35.length] = 100
        stor35.length++
    else:
        idx = stor35.length + 1
        while stor35.length > idx:
            stor35[idx] = 0
            idx = idx + 1
            continue 
        stor35[stor35.length] = 1
        stor35.length++
        if not stor35.length > stor35.length + 1:
            stor35[stor35.length] = 10
            stor35.length++
            stor35[stor35.length] = 100
            stor35.length++
        else:
            idx = stor35.length + 1
            while stor35.length > idx:
                stor35[idx] = 0
                idx = idx + 1
                continue 
            stor35[stor35.length] = 10
            stor35.length++
            if not stor35.length > stor35.length + 1:
                stor35[stor35.length] = 100
                stor35.length++
            else:
                idx = stor35.length + 1
                while stor35.length > idx:
                    stor35[idx] = 0
                    idx = idx + 1
                    continue 
                stor35[stor35.length] = 100
                stor35.length++
                if not stor35.length <= stor35.length + 1:
                    idx = stor35.length + 1
                    while stor35.length > idx:
                        stor35[idx] = 0
                        idx = idx + 1
                        continue 
    stor35[stor35.length] = 1000
    stor2[address(stor25.field_0)] = 0
    return code.data[719 len 10622]
}



// =====================  Runtime code  =====================


const name = 'Cardosaur Stake'

const decimals = 0

const symbol = 'SAUR'


uint256 totalSupply;
uint8 stor1;
uint8 stor1; offset 8
uint16 stor1;
mapping of uint256 balanceOf;
address owner;
address fundariaAddress;
mapping of uint256 allowance;
uint256 poolCapUSD;
uint256 usdPerEther;
uint256 supplyCap;
uint256 businessPlannedPeriodDuration;
uint256 businessPlannedPeriodEndTimestamp;
uint256 teamCap;
uint8 teamShare;
uint256 distributedTeamStakes;
uint256 fundariaCap;
uint8 fundariaShare;
uint256 distributedFundariaStakes;
uint256 contractCreatedTimestamp;
address poolAddress;
mapping of uint8 stor19;
uint256 allowedAmountToTransferToPool;
uint256 allowedAmountTransferedToPoolTotal;
uint256 investmentGuidesRewardsWithdrawn;
uint256 distributedBountyStakes;
uint256 bountyCap;
uint8 bountyShare;
address stor25; offset 8
mapping of struct saleStat;
uint256 saleStartTimestamp;
uint256 saleEndTimestamp;
uint256 distributedSaleStakes;
uint256 totalInvested;
uint256 totalWithdrawn;
uint256 saleCap;
uint8 saleShare;
uint256 lastStakePriceUSCents;
array of uint256 targetPrice;
uint8 priceIsFrozen;
mapping of struct guidesStat;
uint256 bonusCap;
uint256 distributedBonusStakes;
uint256 bonusShare;
uint8 guideInvestmentAttractedShareToPay;
uint8 financePeriodsCount; offset 8
array of uint256 financePeriodsTimestamps;
uint256 transferedToPool;

function transferedToPool() {
    return transferedToPool
}

function saleCap() {
    return saleCap
}

function rejectedInvestmentWithdrawals(address arg1) {
    return bool(stor19[arg1])
}

function pool() {
    return poolAddress
}

function totalSupply() {
    return totalSupply
}

function saleShare() {
    return saleShare
}

function fundariaShare() {
    return fundariaShare
}

function saleStartTimestamp() {
    return saleStartTimestamp
}

function contractCreatedTimestamp() {
    return contractCreatedTimestamp
}

function distributedTeamStakes() {
    return distributedTeamStakes
}

function saleStat(address arg1) {
    return saleStat[arg1].field_0, 
           saleStat[arg1].field_256,
           saleStat[arg1].field_512,
           saleStat[arg1].field_768,
           saleStat[arg1].field_1024
}

function usdPerEther() {
    return usdPerEther
}

function totalWithdrawn() {
    return totalWithdrawn
}

function totalInvested() {
    return totalInvested
}

function allowedAmountToTransferToPool() {
    return allowedAmountToTransferToPool
}

function distributedBountyStakes() {
    return distributedBountyStakes
}

function allowedAmountTransferedToPoolTotal() {
    return allowedAmountTransferedToPoolTotal
}

function businessPlannedPeriodEndTimestamp() {
    return businessPlannedPeriodEndTimestamp
}

function distributedSaleStakes() {
    return distributedSaleStakes
}

function poolCapUSD() {
    return poolCapUSD
}

function teamCap() {
    return teamCap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function fundariaStakesFrozen() {
    return bool(uint8(stor1.field_8))
}

function targetPrice(uint256 arg1) {
    require arg1 < targetPrice.length
    return targetPrice[arg1].field_0
}

function bonusShare() {
    return bonusShare
}

function owner() {
    return owner
}

function supplyCap() {
    return supplyCap
}

function distributedBonusStakes() {
    return distributedBonusStakes
}

function priceIsFrozen() {
    return bool(priceIsFrozen)
}

function guidesStat(address arg1) {
    return bool(guidesStat[arg1].field_0), guidesStat[arg1].field_256, guidesStat[arg1].field_512, guidesStat[arg1].field_768
}

function investmentGuidesRewardsWithdrawn() {
    return investmentGuidesRewardsWithdrawn
}

function bountyShare() {
    return bountyShare
}

function guideInvestmentAttractedShareToPay() {
    return guideInvestmentAttractedShareToPay
}

function saleEndTimestamp() {
    return saleEndTimestamp
}

function distributedFundariaStakes() {
    return distributedFundariaStakes
}

function fundaria() {
    return fundariaAddress
}

function fundariaCap() {
    return fundariaCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function bonusCap() {
    return bonusCap
}

function lastStakePriceUSCents() {
    return lastStakePriceUSCents
}

function teamShare() {
    return teamShare
}

function financePeriodsTimestamps(uint256 arg1) {
    require arg1 < financePeriodsTimestamps.length
    return financePeriodsTimestamps[arg1]
}

function teamStakesFrozen() {
    return bool(uint8(stor1.field_0))
}

function financePeriodsCount() {
    return financePeriodsCount
}

function businessPlannedPeriodDuration() {
    return businessPlannedPeriodDuration
}

function bountyCap() {
    return bountyCap
}

function freezePrice() {
    require owner == msg.sender
    priceIsFrozen = 1
}

function unfreezePrice() {
    require owner == msg.sender
    priceIsFrozen = 0
}

function setNewOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setPoolAddress(address arg1) {
    require owner == msg.sender
    poolAddress = arg1
}

function setNewFundaria(address arg1) {
    require owner == msg.sender
    fundariaAddress = arg1
}

function setPoolCapUSD(uint256 arg1) {
    require owner == msg.sender
    emit PoolCapChanged(poolCapUSD, arg1);
    poolCapUSD = arg1
}

function weiForStake(uint256 arg1) {
    require 100 * usdPerEther
    return (10^18 * arg1 * lastStakePriceUSCents / 100 * usdPerEther)
}

function stakeForWei(uint256 arg1) {
    require lastStakePriceUSCents
    return (100 * arg1 * usdPerEther / 10^18 / lastStakePriceUSCents)
}

function registerGuide(address arg1) {
    require owner == msg.sender
    guidesStat[address(arg1)].field_0 = 1
    emit RegisterGuide(arg1);
}

function setUsdPerEther(uint256 arg1) {
    require owner == msg.sender
    emit UsdPerEtherChanged(usdPerEther, arg1);
    usdPerEther = arg1
}

function unFreeze() {
    require owner == msg.sender
    if block.timestamp > businessPlannedPeriodEndTimestamp:
        uint16(stor1.field_0) = 0
}

function setTargetPrice(uint8 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 < targetPrice.length
    emit TargetPriceChanged(arg1 << 248, targetPrice[arg1].field_0, arg2);
    targetPrice[arg1].field_0 = arg2
}

function approve(address arg1, uint256 arg2) {
    if owner == msg.sender:
        if uint8(stor1.field_0):
            require fundariaAddress == msg.sender
            require not uint8(stor1.field_8)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function distributeBounty(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + distributedBountyStakes <= bountyCap
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    distributedBountyStakes += arg2
    emit BountyDistributed(address(arg1), arg2);
    emit Transfer(arg2, stor25, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    if owner == msg.sender:
        if uint8(stor1.field_0):
            require fundariaAddress == msg.sender
            require not uint8(stor1.field_8)
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function remainingInvestment() {
    require usdPerEther
    if not poolCapUSD / usdPerEther:
        if totalInvested <= 10^18 * poolCapUSD / usdPerEther:
            return ((10^18 * poolCapUSD / usdPerEther) - totalInvested)
    else:
        if poolCapUSD / usdPerEther:
            if 10^18 * poolCapUSD / usdPerEther / poolCapUSD / usdPerEther == 10^18:
                if totalInvested <= 10^18 * poolCapUSD / usdPerEther:
                    return ((10^18 * poolCapUSD / usdPerEther) - totalInvested)
    revert
}

function transfer(address arg1, uint256 arg2) {
    if owner == msg.sender:
        if uint8(stor1.field_0):
            require fundariaAddress == msg.sender
            require not uint8(stor1.field_8)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getBonusStakesPermanently(address arg1) {
    require guidesStat[address(arg1)].field_0
    require not saleStat[address(msg.sender)].field_1024
    saleStat[address(msg.sender)].field_1024 = arg1
    if saleStat[address(msg.sender)].field_256 > 0:
        require saleShare
        require distributedBonusStakes + (saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100) <= bonusCap
        if stor19[address(msg.sender)]:
            guidesStat[stor26[address(msg.sender)].field_1024].field_512 += saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100
        else:
            guidesStat[stor26[address(msg.sender)].field_1024].field_256 += saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100
        saleStat[address(msg.sender)].field_768 += saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100
        saleStat[address(msg.sender)].field_512 += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
        balanceOf[address(msg.sender)] += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
        distributedBonusStakes += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
        totalSupply += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
        emit BonusDistributed(address(msg.sender), saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100, saleStat[address(msg.sender)].field_1024, saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100);
        emit Transfer((saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100), stor25, msg.sender);
}

function rejectInvestmentWithdrawal() {
    stor19[address(msg.sender)] = 1
    if saleStat[address(msg.sender)].field_1024:
        if saleStat[address(msg.sender)].field_768 < guidesStat[stor26[address(msg.sender)].field_1024].field_768:
            guidesStat[stor26[address(msg.sender)].field_1024].field_768 -= saleStat[address(msg.sender)].field_768
            if guidesStat[stor26[address(msg.sender)].field_1024].field_256 < saleStat[address(msg.sender)].field_768:
                guidesStat[stor26[address(msg.sender)].field_1024].field_256 = 0
            else:
                guidesStat[stor26[address(msg.sender)].field_1024].field_256 -= saleStat[address(msg.sender)].field_768
                guidesStat[stor26[address(msg.sender)].field_1024].field_512 += saleStat[address(msg.sender)].field_768
        else:
            guidesStat[stor26[address(msg.sender)].field_1024].field_768 = 0
            if guidesStat[stor26[address(msg.sender)].field_1024].field_256 < saleStat[address(msg.sender)].field_768 - guidesStat[stor26[address(msg.sender)].field_1024].field_768:
                guidesStat[stor26[address(msg.sender)].field_1024].field_256 = 0
            else:
                guidesStat[stor26[address(msg.sender)].field_1024].field_256 = guidesStat[stor26[address(msg.sender)].field_1024].field_256 - saleStat[address(msg.sender)].field_768 + guidesStat[stor26[address(msg.sender)].field_1024].field_768
                guidesStat[stor26[address(msg.sender)].field_1024].field_512 = saleStat[address(msg.sender)].field_768 - guidesStat[stor26[address(msg.sender)].field_1024].field_768 + guidesStat[stor26[address(msg.sender)].field_1024].field_512
    allowedAmountToTransferToPool += saleStat[address(msg.sender)].field_256
}

function withdrawInvestment() {
    require not stor19[address(msg.sender)]
    require saleStat[address(msg.sender)].field_0 > 0
    require balanceOf[address(msg.sender)] >= saleStat[address(msg.sender)].field_512 + saleStat[address(msg.sender)].field_0
    idx = 0
    while uint8(idx) < financePeriodsCount:
        require uint8(idx) < financePeriodsTimestamps.length
        mem[0] = 42
        if block.timestamp >= financePeriodsTimestamps[uint8(idx)]:
            idx = idx + 1
            continue 
        require uint8(financePeriodsCount + 1)
        require totalInvested
        require saleShare
        require teamShare * saleStat[address(msg.sender)].field_0 / saleShare <= balanceOf[stor3]
        balanceOf[stor3] -= teamShare * saleStat[address(msg.sender)].field_0 / saleShare
        require fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare <= balanceOf[stor4]
        balanceOf[stor4] -= fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare
        emit Burn((teamShare * saleStat[address(msg.sender)].field_0 / saleShare), owner);
        emit Burn((fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare), fundariaAddress);
        distributedTeamStakes -= teamShare * saleStat[address(msg.sender)].field_0 / saleShare
        distributedFundariaStakes -= fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare
        require saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512
        distributedSaleStakes -= saleStat[address(msg.sender)].field_0
        emit Burn((saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512), msg.sender);
        require (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested <= totalInvested
        totalInvested -= (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested
        require saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512 <= totalSupply
        require teamShare * saleStat[address(msg.sender)].field_0 / saleShare <= totalSupply - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512
        require fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare <= totalSupply - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512 - (teamShare * saleStat[address(msg.sender)].field_0 / saleShare)
        totalSupply = totalSupply - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512 - (teamShare * saleStat[address(msg.sender)].field_0 / saleShare) - (fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare)
        if saleStat[address(msg.sender)].field_1024:
            require uint8(financePeriodsCount + 1)
            guidesStat[stor26[address(msg.sender)].field_1024].field_256 = guidesStat[stor26[address(msg.sender)].field_1024].field_256 - saleStat[address(msg.sender)].field_768 + (uint8(idx + 1) * saleStat[address(msg.sender)].field_768 / uint8(financePeriodsCount + 1))
            distributedBonusStakes -= saleStat[address(msg.sender)].field_512
            saleStat[address(msg.sender)].field_512 = 0
            saleStat[address(msg.sender)].field_768 = 0
        saleStat[address(msg.sender)].field_0 = 0
        saleStat[address(msg.sender)].field_256 = 0
        totalWithdrawn += (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested
        call msg.sender with:
           value (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit InvestmentWithdrawn(address(msg.sender), (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested, saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512, uint8(financePeriodsCount - idx));
}

function transferToPool() {
    require owner == msg.sender
    idx = 0
    while uint8(idx) <= financePeriodsCount:
        require uint8(idx) < financePeriodsTimestamps.length
        mem[0] = 42
        if block.timestamp >= financePeriodsTimestamps[uint8(idx)]:
            if financePeriodsCount != uint8(idx):
                idx = idx + 1
                continue 
            require uint8(idx) < financePeriodsTimestamps.length
            mem[0] = 42
            if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                idx = idx + 1
                continue 
        require uint8(financePeriodsCount + 1)
        if (totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1) > transferedToPool - allowedAmountTransferedToPoolTotal:
            if allowedAmountToTransferToPool <= 0:
                if ((totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)) - transferedToPool > eth.balance(this.address):
                    transferedToPool += eth.balance(this.address)
                    call poolAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                else:
                    require uint8(idx) < financePeriodsTimestamps.length
                    if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                        transferedToPool = (totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)
                        call poolAddress with:
                           value ((totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)) - transferedToPool wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TransferedToPool(((totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)) - transferedToPool, uint8(idx + 1));
                    else:
                        transferedToPool += eth.balance(this.address)
                        call poolAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
            else:
                allowedAmountTransferedToPoolTotal += allowedAmountToTransferToPool
                allowedAmountToTransferToPool = 0
                if allowedAmountToTransferToPool > eth.balance(this.address):
                    transferedToPool += eth.balance(this.address)
                    call poolAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                else:
                    require uint8(idx) < financePeriodsTimestamps.length
                    if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                        transferedToPool += allowedAmountToTransferToPool
                        call poolAddress with:
                           value allowedAmountToTransferToPool wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TransferedToPool(allowedAmountToTransferToPool, uint8(idx + 1));
                    else:
                        transferedToPool += eth.balance(this.address)
                        call poolAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
        else:
            if allowedAmountToTransferToPool > 0:
                allowedAmountTransferedToPoolTotal += allowedAmountToTransferToPool
                allowedAmountToTransferToPool = 0
                if allowedAmountToTransferToPool > eth.balance(this.address):
                    transferedToPool += eth.balance(this.address)
                    call poolAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                else:
                    require uint8(idx) < financePeriodsTimestamps.length
                    if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                        transferedToPool += allowedAmountToTransferToPool
                        call poolAddress with:
                           value allowedAmountToTransferToPool wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TransferedToPool(allowedAmountToTransferToPool, uint8(idx + 1));
                    else:
                        transferedToPool += eth.balance(this.address)
                        call poolAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
        allowedAmountToTransferToPool = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require msg.sender
        require msg.value > 0
        require block.timestamp < businessPlannedPeriodEndTimestamp
        if not priceIsFrozen:
            if block.timestamp < saleStartTimestamp:
                require 0 < targetPrice.length
                require 1 < targetPrice.length
                require saleStartTimestamp - contractCreatedTimestamp
                lastStakePriceUSCents = ((uint256(targetPrice.field_256) * block.timestamp) - (uint256(targetPrice.field_0) * block.timestamp) - (uint256(targetPrice.field_256) * contractCreatedTimestamp) + (uint256(targetPrice.field_0) * contractCreatedTimestamp) / saleStartTimestamp - contractCreatedTimestamp) + uint256(targetPrice.field_0)
            else:
                if block.timestamp < saleEndTimestamp:
                    require 1 < targetPrice.length
                    require 2 < targetPrice.length
                    require saleEndTimestamp - saleStartTimestamp
                    lastStakePriceUSCents = ((uint256(targetPrice.field_512) * block.timestamp) - (uint256(targetPrice.field_256) * block.timestamp) - (uint256(targetPrice.field_512) * saleStartTimestamp) + (uint256(targetPrice.field_256) * saleStartTimestamp) / saleEndTimestamp - saleStartTimestamp) + uint256(targetPrice.field_256)
                else:
                    require block.timestamp < businessPlannedPeriodEndTimestamp
                    require 2 < targetPrice.length
                    require 3 < targetPrice.length
                    require businessPlannedPeriodEndTimestamp - saleEndTimestamp
                    lastStakePriceUSCents = ((uint256(targetPrice.field_768) * block.timestamp) - (uint256(targetPrice.field_512) * block.timestamp) - (uint256(targetPrice.field_768) * saleEndTimestamp) + (uint256(targetPrice.field_512) * saleEndTimestamp) / businessPlannedPeriodEndTimestamp - saleEndTimestamp) + uint256(targetPrice.field_512)
        require usdPerEther
        if poolCapUSD / usdPerEther:
            require poolCapUSD / usdPerEther
            require 10^18 * poolCapUSD / usdPerEther / poolCapUSD / usdPerEther == 10^18
        require totalInvested <= 10^18 * poolCapUSD / usdPerEther
        require lastStakePriceUSCents
        saleCap = distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents)
        if distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents):
            require distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents)
            require (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) == 100
        require saleShare
        supplyCap = (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare
        if (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare:
            require (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare
            require teamShare * (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare / (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare == teamShare
        teamCap = teamShare * (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare / 100
        if supplyCap:
            require supplyCap
            require fundariaShare * supplyCap / supplyCap == fundariaShare
        fundariaCap = fundariaShare * supplyCap / 100
        if supplyCap:
            require supplyCap
            require bonusShare * supplyCap / supplyCap == bonusShare
        bonusCap = bonusShare * supplyCap / 100
        require saleCap <= supplyCap
        require teamCap <= supplyCap - saleCap
        require bonusCap <= supplyCap - saleCap - teamCap
        bountyCap = supplyCap - saleCap - teamCap - bonusCap
        require lastStakePriceUSCents
        if 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents <= 1:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents) + distributedSaleStakes <= saleCap:
                require saleShare
                if 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents > 0:
                    balanceOf[stor3] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare
                    totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare
                    distributedTeamStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare
                    emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare), stor25, owner);
                    balanceOf[stor4] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare
                    totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare
                    distributedFundariaStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare
                    emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare), stor25, fundariaAddress);
                    balanceOf[address(msg.sender)] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                    totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                    distributedSaleStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                    require msg.value + totalInvested >= totalInvested
                    totalInvested += msg.value
                    saleStat[address(msg.sender)].field_0 += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                    require msg.value + saleStat[address(msg.sender)].field_256 >= saleStat[address(msg.sender)].field_256
                    saleStat[address(msg.sender)].field_256 += msg.value
                    emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents), stor25, msg.sender);
                    if saleStat[address(msg.sender)].field_1024:
                        require saleShare
                        require distributedBonusStakes + (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100) <= bonusCap
                        if stor19[address(msg.sender)]:
                            guidesStat[stor26[address(msg.sender)].field_1024].field_512 += msg.value * guideInvestmentAttractedShareToPay / 100
                        else:
                            guidesStat[stor26[address(msg.sender)].field_1024].field_256 += msg.value * guideInvestmentAttractedShareToPay / 100
                        saleStat[address(msg.sender)].field_768 += msg.value * guideInvestmentAttractedShareToPay / 100
                        saleStat[address(msg.sender)].field_512 += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                        balanceOf[address(msg.sender)] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                        distributedBonusStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                        totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                        emit BonusDistributed(address(msg.sender), 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100, saleStat[address(msg.sender)].field_1024, msg.value * guideInvestmentAttractedShareToPay / 100);
                        emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100), stor25, msg.sender);
                if (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents) + distributedSaleStakes > saleCap:
                    call msg.sender with:
                         gas 2300 wei
                    require ext_call.success
            else:
                require 100 * usdPerEther
                require saleShare
                if saleCap - distributedSaleStakes > 0:
                    balanceOf[stor3] += (saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare
                    totalSupply += (saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare
                    distributedTeamStakes += (saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare
                    emit Transfer(((saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare), stor25, owner);
                    balanceOf[stor4] += (saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare
                    totalSupply += (saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare
                    distributedFundariaStakes += (saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare
                    emit Transfer(((saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare), stor25, fundariaAddress);
                    balanceOf[address(msg.sender)] = saleCap - distributedSaleStakes + balanceOf[address(msg.sender)]
                    totalSupply = saleCap - distributedSaleStakes + totalSupply
                    distributedSaleStakes = saleCap
                    require ((10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther) + totalInvested >= totalInvested
                    totalInvested += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther
                    saleStat[address(msg.sender)].field_0 = saleCap - distributedSaleStakes + saleStat[address(msg.sender)].field_0
                    require ((10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther) + saleStat[address(msg.sender)].field_256 >= saleStat[address(msg.sender)].field_256
                    saleStat[address(msg.sender)].field_256 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther
                    emit Transfer((saleCap - distributedSaleStakes), stor25, msg.sender);
                    if saleStat[address(msg.sender)].field_1024:
                        require saleShare
                        require distributedBonusStakes + ((saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100) <= bonusCap
                        if stor19[address(msg.sender)]:
                            guidesStat[stor26[address(msg.sender)].field_1024].field_512 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100
                        else:
                            guidesStat[stor26[address(msg.sender)].field_1024].field_256 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100
                        saleStat[address(msg.sender)].field_768 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100
                        saleStat[address(msg.sender)].field_512 += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                        balanceOf[address(msg.sender)] += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                        distributedBonusStakes += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                        totalSupply += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                        emit BonusDistributed(address(msg.sender), (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100, saleStat[address(msg.sender)].field_1024, (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100);
                        emit Transfer(((saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100), stor25, msg.sender);
                if (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents) + distributedSaleStakes > saleCap:
                    call msg.sender with:
                       value msg.value - ((10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        if uint32(call.func_hash) == transferedToPool():
            require not msg.value
            return transferedToPool
        if name() == uint32(call.func_hash):
            require not msg.value
            return 'Cardosaur Stake'
        if saleCap() == uint32(call.func_hash):
            require not msg.value
            return saleCap
        if approve(address rg1, uint256 rg2) == uint32(call.func_hash):
            require not msg.value
            if owner == msg.sender:
                if uint8(stor1.field_0):
                    require fundariaAddress == msg.sender
                    require not uint8(stor1.field_8)
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
            return 1
        if unknown_0x115bd3f8(?????) == uint32(call.func_hash):
            require not msg.value
            stor19[address(msg.sender)] = 1
            if saleStat[address(msg.sender)].field_1024:
                if saleStat[address(msg.sender)].field_768 < guidesStat[stor26[address(msg.sender)].field_1024].field_768:
                    guidesStat[stor26[address(msg.sender)].field_1024].field_768 -= saleStat[address(msg.sender)].field_768
                    if guidesStat[stor26[address(msg.sender)].field_1024].field_256 < saleStat[address(msg.sender)].field_768:
                        guidesStat[stor26[address(msg.sender)].field_1024].field_256 = 0
                    else:
                        guidesStat[stor26[address(msg.sender)].field_1024].field_256 -= saleStat[address(msg.sender)].field_768
                        guidesStat[stor26[address(msg.sender)].field_1024].field_512 += saleStat[address(msg.sender)].field_768
                else:
                    guidesStat[stor26[address(msg.sender)].field_1024].field_768 = 0
                    if guidesStat[stor26[address(msg.sender)].field_1024].field_256 < saleStat[address(msg.sender)].field_768 - guidesStat[stor26[address(msg.sender)].field_1024].field_768:
                        guidesStat[stor26[address(msg.sender)].field_1024].field_256 = 0
                    else:
                        guidesStat[stor26[address(msg.sender)].field_1024].field_256 = guidesStat[stor26[address(msg.sender)].field_1024].field_256 - saleStat[address(msg.sender)].field_768 + guidesStat[stor26[address(msg.sender)].field_1024].field_768
                        guidesStat[stor26[address(msg.sender)].field_1024].field_512 = saleStat[address(msg.sender)].field_768 - guidesStat[stor26[address(msg.sender)].field_1024].field_768 + guidesStat[stor26[address(msg.sender)].field_1024].field_512
            allowedAmountToTransferToPool += saleStat[address(msg.sender)].field_256
        else:
            if unknown_0x145e8a81(?????) == uint32(call.func_hash):
                require not msg.value
                return bool(stor19[arg1])
            if unknown_0x16f0115b(?????) == uint32(call.func_hash):
                require not msg.value
                return poolAddress
            if unknown_0x18160ddd(?????) == uint32(call.func_hash):
                require not msg.value
                return totalSupply
            if unknown_0x23b872dd(?????) == uint32(call.func_hash):
                require not msg.value
                require address(arg2)
                require arg3 <= balanceOf[address(arg1)]
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, address(arg2));
                return 1
            if unknown_0x2b432167(?????) == uint32(call.func_hash):
                require not msg.value
                require 100 * usdPerEther
                return (10^18 * arg1 * lastStakePriceUSCents / 100 * usdPerEther)
            if unknown_0x3097324c(?????) == uint32(call.func_hash):
                require not msg.value
                return saleShare
            if unknown_0x313ce567(?????) == uint32(call.func_hash):
                require not msg.value
                return 0
            if unknown_0x36e05d94(?????) == uint32(call.func_hash):
                require not msg.value
                return fundariaShare
            if unknown_0x3a57e698(?????) == uint32(call.func_hash):
                require not msg.value
                require owner == msg.sender
                guidesStat[address(arg1)].field_0 = 1
                emit RegisterGuide(arg1);
            else:
                if unknown_0x3c276d86(?????) == uint32(call.func_hash):
                    require not msg.value
                    return saleStartTimestamp
                if unknown_0x3c3deb54(?????) == uint32(call.func_hash):
                    require not msg.value
                    return contractCreatedTimestamp
                if unknown_0x41b0b4cd(?????) == uint32(call.func_hash):
                    require not msg.value
                    return distributedTeamStakes
                if unknown_0x48b6b24d(?????) == uint32(call.func_hash):
                    require not msg.value
                    return saleStat[arg1].field_0, 
                           saleStat[arg1].field_256,
                           saleStat[arg1].field_512,
                           saleStat[arg1].field_768,
                           saleStat[arg1].field_1024
                if unknown_0x4a046d82(?????) == uint32(call.func_hash):
                    require not msg.value
                    return usdPerEther
                if unknown_0x4b319713(?????) == uint32(call.func_hash):
                    require not msg.value
                    return totalWithdrawn
                if unknown_0x4ca39ea0(?????) == uint32(call.func_hash):
                    require not msg.value
                    require owner == msg.sender
                    require uint8(arg1) < targetPrice.length
                    emit TargetPriceChanged(arg1 << 248, targetPrice[uint8(arg1)].field_0, arg2);
                    targetPrice[uint8(arg1)].field_0 = arg2
                else:
                    if unknown_0x4f6a8cbe(?????) == uint32(call.func_hash):
                        require not msg.value
                        require owner == msg.sender
                        emit PoolCapChanged(poolCapUSD, arg1);
                        poolCapUSD = arg1
                    else:
                        if unknown_0x5216aeec(?????) == uint32(call.func_hash):
                            require not msg.value
                            return totalInvested
                        if unknown_0x5245849e(?????) == uint32(call.func_hash):
                            require not msg.value
                            return allowedAmountToTransferToPool
                        if unknown_0x58cf7c71(?????) == uint32(call.func_hash):
                            require not msg.value
                            require owner == msg.sender
                            priceIsFrozen = 0
                        else:
                            if unknown_0x5babe01b(?????) == uint32(call.func_hash):
                                require not msg.value
                                return distributedBountyStakes
                            if unknown_0x6142e78f(?????) == uint32(call.func_hash):
                                require not msg.value
                                return allowedAmountTransferedToPoolTotal
                            if unknown_0x62b40489(?????) == uint32(call.func_hash):
                                require not msg.value
                                return businessPlannedPeriodEndTimestamp
                            if unknown_0x6371fdd7(?????) == uint32(call.func_hash):
                                require not msg.value
                                require guidesStat[address(arg1)].field_0
                                require not saleStat[address(msg.sender)].field_1024
                                saleStat[address(msg.sender)].field_1024 = arg1
                                if saleStat[address(msg.sender)].field_256 > 0:
                                    require saleShare
                                    require distributedBonusStakes + (saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100) <= bonusCap
                                    if stor19[address(msg.sender)]:
                                        guidesStat[stor26[address(msg.sender)].field_1024].field_512 += saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100
                                    else:
                                        guidesStat[stor26[address(msg.sender)].field_1024].field_256 += saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100
                                    saleStat[address(msg.sender)].field_768 += saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100
                                    saleStat[address(msg.sender)].field_512 += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
                                    balanceOf[address(msg.sender)] += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
                                    distributedBonusStakes += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
                                    totalSupply += saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100
                                    emit BonusDistributed(address(msg.sender), saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100, saleStat[address(msg.sender)].field_1024, saleStat[address(msg.sender)].field_256 * guideInvestmentAttractedShareToPay / 100);
                                    emit Transfer((saleStat[address(msg.sender)].field_0 * 100 * bonusShare / saleShare / 100), stor25, msg.sender);
                            else:
                                if unknown_0x65fbc99f(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return distributedSaleStakes
                                if unknown_0x66188463(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
                                        allowance[address(msg.sender)][address(arg1)] -= arg2
                                    else:
                                        allowance[address(msg.sender)][address(arg1)] = 0
                                    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
                                    return 1
                                if unknown_0x6d6caeb2(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return poolCapUSD
                                if unknown_0x6d81779b(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return teamCap
                                if unknown_0x70a08231(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return balanceOf[address(arg1)]
                                if unknown_0x756f7ce8(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return bool(uint8(stor1.field_8))
                                if unknown_0x7cf12b90(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    require owner == msg.sender
                                    if block.timestamp > businessPlannedPeriodEndTimestamp:
                                        uint16(stor1.field_0) = 0
                                else:
                                    if unknown_0x81af8191(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        require arg1 < targetPrice.length
                                        return targetPrice[arg1].field_0
                                    if unknown_0x835e98d7(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return bonusShare
                                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return owner
                                    if unknown_0x8f770ad0(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return supplyCap
                                    if unknown_0x95d89b41(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return 'SAUR'
                                    if unknown_0x9e20b768(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return distributedBonusStakes
                                    if unknown_0x9e65fab0(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return bool(priceIsFrozen)
                                    if unknown_0xa7762a52(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return bool(guidesStat[arg1].field_0), guidesStat[arg1].field_256, guidesStat[arg1].field_512, guidesStat[arg1].field_768
                                    if unknown_0xa9059cbb(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        if owner == msg.sender:
                                            if uint8(stor1.field_0):
                                                require fundariaAddress == msg.sender
                                                require not uint8(stor1.field_8)
                                        require arg1
                                        require arg2 <= balanceOf[address(msg.sender)]
                                        require arg2 <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] -= arg2
                                        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    if unknown_0xaf5cfae8(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        require usdPerEther
                                        if not poolCapUSD / usdPerEther:
                                            if totalInvested <= 10^18 * poolCapUSD / usdPerEther:
                                                return ((10^18 * poolCapUSD / usdPerEther) - totalInvested)
                                        else:
                                            if poolCapUSD / usdPerEther:
                                                if 10^18 * poolCapUSD / usdPerEther / poolCapUSD / usdPerEther == 10^18:
                                                    if totalInvested <= 10^18 * poolCapUSD / usdPerEther:
                                                        return ((10^18 * poolCapUSD / usdPerEther) - totalInvested)
                                        revert
                                    if unknown_0xb770486f(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return investmentGuidesRewardsWithdrawn
                                    if unknown_0xbf3e394e(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        require not stor19[address(msg.sender)]
                                        require saleStat[address(msg.sender)].field_0 > 0
                                        require balanceOf[address(msg.sender)] >= saleStat[address(msg.sender)].field_512 + saleStat[address(msg.sender)].field_0
                                        idx = 0
                                        while uint8(idx) < financePeriodsCount:
                                            require uint8(idx) < financePeriodsTimestamps.length
                                            mem[0] = 42
                                            if block.timestamp >= financePeriodsTimestamps[uint8(idx)]:
                                                idx = idx + 1
                                                continue 
                                            require uint8(financePeriodsCount + 1)
                                            require totalInvested
                                            require saleShare
                                            require teamShare * saleStat[address(msg.sender)].field_0 / saleShare <= balanceOf[stor3]
                                            balanceOf[stor3] -= teamShare * saleStat[address(msg.sender)].field_0 / saleShare
                                            require fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare <= balanceOf[stor4]
                                            balanceOf[stor4] -= fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare
                                            emit Burn((teamShare * saleStat[address(msg.sender)].field_0 / saleShare), owner);
                                            emit Burn((fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare), fundariaAddress);
                                            distributedTeamStakes -= teamShare * saleStat[address(msg.sender)].field_0 / saleShare
                                            distributedFundariaStakes -= fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare
                                            require saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512
                                            distributedSaleStakes -= saleStat[address(msg.sender)].field_0
                                            emit Burn((saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512), msg.sender);
                                            require (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested <= totalInvested
                                            totalInvested -= (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested
                                            require saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512 <= totalSupply
                                            require teamShare * saleStat[address(msg.sender)].field_0 / saleShare <= totalSupply - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512
                                            require fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare <= totalSupply - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512 - (teamShare * saleStat[address(msg.sender)].field_0 / saleShare)
                                            totalSupply = totalSupply - saleStat[address(msg.sender)].field_0 - saleStat[address(msg.sender)].field_512 - (teamShare * saleStat[address(msg.sender)].field_0 / saleShare) - (fundariaShare * saleStat[address(msg.sender)].field_0 / saleShare)
                                            if saleStat[address(msg.sender)].field_1024:
                                                require uint8(financePeriodsCount + 1)
                                                guidesStat[stor26[address(msg.sender)].field_1024].field_256 = guidesStat[stor26[address(msg.sender)].field_1024].field_256 - saleStat[address(msg.sender)].field_768 + (uint8(idx + 1) * saleStat[address(msg.sender)].field_768 / uint8(financePeriodsCount + 1))
                                                distributedBonusStakes -= saleStat[address(msg.sender)].field_512
                                                saleStat[address(msg.sender)].field_512 = 0
                                                saleStat[address(msg.sender)].field_768 = 0
                                            saleStat[address(msg.sender)].field_0 = 0
                                            saleStat[address(msg.sender)].field_256 = 0
                                            totalWithdrawn += (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested
                                            call msg.sender with:
                                               value (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit InvestmentWithdrawn(address(msg.sender), (totalInvested * saleStat[address(msg.sender)].field_256) - (uint8(idx + 1) * totalInvested / uint8(financePeriodsCount + 1) * saleStat[address(msg.sender)].field_256) / totalInvested, saleStat[address(msg.sender)].field_0 + saleStat[address(msg.sender)].field_512, uint8(financePeriodsCount - idx));
                                    else:
                                        if unknown_0xc1145ea1(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            require owner == msg.sender
                                            require arg2 + distributedBountyStakes <= bountyCap
                                            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += arg2
                                            totalSupply += arg2
                                            distributedBountyStakes += arg2
                                            emit BountyDistributed(address(arg1), arg2);
                                            emit Transfer(arg2, stor25, arg1);
                                        else:
                                            if unknown_0xc23b4b5b(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return bountyShare
                                            if unknown_0xc5ec365f(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return guideInvestmentAttractedShareToPay
                                            if unknown_0xc68deb7e(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return saleEndTimestamp
                                            if unknown_0xcd71bc44(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                require owner == msg.sender
                                                emit UsdPerEtherChanged(usdPerEther, arg1);
                                                usdPerEther = arg1
                                            else:
                                                if unknown_0xcea7555b(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    return distributedFundariaStakes
                                                if unknown_0xd53f8208(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    return fundariaAddress
                                                if unknown_0xd73dd623(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    if owner == msg.sender:
                                                        if uint8(stor1.field_0):
                                                            require fundariaAddress == msg.sender
                                                            require not uint8(stor1.field_8)
                                                    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
                                                    allowance[address(msg.sender)][address(arg1)] += arg2
                                                    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
                                                    return 1
                                                if unknown_0xd93fae75(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    require lastStakePriceUSCents
                                                    return (100 * arg1 * usdPerEther / 10^18 / lastStakePriceUSCents)
                                                if unknown_0xdb12630a(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    return fundariaCap
                                                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    return allowance[address(arg1)][address(arg2)]
                                                if unknown_0xe325fb4b(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    return bonusCap
                                                if unknown_0xe46694e8(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    return lastStakePriceUSCents
                                                if unknown_0xe9e15b4f(?????) == uint32(call.func_hash):
                                                    require not msg.value
                                                    require owner == msg.sender
                                                    poolAddress = arg1
                                                else:
                                                    if unknown_0xea6ef2fe(?????) == uint32(call.func_hash):
                                                        require not msg.value
                                                        return teamShare
                                                    if unknown_0xec1182c2(?????) == uint32(call.func_hash):
                                                        require not msg.value
                                                        require owner == msg.sender
                                                        priceIsFrozen = 1
                                                    else:
                                                        if unknown_0xedc5cfb0(?????) == uint32(call.func_hash):
                                                            require not msg.value
                                                            require arg1 < financePeriodsTimestamps.length
                                                            return financePeriodsTimestamps[arg1]
                                                        if unknown_0xedef8bdd(?????) == uint32(call.func_hash):
                                                            require not msg.value
                                                            return bool(uint8(stor1.field_0))
                                                        if unknown_0xf45b96a0(?????) == uint32(call.func_hash):
                                                            require not msg.value
                                                            return financePeriodsCount
                                                        if unknown_0xf5207c31(?????) == uint32(call.func_hash):
                                                            require not msg.value
                                                            return businessPlannedPeriodDuration
                                                        if unknown_0xf5a1f5b4(?????) == uint32(call.func_hash):
                                                            require not msg.value
                                                            require owner == msg.sender
                                                            owner = arg1
                                                        else:
                                                            if unknown_0xfb1161f1(?????) == uint32(call.func_hash):
                                                                require not msg.value
                                                                return bountyCap
                                                            if unknown_0xfe110116(?????) == uint32(call.func_hash):
                                                                require not msg.value
                                                                require owner == msg.sender
                                                                idx = 0
                                                                while uint8(idx) <= financePeriodsCount:
                                                                    require uint8(idx) < financePeriodsTimestamps.length
                                                                    mem[0] = 42
                                                                    if block.timestamp >= financePeriodsTimestamps[uint8(idx)]:
                                                                        if financePeriodsCount != uint8(idx):
                                                                            idx = idx + 1
                                                                            continue 
                                                                        require uint8(idx) < financePeriodsTimestamps.length
                                                                        mem[0] = 42
                                                                        if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                                                                            idx = idx + 1
                                                                            continue 
                                                                    require uint8(financePeriodsCount + 1)
                                                                    if (totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1) > transferedToPool - allowedAmountTransferedToPoolTotal:
                                                                        if allowedAmountToTransferToPool <= 0:
                                                                            if ((totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)) - transferedToPool > eth.balance(this.address):
                                                                                transferedToPool += eth.balance(this.address)
                                                                                call poolAddress with:
                                                                                   value eth.balance(this.address) wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                                                                            else:
                                                                                require uint8(idx) < financePeriodsTimestamps.length
                                                                                if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                                                                                    transferedToPool = (totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)
                                                                                    call poolAddress with:
                                                                                       value ((totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)) - transferedToPool wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit TransferedToPool(((totalInvested * uint8(idx + 1)) + (totalWithdrawn * uint8(idx + 1)) - (allowedAmountTransferedToPoolTotal * uint8(idx + 1)) / uint8(financePeriodsCount + 1)) - transferedToPool, uint8(idx + 1));
                                                                                else:
                                                                                    transferedToPool += eth.balance(this.address)
                                                                                    call poolAddress with:
                                                                                       value eth.balance(this.address) wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                                                                        else:
                                                                            allowedAmountTransferedToPoolTotal += allowedAmountToTransferToPool
                                                                            allowedAmountToTransferToPool = 0
                                                                            if allowedAmountToTransferToPool > eth.balance(this.address):
                                                                                transferedToPool += eth.balance(this.address)
                                                                                call poolAddress with:
                                                                                   value eth.balance(this.address) wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                                                                            else:
                                                                                require uint8(idx) < financePeriodsTimestamps.length
                                                                                if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                                                                                    transferedToPool += allowedAmountToTransferToPool
                                                                                    call poolAddress with:
                                                                                       value allowedAmountToTransferToPool wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit TransferedToPool(allowedAmountToTransferToPool, uint8(idx + 1));
                                                                                else:
                                                                                    transferedToPool += eth.balance(this.address)
                                                                                    call poolAddress with:
                                                                                       value eth.balance(this.address) wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                                                                    else:
                                                                        if allowedAmountToTransferToPool > 0:
                                                                            allowedAmountTransferedToPoolTotal += allowedAmountToTransferToPool
                                                                            allowedAmountToTransferToPool = 0
                                                                            if allowedAmountToTransferToPool > eth.balance(this.address):
                                                                                transferedToPool += eth.balance(this.address)
                                                                                call poolAddress with:
                                                                                   value eth.balance(this.address) wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                                                                            else:
                                                                                require uint8(idx) < financePeriodsTimestamps.length
                                                                                if block.timestamp <= financePeriodsTimestamps[uint8(idx)]:
                                                                                    transferedToPool += allowedAmountToTransferToPool
                                                                                    call poolAddress with:
                                                                                       value allowedAmountToTransferToPool wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit TransferedToPool(allowedAmountToTransferToPool, uint8(idx + 1));
                                                                                else:
                                                                                    transferedToPool += eth.balance(this.address)
                                                                                    call poolAddress with:
                                                                                       value eth.balance(this.address) wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit TransferedToPool(eth.balance(this.address), uint8(idx + 1));
                                                                    allowedAmountToTransferToPool = 0
                                                            else:
                                                                if unknown_0xff696d9b(?????) == uint32(call.func_hash):
                                                                    require not msg.value
                                                                    require owner == msg.sender
                                                                    fundariaAddress = arg1
                                                                else:
                                                                    require msg.sender
                                                                    require msg.value > 0
                                                                    require block.timestamp < businessPlannedPeriodEndTimestamp
                                                                    if not priceIsFrozen:
                                                                        if block.timestamp < saleStartTimestamp:
                                                                            require 0 < targetPrice.length
                                                                            require 1 < targetPrice.length
                                                                            require saleStartTimestamp - contractCreatedTimestamp
                                                                            lastStakePriceUSCents = ((uint256(targetPrice.field_256) * block.timestamp) - (uint256(targetPrice.field_0) * block.timestamp) - (uint256(targetPrice.field_256) * contractCreatedTimestamp) + (uint256(targetPrice.field_0) * contractCreatedTimestamp) / saleStartTimestamp - contractCreatedTimestamp) + uint256(targetPrice.field_0)
                                                                        else:
                                                                            if block.timestamp < saleEndTimestamp:
                                                                                require 1 < targetPrice.length
                                                                                require 2 < targetPrice.length
                                                                                require saleEndTimestamp - saleStartTimestamp
                                                                                lastStakePriceUSCents = ((uint256(targetPrice.field_512) * block.timestamp) - (uint256(targetPrice.field_256) * block.timestamp) - (uint256(targetPrice.field_512) * saleStartTimestamp) + (uint256(targetPrice.field_256) * saleStartTimestamp) / saleEndTimestamp - saleStartTimestamp) + uint256(targetPrice.field_256)
                                                                            else:
                                                                                require block.timestamp < businessPlannedPeriodEndTimestamp
                                                                                require 2 < targetPrice.length
                                                                                require 3 < targetPrice.length
                                                                                require businessPlannedPeriodEndTimestamp - saleEndTimestamp
                                                                                lastStakePriceUSCents = ((uint256(targetPrice.field_768) * block.timestamp) - (uint256(targetPrice.field_512) * block.timestamp) - (uint256(targetPrice.field_768) * saleEndTimestamp) + (uint256(targetPrice.field_512) * saleEndTimestamp) / businessPlannedPeriodEndTimestamp - saleEndTimestamp) + uint256(targetPrice.field_512)
                                                                    require usdPerEther
                                                                    if poolCapUSD / usdPerEther:
                                                                        require poolCapUSD / usdPerEther
                                                                        require 10^18 * poolCapUSD / usdPerEther / poolCapUSD / usdPerEther == 10^18
                                                                    require totalInvested <= 10^18 * poolCapUSD / usdPerEther
                                                                    require lastStakePriceUSCents
                                                                    saleCap = distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents)
                                                                    if distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents):
                                                                        require distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents)
                                                                        require (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / distributedSaleStakes + ((100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) == 100
                                                                    require saleShare
                                                                    supplyCap = (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare
                                                                    if (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare:
                                                                        require (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare
                                                                        require teamShare * (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare / (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare == teamShare
                                                                    teamCap = teamShare * (100 * distributedSaleStakes) + (100 * (100 * 10^18 * poolCapUSD / usdPerEther * usdPerEther) - (100 * totalInvested * usdPerEther) / 10^18 / lastStakePriceUSCents) / saleShare / 100
                                                                    if supplyCap:
                                                                        require supplyCap
                                                                        require fundariaShare * supplyCap / supplyCap == fundariaShare
                                                                    fundariaCap = fundariaShare * supplyCap / 100
                                                                    if supplyCap:
                                                                        require supplyCap
                                                                        require bonusShare * supplyCap / supplyCap == bonusShare
                                                                    bonusCap = bonusShare * supplyCap / 100
                                                                    require saleCap <= supplyCap
                                                                    require teamCap <= supplyCap - saleCap
                                                                    require bonusCap <= supplyCap - saleCap - teamCap
                                                                    bountyCap = supplyCap - saleCap - teamCap - bonusCap
                                                                    require lastStakePriceUSCents
                                                                    if 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents <= 1:
                                                                        call msg.sender with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                    else:
                                                                        if (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents) + distributedSaleStakes <= saleCap:
                                                                            require saleShare
                                                                            if 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents > 0:
                                                                                balanceOf[stor3] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare
                                                                                totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare
                                                                                distributedTeamStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare
                                                                                emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * teamShare / saleShare), stor25, owner);
                                                                                balanceOf[stor4] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare
                                                                                totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare
                                                                                distributedFundariaStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare
                                                                                emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * fundariaShare / saleShare), stor25, fundariaAddress);
                                                                                balanceOf[address(msg.sender)] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                                                                                totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                                                                                distributedSaleStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                                                                                require msg.value + totalInvested >= totalInvested
                                                                                totalInvested += msg.value
                                                                                saleStat[address(msg.sender)].field_0 += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents
                                                                                require msg.value + saleStat[address(msg.sender)].field_256 >= saleStat[address(msg.sender)].field_256
                                                                                saleStat[address(msg.sender)].field_256 += msg.value
                                                                                emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents), stor25, msg.sender);
                                                                                if saleStat[address(msg.sender)].field_1024:
                                                                                    require saleShare
                                                                                    require distributedBonusStakes + (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100) <= bonusCap
                                                                                    if stor19[address(msg.sender)]:
                                                                                        guidesStat[stor26[address(msg.sender)].field_1024].field_512 += msg.value * guideInvestmentAttractedShareToPay / 100
                                                                                    else:
                                                                                        guidesStat[stor26[address(msg.sender)].field_1024].field_256 += msg.value * guideInvestmentAttractedShareToPay / 100
                                                                                    saleStat[address(msg.sender)].field_768 += msg.value * guideInvestmentAttractedShareToPay / 100
                                                                                    saleStat[address(msg.sender)].field_512 += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                                                                                    balanceOf[address(msg.sender)] += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                                                                                    distributedBonusStakes += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                                                                                    totalSupply += 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100
                                                                                    emit BonusDistributed(address(msg.sender), 100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100, saleStat[address(msg.sender)].field_1024, msg.value * guideInvestmentAttractedShareToPay / 100);
                                                                                    emit Transfer((100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents * 100 * bonusShare / saleShare / 100), stor25, msg.sender);
                                                                            if (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents) + distributedSaleStakes > saleCap:
                                                                                call msg.sender with:
                                                                                     gas 2300 wei
                                                                                require ext_call.success
                                                                        else:
                                                                            require 100 * usdPerEther
                                                                            require saleShare
                                                                            if saleCap - distributedSaleStakes > 0:
                                                                                balanceOf[stor3] += (saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare
                                                                                totalSupply += (saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare
                                                                                distributedTeamStakes += (saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare
                                                                                emit Transfer(((saleCap * teamShare) - (distributedSaleStakes * teamShare) / saleShare), stor25, owner);
                                                                                balanceOf[stor4] += (saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare
                                                                                totalSupply += (saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare
                                                                                distributedFundariaStakes += (saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare
                                                                                emit Transfer(((saleCap * fundariaShare) - (distributedSaleStakes * fundariaShare) / saleShare), stor25, fundariaAddress);
                                                                                balanceOf[address(msg.sender)] = saleCap - distributedSaleStakes + balanceOf[address(msg.sender)]
                                                                                totalSupply = saleCap - distributedSaleStakes + totalSupply
                                                                                distributedSaleStakes = saleCap
                                                                                require ((10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther) + totalInvested >= totalInvested
                                                                                totalInvested += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther
                                                                                saleStat[address(msg.sender)].field_0 = saleCap - distributedSaleStakes + saleStat[address(msg.sender)].field_0
                                                                                require ((10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther) + saleStat[address(msg.sender)].field_256 >= saleStat[address(msg.sender)].field_256
                                                                                saleStat[address(msg.sender)].field_256 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther
                                                                                emit Transfer((saleCap - distributedSaleStakes), stor25, msg.sender);
                                                                                if saleStat[address(msg.sender)].field_1024:
                                                                                    require saleShare
                                                                                    require distributedBonusStakes + ((saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100) <= bonusCap
                                                                                    if stor19[address(msg.sender)]:
                                                                                        guidesStat[stor26[address(msg.sender)].field_1024].field_512 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100
                                                                                    else:
                                                                                        guidesStat[stor26[address(msg.sender)].field_1024].field_256 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100
                                                                                    saleStat[address(msg.sender)].field_768 += (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100
                                                                                    saleStat[address(msg.sender)].field_512 += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                                                                                    balanceOf[address(msg.sender)] += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                                                                                    distributedBonusStakes += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                                                                                    totalSupply += (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100
                                                                                    emit BonusDistributed(address(msg.sender), (saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100, saleStat[address(msg.sender)].field_1024, (10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther * guideInvestmentAttractedShareToPay / 100);
                                                                                    emit Transfer(((saleCap * 100 * bonusShare / saleShare) - (distributedSaleStakes * 100 * bonusShare / saleShare) / 100), stor25, msg.sender);
                                                                            if (100 * msg.value * usdPerEther / 10^18 / lastStakePriceUSCents) + distributedSaleStakes > saleCap:
                                                                                call msg.sender with:
                                                                                   value msg.value - ((10^18 * saleCap * lastStakePriceUSCents) - (10^18 * distributedSaleStakes * lastStakePriceUSCents) / 100 * usdPerEther) wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
}



}
