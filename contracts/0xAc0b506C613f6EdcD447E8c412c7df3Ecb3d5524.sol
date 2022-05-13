contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor7 = 99
    stor8 = 65000
    require not msg.value
    stor0 = msg.sender
    return code.data[70 len 4486]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct unitCoinProduction;
mapping of struct unitDefense;
mapping of struct stor3;
uint256 currNumOfCards;
uint256 currNumOfBattleCards;
uint256 currNumOfUpgrades;
uint256 max_CAP;
uint256 pLATPrice;
address stor9;

function getPLATPrice() {
    return pLATPrice
}

function unitDefense(uint256 arg1) {
    return unitDefense[arg1].field_1280
}

function unitBattleEthCost(uint256 arg1) {
    return unitDefense[arg1].field_768
}

function getMaxCAP() {
    return max_CAP
}

function Max_CAP() {
    return max_CAP
}

function unitStealingCapacity(uint256 arg1) {
    return unitDefense[arg1].field_1536
}

function unitAttack(uint256 arg1) {
    return unitDefense[arg1].field_1024
}

function unitCoinProduction(uint256 arg1) {
    return unitCoinProduction[arg1].field_1024
}

function currNumOfUpgrades() {
    return currNumOfUpgrades
}

function owner() {
    return owner
}

function unitEthCost(uint256 arg1) {
    return unitCoinProduction[arg1].field_768
}

function currNumOfBattleCards() {
    return currNumOfBattleCards
}

function currNumOfCards() {
    return currNumOfCards
}

function _fallback() payable {
    revert
}

function upgradeIdRange() {
    return 1, currNumOfUpgrades
}

function productionCardIdRange() {
    return 1, currNumOfCards
}

function getWeakenedDefensePower(uint256 arg1) {
    return (arg1 / 2)
}

function setMaxCAP(uint256 arg1) {
    require owner == msg.sender
    max_CAP = arg1
}

function setPLATPrice(uint256 arg1) {
    require owner == msg.sender
    pLATPrice = arg1
}

function setAllowedAddress(address arg1) {
    require owner == msg.sender
    require arg1
    stor9 = arg1
}

function battleCardIdRange() {
    require currNumOfBattleCards + 39 >= 39
    return 40, currNumOfBattleCards + 39
}

function getCostForUprade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg3 != 1:
        return 0
    if arg2:
        return ((2 * arg2 * stor3[arg1].field_1536) + stor3[arg1].field_256)
    return stor3[arg1].field_256
}

function unitBattlePLATCost(uint256 arg1) {
    if not unitDefense[arg1].field_768:
        return 0
    require pLATPrice * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == pLATPrice
    return (pLATPrice * unitDefense[arg1].field_768)
}

function unitPLATCost(uint256 arg1) {
    if not unitCoinProduction[arg1].field_768:
        return 0
    require pLATPrice * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == pLATPrice
    return (pLATPrice * unitCoinProduction[arg1].field_768)
}

function CreateCards(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if stor9 != msg.sender:
        require owner == msg.sender
    unitCoinProduction[arg1].field_0 = arg1
    unitCoinProduction[arg1].field_256 = arg2
    unitCoinProduction[arg1].field_512 = arg3
    unitCoinProduction[arg1].field_768 = arg4
    unitCoinProduction[arg1].field_1024 = arg5
    unitCoinProduction[arg1].field_1280 = uint8(arg6)
    require currNumOfCards + 1 >= currNumOfCards
    currNumOfCards++
    emit newCard(arg1, arg2, arg3, arg4, arg5);
}

function CreateUpgradeCards(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    if stor9 != msg.sender:
        require owner == msg.sender
    stor3[arg1].field_0 = arg1
    stor3[arg1].field_256 = arg2
    stor3[arg1].field_512 = arg3
    stor3[arg1].field_768 = arg4
    stor3[arg1].field_1024 = arg5
    stor3[arg1].field_1280 = arg6
    stor3[arg1].field_1536 = arg7
    require currNumOfUpgrades + 1 >= currNumOfUpgrades
    currNumOfUpgrades++
    emit newUpgradeCard(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

function CreateBattleCards(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bool arg8) {
    if stor9 != msg.sender:
        require owner == msg.sender
    unitDefense[arg1].field_0 = arg1
    unitDefense[arg1].field_256 = arg2
    unitDefense[arg1].field_512 = arg3
    unitDefense[arg1].field_768 = arg4
    unitDefense[arg1].field_1024 = arg5
    unitDefense[arg1].field_1280 = arg6
    unitDefense[arg1].field_1536 = arg7
    unitDefense[arg1].field_1792 = uint8(arg8)
    require currNumOfBattleCards + 1 >= currNumOfBattleCards
    currNumOfBattleCards++
    emit newBattleCard(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

function getCardsInfo(uint256 arg1) {
    if not unitCoinProduction[arg1].field_768:
        return unitCoinProduction[arg1].field_256, 
               unitCoinProduction[arg1].field_512,
               unitCoinProduction[arg1].field_768,
               unitCoinProduction[arg1].field_1024,
               0,
               bool(unitCoinProduction[arg1].field_1280)
    require pLATPrice * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == pLATPrice
    return unitCoinProduction[arg1].field_256, 
           unitCoinProduction[arg1].field_512,
           unitCoinProduction[arg1].field_768,
           unitCoinProduction[arg1].field_1024,
           pLATPrice * unitCoinProduction[arg1].field_768,
           bool(unitCoinProduction[arg1].field_1280)
}

function getBattleCardsInfo(uint256 arg1) {
    if not unitDefense[arg1].field_768:
        return unitDefense[arg1].field_256, 
               unitDefense[arg1].field_512,
               unitDefense[arg1].field_768,
               unitDefense[arg1].field_1024,
               unitDefense[arg1].field_1280,
               unitDefense[arg1].field_1536,
               0,
               bool(unitDefense[arg1].field_1792)
    require pLATPrice * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == pLATPrice
    return unitDefense[arg1].field_256, 
           unitDefense[arg1].field_512,
           unitDefense[arg1].field_768,
           unitDefense[arg1].field_1024,
           unitDefense[arg1].field_1280,
           unitDefense[arg1].field_1536,
           pLATPrice * unitDefense[arg1].field_768,
           bool(unitDefense[arg1].field_1792)
}

function getUpgradeCardsInfo(uint256 arg1, uint256 arg2) {
    if arg2:
        if not (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100:
            return (2 * arg2 * stor3[arg1].field_1536) + stor3[arg1].field_256, 
                   (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100,
                   stor3[arg1].field_768,
                   stor3[arg1].field_1024,
                   arg2 + stor3[arg1].field_1280,
                   0
        if pLATPrice * (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100 / (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100 == pLATPrice:
            return (2 * arg2 * stor3[arg1].field_1536) + stor3[arg1].field_256, 
                   (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100,
                   stor3[arg1].field_768,
                   stor3[arg1].field_1024,
                   arg2 + stor3[arg1].field_1280,
                   pLATPrice * (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100
    else:
        if not (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100:
            return stor3[arg1].field_256, 
                   (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100,
                   stor3[arg1].field_768,
                   stor3[arg1].field_1024,
                   arg2 + stor3[arg1].field_1280,
                   0
        if pLATPrice * (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100 / (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100 == pLATPrice:
            return stor3[arg1].field_256, 
                   (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100,
                   stor3[arg1].field_768,
                   stor3[arg1].field_1024,
                   arg2 + stor3[arg1].field_1280,
                   pLATPrice * (100 * stor3[arg1].field_512) + (10 * arg2 * stor3[arg1].field_512) / 100
    ('iszero', ('eq', ('div', ('mul', ('stor', ('name', 'pLATPrice', 8)), ('div', ('add', ('mul', 100, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))))), ('mul', 10, ('param', 'arg2'), ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))))), 100)), ('div', ('add', ('mul', 100, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))))), ('mul', 10, ('param', 'arg2'), ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))))), 100)), ('stor', ('name', 'pLATPrice', 8))))
    revert
}

function getCostForBattleCards(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg3 == 1:
        if arg2:
            return ((2 * arg2 * unitDefense[arg1].field_512) + unitDefense[arg1].field_256)
        return unitDefense[arg1].field_256
    if arg3 <= 1:
        return 0
    if arg2 <= 0:
        if arg3 + arg2 >= arg2:
            if not unitDefense[arg1].field_256:
                if not arg3 + arg2:
                    return 0
                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                        return 0
                    if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                            return ((-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512))
            else:
                if (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) / unitDefense[arg1].field_256 == arg3 + arg2:
                    if not arg3 + arg2:
                        return ((arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256))
                    if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                        if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                            return ((arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256))
                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                            if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                                return ((-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) + (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256))
    else:
        if arg3 + arg2 >= arg2:
            if not unitDefense[arg1].field_256:
                if not arg3 + arg2:
                    return ((test266151307() * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256))
                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                        return ((test266151307() * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256))
                    if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                            return ((-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256))
            else:
                if (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) / unitDefense[arg1].field_256 == arg3 + arg2:
                    if not arg3 + arg2:
                        return ((arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256))
                    if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                        if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                            return ((arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256))
                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                            if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                                return ((-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) + (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256))
    revert
}

function getCostForCards(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg3 == 1:
        if arg2:
            return ((2 * arg2 * unitCoinProduction[arg1].field_512) + unitCoinProduction[arg1].field_256)
        return unitCoinProduction[arg1].field_256
    if arg3 <= 1:
        return 0
    if arg2 <= 0:
        if arg3 + arg2 >= arg2:
            if not unitCoinProduction[arg1].field_256:
                if not arg3 + arg2:
                    return 0
                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                        return 0
                    if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                            return ((-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512))
            else:
                if (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) / unitCoinProduction[arg1].field_256 == arg3 + arg2:
                    if not arg3 + arg2:
                        return ((arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256))
                    if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                        if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                            return ((arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256))
                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                            if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                                return ((-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) + (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256))
    else:
        if arg3 + arg2 >= arg2:
            if not unitCoinProduction[arg1].field_256:
                if not arg3 + arg2:
                    return ((test266151307() * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256))
                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                        return ((test266151307() * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256))
                    if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                            return ((-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256))
            else:
                if (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) / unitCoinProduction[arg1].field_256 == arg3 + arg2:
                    if not arg3 + arg2:
                        return ((arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256))
                    if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                        if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                            return ((arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256))
                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                            if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                                return ((-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) + (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256))
    revert
}

function getBattleCardInfo(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg3 == 1:
        if arg2:
            if not unitDefense[arg1].field_768:
                return unitDefense[arg1].field_0, 
                       (2 * arg2 * unitDefense[arg1].field_512) + unitDefense[arg1].field_256,
                       0,
                       bool(unitDefense[arg1].field_1792)
            if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                return unitDefense[arg1].field_0, 
                       (2 * arg2 * unitDefense[arg1].field_512) + unitDefense[arg1].field_256,
                       arg3 * unitDefense[arg1].field_768,
                       bool(unitDefense[arg1].field_1792)
        else:
            if not unitDefense[arg1].field_768:
                return unitDefense[arg1].field_0, unitDefense[arg1].field_256, 0, bool(unitDefense[arg1].field_1792)
            if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                return unitDefense[arg1].field_0, 
                       unitDefense[arg1].field_256,
                       arg3 * unitDefense[arg1].field_768,
                       bool(unitDefense[arg1].field_1792)
        ('iszero', ('eq', ('div', ('mul', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'unitDefense', 2))))), ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'unitDefense', 2))))), ('param', 'arg3')))
    else:
        if arg3 <= 1:
            if not unitDefense[arg1].field_768:
                return unitDefense[arg1].field_0, 0, 0, bool(unitDefense[arg1].field_1792)
            if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                return unitDefense[arg1].field_0, 0, arg3 * unitDefense[arg1].field_768, bool(unitDefense[arg1].field_1792)
        else:
            if arg2 <= 0:
                if arg3 + arg2 >= arg2:
                    if not unitDefense[arg1].field_256:
                        if not arg3 + arg2:
                            if not unitDefense[arg1].field_768:
                                return unitDefense[arg1].field_0, 0, 0, bool(unitDefense[arg1].field_1792)
                            if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                return unitDefense[arg1].field_0, 0, arg3 * unitDefense[arg1].field_768, bool(unitDefense[arg1].field_1792)
                        else:
                            if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                    if not unitDefense[arg1].field_768:
                                        return unitDefense[arg1].field_0, 0, 0, bool(unitDefense[arg1].field_1792)
                                    if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                        return unitDefense[arg1].field_0, 0, arg3 * unitDefense[arg1].field_768, bool(unitDefense[arg1].field_1792)
                                else:
                                    if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                                            if not unitDefense[arg1].field_768:
                                                return unitDefense[arg1].field_0, 
                                                       (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512),
                                                       0,
                                                       bool(unitDefense[arg1].field_1792)
                                            if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                                return unitDefense[arg1].field_0, 
                                                       (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512),
                                                       arg3 * unitDefense[arg1].field_768,
                                                       bool(unitDefense[arg1].field_1792)
                    else:
                        if (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) / unitDefense[arg1].field_256 == arg3 + arg2:
                            if not arg3 + arg2:
                                if not unitDefense[arg1].field_768:
                                    return unitDefense[arg1].field_0, 
                                           (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256),
                                           0,
                                           bool(unitDefense[arg1].field_1792)
                                if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                    return unitDefense[arg1].field_0, 
                                           (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256),
                                           arg3 * unitDefense[arg1].field_768,
                                           bool(unitDefense[arg1].field_1792)
                            else:
                                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                        if not unitDefense[arg1].field_768:
                                            return unitDefense[arg1].field_0, 
                                                   (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256),
                                                   0,
                                                   bool(unitDefense[arg1].field_1792)
                                        if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                            return unitDefense[arg1].field_0, 
                                                   (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256),
                                                   arg3 * unitDefense[arg1].field_768,
                                                   bool(unitDefense[arg1].field_1792)
                                    else:
                                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                                            if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                                                if not unitDefense[arg1].field_768:
                                                    return unitDefense[arg1].field_0, 
                                                           (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) + (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256),
                                                           0,
                                                           bool(unitDefense[arg1].field_1792)
                                                if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                                    return unitDefense[arg1].field_0, 
                                                           (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) + (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256),
                                                           arg3 * unitDefense[arg1].field_768,
                                                           bool(unitDefense[arg1].field_1792)
            else:
                if arg3 + arg2 >= arg2:
                    if not unitDefense[arg1].field_256:
                        if not arg3 + arg2:
                            if not unitDefense[arg1].field_768:
                                return unitDefense[arg1].field_0, 
                                       (test266151307() * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                       0,
                                       bool(unitDefense[arg1].field_1792)
                            if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                return unitDefense[arg1].field_0, 
                                       (test266151307() * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                       arg3 * unitDefense[arg1].field_768,
                                       bool(unitDefense[arg1].field_1792)
                        else:
                            if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                    if not unitDefense[arg1].field_768:
                                        return unitDefense[arg1].field_0, 
                                               (test266151307() * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                               0,
                                               bool(unitDefense[arg1].field_1792)
                                    if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                        return unitDefense[arg1].field_0, 
                                               (test266151307() * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                               arg3 * unitDefense[arg1].field_768,
                                               bool(unitDefense[arg1].field_1792)
                                else:
                                    if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                                            if not unitDefense[arg1].field_768:
                                                return unitDefense[arg1].field_0, 
                                                       (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                                       0,
                                                       bool(unitDefense[arg1].field_1792)
                                            if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                                return unitDefense[arg1].field_0, 
                                                       (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                                       arg3 * unitDefense[arg1].field_768,
                                                       bool(unitDefense[arg1].field_1792)
                    else:
                        if (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) / unitDefense[arg1].field_256 == arg3 + arg2:
                            if not arg3 + arg2:
                                if not unitDefense[arg1].field_768:
                                    return unitDefense[arg1].field_0, 
                                           (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                           0,
                                           bool(unitDefense[arg1].field_1792)
                                if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                    return unitDefense[arg1].field_0, 
                                           (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                           arg3 * unitDefense[arg1].field_768,
                                           bool(unitDefense[arg1].field_1792)
                            else:
                                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                        if not unitDefense[arg1].field_768:
                                            return unitDefense[arg1].field_0, 
                                                   (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                                   0,
                                                   bool(unitDefense[arg1].field_1792)
                                        if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                            return unitDefense[arg1].field_0, 
                                                   (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                                   arg3 * unitDefense[arg1].field_768,
                                                   bool(unitDefense[arg1].field_1792)
                                    else:
                                        if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitDefense[arg1].field_512:
                                            if (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) >= 0:
                                                if not unitDefense[arg1].field_768:
                                                    return unitDefense[arg1].field_0, 
                                                           (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) + (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                                           0,
                                                           bool(unitDefense[arg1].field_1792)
                                                if arg3 * unitDefense[arg1].field_768 / unitDefense[arg1].field_768 == arg3:
                                                    return unitDefense[arg1].field_0, 
                                                           (-1 * arg3 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_512) + (arg3 * arg3 * unitDefense[arg1].field_512) + (arg2 * arg3 * unitDefense[arg1].field_512) + (arg3 * arg2 * unitDefense[arg1].field_512) + (arg2 * arg2 * unitDefense[arg1].field_512) + (arg3 * unitDefense[arg1].field_256) + (arg2 * unitDefense[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitDefense[arg1].field_512) - (arg2 * arg2 * unitDefense[arg1].field_512) - (arg2 * unitDefense[arg1].field_256),
                                                           arg3 * unitDefense[arg1].field_768,
                                                           bool(unitDefense[arg1].field_1792)
    revert
}

function getCardInfo(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg3 == 1:
        if arg2:
            if not unitCoinProduction[arg1].field_768:
                return unitCoinProduction[arg1].field_0, 
                       unitCoinProduction[arg1].field_1024,
                       (2 * arg2 * unitCoinProduction[arg1].field_512) + unitCoinProduction[arg1].field_256,
                       0,
                       bool(unitCoinProduction[arg1].field_1280)
            if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                return unitCoinProduction[arg1].field_0, 
                       unitCoinProduction[arg1].field_1024,
                       (2 * arg2 * unitCoinProduction[arg1].field_512) + unitCoinProduction[arg1].field_256,
                       arg3 * unitCoinProduction[arg1].field_768,
                       bool(unitCoinProduction[arg1].field_1280)
        else:
            if not unitCoinProduction[arg1].field_768:
                return unitCoinProduction[arg1].field_0, 
                       unitCoinProduction[arg1].field_1024,
                       unitCoinProduction[arg1].field_256,
                       0,
                       bool(unitCoinProduction[arg1].field_1280)
            if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                return unitCoinProduction[arg1].field_0, 
                       unitCoinProduction[arg1].field_1024,
                       unitCoinProduction[arg1].field_256,
                       arg3 * unitCoinProduction[arg1].field_768,
                       bool(unitCoinProduction[arg1].field_1280)
        ('iszero', ('eq', ('div', ('mul', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'unitCoinProduction', 1))))), ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'unitCoinProduction', 1))))), ('param', 'arg3')))
    else:
        if arg3 <= 1:
            if not unitCoinProduction[arg1].field_768:
                return unitCoinProduction[arg1].field_0, unitCoinProduction[arg1].field_1024, 0, 0, bool(unitCoinProduction[arg1].field_1280)
            if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                return unitCoinProduction[arg1].field_0, 
                       unitCoinProduction[arg1].field_1024,
                       0,
                       arg3 * unitCoinProduction[arg1].field_768,
                       bool(unitCoinProduction[arg1].field_1280)
        else:
            if arg2 <= 0:
                if arg3 + arg2 >= arg2:
                    if not unitCoinProduction[arg1].field_256:
                        if not arg3 + arg2:
                            if not unitCoinProduction[arg1].field_768:
                                return unitCoinProduction[arg1].field_0, unitCoinProduction[arg1].field_1024, 0, 0, bool(unitCoinProduction[arg1].field_1280)
                            if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                return unitCoinProduction[arg1].field_0, 
                                       unitCoinProduction[arg1].field_1024,
                                       0,
                                       arg3 * unitCoinProduction[arg1].field_768,
                                       bool(unitCoinProduction[arg1].field_1280)
                        else:
                            if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                    if not unitCoinProduction[arg1].field_768:
                                        return unitCoinProduction[arg1].field_0, unitCoinProduction[arg1].field_1024, 0, 0, bool(unitCoinProduction[arg1].field_1280)
                                    if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                        return unitCoinProduction[arg1].field_0, 
                                               unitCoinProduction[arg1].field_1024,
                                               0,
                                               arg3 * unitCoinProduction[arg1].field_768,
                                               bool(unitCoinProduction[arg1].field_1280)
                                else:
                                    if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                                            if not unitCoinProduction[arg1].field_768:
                                                return unitCoinProduction[arg1].field_0, 
                                                       unitCoinProduction[arg1].field_1024,
                                                       (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512),
                                                       0,
                                                       bool(unitCoinProduction[arg1].field_1280)
                                            if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                                return unitCoinProduction[arg1].field_0, 
                                                       unitCoinProduction[arg1].field_1024,
                                                       (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512),
                                                       arg3 * unitCoinProduction[arg1].field_768,
                                                       bool(unitCoinProduction[arg1].field_1280)
                    else:
                        if (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) / unitCoinProduction[arg1].field_256 == arg3 + arg2:
                            if not arg3 + arg2:
                                if not unitCoinProduction[arg1].field_768:
                                    return unitCoinProduction[arg1].field_0, 
                                           unitCoinProduction[arg1].field_1024,
                                           (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256),
                                           0,
                                           bool(unitCoinProduction[arg1].field_1280)
                                if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                    return unitCoinProduction[arg1].field_0, 
                                           unitCoinProduction[arg1].field_1024,
                                           (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256),
                                           arg3 * unitCoinProduction[arg1].field_768,
                                           bool(unitCoinProduction[arg1].field_1280)
                            else:
                                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                        if not unitCoinProduction[arg1].field_768:
                                            return unitCoinProduction[arg1].field_0, 
                                                   unitCoinProduction[arg1].field_1024,
                                                   (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256),
                                                   0,
                                                   bool(unitCoinProduction[arg1].field_1280)
                                        if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                            return unitCoinProduction[arg1].field_0, 
                                                   unitCoinProduction[arg1].field_1024,
                                                   (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256),
                                                   arg3 * unitCoinProduction[arg1].field_768,
                                                   bool(unitCoinProduction[arg1].field_1280)
                                    else:
                                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                                            if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                                                if not unitCoinProduction[arg1].field_768:
                                                    return unitCoinProduction[arg1].field_0, 
                                                           unitCoinProduction[arg1].field_1024,
                                                           (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) + (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256),
                                                           0,
                                                           bool(unitCoinProduction[arg1].field_1280)
                                                if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                                    return unitCoinProduction[arg1].field_0, 
                                                           unitCoinProduction[arg1].field_1024,
                                                           (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) + (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256),
                                                           arg3 * unitCoinProduction[arg1].field_768,
                                                           bool(unitCoinProduction[arg1].field_1280)
            else:
                if arg3 + arg2 >= arg2:
                    if not unitCoinProduction[arg1].field_256:
                        if not arg3 + arg2:
                            if not unitCoinProduction[arg1].field_768:
                                return unitCoinProduction[arg1].field_0, 
                                       unitCoinProduction[arg1].field_1024,
                                       (test266151307() * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                       0,
                                       bool(unitCoinProduction[arg1].field_1280)
                            if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                return unitCoinProduction[arg1].field_0, 
                                       unitCoinProduction[arg1].field_1024,
                                       (test266151307() * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                       arg3 * unitCoinProduction[arg1].field_768,
                                       bool(unitCoinProduction[arg1].field_1280)
                        else:
                            if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                    if not unitCoinProduction[arg1].field_768:
                                        return unitCoinProduction[arg1].field_0, 
                                               unitCoinProduction[arg1].field_1024,
                                               (test266151307() * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                               0,
                                               bool(unitCoinProduction[arg1].field_1280)
                                    if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                        return unitCoinProduction[arg1].field_0, 
                                               unitCoinProduction[arg1].field_1024,
                                               (test266151307() * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                               arg3 * unitCoinProduction[arg1].field_768,
                                               bool(unitCoinProduction[arg1].field_1280)
                                else:
                                    if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                                            if not unitCoinProduction[arg1].field_768:
                                                return unitCoinProduction[arg1].field_0, 
                                                       unitCoinProduction[arg1].field_1024,
                                                       (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                                       0,
                                                       bool(unitCoinProduction[arg1].field_1280)
                                            if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                                return unitCoinProduction[arg1].field_0, 
                                                       unitCoinProduction[arg1].field_1024,
                                                       (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                                       arg3 * unitCoinProduction[arg1].field_768,
                                                       bool(unitCoinProduction[arg1].field_1280)
                    else:
                        if (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) / unitCoinProduction[arg1].field_256 == arg3 + arg2:
                            if not arg3 + arg2:
                                if not unitCoinProduction[arg1].field_768:
                                    return unitCoinProduction[arg1].field_0, 
                                           unitCoinProduction[arg1].field_1024,
                                           (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                           0,
                                           bool(unitCoinProduction[arg1].field_1280)
                                if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                    return unitCoinProduction[arg1].field_0, 
                                           unitCoinProduction[arg1].field_1024,
                                           (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                           arg3 * unitCoinProduction[arg1].field_768,
                                           bool(unitCoinProduction[arg1].field_1280)
                            else:
                                if -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) / arg3 + arg2 == arg3 + arg2 - 1:
                                    if not -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2):
                                        if not unitCoinProduction[arg1].field_768:
                                            return unitCoinProduction[arg1].field_0, 
                                                   unitCoinProduction[arg1].field_1024,
                                                   (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                                   0,
                                                   bool(unitCoinProduction[arg1].field_1280)
                                        if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                            return unitCoinProduction[arg1].field_0, 
                                                   unitCoinProduction[arg1].field_1024,
                                                   (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                                   arg3 * unitCoinProduction[arg1].field_768,
                                                   bool(unitCoinProduction[arg1].field_1280)
                                    else:
                                        if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) / -arg3 - arg2 + (arg3 * arg3) + (arg2 * arg3) + (arg3 * arg2) + (arg2 * arg2) == unitCoinProduction[arg1].field_512:
                                            if (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) >= 0:
                                                if not unitCoinProduction[arg1].field_768:
                                                    return unitCoinProduction[arg1].field_0, 
                                                           unitCoinProduction[arg1].field_1024,
                                                           (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) + (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                                           0,
                                                           bool(unitCoinProduction[arg1].field_1280)
                                                if arg3 * unitCoinProduction[arg1].field_768 / unitCoinProduction[arg1].field_768 == arg3:
                                                    return unitCoinProduction[arg1].field_0, 
                                                           unitCoinProduction[arg1].field_1024,
                                                           (-1 * arg3 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_512) + (arg3 * arg3 * unitCoinProduction[arg1].field_512) + (arg2 * arg3 * unitCoinProduction[arg1].field_512) + (arg3 * arg2 * unitCoinProduction[arg1].field_512) + (arg2 * arg2 * unitCoinProduction[arg1].field_512) + (arg3 * unitCoinProduction[arg1].field_256) + (arg2 * unitCoinProduction[arg1].field_256) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * arg2 * unitCoinProduction[arg1].field_512) - (arg2 * unitCoinProduction[arg1].field_256),
                                                           arg3 * unitCoinProduction[arg1].field_768,
                                                           bool(unitCoinProduction[arg1].field_1280)
    revert
}



}
