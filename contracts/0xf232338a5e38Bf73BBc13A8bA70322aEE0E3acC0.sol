contract main {




// =====================  Runtime code  =====================


uint256 TIME_TO_HATCH_1SNAIL;
uint256 STARTING_SNAIL;
uint256 SNAILMASTER_INCREASE;
uint256 STARTING_SNAIL_COST;
uint256 HATCHING_COST;
uint256 SPIDER_BASE_REQ;
uint256 SPIDER_BOOST;
uint256 TADPOLE_BASE_REQ;
uint256 TADPOLE_BOOST;
uint256 SQUIRREL_BASE_REQ;
uint256 SQUIRREL_BOOST;
uint8 gameStarted;
address gameOwner; offset 8
uint256 round;
address currentSpiderOwner;
address currentTadpoleOwner;
address currentSquirrelOwner;
bool stor16;
uint256 stor16;
uint256 stor16; offset 1
uint256 spiderReq;
uint256 tadpoleReq;
bool stor18;
uint256 stor18;
uint256 stor18; offset 1
uint256 squirrelReq;
uint256 snailmasterReq;
uint256 startingSnailAmount;
uint256 marketEggs;
uint256 totalAcorns;
bool stor23; offset 255
uint256 stor23;
uint256 snailPot;
uint256 previousSnailPot;
uint256 treePot;
mapping of uint8 stor26;
mapping of uint256 getMySnail;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of uint256 playerAcorns;
mapping of uint256 playerEarnings;
mapping of uint256 playerProdBoost;

function SPIDER_BASE_REQ() {
    return SPIDER_BASE_REQ
}

function round() {
    return round
}

function GetMySnail() {
    return getMySnail[address(msg.sender)]
}

function hatcherySnail(address arg1) {
    return getMySnail[arg1]
}

function marketEggs() {
    return marketEggs
}

function TADPOLE_BASE_REQ() {
    return TADPOLE_BASE_REQ
}

function previousSnailPot() {
    return previousSnailPot
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function SQUIRREL_BOOST() {
    return SQUIRREL_BOOST
}

function startingSnailAmount() {
    return startingSnailAmount
}

function gameStarted() {
    return bool(gameStarted)
}

function playerEarnings(address arg1) {
    return playerEarnings[arg1]
}

function snailPot() {
    return snailPot
}

function claimedEggs(address arg1) {
    return claimedEggs[arg1]
}

function SPIDER_BOOST() {
    return SPIDER_BOOST
}

function SQUIRREL_BASE_REQ() {
    return SQUIRREL_BASE_REQ
}

function HATCHING_COST() {
    return HATCHING_COST
}

function snailmasterReq() {
    return snailmasterReq
}

function STARTING_SNAIL_COST() {
    return STARTING_SNAIL_COST
}

function playerAcorns(address arg1) {
    return playerAcorns[arg1]
}

function currentSpiderOwner() {
    return currentSpiderOwner
}

function treePot() {
    return treePot
}

function STARTING_SNAIL() {
    return STARTING_SNAIL
}

function SNAILMASTER_INCREASE() {
    return SNAILMASTER_INCREASE
}

function TADPOLE_BOOST() {
    return TADPOLE_BOOST
}

function tadpoleReq() {
    return tadpoleReq
}

function playerProdBoost(address arg1) {
    return playerProdBoost[arg1]
}

function totalAcorns() {
    return totalAcorns
}

function spiderReq() {
    return spiderReq
}

function TIME_TO_HATCH_1SNAIL() {
    return TIME_TO_HATCH_1SNAIL
}

function GetMyAcorn() {
    return playerAcorns[address(msg.sender)]
}

function GetMyEarning() {
    return playerEarnings[address(msg.sender)]
}

function hasStartingSnails(address arg1) {
    return bool(stor26[arg1])
}

function squirrelReq() {
    return squirrelReq
}

function GetMyProd() {
    return playerProdBoost[address(msg.sender)]
}

function currentSquirrelOwner() {
    return currentSquirrelOwner
}

function gameOwner() {
    return gameOwner
}

function currentTadpoleOwner() {
    return currentTadpoleOwner
}

function _fallback() payable {
    revert
}

function ComputeAcornPrice() {
    require totalAcorns
    return (treePot / totalAcorns)
}

function ComputeBuy(uint256 arg1) {
    require arg1 + snailPot >= arg1
    if not arg1:
        if arg1 + snailPot:
            return (0 / arg1 + snailPot)
    else:
        if arg1:
            if arg1 * marketEggs / arg1 == marketEggs:
                if arg1 + snailPot:
                    return (arg1 * marketEggs / arg1 + snailPot)
    revert
}

function ComputeSell(uint256 arg1) {
    require arg1 + marketEggs >= arg1
    if not arg1:
        if arg1 + marketEggs:
            return (0 / arg1 + marketEggs / 2)
    else:
        if arg1:
            if arg1 * snailPot / arg1 == snailPot:
                if arg1 + marketEggs:
                    return (arg1 * snailPot / arg1 + marketEggs / 2)
    revert
}

function WithdrawEarnings() {
    require playerEarnings[address(msg.sender)] > 0
    playerEarnings[address(msg.sender)] = 0
    call msg.sender with:
       value playerEarnings[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrewEarnings(playerEarnings[address(msg.sender)], msg.sender);
}

function BuyStartingSnails() payable {
    require gameStarted
    require tx.origin == msg.sender
    require not stor26[address(msg.sender)]
    require msg.value == STARTING_SNAIL_COST
    require snailPot + (msg.value / 2) >= snailPot
    snailPot += msg.value / 2
    require treePot + (msg.value / 2) >= treePot
    treePot += msg.value / 2
    stor26[address(msg.sender)] = 1
    lastHatch[address(msg.sender)] = block.timestamp
    playerProdBoost[address(msg.sender)] = 1
    getMySnail[address(msg.sender)] = startingSnailAmount
    emit StartedSnailing(msg.sender, round);
}

function BecomeSpiderQueen() {
    require gameStarted
    require getMySnail[address(msg.sender)] >= spiderReq
    require spiderReq <= getMySnail[address(msg.sender)]
    getMySnail[address(msg.sender)] -= spiderReq
    if not spiderReq:
        spiderReq = 0
    else:
        require spiderReq
        require 2 * spiderReq / spiderReq == 2
        bool(stor16.field_0) = 0
        uint255(stor16.field_1) = uint255(stor16.field_0)
    require SPIDER_BOOST <= playerProdBoost[stor13]
    playerProdBoost[stor13] -= SPIDER_BOOST
    currentSpiderOwner = msg.sender
    require playerProdBoost[stor13] + SPIDER_BOOST >= playerProdBoost[stor13]
    playerProdBoost[stor13] += SPIDER_BOOST
    emit BecameQueen(spiderReq, msg.sender, round);
}

function BecomeSquirrelDuke() {
    require gameStarted
    require bool(stor26[address(msg.sender)]) == 1
    require playerAcorns[address(msg.sender)] >= squirrelReq
    require squirrelReq <= playerAcorns[address(msg.sender)]
    playerAcorns[address(msg.sender)] -= squirrelReq
    require squirrelReq <= totalAcorns
    totalAcorns -= squirrelReq
    if not squirrelReq:
        squirrelReq = 0
    else:
        require squirrelReq
        require 2 * squirrelReq / squirrelReq == 2
        bool(stor18.field_0) = 0
        uint255(stor18.field_1) = uint255(stor18.field_0)
    require SQUIRREL_BOOST <= playerProdBoost[stor15]
    playerProdBoost[stor15] -= SQUIRREL_BOOST
    currentSquirrelOwner = msg.sender
    require playerProdBoost[stor15] + SQUIRREL_BOOST >= playerProdBoost[stor15]
    playerProdBoost[stor15] += SQUIRREL_BOOST
    emit BecameDuke(squirrelReq, msg.sender, round);
}

function ComputeEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if TIME_TO_HATCH_1SNAIL < block.timestamp - lastHatch[address(arg1)]:
        if not TIME_TO_HATCH_1SNAIL:
            return 0
        if TIME_TO_HATCH_1SNAIL:
            if TIME_TO_HATCH_1SNAIL * getMySnail[address(arg1)] / TIME_TO_HATCH_1SNAIL == getMySnail[address(arg1)]:
                return (TIME_TO_HATCH_1SNAIL * getMySnail[address(arg1)])
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if block.timestamp - lastHatch[address(arg1)]:
            if (block.timestamp * getMySnail[address(arg1)]) - (lastHatch[address(arg1)] * getMySnail[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == getMySnail[address(arg1)]:
                return ((block.timestamp * getMySnail[address(arg1)]) - (lastHatch[address(arg1)] * getMySnail[address(arg1)]))
    revert
}

function SeedMarket(uint256 arg1, uint256 arg2) payable {
    require msg.value > 0
    require not round
    require msg.sender == gameOwner
    if not arg1:
        marketEggs = 0
    else:
        require arg1
        require arg1 * TIME_TO_HATCH_1SNAIL / arg1 == TIME_TO_HATCH_1SNAIL
        marketEggs = arg1 * TIME_TO_HATCH_1SNAIL
    uint255(stor23.field_0) = msg.value / 2
    bool(stor23.field_255) = 0
    require snailPot <= msg.value
    treePot = msg.value - snailPot
    if not snailPot:
        previousSnailPot = 0
    else:
        require snailPot
        require 10 * snailPot / snailPot == 10
        previousSnailPot = 10 * snailPot
    totalAcorns = arg2
    if not arg2:
        playerAcorns[address(msg.sender)] = 0
    else:
        require arg2
        require 99 * arg2 / arg2 == 99
        playerAcorns[address(msg.sender)] = 99 * arg2 / 100
    spiderReq = SPIDER_BASE_REQ
    tadpoleReq = TADPOLE_BASE_REQ
    squirrelReq = SQUIRREL_BASE_REQ
    round = 1
    gameStarted = 1
}

function SellAcorns(uint256 arg1) {
    require playerAcorns[address(msg.sender)] > 0
    require arg1 <= playerAcorns[address(msg.sender)]
    playerAcorns[address(msg.sender)] -= arg1
    require totalAcorns
    if not treePot / totalAcorns:
        require arg1 <= totalAcorns
        totalAcorns -= arg1
        require 0 <= treePot
        require playerEarnings[address(msg.sender)] >= playerEarnings[address(msg.sender)]
        emit SoldAcorn(arg1, 0, msg.sender);
    else:
        require treePot / totalAcorns
        require treePot / totalAcorns * arg1 / treePot / totalAcorns == arg1
        require arg1 <= totalAcorns
        totalAcorns -= arg1
        require treePot / totalAcorns * arg1 <= treePot
        treePot += -1 * treePot / totalAcorns * arg1
        require playerEarnings[address(msg.sender)] + (treePot / totalAcorns * arg1) >= playerEarnings[address(msg.sender)]
        playerEarnings[address(msg.sender)] += treePot / totalAcorns * arg1
        emit SoldAcorn(arg1, treePot / totalAcorns * arg1, msg.sender);
}

function BecomeSnailmaster() {
    require gameStarted
    require getMySnail[address(msg.sender)] >= snailmasterReq
    getMySnail[address(msg.sender)] = getMySnail[address(msg.sender)] / 10
    if not round:
        require snailmasterReq >= snailmasterReq
    else:
        require round
        require round * SNAILMASTER_INCREASE / round == SNAILMASTER_INCREASE
        require snailmasterReq + (round * SNAILMASTER_INCREASE) >= snailmasterReq
        snailmasterReq += round * SNAILMASTER_INCREASE
    if not round:
        require startingSnailAmount >= startingSnailAmount
    else:
        require round
        require round * STARTING_SNAIL / round == STARTING_SNAIL
        require startingSnailAmount + (round * STARTING_SNAIL) >= startingSnailAmount
        startingSnailAmount += round * STARTING_SNAIL
    spiderReq = SPIDER_BASE_REQ
    tadpoleReq = TADPOLE_BASE_REQ
    squirrelReq = SQUIRREL_BASE_REQ
    previousSnailPot = snailPot
    require snailPot / 5 <= snailPot
    snailPot -= snailPot / 5
    round++
    require playerEarnings[address(msg.sender)] + (snailPot / 5) >= playerEarnings[address(msg.sender)]
    playerEarnings[address(msg.sender)] += snailPot / 5
    emit BecameMaster(snailPot / 5, snailPot, msg.sender, round);
}

function BecomeTadpolePrince() payable {
    require gameStarted
    require bool(stor26[address(msg.sender)]) == 1
    require msg.value >= tadpoleReq
    if msg.value > tadpoleReq:
        require tadpoleReq <= msg.value
        require playerEarnings[address(msg.sender)] + msg.value - tadpoleReq >= playerEarnings[address(msg.sender)]
        playerEarnings[address(msg.sender)] = playerEarnings[address(msg.sender)] + msg.value - tadpoleReq
    require snailPot + (tadpoleReq / 12 / 2) >= snailPot
    snailPot += tadpoleReq / 12 / 2
    require treePot + (tadpoleReq / 12 / 2) >= treePot
    treePot += tadpoleReq / 12 / 2
    if not tadpoleReq:
        require playerEarnings[stor14] >= playerEarnings[stor14]
    else:
        require tadpoleReq
        require 11 * tadpoleReq / tadpoleReq == 11
        require playerEarnings[stor14] + (11 * tadpoleReq / 12) >= playerEarnings[stor14]
        playerEarnings[stor14] += 11 * tadpoleReq / 12
    if not tadpoleReq:
        tadpoleReq = 0
    else:
        require tadpoleReq
        require 6 * tadpoleReq / tadpoleReq == 6
        tadpoleReq = 6 * tadpoleReq / 5
    require TADPOLE_BOOST <= playerProdBoost[stor14]
    playerProdBoost[stor14] -= TADPOLE_BOOST
    currentTadpoleOwner = msg.sender
    require playerProdBoost[stor14] + TADPOLE_BOOST >= playerProdBoost[stor14]
    playerProdBoost[stor14] += TADPOLE_BOOST
    emit BecamePrince(tadpoleReq, msg.sender, round);
}

function BuyEggs() payable {
    require gameStarted
    require bool(stor26[address(msg.sender)]) == 1
    require gameOwner != msg.sender
    require msg.value + snailPot >= msg.value
    if not msg.value:
        require msg.value + snailPot
        require snailPot + (msg.value / 2) >= snailPot
        snailPot += msg.value / 2
        require treePot + (msg.value / 2) >= treePot
        treePot += msg.value / 2
        require 0 / msg.value + snailPot <= marketEggs
        marketEggs -= 0 / msg.value + snailPot
        require claimedEggs[address(msg.sender)] + (0 / msg.value + snailPot) >= claimedEggs[address(msg.sender)]
        claimedEggs[address(msg.sender)] += 0 / msg.value + snailPot
        emit BoughtEgg(0 / msg.value + snailPot, msg.value, msg.sender);
    else:
        require msg.value
        require msg.value * marketEggs / msg.value == marketEggs
        require msg.value + snailPot
        require snailPot + (msg.value / 2) >= snailPot
        snailPot += msg.value / 2
        require treePot + (msg.value / 2) >= treePot
        treePot += msg.value / 2
        require msg.value * marketEggs / msg.value + snailPot <= marketEggs
        marketEggs -= msg.value * marketEggs / msg.value + snailPot
        require claimedEggs[address(msg.sender)] + (msg.value * marketEggs / msg.value + snailPot) >= claimedEggs[address(msg.sender)]
        claimedEggs[address(msg.sender)] += msg.value * marketEggs / msg.value + snailPot
        emit BoughtEgg(msg.value * marketEggs / msg.value + snailPot, msg.value, msg.sender);
}

function ComputeMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if TIME_TO_HATCH_1SNAIL < block.timestamp - lastHatch[address(msg.sender)]:
        if not TIME_TO_HATCH_1SNAIL:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if TIME_TO_HATCH_1SNAIL:
                if TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] / TIME_TO_HATCH_1SNAIL == getMySnail[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]))
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if block.timestamp - lastHatch[address(msg.sender)]:
                if (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == getMySnail[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]))
    revert
}

function GetMyEgg() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if TIME_TO_HATCH_1SNAIL < block.timestamp - lastHatch[address(msg.sender)]:
        if not TIME_TO_HATCH_1SNAIL:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                if TIME_TO_HATCH_1SNAIL:
                    return (claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL)
        else:
            if TIME_TO_HATCH_1SNAIL:
                if TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] / TIME_TO_HATCH_1SNAIL == getMySnail[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        if TIME_TO_HATCH_1SNAIL:
                            return (claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL)
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                if TIME_TO_HATCH_1SNAIL:
                    return (claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL)
        else:
            if block.timestamp - lastHatch[address(msg.sender)]:
                if (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == getMySnail[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        if TIME_TO_HATCH_1SNAIL:
                            return (claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL)
    revert
}

function BuyAcorns() payable {
    require msg.value > 0
    require tx.origin == msg.sender
    require gameStarted
    require totalAcorns
    require treePot / totalAcorns
    if snailPot >= previousSnailPot:
        require snailPot + (msg.value / 2) >= snailPot
        snailPot += msg.value / 2
        require treePot + (msg.value / 2) >= treePot
        treePot += msg.value / 2
        require totalAcorns + (msg.value / treePot / totalAcorns / 2) >= totalAcorns
        totalAcorns += msg.value / treePot / totalAcorns / 2
        require playerAcorns[address(msg.sender)] + (msg.value / treePot / totalAcorns / 2) >= playerAcorns[address(msg.sender)]
        playerAcorns[address(msg.sender)] += msg.value / treePot / totalAcorns / 2
        emit BoughtAcorn(Mask(255, 1, msg.value / treePot / totalAcorns), msg.value, msg.sender);
    else:
        if not msg.value / treePot / totalAcorns:
            require msg.value / 4 <= msg.value
            require snailPot + (msg.value / 4) >= snailPot
            snailPot += msg.value / 4
            require treePot + msg.value - (msg.value / 4) >= treePot
            treePot = treePot + msg.value - (msg.value / 4)
            require totalAcorns >= totalAcorns
            require playerAcorns[address(msg.sender)] >= playerAcorns[address(msg.sender)]
            emit BoughtAcorn(0, msg.value, msg.sender);
        else:
            require msg.value / treePot / totalAcorns
            require 3 * msg.value / treePot / totalAcorns / msg.value / treePot / totalAcorns == 3
            require msg.value / 4 <= msg.value
            require snailPot + (msg.value / 4) >= snailPot
            snailPot += msg.value / 4
            require treePot + msg.value - (msg.value / 4) >= treePot
            treePot = treePot + msg.value - (msg.value / 4)
            require totalAcorns + (3 * msg.value / treePot / totalAcorns / 4) >= totalAcorns
            totalAcorns += 3 * msg.value / treePot / totalAcorns / 4
            require playerAcorns[address(msg.sender)] + (3 * msg.value / treePot / totalAcorns / 4) >= playerAcorns[address(msg.sender)]
            playerAcorns[address(msg.sender)] += 3 * msg.value / treePot / totalAcorns / 4
            emit BoughtAcorn(Mask(254, 2, 3 * msg.value / treePot / totalAcorns), msg.value, msg.sender);
}

function HatchEggs() payable {
    require gameStarted
    require msg.value == HATCHING_COST
    require snailPot + (msg.value / 2) >= snailPot
    snailPot += msg.value / 2
    require treePot + (msg.value / 2) >= treePot
    treePot += msg.value / 2
    require lastHatch[address(msg.sender)] <= block.timestamp
    if TIME_TO_HATCH_1SNAIL < block.timestamp - lastHatch[address(msg.sender)]:
        if not TIME_TO_HATCH_1SNAIL:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require TIME_TO_HATCH_1SNAIL
            if not claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL:
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] >= getMySnail[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)], 0, msg.sender);
            else:
                require claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL
                require claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)] / claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL == playerProdBoost[address(msg.sender)]
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] + (claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]) >= getMySnail[address(msg.sender)]
                getMySnail[address(msg.sender)] += claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)], claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)], msg.sender);
        else:
            require TIME_TO_HATCH_1SNAIL
            require TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] / TIME_TO_HATCH_1SNAIL == getMySnail[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require TIME_TO_HATCH_1SNAIL
            if not claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL:
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] >= getMySnail[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]), 0, msg.sender);
            else:
                require claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL
                require claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)] / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL == playerProdBoost[address(msg.sender)]
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]) >= getMySnail[address(msg.sender)]
                getMySnail[address(msg.sender)] += claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]), claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)], msg.sender);
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require TIME_TO_HATCH_1SNAIL
            if not claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL:
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] >= getMySnail[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)], 0, msg.sender);
            else:
                require claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL
                require claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)] / claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL == playerProdBoost[address(msg.sender)]
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] + (claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]) >= getMySnail[address(msg.sender)]
                getMySnail[address(msg.sender)] += claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)], claimedEggs[address(msg.sender)] / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)], msg.sender);
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == getMySnail[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require TIME_TO_HATCH_1SNAIL
            if not claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL:
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] >= getMySnail[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]), 0, msg.sender);
            else:
                require claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL
                require claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)] / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL == playerProdBoost[address(msg.sender)]
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require getMySnail[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]) >= getMySnail[address(msg.sender)]
                getMySnail[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)]
                emit Hatched(claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]), claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / TIME_TO_HATCH_1SNAIL * playerProdBoost[address(msg.sender)], msg.sender);
}

function SellEggs() {
    require gameStarted
    require lastHatch[address(msg.sender)] <= block.timestamp
    if TIME_TO_HATCH_1SNAIL < block.timestamp - lastHatch[address(msg.sender)]:
        if not TIME_TO_HATCH_1SNAIL:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + marketEggs >= claimedEggs[address(msg.sender)]
            if not claimedEggs[address(msg.sender)]:
                require claimedEggs[address(msg.sender)] + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)]
                require 0 / claimedEggs[address(msg.sender)] + marketEggs / 2 <= snailPot
                snailPot -= 0 / claimedEggs[address(msg.sender)] + marketEggs / 2
                require playerEarnings[address(msg.sender)] + (0 / claimedEggs[address(msg.sender)] + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += 0 / claimedEggs[address(msg.sender)] + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)], 0 / claimedEggs[address(msg.sender)] + marketEggs / 2, msg.sender);
            else:
                require claimedEggs[address(msg.sender)]
                require claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] == snailPot
                require claimedEggs[address(msg.sender)] + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)]
                require claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2 <= snailPot
                snailPot -= claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2
                require playerEarnings[address(msg.sender)] + (claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)], claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2, msg.sender);
        else:
            require TIME_TO_HATCH_1SNAIL
            require TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] / TIME_TO_HATCH_1SNAIL == getMySnail[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require marketEggs >= 0
            if not claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]):
                require claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) >= marketEggs
                marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)])
                require 0 / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2 <= snailPot
                snailPot -= 0 / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2
                require playerEarnings[address(msg.sender)] + (0 / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += 0 / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]), 0 / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2, msg.sender);
            else:
                require claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)])
                require (claimedEggs[address(msg.sender)] * snailPot) + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) == snailPot
                require claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) >= marketEggs
                marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)])
                require (claimedEggs[address(msg.sender)] * snailPot) + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2 <= snailPot
                snailPot -= (claimedEggs[address(msg.sender)] * snailPot) + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2
                require playerEarnings[address(msg.sender)] + ((claimedEggs[address(msg.sender)] * snailPot) + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += (claimedEggs[address(msg.sender)] * snailPot) + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]), (claimedEggs[address(msg.sender)] * snailPot) + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (TIME_TO_HATCH_1SNAIL * getMySnail[address(msg.sender)]) + marketEggs / 2, msg.sender);
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + marketEggs >= claimedEggs[address(msg.sender)]
            if not claimedEggs[address(msg.sender)]:
                require claimedEggs[address(msg.sender)] + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)]
                require 0 / claimedEggs[address(msg.sender)] + marketEggs / 2 <= snailPot
                snailPot -= 0 / claimedEggs[address(msg.sender)] + marketEggs / 2
                require playerEarnings[address(msg.sender)] + (0 / claimedEggs[address(msg.sender)] + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += 0 / claimedEggs[address(msg.sender)] + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)], 0 / claimedEggs[address(msg.sender)] + marketEggs / 2, msg.sender);
            else:
                require claimedEggs[address(msg.sender)]
                require claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] == snailPot
                require claimedEggs[address(msg.sender)] + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)]
                require claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2 <= snailPot
                snailPot -= claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2
                require playerEarnings[address(msg.sender)] + (claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)], claimedEggs[address(msg.sender)] * snailPot / claimedEggs[address(msg.sender)] + marketEggs / 2, msg.sender);
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == getMySnail[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require marketEggs >= 0
            if not claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]):
                require claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) >= marketEggs
                marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)])
                require 0 / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2 <= snailPot
                snailPot -= 0 / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2
                require playerEarnings[address(msg.sender)] + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += 0 / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]), 0 / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2, msg.sender);
            else:
                require claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)])
                require (claimedEggs[address(msg.sender)] * snailPot) + (block.timestamp * getMySnail[address(msg.sender)] * snailPot) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) == snailPot
                require claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) >= marketEggs
                marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)])
                require (claimedEggs[address(msg.sender)] * snailPot) + (block.timestamp * getMySnail[address(msg.sender)] * snailPot) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2 <= snailPot
                snailPot -= (claimedEggs[address(msg.sender)] * snailPot) + (block.timestamp * getMySnail[address(msg.sender)] * snailPot) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2
                require playerEarnings[address(msg.sender)] + ((claimedEggs[address(msg.sender)] * snailPot) + (block.timestamp * getMySnail[address(msg.sender)] * snailPot) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2) >= playerEarnings[address(msg.sender)]
                playerEarnings[address(msg.sender)] += (claimedEggs[address(msg.sender)] * snailPot) + (block.timestamp * getMySnail[address(msg.sender)] * snailPot) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2
                emit SoldEgg(claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]), (claimedEggs[address(msg.sender)] * snailPot) + (block.timestamp * getMySnail[address(msg.sender)] * snailPot) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)] * snailPot) / claimedEggs[address(msg.sender)] + (block.timestamp * getMySnail[address(msg.sender)]) - (lastHatch[address(msg.sender)] * getMySnail[address(msg.sender)]) + marketEggs / 2, msg.sender);
}



}
