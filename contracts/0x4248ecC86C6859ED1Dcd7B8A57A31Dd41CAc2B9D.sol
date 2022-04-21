contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2; offset 160
uint8 stor11;

function _fallback() payable {
    stor2 = 0
    stor11 = 0
    stor0 = msg.sender
    return code.data[75 len 5419]
}



// =====================  Runtime code  =====================


#
#  - loadCrowdsalePurchases(uint256 arg1)
#
const crowdsaleTokenAmount = 125000000 * 10^18

const earlyPurchaseTokenAmount = 50000000 * 10^18


address owner;
address starbaseTokenAddress;
uint8 stor2; offset 160
address starbaseCrowdsaleAddress;
uint256 totalAmountOfEarlyPurchases;
uint256 numOfDeliveredEarlyPurchases;
uint256 totalAmountOfCrowdsalePurchases;
uint256 totalAmountOfCrowdsalePurchasesWithoutBonus;
uint256 startDate;
uint256 endedAt;
mapping of uint256 crowdsalePurchaseAmountBy;
uint256 numOfDeliveredCrowdsalePurchases;
uint8 stor11;
uint256 numOfLoadedCrowdsalePurchases;
uint256 totalAmountOfPresalePurchasesWithoutBonus;
uint256 firstBonusEnds;
uint256 secondBonusEnds;
uint256 thirdBonusEnds;
uint256 fourthBonusEnds;
mapping of uint8 stor18;
mapping of uint256 numOfPurchasedTokensOnCsBy;
mapping of uint256 numOfPurchasedTokensOnEpBy;

function startDate() {
    return startDate
}

function secondBonusEnds() {
    return secondBonusEnds
}

function earlyPurchasesLoaded() {
    return bool(stor2)
}

function fourthBonusEnds() {
    return fourthBonusEnds
}

function endedAt() {
    return endedAt
}

function numOfLoadedCrowdsalePurchases() {
    return numOfLoadedCrowdsalePurchases
}

function numOfPurchasedTokensOnEpBy(address arg1) {
    return numOfPurchasedTokensOnEpBy[arg1]
}

function crowdsalePurchasesLoaded() {
    return bool(stor11)
}

function crowdsalePurchaseAmountBy(address arg1) {
    return crowdsalePurchaseAmountBy[arg1]
}

function numOfPurchasedTokensOnCsBy(address arg1) {
    return numOfPurchasedTokensOnCsBy[arg1]
}

function starbaseCrowdsale() {
    return starbaseCrowdsaleAddress
}

function owner() {
    return owner
}

function numOfDeliveredCrowdsalePurchases() {
    return numOfDeliveredCrowdsalePurchases
}

function numOfDeliveredEarlyPurchases() {
    return numOfDeliveredEarlyPurchases
}

function firstBonusEnds() {
    return firstBonusEnds
}

function tokenWithdrawn(address arg1) {
    return bool(stor18[arg1])
}

function totalAmountOfCrowdsalePurchases() {
    return totalAmountOfCrowdsalePurchases
}

function starbaseToken() {
    return starbaseTokenAddress
}

function totalAmountOfEarlyPurchases() {
    return totalAmountOfEarlyPurchases
}

function thirdBonusEnds() {
    return thirdBonusEnds
}

function totalAmountOfCrowdsalePurchasesWithoutBonus() {
    return totalAmountOfCrowdsalePurchasesWithoutBonus
}

function totalAmountOfPresalePurchasesWithoutBonus() {
    return totalAmountOfPresalePurchasesWithoutBonus
}

function _fallback() {
    revert
}

function isEnded() {
    if not starbaseCrowdsaleAddress:
        return bool(starbaseCrowdsaleAddress)
    return (endedAt > 0)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalRaisedAmountInCny() {
    require totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases >= totalAmountOfEarlyPurchases
    return (totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases)
}

function earlyPurchasedAmountBy(address arg1) {
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.earlyPurchasedAmountBy(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function calculateBonusInRange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if arg1 > arg4:
        return 0
    if arg2 + arg1 < arg3:
        return 0
    if arg1 <= arg3:
        if arg4 <= arg2 + arg1:
            if arg3 <= arg4:
                return ((arg4 * arg5) - (arg3 * arg5) / 100)
        else:
            if arg3 <= arg2 + arg1:
                return ((arg2 * arg5) + (arg1 * arg5) - (arg3 * arg5) / 100)
    else:
        if arg4 <= arg2 + arg1:
            if arg1 <= arg4:
                return ((arg4 * arg5) - (arg1 * arg5) / 100)
        else:
            if arg1 <= arg2 + arg1:
                return (arg2 * arg5 / 100)
    revert
}

function setup(address arg1, address arg2) {
    require owner == msg.sender
    require arg1
    require arg2
    require not starbaseTokenAddress
    require not starbaseCrowdsaleAddress
    starbaseTokenAddress = arg1
    starbaseCrowdsaleAddress = arg2
    require ext_code.size(arg2)
    call arg2.startDate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.startDate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    startDate = ext_call.return_data[0]
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.0x3d6a71e4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.0x3d6a71e4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    endedAt = ext_call.return_data[0]
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.0xd7a14a05 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    totalAmountOfEarlyPurchases = ext_call.return_data[0]
}

function withdrawPurchasedTokens() {
    require starbaseCrowdsaleAddress
    require endedAt > 0
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.0x1ad66d21 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require starbaseTokenAddress
    require not stor18[address(msg.sender)]
    stor18[address(msg.sender)] = 1
    if crowdsalePurchaseAmountBy[address(msg.sender)] > 0:
        require totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases >= totalAmountOfEarlyPurchases
        require 125000000 * 10^18 * crowdsalePurchaseAmountBy[address(msg.sender)] / 125000000 * 10^18 == crowdsalePurchaseAmountBy[address(msg.sender)]
        require totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases
        require (125000000 * 10^18 * crowdsalePurchaseAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + numOfPurchasedTokensOnCsBy[address(msg.sender)] >= numOfPurchasedTokensOnCsBy[address(msg.sender)]
        numOfPurchasedTokensOnCsBy[address(msg.sender)] += 125000000 * 10^18 * crowdsalePurchaseAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases
        require ext_code.size(starbaseTokenAddress)
        call starbaseTokenAddress.allocateToCrowdsalePurchaser(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 125000000 * 10^18 * crowdsalePurchaseAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases
        require ext_call.success
        require ext_call.return_data[0]
        numOfDeliveredCrowdsalePurchases++
        emit TokenWithdrawn(msg.sender, 125000000 * 10^18 * crowdsalePurchaseAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases);
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.earlyPurchasedAmountBy(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(starbaseCrowdsaleAddress)
        call starbaseCrowdsaleAddress.earlyPurchasedAmountBy(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require 50000000 * 10^18 * ext_call.return_data[0] / 50000000 * 10^18 == ext_call.return_data[0]
        require totalAmountOfEarlyPurchases
        require totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases >= totalAmountOfEarlyPurchases
        require 125000000 * 10^18 * ext_call.return_data[0] / 125000000 * 10^18 == ext_call.return_data[0]
        require totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases
        require (125000000 * 10^18 * ext_call.return_data[0] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * ext_call.return_data[0] / totalAmountOfEarlyPurchases) >= 50000000 * 10^18 * ext_call.return_data[0] / totalAmountOfEarlyPurchases
        require (125000000 * 10^18 * ext_call.return_data[0] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * ext_call.return_data[0] / totalAmountOfEarlyPurchases) + numOfPurchasedTokensOnEpBy[address(msg.sender)] >= numOfPurchasedTokensOnEpBy[address(msg.sender)]
        numOfPurchasedTokensOnEpBy[address(msg.sender)] = (125000000 * 10^18 * ext_call.return_data[0] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * ext_call.return_data[0] / totalAmountOfEarlyPurchases) + numOfPurchasedTokensOnEpBy[address(msg.sender)]
        require ext_code.size(starbaseTokenAddress)
        call starbaseTokenAddress.allocateToCrowdsalePurchaser(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, (125000000 * 10^18 * ext_call.return_data[0] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * ext_call.return_data[0] / totalAmountOfEarlyPurchases)
        require ext_call.success
        require ext_call.return_data[0]
        numOfDeliveredEarlyPurchases++
        emit TokenWithdrawn(msg.sender, (125000000 * 10^18 * ext_call.return_data[0] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * ext_call.return_data[0] / totalAmountOfEarlyPurchases));
}



}
