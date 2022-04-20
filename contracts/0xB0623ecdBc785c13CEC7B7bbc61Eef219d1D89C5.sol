contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
address stor5;
mapping of uint8 stor9;

function _fallback() {
    require code.data[8677 len 20]
    require code.data[8709 len 20]
    require code.data[8741 len 20]
    stor3 = code.data[8709 len 20]
    stor4 = code.data[8741 len 20]
    stor5 = code.data[8677 len 20]
    stor9[address(msg.sender)] = 1
    emit LogNewFundraiser(1, msg.sender);
    stor1[stor3] = 175000000 * 10^18
    stor1[stor4] = 12500000 * 10^18
    stor1[0] = 62500000 * 10^18
    stor1[code.data[8677 len 20]] = 750000000 * 10^18
    stor0 = 1000000000 * 10^18
    return code.data[425 len 8240]
}



// =====================  Runtime code  =====================


const name = 'TESTER'

const decimals = 18

const initialSupply = 1000000000 * 10^18

const symbol = 'TESTAR'

const initialBalanceForMarketingCampaign = 12500000 * 10^18

const initialBalanceForCrowdsale = 175000000 * 10^18

const initialCompanysTokenAllocation = 750000000 * 10^18


uint256 totalSupply;
array of uint256 balanceOf;
array of uint256 allowance;
address starbaseCrowdsaleAddress;
address starbaseMarketingCampaignAddress;
address companyAddress;
array of struct publicOfferingPlans;
mapping of uint256 initialEcTokenAllocation;
uint256 mvpLaunchedAt;
mapping of uint8 stor9;

function numOfDeclaredPublicOfferingPlans() {
    return publicOfferingPlans.length
}

function totalSupply() {
    return totalSupply
}

function starbaseMarketingCampaign() {
    return starbaseMarketingCampaignAddress
}

function initialEcTokenAllocation(address arg1) {
    return initialEcTokenAllocation[arg1]
}

function company() {
    return companyAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function publicOfferingPlans(uint256 arg1) {
    require arg1 < publicOfferingPlans.length
    return publicOfferingPlans[arg1].field_0, publicOfferingPlans[arg1].field_256, publicOfferingPlans[arg1].field_512
}

function isFundraiser(address arg1) {
    return bool(stor9[address(arg1)])
}

function starbaseCrowdsale() {
    return starbaseCrowdsaleAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function mvpLaunchedAt() {
    return mvpLaunchedAt
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addFundraiser(address arg1) {
    require stor9[address(msg.sender)]
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit LogNewFundraiser(1, arg1);
}

function updateFundraiser(address arg1, bool arg2) {
    require stor9[address(msg.sender)]
    require stor9[address(arg1)]
    stor9[address(arg1)] = uint8(arg2)
    emit LogUpdateFundraiser(arg2, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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

function allocateToMarketingSupporter(address arg1, uint256 arg2) {
    require starbaseMarketingCampaignAddress == msg.sender
    require arg1
    require arg2 > 0
    require balanceOf[stor4] >= arg2
    require arg2 <= balanceOf[stor4]
    balanceOf[stor4] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, starbaseMarketingCampaignAddress, arg1);
    return 1
}

function allocateToEarlyContributor(address arg1, uint256 arg2) {
    require stor9[address(msg.sender)]
    require arg1
    require arg2 + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
    initialEcTokenAllocation[address(arg1)] += arg2
    require arg2 > 0
    require balanceOf[0] >= arg2
    require arg2 <= balanceOf[0]
    balanceOf[0] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, 0, arg1);
    return 1
}

function declareMvpLaunched(uint256 arg1) {
    require stor9[address(msg.sender)]
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.isEnded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require not mvpLaunchedAt
    require arg1 <= block.timestamp
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.isEnded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    mvpLaunchedAt = arg1
    emit MvpLaunched(arg1);
    return 1
}

function allocateToCrowdsalePurchaser(address arg1, uint256 arg2) {
    require starbaseCrowdsaleAddress == msg.sender
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.isEnded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg1
    require arg2 > 0
    require balanceOf[stor3] >= arg2
    require arg2 <= balanceOf[stor3]
    balanceOf[stor3] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, starbaseCrowdsaleAddress, arg1);
    return 1
}

function setup(address arg1, address arg2) {
    require stor9[address(msg.sender)]
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.startDate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require arg1
    require arg2
    require 175000000 * 10^18 == balanceOf[stor3]
    require 12500000 * 10^18 == balanceOf[stor4]
    balanceOf[stor3] = 0
    balanceOf[stor4] = 0
    balanceOf[arg1] = 175000000 * 10^18
    balanceOf[arg2] = 12500000 * 10^18
    starbaseCrowdsaleAddress = arg1
    starbaseMarketingCampaignAddress = arg2
    return 1
}

function numOfTransferableCompanysTokens() {
    mem[64] = 192
    s = 96
    idx = 0
    s = 0
    while uint8(idx) < publicOfferingPlans.length:
        mem[0] = 6
        _11 = mem[64]
        mem[64] = mem[64] + 96
        mem[_11] = publicOfferingPlans[uint8(idx)].field_0
        mem[_11 + 32] = publicOfferingPlans[uint8(idx)].field_256
        mem[_11 + 64] = publicOfferingPlans[uint8(idx)].field_512
        if publicOfferingPlans[uint8(idx)].field_256 > block.timestamp:
            s = _11
            idx = idx + 1
            s = s
            continue 
        require publicOfferingPlans[uint8(idx)].field_0 + s >= s
        s = _11
        idx = idx + 1
        s = publicOfferingPlans[uint8(idx)].field_0 + s
        continue 
    if -s + 750000000 * 10^18 <= balanceOf[stor5]:
        return (balanceOf[stor5] + s - 750000000 * 10^18)
    revert
}

function numOfUntransferableEcTokens(address arg1) {
    if not mvpLaunchedAt:
        return initialEcTokenAllocation[address(arg1)]
    require mvpLaunchedAt <= block.timestamp
    if block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 <= 52:
        return initialEcTokenAllocation[address(arg1)]
    if (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= initialEcTokenAllocation[address(arg1)]:
        return 0
    require (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= initialEcTokenAllocation[address(arg1)]
    return (initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52))
}

function declarePublicOfferingPlan(uint256 arg1, uint256 arg2) {
    require stor9[address(msg.sender)]
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.isEnded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 <= 100000000 * 10^18
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.endedAt() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= block.timestamp
    require block.timestamp - ext_call.return_data[0] >= 4320 * 24 * 3600
    require block.timestamp <= arg2
    require arg2 - block.timestamp >= 1440 * 24 * 3600
    if publicOfferingPlans.length <= 0:
        idx = 0
        s = arg1
        while uint8(idx) < publicOfferingPlans.length:
            mem[0] = 6
            require publicOfferingPlans[uint8(idx)].field_0 + s >= s
            idx = idx + 1
            s = publicOfferingPlans[uint8(idx)].field_0 + s
            continue 
        require arg1 + (stor[(3 * uint8(None)) + _53] * None) <= 750000000 * 10^18
    else:
        require publicOfferingPlans.length - 1 < publicOfferingPlans.length
        require publicOfferingPlans[publicOfferingPlans.length].field_0 <= block.timestamp
        require block.timestamp - publicOfferingPlans[publicOfferingPlans.length].field_0 >= 4320 * 24 * 3600
        idx = 0
        s = arg1
        while uint8(idx) < publicOfferingPlans.length:
            mem[0] = 6
            require publicOfferingPlans[uint8(idx)].field_0 + s >= s
            idx = idx + 1
            s = publicOfferingPlans[uint8(idx)].field_0 + s
            continue 
        require arg1 + (stor[(3 * uint8(None)) + _54] * None) <= 750000000 * 10^18
    publicOfferingPlans.length++
    if not publicOfferingPlans.length <= publicOfferingPlans.length + 1:
        s = (3 * publicOfferingPlans.length) + 3
        while sha3(6) + (3 * publicOfferingPlans.length) > None:
            stor[None] = 0
            balanceOf[None] = 0
            allowance[None] = 0
            s = None + 3
            continue 
    publicOfferingPlans[publicOfferingPlans.length].field_0 = arg1
    publicOfferingPlans[publicOfferingPlans.length].field_256 = arg2
    publicOfferingPlans[publicOfferingPlans.length].field_512 = block.timestamp
    emit PublicOfferingPlanDeclared(arg1, arg2);
    return 0
}

function issueTokens(address arg1, uint256 arg2) {
    require stor9[address(msg.sender)]
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.isEnded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg1
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.endedAt() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require arg2 <= 0
    else:
        require ext_code.size(starbaseCrowdsaleAddress)
        call starbaseCrowdsaleAddress.endedAt() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= block.timestamp
        idx = 0
        s = 1000000000 * 10^18
        while idx < 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 / 36525:
            if not s:
                if (25 * s / 1000) + s >= s:
                    idx = idx + 1
                    s = (25 * s / 1000) + s
                    continue 
            else:
                if s:
                    if 25 * s / s == 25:
                        if (25 * s / 1000) + s >= s:
                            idx = idx + 1
                            s = (25 * s / 1000) + s
                            continue 
            revert
        if 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 <= 0:
            require totalSupply <= s
            require arg2 <= s - totalSupply
        else:
            if s:
                require s
                require 25 * s / s == 25
            if 25 * s / 1000:
                require 25 * s / 1000
                require 100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 25 * s / 1000 == 100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100
            require (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s >= s
            require totalSupply <= (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s
            require arg2 <= (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s - totalSupply
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    return 1
}

function numOfInflatableTokens() {
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.endedAt() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.endedAt() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= block.timestamp
    idx = 0
    s = 1000000000 * 10^18
    while idx < 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 / 36525:
        if not s:
            if (25 * s / 1000) + s >= s:
                idx = idx + 1
                s = (25 * s / 1000) + s
                continue 
        else:
            if s:
                if 25 * s / s == 25:
                    if (25 * s / 1000) + s >= s:
                        idx = idx + 1
                        s = (25 * s / 1000) + s
                        continue 
        revert
    if 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 <= 0:
        if totalSupply <= s:
            return (s - totalSupply)
    else:
        if not s:
            if not 25 * s / 1000:
                if (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s >= s:
                    if totalSupply <= (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s:
                        return ((100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s - totalSupply)
            else:
                if 25 * s / 1000:
                    if 100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 25 * s / 1000 == 100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100:
                        if (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s >= s:
                            if totalSupply <= (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s:
                                return ((100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s - totalSupply)
        else:
            if s:
                if 25 * s / s == 25:
                    if not 25 * s / 1000:
                        if (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s >= s:
                            if totalSupply <= (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s:
                                return ((100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s - totalSupply)
                    else:
                        if 25 * s / 1000:
                            if 100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 25 * s / 1000 == 100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100:
                                if (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s >= s:
                                    if totalSupply <= (100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s:
                                        return ((100 * 100 * block.timestamp - ext_call.return_data[0] / 24 * 3600 % 36525 / 100 * 25 * s / 1000 / 36525) + s - totalSupply)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require arg2
    require balanceOf[address(msg.sender)] >= arg2
    if companyAddress == msg.sender:
        mem[64] = 192
        s = 96
        idx = 0
        s = 0
        while uint8(idx) < publicOfferingPlans.length:
            mem[0] = 6
            _714 = mem[64]
            mem[64] = mem[64] + 96
            mem[_714] = publicOfferingPlans[uint8(idx)].field_0
            mem[_714 + 32] = publicOfferingPlans[uint8(idx)].field_256
            mem[_714 + 64] = publicOfferingPlans[uint8(idx)].field_512
            if publicOfferingPlans[uint8(idx)].field_256 > block.timestamp:
                s = _714
                idx = idx + 1
                s = s
                continue 
            require publicOfferingPlans[uint8(idx)].field_0 + s >= s
            s = _714
            idx = idx + 1
            s = publicOfferingPlans[uint8(idx)].field_0 + s
            continue 
        require -s + 750000000 * 10^18 <= balanceOf[stor5]
        require arg2 <= balanceOf[stor5] + s - 750000000 * 10^18
    if initialEcTokenAllocation[address(msg.sender)] <= 0:
        require ext_code.size(starbaseCrowdsaleAddress)
        call starbaseCrowdsaleAddress.isEnded() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            require 0 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= arg2
        else:
            require ext_code.size(starbaseCrowdsaleAddress)
            call starbaseCrowdsaleAddress.endedAt() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= block.timestamp
            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                    require 0 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= arg2
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    require ext_call.return_data[0] >= 0
                    require ext_call.return_data[0] <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - ext_call.return_data[0] >= arg2
            else:
                require ext_code.size(starbaseCrowdsaleAddress)
                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                require ext_call.return_data[0] >= 0
                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                    require ext_call.return_data[0] <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - ext_call.return_data[0] >= arg2
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * ext_call.return_data[0] <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - (2 * ext_call.return_data[0]) >= arg2
    else:
        if not mvpLaunchedAt:
            require initialEcTokenAllocation[address(msg.sender)] >= 0
            require ext_code.size(starbaseCrowdsaleAddress)
            call starbaseCrowdsaleAddress.isEnded() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if not ext_call.return_data[0]:
                require initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - initialEcTokenAllocation[address(msg.sender)] >= arg2
            else:
                require ext_code.size(starbaseCrowdsaleAddress)
                call starbaseCrowdsaleAddress.endedAt() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= block.timestamp
                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                        require initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - initialEcTokenAllocation[address(msg.sender)] >= arg2
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] >= initialEcTokenAllocation[address(msg.sender)]
                        require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - ext_call.return_data[0] - initialEcTokenAllocation[address(msg.sender)] >= arg2
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] >= initialEcTokenAllocation[address(msg.sender)]
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                        require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - ext_call.return_data[0] - initialEcTokenAllocation[address(msg.sender)] >= arg2
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_call.return_data[0] >= 0
                        require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(msg.sender)] >= arg2
        else:
            require mvpLaunchedAt <= block.timestamp
            if block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 <= 52:
                require initialEcTokenAllocation[address(msg.sender)] >= 0
                require ext_code.size(starbaseCrowdsaleAddress)
                call starbaseCrowdsaleAddress.isEnded() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if not ext_call.return_data[0]:
                    require initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - initialEcTokenAllocation[address(msg.sender)] >= arg2
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.endedAt() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= block.timestamp
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                            require initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] - initialEcTokenAllocation[address(msg.sender)] >= arg2
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] >= initialEcTokenAllocation[address(msg.sender)]
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] - ext_call.return_data[0] - initialEcTokenAllocation[address(msg.sender)] >= arg2
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] >= initialEcTokenAllocation[address(msg.sender)]
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] - ext_call.return_data[0] - initialEcTokenAllocation[address(msg.sender)] >= arg2
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            require ext_call.return_data[0] >= 0
                            require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(msg.sender)] <= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(msg.sender)] >= arg2
            else:
                if (-52 * initialEcTokenAllocation[address(msg.sender)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) >= initialEcTokenAllocation[address(msg.sender)]:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.isEnded() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        require 0 <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] >= arg2
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.endedAt() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= block.timestamp
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require 0 <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] >= arg2
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                require ext_call.return_data[0] <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - ext_call.return_data[0] >= arg2
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            require ext_call.return_data[0] >= 0
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require ext_call.return_data[0] <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - ext_call.return_data[0] >= arg2
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                require ext_call.success
                                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * ext_call.return_data[0] <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - (2 * ext_call.return_data[0]) >= arg2
                else:
                    require (-52 * initialEcTokenAllocation[address(msg.sender)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) <= initialEcTokenAllocation[address(msg.sender)]
                    require initialEcTokenAllocation[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(msg.sender)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) >= 0
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.isEnded() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        require initialEcTokenAllocation[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(msg.sender)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - initialEcTokenAllocation[address(msg.sender)] - (52 * initialEcTokenAllocation[address(msg.sender)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) >= arg2
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.endedAt() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= block.timestamp
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require initialEcTokenAllocation[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(msg.sender)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - initialEcTokenAllocation[address(msg.sender)] - (52 * initialEcTokenAllocation[address(msg.sender)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) >= arg2
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(msg.sender)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - ext_call.return_data[0] - initialEcTokenAllocation[address(msg.sender)] - (52 * initialEcTokenAllocation[address(msg.sender)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) >= arg2
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            require ext_call.return_data[0] >= 0
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(msg.sender)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - ext_call.return_data[0] - initialEcTokenAllocation[address(msg.sender)] - (52 * initialEcTokenAllocation[address(msg.sender)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) >= arg2
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(msg.sender)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(msg.sender)] - (52 * initialEcTokenAllocation[address(msg.sender)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(msg.sender)] / 52) >= arg2
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 100 == calldata.size
    require arg3
    require balanceOf[address(arg1)] >= arg3
    if companyAddress != arg1:
        if initialEcTokenAllocation[address(arg1)] <= 0:
            require ext_code.size(starbaseCrowdsaleAddress)
            call starbaseCrowdsaleAddress.isEnded() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if not ext_call.return_data[0]:
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= arg3
            else:
                require ext_code.size(starbaseCrowdsaleAddress)
                call starbaseCrowdsaleAddress.endedAt() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= block.timestamp
                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                        require 0 <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        require ext_call.return_data[0] >= 0
                        require ext_call.return_data[0] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    require ext_call.return_data[0] >= 0
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                        require ext_call.return_data[0] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                        require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg3
        else:
            if not mvpLaunchedAt:
                require initialEcTokenAllocation[address(arg1)] >= 0
                require ext_code.size(starbaseCrowdsaleAddress)
                call starbaseCrowdsaleAddress.isEnded() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if not ext_call.return_data[0]:
                    require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.endedAt() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= block.timestamp
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                            require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args arg1
                            require ext_call.success
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args arg1
                            require ext_call.success
                            require ext_call.return_data[0] >= 0
                            require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg3
            else:
                require mvpLaunchedAt <= block.timestamp
                if block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 <= 52:
                    require initialEcTokenAllocation[address(arg1)] >= 0
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.isEnded() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.endedAt() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= block.timestamp
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args arg1
                            require ext_call.success
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg3
                else:
                    if (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= initialEcTokenAllocation[address(arg1)]:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.isEnded() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            require 0 <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.endedAt() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= block.timestamp
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require 0 <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg3
                    else:
                        require (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= initialEcTokenAllocation[address(arg1)]
                        require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= 0
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.isEnded() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.endedAt() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= block.timestamp
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
    else:
        mem[64] = 192
        s = 96
        idx = 0
        s = 0
        while uint8(idx) < publicOfferingPlans.length:
            mem[0] = 6
            _914 = mem[64]
            mem[64] = mem[64] + 96
            mem[_914] = publicOfferingPlans[uint8(idx)].field_0
            mem[_914 + 32] = publicOfferingPlans[uint8(idx)].field_256
            mem[_914 + 64] = publicOfferingPlans[uint8(idx)].field_512
            if publicOfferingPlans[uint8(idx)].field_256 > block.timestamp:
                s = _914
                idx = idx + 1
                s = s
                continue 
            require publicOfferingPlans[uint8(idx)].field_0 + s >= s
            s = _914
            idx = idx + 1
            s = publicOfferingPlans[uint8(idx)].field_0 + s
            continue 
        require -s + 750000000 * 10^18 <= balanceOf[stor5]
        require arg3 <= balanceOf[stor5] + s - 750000000 * 10^18
        if initialEcTokenAllocation[address(arg1)] <= 0:
            require ext_code.size(starbaseCrowdsaleAddress)
            call starbaseCrowdsaleAddress.isEnded() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if not ext_call.return_data[0]:
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= arg3
            else:
                require ext_code.size(starbaseCrowdsaleAddress)
                call starbaseCrowdsaleAddress.endedAt() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= block.timestamp
                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                        require 0 <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(arg1)
                        require ext_call.success
                        require ext_call.return_data[0] >= 0
                        require ext_call.return_data[0] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                         gas gas_remaining - 710 wei
                        args address(arg1)
                    require ext_call.success
                    require ext_call.return_data[0] >= 0
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                        require ext_call.return_data[0] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(arg1)
                        require ext_call.success
                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                        require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg3
        else:
            if not mvpLaunchedAt:
                require initialEcTokenAllocation[address(arg1)] >= 0
                require ext_code.size(starbaseCrowdsaleAddress)
                call starbaseCrowdsaleAddress.isEnded() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if not ext_call.return_data[0]:
                    require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                else:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.endedAt() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= block.timestamp
                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                            require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1)
                            require ext_call.success
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(arg1)
                        require ext_call.success
                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1)
                            require ext_call.success
                            require ext_call.return_data[0] >= 0
                            require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg3
            else:
                require mvpLaunchedAt <= block.timestamp
                if block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 <= 52:
                    require initialEcTokenAllocation[address(arg1)] >= 0
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.isEnded() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.endedAt() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= block.timestamp
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1)
                                require ext_call.success
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1)
                            require ext_call.success
                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1)
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg3
                else:
                    if (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= initialEcTokenAllocation[address(arg1)]:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.isEnded() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            require 0 <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.endedAt() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= block.timestamp
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require 0 <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1)
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1)
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1)
                                    require ext_call.success
                                    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg3
                    else:
                        require (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= initialEcTokenAllocation[address(arg1)]
                        require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= 0
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.isEnded() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                            require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.endedAt() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= block.timestamp
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1)
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1)
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1)
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    require balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function isTransferable(address arg1, uint256 arg2) {
    if arg2:
        if balanceOf[address(arg1)] >= arg2:
            if companyAddress != arg1:
                if initialEcTokenAllocation[address(arg1)] <= 0:
                    require ext_code.size(starbaseCrowdsaleAddress)
                    call starbaseCrowdsaleAddress.isEnded() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        require 0 <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] >= arg2:
                            return 1
                    else:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.endedAt() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= block.timestamp
                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require 0 <= balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] >= arg2:
                                    return 1
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                    return 1
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args arg1
                            require ext_call.success
                            require ext_call.return_data[0] >= 0
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                    return 1
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg2:
                                    return 1
                else:
                    if not mvpLaunchedAt:
                        require initialEcTokenAllocation[address(arg1)] >= 0
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.isEnded() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                return 1
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.endedAt() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= block.timestamp
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                        return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                        return 1
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                        return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg2:
                                        return 1
                    else:
                        require mvpLaunchedAt <= block.timestamp
                        if block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 <= 52:
                            require initialEcTokenAllocation[address(arg1)] >= 0
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.isEnded() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                    return 1
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.endedAt() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= block.timestamp
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                        require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args arg1
                                        require ext_call.success
                                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args arg1
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 0
                                        require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                        else:
                            if (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= initialEcTokenAllocation[address(arg1)]:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.isEnded() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if not ext_call.return_data[0]:
                                    require 0 <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] >= arg2:
                                        return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.endedAt() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] <= block.timestamp
                                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                            require 0 <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] >= arg2:
                                                return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 0
                                            require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                                return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args arg1
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 0
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                            require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                                return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                            require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg2:
                                                return 1
                            else:
                                require (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= initialEcTokenAllocation[address(arg1)]
                                require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= 0
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.isEnded() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if not ext_call.return_data[0]:
                                    require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                        return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.endedAt() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] <= block.timestamp
                                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                            require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 0
                                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args arg1
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 0
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 0
                                            require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                return 1
            else:
                mem[64] = 192
                s = 96
                idx = 0
                s = 0
                while uint8(idx) < publicOfferingPlans.length:
                    mem[0] = 6
                    _520 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_520] = publicOfferingPlans[uint8(idx)].field_0
                    mem[_520 + 32] = publicOfferingPlans[uint8(idx)].field_256
                    mem[_520 + 64] = publicOfferingPlans[uint8(idx)].field_512
                    if publicOfferingPlans[uint8(idx)].field_256 > block.timestamp:
                        s = _520
                        idx = idx + 1
                        s = s
                        continue 
                    require publicOfferingPlans[uint8(idx)].field_0 + s >= s
                    s = _520
                    idx = idx + 1
                    s = publicOfferingPlans[uint8(idx)].field_0 + s
                    continue 
                require -s + 750000000 * 10^18 <= balanceOf[stor5]
                if arg2 <= balanceOf[stor5] + s - 750000000 * 10^18:
                    if initialEcTokenAllocation[address(arg1)] <= 0:
                        require ext_code.size(starbaseCrowdsaleAddress)
                        call starbaseCrowdsaleAddress.isEnded() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            require 0 <= balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] >= arg2:
                                return 1
                        else:
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.endedAt() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= block.timestamp
                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require 0 <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] >= arg2:
                                        return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1)
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 0
                                    require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                        return 1
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1)
                                require ext_call.success
                                require ext_call.return_data[0] >= 0
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                    require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                        return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1)
                                    require ext_call.success
                                    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg2:
                                        return 1
                    else:
                        if not mvpLaunchedAt:
                            require initialEcTokenAllocation[address(arg1)] >= 0
                            require ext_code.size(starbaseCrowdsaleAddress)
                            call starbaseCrowdsaleAddress.isEnded() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                    return 1
                            else:
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.endedAt() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= block.timestamp
                                if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                        require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1)
                                        require ext_call.success
                                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1)
                                    require ext_call.success
                                    require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1)
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 0
                                        require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg2:
                                            return 1
                        else:
                            require mvpLaunchedAt <= block.timestamp
                            if block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 <= 52:
                                require initialEcTokenAllocation[address(arg1)] >= 0
                                require ext_code.size(starbaseCrowdsaleAddress)
                                call starbaseCrowdsaleAddress.isEnded() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if not ext_call.return_data[0]:
                                    require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                    if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                        return 1
                                else:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.endedAt() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] <= block.timestamp
                                    if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                            require initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                                return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1)
                                            require ext_call.success
                                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                                return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1)
                                        require ext_call.success
                                        require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] >= initialEcTokenAllocation[address(arg1)]
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                            require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] >= arg2:
                                                return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1)
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 0
                                            require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] <= balanceOf[address(arg1)]
                                            if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] >= arg2:
                                                return 1
                            else:
                                if (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= initialEcTokenAllocation[address(arg1)]:
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.isEnded() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        require 0 <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] >= arg2:
                                            return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.endedAt() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] <= block.timestamp
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                                require 0 <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] >= arg2:
                                                    return 1
                                            else:
                                                require ext_code.size(starbaseCrowdsaleAddress)
                                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1)
                                                require ext_call.success
                                                require ext_call.return_data[0] >= 0
                                                require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                                    return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1)
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 0
                                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                                require ext_call.return_data[0] <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] - ext_call.return_data[0] >= arg2:
                                                    return 1
                                            else:
                                                require ext_code.size(starbaseCrowdsaleAddress)
                                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1)
                                                require ext_call.success
                                                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                require 2 * ext_call.return_data[0] <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) >= arg2:
                                                    return 1
                                else:
                                    require (-52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= initialEcTokenAllocation[address(arg1)]
                                    require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= 0
                                    require ext_code.size(starbaseCrowdsaleAddress)
                                    call starbaseCrowdsaleAddress.isEnded() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                        if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                            return 1
                                    else:
                                        require ext_code.size(starbaseCrowdsaleAddress)
                                        call starbaseCrowdsaleAddress.endedAt() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] <= block.timestamp
                                        if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 7:
                                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                                require initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                    return 1
                                            else:
                                                require ext_code.size(starbaseCrowdsaleAddress)
                                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1)
                                                require ext_call.success
                                                require ext_call.return_data[0] >= 0
                                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                    return 1
                                        else:
                                            require ext_code.size(starbaseCrowdsaleAddress)
                                            call starbaseCrowdsaleAddress.numOfPurchasedTokensOnCsBy(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1)
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 0
                                            if block.timestamp - ext_call.return_data[0] / 24 * 3600 >= 14:
                                                require ext_call.return_data[0] + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] - ext_call.return_data[0] - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                    return 1
                                            else:
                                                require ext_code.size(starbaseCrowdsaleAddress)
                                                call starbaseCrowdsaleAddress.numOfPurchasedTokensOnEpBy(address rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1)
                                                require ext_call.success
                                                require ext_call.return_data[0] >= 0
                                                require (2 * ext_call.return_data[0]) + initialEcTokenAllocation[address(arg1)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcc * initialEcTokenAllocation[address(arg1)] / 52) - (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) <= balanceOf[address(arg1)]
                                                if balanceOf[address(arg1)] - (2 * ext_call.return_data[0]) - initialEcTokenAllocation[address(arg1)] - (52 * initialEcTokenAllocation[address(arg1)] / 52) + (block.timestamp - mvpLaunchedAt / 168 * 24 * 3600 * initialEcTokenAllocation[address(arg1)] / 52) >= arg2:
                                                    return 1
            return 0
        else:
            return 0
    else:
        return 0
}



}
