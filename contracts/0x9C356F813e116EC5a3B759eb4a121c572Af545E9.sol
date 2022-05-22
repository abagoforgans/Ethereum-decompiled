contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 TIME_TO_MAKE_TOMATOES;
uint8 stor1; offset 160
uint128 stor1; offset 160
address ownerAddress;
uint256 needToGetFree;
uint256 STARTING_SEEDS;
mapping of struct ballanceTomatoes;
mapping of uint256 claimedSeeds;
mapping of uint256 lastEvent;
mapping of address referrals;
mapping of uint256 totalIn;
mapping of uint256 totalOut;
uint256 marketSeeds;
uint256 stor11;
uint256 stor12;
uint256 gamers;

function TIME_TO_MAKE_TOMATOES() {
    return TIME_TO_MAKE_TOMATOES
}

function getGamers() {
    return gamers
}

function getFree() {
    return bool(uint8(stor1.field_160))
}

function lastEvent(address arg1) {
    return lastEvent[arg1]
}

function claimedSeeds(address arg1) {
    return claimedSeeds[arg1]
}

function getTotalIn(address arg1) {
    return totalIn[address(arg1)]
}

function ownerAddress() {
    return ownerAddress
}

function ballanceTomatoes(address arg1) {
    return ballanceTomatoes[arg1].field_0
}

function referrals(address arg1) {
    return referrals[arg1]
}

function gamers() {
    return gamers
}

function getMyTomatoes() {
    return ballanceTomatoes[address(msg.sender)].field_0
}

function totalIn(address arg1) {
    return totalIn[arg1]
}

function STARTING_SEEDS() {
    return STARTING_SEEDS
}

function marketSeeds() {
    return marketSeeds
}

function getTotalOut(address arg1) {
    return totalOut[address(arg1)]
}

function needToGetFree() {
    return needToGetFree
}

function totalOut(address arg1) {
    return totalOut[arg1]
}

function _fallback() payable {
    revert
}

function setNeedToGetFree(uint256 arg1) {
    require msg.sender == ownerAddress
    needToGetFree = arg1
}

function setStartingSeeds(uint256 arg1) {
    require msg.sender == ownerAddress
    STARTING_SEEDS = arg1
}

function setTIME_TO_MAKE_TOMATOES(uint256 arg1) {
    require msg.sender == ownerAddress
    TIME_TO_MAKE_TOMATOES = arg1
}

function setGetFree(bool arg1) {
    require msg.sender == ownerAddress
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 4 * arg1 / arg1 == 4
    return (4 * arg1 / 100)
}

function getFreeSeeds() payable {
    require uint8(stor1.field_160)
    require msg.value == needToGetFree
    call ownerAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require not ballanceTomatoes[address(msg.sender)].field_0
    lastEvent[address(msg.sender)] = block.timestamp
    ballanceTomatoes[address(msg.sender)].field_0 = STARTING_SEEDS
}

function getSeedsSinceLastEvent(address arg1) {
    require lastEvent[address(arg1)] <= block.timestamp
    if TIME_TO_MAKE_TOMATOES < block.timestamp - lastEvent[address(arg1)]:
        if not TIME_TO_MAKE_TOMATOES:
            return 0
        if TIME_TO_MAKE_TOMATOES:
            if TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(arg1)].field_0 / TIME_TO_MAKE_TOMATOES == ballanceTomatoes[address(arg1)].field_0:
                return (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(arg1)].field_0)
    else:
        if not block.timestamp - lastEvent[address(arg1)]:
            return 0
        if block.timestamp - lastEvent[address(arg1)]:
            if (block.timestamp * ballanceTomatoes[address(arg1)].field_0) - (lastEvent[address(arg1)] * ballanceTomatoes[address(arg1)].field_0) / block.timestamp - lastEvent[address(arg1)] == ballanceTomatoes[address(arg1)].field_0:
                return ((block.timestamp * ballanceTomatoes[address(arg1)].field_0) - (lastEvent[address(arg1)] * ballanceTomatoes[address(arg1)].field_0))
    revert
}

function getMySeeds() {
    require lastEvent[address(msg.sender)] <= block.timestamp
    if TIME_TO_MAKE_TOMATOES < block.timestamp - lastEvent[address(msg.sender)]:
        if not TIME_TO_MAKE_TOMATOES:
            if claimedSeeds[address(msg.sender)] >= claimedSeeds[address(msg.sender)]:
                return claimedSeeds[address(msg.sender)]
        else:
            if TIME_TO_MAKE_TOMATOES:
                if TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 / TIME_TO_MAKE_TOMATOES == ballanceTomatoes[address(msg.sender)].field_0:
                    if claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= claimedSeeds[address(msg.sender)]:
                        return (claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
    else:
        if not block.timestamp - lastEvent[address(msg.sender)]:
            if claimedSeeds[address(msg.sender)] >= claimedSeeds[address(msg.sender)]:
                return claimedSeeds[address(msg.sender)]
        else:
            if block.timestamp - lastEvent[address(msg.sender)]:
                if (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / block.timestamp - lastEvent[address(msg.sender)] == ballanceTomatoes[address(msg.sender)].field_0:
                    if claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= claimedSeeds[address(msg.sender)]:
                        return (claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor11:
        if not stor12:
            if arg1:
                if stor12 + (0 / arg1) >= stor12:
                    if stor12 + (0 / arg1):
                        return (0 / stor12 + (0 / arg1))
        else:
            if stor12:
                if stor12 * arg1 / stor12 == arg1:
                    if stor12 * arg1 >= 0:
                        if arg1:
                            if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                if stor12 + (stor12 * arg1 / arg1):
                                    return (0 / stor12 + (stor12 * arg1 / arg1))
    else:
        if stor11:
            if stor11 * arg3 / stor11 == arg3:
                if not stor11:
                    if not stor12:
                        if arg1:
                            if stor12 + (0 / arg1) >= stor12:
                                if stor12 + (0 / arg1):
                                    return (stor11 * arg3 / stor12 + (0 / arg1))
                    else:
                        if stor12:
                            if stor12 * arg1 / stor12 == arg1:
                                if stor12 * arg1 >= 0:
                                    if arg1:
                                        if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                            if stor12 + (stor12 * arg1 / arg1):
                                                return (stor11 * arg3 / stor12 + (stor12 * arg1 / arg1))
                else:
                    if stor11:
                        if stor11 * arg2 / stor11 == arg2:
                            if not stor12:
                                if stor11 * arg2 >= stor11 * arg2:
                                    if arg1:
                                        if stor12 + (stor11 * arg2 / arg1) >= stor12:
                                            if stor12 + (stor11 * arg2 / arg1):
                                                return (stor11 * arg3 / stor12 + (stor11 * arg2 / arg1))
                            else:
                                if stor12:
                                    if stor12 * arg1 / stor12 == arg1:
                                        if (stor11 * arg2) + (stor12 * arg1) >= stor11 * arg2:
                                            if arg1:
                                                if stor12 + ((stor11 * arg2) + (stor12 * arg1) / arg1) >= stor12:
                                                    if stor12 + ((stor11 * arg2) + (stor12 * arg1) / arg1):
                                                        return (stor11 * arg3 / stor12 + ((stor11 * arg2) + (stor12 * arg1) / arg1))
    revert
}

function calculateSeedBuy(uint256 arg1, uint256 arg2) {
    if not stor11:
        if not stor12:
            if arg1:
                if stor12 + (0 / arg1) >= stor12:
                    if stor12 + (0 / arg1):
                        return (0 / stor12 + (0 / arg1))
        else:
            if stor12:
                if stor12 * arg1 / stor12 == arg1:
                    if stor12 * arg1 >= 0:
                        if arg1:
                            if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                if stor12 + (stor12 * arg1 / arg1):
                                    return (0 / stor12 + (stor12 * arg1 / arg1))
    else:
        if stor11:
            if stor11 * marketSeeds / stor11 == marketSeeds:
                if not stor11:
                    if not stor12:
                        if arg1:
                            if stor12 + (0 / arg1) >= stor12:
                                if stor12 + (0 / arg1):
                                    return (stor11 * marketSeeds / stor12 + (0 / arg1))
                    else:
                        if stor12:
                            if stor12 * arg1 / stor12 == arg1:
                                if stor12 * arg1 >= 0:
                                    if arg1:
                                        if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                            if stor12 + (stor12 * arg1 / arg1):
                                                return (stor11 * marketSeeds / stor12 + (stor12 * arg1 / arg1))
                else:
                    if stor11:
                        if stor11 * arg2 / stor11 == arg2:
                            if not stor12:
                                if stor11 * arg2 >= stor11 * arg2:
                                    if arg1:
                                        if stor12 + (stor11 * arg2 / arg1) >= stor12:
                                            if stor12 + (stor11 * arg2 / arg1):
                                                return (stor11 * marketSeeds / stor12 + (stor11 * arg2 / arg1))
                            else:
                                if stor12:
                                    if stor12 * arg1 / stor12 == arg1:
                                        if (stor11 * arg2) + (stor12 * arg1) >= stor11 * arg2:
                                            if arg1:
                                                if stor12 + ((stor11 * arg2) + (stor12 * arg1) / arg1) >= stor12:
                                                    if stor12 + ((stor11 * arg2) + (stor12 * arg1) / arg1):
                                                        return (stor11 * marketSeeds / stor12 + ((stor11 * arg2) + (stor12 * arg1) / arg1))
    revert
}

function calculateSeedSell(uint256 arg1) {
    if not stor11:
        if not stor12:
            if arg1:
                if stor12 + (0 / arg1) >= stor12:
                    if stor12 + (0 / arg1):
                        return (0 / stor12 + (0 / arg1))
        else:
            if stor12:
                if stor12 * arg1 / stor12 == arg1:
                    if stor12 * arg1 >= 0:
                        if arg1:
                            if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                if stor12 + (stor12 * arg1 / arg1):
                                    return (0 / stor12 + (stor12 * arg1 / arg1))
    else:
        if stor11:
            if stor11 * eth.balance(this.address) / stor11 == eth.balance(this.address):
                if not stor11:
                    if not stor12:
                        if arg1:
                            if stor12 + (0 / arg1) >= stor12:
                                if stor12 + (0 / arg1):
                                    return (stor11 * eth.balance(this.address) / stor12 + (0 / arg1))
                    else:
                        if stor12:
                            if stor12 * arg1 / stor12 == arg1:
                                if stor12 * arg1 >= 0:
                                    if arg1:
                                        if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                            if stor12 + (stor12 * arg1 / arg1):
                                                return (stor11 * eth.balance(this.address) / stor12 + (stor12 * arg1 / arg1))
                else:
                    if stor11:
                        if stor11 * marketSeeds / stor11 == marketSeeds:
                            if not stor12:
                                if stor11 * marketSeeds >= stor11 * marketSeeds:
                                    if arg1:
                                        if stor12 + (stor11 * marketSeeds / arg1) >= stor12:
                                            if stor12 + (stor11 * marketSeeds / arg1):
                                                return (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / arg1))
                            else:
                                if stor12:
                                    if stor12 * arg1 / stor12 == arg1:
                                        if (stor11 * marketSeeds) + (stor12 * arg1) >= stor11 * marketSeeds:
                                            if arg1:
                                                if stor12 + ((stor11 * marketSeeds) + (stor12 * arg1) / arg1) >= stor12:
                                                    if stor12 + ((stor11 * marketSeeds) + (stor12 * arg1) / arg1):
                                                        return (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * arg1) / arg1))
    revert
}

function calculateSeedBuySimple(uint256 arg1) {
    if not stor11:
        if not stor12:
            if arg1:
                if stor12 + (0 / arg1) >= stor12:
                    if stor12 + (0 / arg1):
                        return (0 / stor12 + (0 / arg1))
        else:
            if stor12:
                if stor12 * arg1 / stor12 == arg1:
                    if stor12 * arg1 >= 0:
                        if arg1:
                            if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                if stor12 + (stor12 * arg1 / arg1):
                                    return (0 / stor12 + (stor12 * arg1 / arg1))
    else:
        if stor11:
            if stor11 * marketSeeds / stor11 == marketSeeds:
                if not stor11:
                    if not stor12:
                        if arg1:
                            if stor12 + (0 / arg1) >= stor12:
                                if stor12 + (0 / arg1):
                                    return (stor11 * marketSeeds / stor12 + (0 / arg1))
                    else:
                        if stor12:
                            if stor12 * arg1 / stor12 == arg1:
                                if stor12 * arg1 >= 0:
                                    if arg1:
                                        if stor12 + (stor12 * arg1 / arg1) >= stor12:
                                            if stor12 + (stor12 * arg1 / arg1):
                                                return (stor11 * marketSeeds / stor12 + (stor12 * arg1 / arg1))
                else:
                    if stor11:
                        if stor11 * eth.balance(this.address) / stor11 == eth.balance(this.address):
                            if not stor12:
                                if stor11 * eth.balance(this.address) >= stor11 * eth.balance(this.address):
                                    if arg1:
                                        if stor12 + (stor11 * eth.balance(this.address) / arg1) >= stor12:
                                            if stor12 + (stor11 * eth.balance(this.address) / arg1):
                                                return (stor11 * marketSeeds / stor12 + (stor11 * eth.balance(this.address) / arg1))
                            else:
                                if stor12:
                                    if stor12 * arg1 / stor12 == arg1:
                                        if (stor11 * eth.balance(this.address)) + (stor12 * arg1) >= stor11 * eth.balance(this.address):
                                            if arg1:
                                                if stor12 + ((stor11 * eth.balance(this.address)) + (stor12 * arg1) / arg1) >= stor12:
                                                    if stor12 + ((stor11 * eth.balance(this.address)) + (stor12 * arg1) / arg1):
                                                        return (stor11 * marketSeeds / stor12 + ((stor11 * eth.balance(this.address)) + (stor12 * arg1) / arg1))
    revert
}

function makeTomatoes(address arg1) {
    if not referrals[address(msg.sender)]:
        if referrals[address(msg.sender)] != msg.sender:
            referrals[address(msg.sender)] = arg1
    require lastEvent[address(msg.sender)] <= block.timestamp
    if TIME_TO_MAKE_TOMATOES < block.timestamp - lastEvent[address(msg.sender)]:
        if not TIME_TO_MAKE_TOMATOES:
            require claimedSeeds[address(msg.sender)] >= claimedSeeds[address(msg.sender)]
            require TIME_TO_MAKE_TOMATOES
            require ballanceTomatoes[address(msg.sender)].field_0 + (claimedSeeds[address(msg.sender)] / TIME_TO_MAKE_TOMATOES) >= ballanceTomatoes[address(msg.sender)].field_0
            ballanceTomatoes[address(msg.sender)].field_0 += claimedSeeds[address(msg.sender)] / TIME_TO_MAKE_TOMATOES
            claimedSeeds[address(msg.sender)] = 0
            lastEvent[address(msg.sender)] = block.timestamp
            require claimedSeeds[stor7[address(msg.sender)]] + (claimedSeeds[address(msg.sender)] / 5) >= claimedSeeds[stor7[address(msg.sender)]]
            claimedSeeds[stor7[address(msg.sender)]] += claimedSeeds[address(msg.sender)] / 5
            require marketSeeds + (claimedSeeds[address(msg.sender)] / 10) >= marketSeeds
            marketSeeds += claimedSeeds[address(msg.sender)] / 10
        else:
            require TIME_TO_MAKE_TOMATOES
            require TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 / TIME_TO_MAKE_TOMATOES == ballanceTomatoes[address(msg.sender)].field_0
            require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= claimedSeeds[address(msg.sender)]
            require TIME_TO_MAKE_TOMATOES
            require ballanceTomatoes[address(msg.sender)].field_0 + (claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) / TIME_TO_MAKE_TOMATOES) >= ballanceTomatoes[address(msg.sender)].field_0
            ballanceTomatoes[address(msg.sender)].field_0 += claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) / TIME_TO_MAKE_TOMATOES
            claimedSeeds[address(msg.sender)] = 0
            lastEvent[address(msg.sender)] = block.timestamp
            require claimedSeeds[stor7[address(msg.sender)]] + (claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) / 5) >= claimedSeeds[stor7[address(msg.sender)]]
            claimedSeeds[stor7[address(msg.sender)]] += claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) / 5
            require marketSeeds + (claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) / 10) >= marketSeeds
            marketSeeds += claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) / 10
    else:
        if not block.timestamp - lastEvent[address(msg.sender)]:
            require claimedSeeds[address(msg.sender)] >= claimedSeeds[address(msg.sender)]
            require TIME_TO_MAKE_TOMATOES
            require ballanceTomatoes[address(msg.sender)].field_0 + (claimedSeeds[address(msg.sender)] / TIME_TO_MAKE_TOMATOES) >= ballanceTomatoes[address(msg.sender)].field_0
            ballanceTomatoes[address(msg.sender)].field_0 += claimedSeeds[address(msg.sender)] / TIME_TO_MAKE_TOMATOES
            claimedSeeds[address(msg.sender)] = 0
            lastEvent[address(msg.sender)] = block.timestamp
            require claimedSeeds[stor7[address(msg.sender)]] + (claimedSeeds[address(msg.sender)] / 5) >= claimedSeeds[stor7[address(msg.sender)]]
            claimedSeeds[stor7[address(msg.sender)]] += claimedSeeds[address(msg.sender)] / 5
            require marketSeeds + (claimedSeeds[address(msg.sender)] / 10) >= marketSeeds
            marketSeeds += claimedSeeds[address(msg.sender)] / 10
        else:
            require block.timestamp - lastEvent[address(msg.sender)]
            require (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / block.timestamp - lastEvent[address(msg.sender)] == ballanceTomatoes[address(msg.sender)].field_0
            require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= claimedSeeds[address(msg.sender)]
            require TIME_TO_MAKE_TOMATOES
            require ballanceTomatoes[address(msg.sender)].field_0 + (claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / TIME_TO_MAKE_TOMATOES) >= ballanceTomatoes[address(msg.sender)].field_0
            ballanceTomatoes[address(msg.sender)].field_0 += claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / TIME_TO_MAKE_TOMATOES
            claimedSeeds[address(msg.sender)] = 0
            lastEvent[address(msg.sender)] = block.timestamp
            require claimedSeeds[stor7[address(msg.sender)]] + (claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / 5) >= claimedSeeds[stor7[address(msg.sender)]]
            claimedSeeds[stor7[address(msg.sender)]] += claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / 5
            require marketSeeds + (claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / 10) >= marketSeeds
            marketSeeds += claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / 10
}

function buySeeds() payable {
    require msg.value <= eth.balance(this.address)
    if not stor11:
        if not stor12:
            require msg.value
            require stor12 + (0 / msg.value) >= stor12
            require stor12 + (0 / msg.value)
            if not 0 / stor12 + (0 / msg.value):
                require 0 <= 0 / stor12 + (0 / msg.value)
                require claimedSeeds[address(msg.sender)] + (0 / stor12 + (0 / msg.value)) >= claimedSeeds[address(msg.sender)]
                claimedSeeds[address(msg.sender)] += 0 / stor12 + (0 / msg.value)
            else:
                require 0 / stor12 + (0 / msg.value)
                require 4 * 0 / stor12 + (0 / msg.value) / 0 / stor12 + (0 / msg.value) == 4
                require 4 * 0 / stor12 + (0 / msg.value) / 100 <= 0 / stor12 + (0 / msg.value)
                require claimedSeeds[address(msg.sender)] + (0 / stor12 + (0 / msg.value)) - (4 * 0 / stor12 + (0 / msg.value) / 100) >= claimedSeeds[address(msg.sender)]
                claimedSeeds[address(msg.sender)] = claimedSeeds[address(msg.sender)] + (0 / stor12 + (0 / msg.value)) - (4 * 0 / stor12 + (0 / msg.value) / 100)
        else:
            require stor12
            require stor12 * msg.value / stor12 == msg.value
            require stor12 * msg.value >= 0
            require msg.value
            require stor12 + (stor12 * msg.value / msg.value) >= stor12
            require stor12 + (stor12 * msg.value / msg.value)
            if not 0 / stor12 + (stor12 * msg.value / msg.value):
                require 0 <= 0 / stor12 + (stor12 * msg.value / msg.value)
                require claimedSeeds[address(msg.sender)] + (0 / stor12 + (stor12 * msg.value / msg.value)) >= claimedSeeds[address(msg.sender)]
                claimedSeeds[address(msg.sender)] += 0 / stor12 + (stor12 * msg.value / msg.value)
            else:
                require 0 / stor12 + (stor12 * msg.value / msg.value)
                require 4 * 0 / stor12 + (stor12 * msg.value / msg.value) / 0 / stor12 + (stor12 * msg.value / msg.value) == 4
                require 4 * 0 / stor12 + (stor12 * msg.value / msg.value) / 100 <= 0 / stor12 + (stor12 * msg.value / msg.value)
                require claimedSeeds[address(msg.sender)] + (0 / stor12 + (stor12 * msg.value / msg.value)) - (4 * 0 / stor12 + (stor12 * msg.value / msg.value) / 100) >= claimedSeeds[address(msg.sender)]
                claimedSeeds[address(msg.sender)] = claimedSeeds[address(msg.sender)] + (0 / stor12 + (stor12 * msg.value / msg.value)) - (4 * 0 / stor12 + (stor12 * msg.value / msg.value) / 100)
    else:
        require stor11
        require stor11 * marketSeeds / stor11 == marketSeeds
        if not stor11:
            if not stor12:
                require msg.value
                require stor12 + (0 / msg.value) >= stor12
                require stor12 + (0 / msg.value)
                if not stor11 * marketSeeds / stor12 + (0 / msg.value):
                    require 0 <= stor11 * marketSeeds / stor12 + (0 / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + (0 / msg.value)) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] += stor11 * marketSeeds / stor12 + (0 / msg.value)
                else:
                    require stor11 * marketSeeds / stor12 + (0 / msg.value)
                    require 4 * stor11 * marketSeeds / stor12 + (0 / msg.value) / stor11 * marketSeeds / stor12 + (0 / msg.value) == 4
                    require 4 * stor11 * marketSeeds / stor12 + (0 / msg.value) / 100 <= stor11 * marketSeeds / stor12 + (0 / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + (0 / msg.value)) - (4 * stor11 * marketSeeds / stor12 + (0 / msg.value) / 100) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] = claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + (0 / msg.value)) - (4 * stor11 * marketSeeds / stor12 + (0 / msg.value) / 100)
            else:
                require stor12
                require stor12 * msg.value / stor12 == msg.value
                require stor12 * msg.value >= 0
                require msg.value
                require stor12 + (stor12 * msg.value / msg.value) >= stor12
                require stor12 + (stor12 * msg.value / msg.value)
                if not stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value):
                    require 0 <= stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value)) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] += stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value)
                else:
                    require stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value)
                    require 4 * stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value) / stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value) == 4
                    require 4 * stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value) / 100 <= stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value)) - (4 * stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value) / 100) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] = claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value)) - (4 * stor11 * marketSeeds / stor12 + (stor12 * msg.value / msg.value) / 100)
        else:
            require stor11
            require (eth.balance(this.address) * stor11) - (msg.value * stor11) / stor11 == eth.balance(this.address) - msg.value
            if not stor12:
                require msg.value
                require stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value) >= stor12
                require stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)
                if not stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value):
                    require 0 <= stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] += stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)
                else:
                    require stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)
                    require 4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value) / stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value) == 4
                    require 4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value) / 100 <= stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)) - (4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value) / 100) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] = claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value)) - (4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) / msg.value) / 100)
            else:
                require stor12
                require stor12 * msg.value / stor12 == msg.value
                require stor12 * msg.value >= 0
                require msg.value
                require stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value) >= stor12
                require stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)
                if not stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value):
                    require 0 <= stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] += stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)
                else:
                    require stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)
                    require 4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value) / stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value) == 4
                    require 4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value) / 100 <= stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)
                    require claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)) - (4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value) / 100) >= claimedSeeds[address(msg.sender)]
                    claimedSeeds[address(msg.sender)] = claimedSeeds[address(msg.sender)] + (stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value)) - (4 * stor11 * marketSeeds / stor12 + ((eth.balance(this.address) * stor11) - (msg.value * stor11) + (stor12 * msg.value) / msg.value) / 100)
    if not totalIn[address(msg.sender)]:
        gamers++
    require totalIn[address(msg.sender)] + msg.value >= totalIn[address(msg.sender)]
    totalIn[address(msg.sender)] += msg.value
    if not msg.value:
        call ownerAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 4 * msg.value / msg.value == 4
        call ownerAddress with:
           value 4 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sellSeeds() {
    require lastEvent[address(msg.sender)] <= block.timestamp
    if TIME_TO_MAKE_TOMATOES < block.timestamp - lastEvent[address(msg.sender)]:
        if not TIME_TO_MAKE_TOMATOES:
            require claimedSeeds[address(msg.sender)] >= claimedSeeds[address(msg.sender)]
            if not stor11:
                if not stor12:
                    require claimedSeeds[address(msg.sender)]
                    require stor12 + (0 / claimedSeeds[address(msg.sender)]) >= stor12
                    require stor12 + (0 / claimedSeeds[address(msg.sender)])
                    if not 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                           value 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor12 + (0 / claimedSeeds[address(msg.sender)])) - (4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor12
                    require stor12 * claimedSeeds[address(msg.sender)] / stor12 == claimedSeeds[address(msg.sender)]
                    require stor12 * claimedSeeds[address(msg.sender)] >= 0
                    require claimedSeeds[address(msg.sender)]
                    require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) >= stor12
                    require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                    if not 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        require 4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                           value 4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 <= 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) - (4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor11
                require stor11 * eth.balance(this.address) / stor11 == eth.balance(this.address)
                if not stor11:
                    if not stor12:
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + (0 / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + (0 / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require stor12 * claimedSeeds[address(msg.sender)] / stor12 == claimedSeeds[address(msg.sender)]
                        require stor12 * claimedSeeds[address(msg.sender)] >= 0
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor11
                    require stor11 * marketSeeds / stor11 == marketSeeds
                    if not stor12:
                        require stor11 * marketSeeds >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require stor12 * claimedSeeds[address(msg.sender)] / stor12 == claimedSeeds[address(msg.sender)]
                        require (stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require TIME_TO_MAKE_TOMATOES
            require TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 / TIME_TO_MAKE_TOMATOES == ballanceTomatoes[address(msg.sender)].field_0
            require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= claimedSeeds[address(msg.sender)]
            if not stor11:
                if not stor12:
                    require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                    require stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                    require stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                    if not 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                           value 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor12
                    require (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / stor12 == claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                    require (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) >= 0
                    require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                    require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                    require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                    if not 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        require 4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                           value 4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor11
                require stor11 * eth.balance(this.address) / stor11 == eth.balance(this.address)
                if not stor11:
                    if not stor12:
                        require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / stor12 == claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) >= 0
                        require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor11
                    require stor11 * marketSeeds / stor11 == marketSeeds
                    if not stor12:
                        require stor11 * marketSeeds >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / stor12 == claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require (stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (TIME_TO_MAKE_TOMATOES * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not block.timestamp - lastEvent[address(msg.sender)]:
            require claimedSeeds[address(msg.sender)] >= claimedSeeds[address(msg.sender)]
            if not stor11:
                if not stor12:
                    require claimedSeeds[address(msg.sender)]
                    require stor12 + (0 / claimedSeeds[address(msg.sender)]) >= stor12
                    require stor12 + (0 / claimedSeeds[address(msg.sender)])
                    if not 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                           value 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor12 + (0 / claimedSeeds[address(msg.sender)])) - (4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor12
                    require stor12 * claimedSeeds[address(msg.sender)] / stor12 == claimedSeeds[address(msg.sender)]
                    require stor12 * claimedSeeds[address(msg.sender)] >= 0
                    require claimedSeeds[address(msg.sender)]
                    require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) >= stor12
                    require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                    if not 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        require 4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                        marketSeeds += claimedSeeds[address(msg.sender)]
                        require totalOut[address(msg.sender)] + (0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call ownerAddress with:
                           value 4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 <= 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) - (4 * 0 / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor11
                require stor11 * eth.balance(this.address) / stor11 == eth.balance(this.address)
                if not stor11:
                    if not stor12:
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + (0 / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + (0 / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require stor12 * claimedSeeds[address(msg.sender)] / stor12 == claimedSeeds[address(msg.sender)]
                        require stor12 * claimedSeeds[address(msg.sender)] >= 0
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + (stor12 * claimedSeeds[address(msg.sender)] / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor11
                    require stor11 * marketSeeds / stor11 == marketSeeds
                    if not stor12:
                        require stor11 * marketSeeds >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require stor12 * claimedSeeds[address(msg.sender)] / stor12 == claimedSeeds[address(msg.sender)]
                        require (stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)]
                        require stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) >= stor12
                        require stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                        if not stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] >= marketSeeds
                            marketSeeds += claimedSeeds[address(msg.sender)]
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / 100 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)])) - (4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (stor12 * claimedSeeds[address(msg.sender)]) / claimedSeeds[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require block.timestamp - lastEvent[address(msg.sender)]
            require (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) / block.timestamp - lastEvent[address(msg.sender)] == ballanceTomatoes[address(msg.sender)].field_0
            require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= claimedSeeds[address(msg.sender)]
            if not stor11:
                if not stor12:
                    require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                    require stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                    require stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                    if not 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                           value 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * 0 / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor12
                    require (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / stor12 == claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                    require (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) >= 0
                    require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                    require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                    require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                    if not 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)):
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        require 4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                        if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                        else:
                            require ballanceTomatoes[address(msg.sender)].field_0 / 3
                            require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                            ballanceTomatoes[address(msg.sender)].field_0 = 0
                            ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                        claimedSeeds[address(msg.sender)] = 0
                        lastEvent[address(msg.sender)] = block.timestamp
                        require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                        marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require totalOut[address(msg.sender)] + (0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                        totalOut[address(msg.sender)] += 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call ownerAddress with:
                           value 4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * 0 / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor11
                require stor11 * eth.balance(this.address) / stor11 == eth.balance(this.address)
                if not stor11:
                    if not stor12:
                        require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + (0 / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / stor12 == claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) >= 0
                        require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + ((claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor11
                    require stor11 * marketSeeds / stor11 == marketSeeds
                    if not stor12:
                        require stor11 * marketSeeds >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + (stor11 * marketSeeds / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor12
                        require (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / stor12 == claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require (stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) >= stor11 * marketSeeds
                        require claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                        require stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) >= stor12
                        require stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                        if not stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)):
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) == 4
                            if not ballanceTomatoes[address(msg.sender)].field_0 / 3:
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                            else:
                                require ballanceTomatoes[address(msg.sender)].field_0 / 3
                                require 2 * ballanceTomatoes[address(msg.sender)].field_0 / 3 / ballanceTomatoes[address(msg.sender)].field_0 / 3 == 2
                                ballanceTomatoes[address(msg.sender)].field_0 = 0
                                ballanceTomatoes[address(msg.sender)].field_1 = uint255(ballanceTomatoes[address(msg.sender)].field_0 / 3)
                            claimedSeeds[address(msg.sender)] = 0
                            lastEvent[address(msg.sender)] = block.timestamp
                            require marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0) >= marketSeeds
                            marketSeeds = marketSeeds + claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)
                            require totalOut[address(msg.sender)] + (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) >= totalOut[address(msg.sender)]
                            totalOut[address(msg.sender)] += stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call ownerAddress with:
                               value 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100 <= stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0))) - (4 * stor11 * eth.balance(this.address) / stor12 + ((stor11 * marketSeeds) + (claimedSeeds[address(msg.sender)] * stor12) + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0 * stor12) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0 * stor12) / claimedSeeds[address(msg.sender)] + (block.timestamp * ballanceTomatoes[address(msg.sender)].field_0) - (lastEvent[address(msg.sender)] * ballanceTomatoes[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
