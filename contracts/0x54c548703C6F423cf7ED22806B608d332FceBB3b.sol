contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor6;
uint8 stor16;

function _fallback() payable {
    stor6 = 0
    stor16 = 0
    stor0 = msg.sender
    return code.data[71 len 6492]
}



// =====================  Runtime code  =====================


#
#  - loadCrowdsalePurchases(uint256 arg1)
#  - addEarlyPurchases()
#
const crowdsaleTokenAmount = 125000000 * 10^18

const earlyPurchaseTokenAmount = 50000000 * 10^18


address owner;
address starbaseTokenAddress;
address starbaseCrowdsaleAddress;
address starbaseEpAmendmentAddress;
uint256 stor3;
array of address earlyPurchasers;
mapping of uint256 earlyPurchasedAmountBy;
uint8 stor6;
uint256 totalAmountOfEarlyPurchases;
uint256 numOfDeliveredEarlyPurchases;
uint256 numOfLoadedEarlyPurchases;
uint256 totalAmountOfCrowdsalePurchases;
uint256 totalAmountOfCrowdsalePurchasesWithoutBonus;
uint256 startDate;
uint256 endedAt;
mapping of uint256 crowdsalePurchaseAmountBy;
uint256 numOfDeliveredCrowdsalePurchases;
uint8 stor16;
uint256 numOfLoadedCrowdsalePurchases;
uint256 totalAmountOfPresalePurchasesWithoutBonus;
mapping of uint8 stor19;
mapping of uint256 numOfPurchasedTokensOnCsBy;
mapping of uint256 numOfPurchasedTokensOnEpBy;

function earlyPurchasedAmountBy(address arg1) {
    return earlyPurchasedAmountBy[arg1]
}

function startDate() {
    return startDate
}

function earlyPurchasesLoaded() {
    return bool(stor6)
}

function endedAt() {
    return endedAt
}

function numOfLoadedCrowdsalePurchases() {
    return numOfLoadedCrowdsalePurchases
}

function numOfLoadedEarlyPurchases() {
    return numOfLoadedEarlyPurchases
}

function numOfPurchasedTokensOnEpBy(address arg1) {
    return numOfPurchasedTokensOnEpBy[arg1]
}

function crowdsalePurchasesLoaded() {
    return bool(stor16)
}

function starbaseEpAmendment() {
    return address(starbaseEpAmendmentAddress)
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

function earlyPurchasers(uint256 arg1) {
    require arg1 < earlyPurchasers.length
    return earlyPurchasers[arg1]
}

function tokenWithdrawn(address arg1) {
    return bool(stor19[arg1])
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
    call arg2.0x715eddda with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(starbaseCrowdsaleAddress)
    call starbaseCrowdsaleAddress.startDate() with:
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
}

function withdrawPurchasedTokens() {
    require starbaseCrowdsaleAddress
    require endedAt > 0
    require stor16
    require stor6
    require starbaseTokenAddress
    require not stor19[address(msg.sender)]
    stor19[address(msg.sender)] = 1
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
    if earlyPurchasedAmountBy[address(msg.sender)] > 0:
        require 50000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / 50000000 * 10^18 == earlyPurchasedAmountBy[address(msg.sender)]
        require totalAmountOfEarlyPurchases
        require totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases >= totalAmountOfEarlyPurchases
        require 125000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / 125000000 * 10^18 == earlyPurchasedAmountBy[address(msg.sender)]
        require totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases
        require (125000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfEarlyPurchases) >= 50000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfEarlyPurchases
        require (125000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfEarlyPurchases) + numOfPurchasedTokensOnEpBy[address(msg.sender)] >= numOfPurchasedTokensOnEpBy[address(msg.sender)]
        numOfPurchasedTokensOnEpBy[address(msg.sender)] = (125000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfEarlyPurchases) + numOfPurchasedTokensOnEpBy[address(msg.sender)]
        require ext_code.size(starbaseTokenAddress)
        call starbaseTokenAddress.allocateToCrowdsalePurchaser(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, (125000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfEarlyPurchases)
        require ext_call.success
        require ext_call.return_data[0]
        numOfDeliveredEarlyPurchases++
        emit TokenWithdrawn(msg.sender, (125000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfCrowdsalePurchases + totalAmountOfEarlyPurchases) + (50000000 * 10^18 * earlyPurchasedAmountBy[address(msg.sender)] / totalAmountOfEarlyPurchases));
}



}
